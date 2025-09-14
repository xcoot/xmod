.class public final Lcom/android/server/wm/MultiTaskingController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public final mActivityEmbeddedPackageRepository:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

.field public mAffordanceTargetTask:Lcom/android/server/wm/Task;

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mDeferEnsureConfig:Z

.field public mDeferFocusChanging:Z

.field public final mDemoResetStartedReceiver:Lcom/android/server/wm/MultiTaskingController$1;

.field public final mFocusableTaskIds:Ljava/util/Queue;

.field public mH:Lcom/android/server/wm/MultiTaskingController$H;

.field public mIsDisplaySizeOverride:Z

.field public mIsFullToSplitEnabled:Z

.field public mIsGestureTypeSideAndBottom:Z

.field public mIsMinimalBatteryUse:Z

.field public mIsNavigationModeGesture:Z

.field public mIsTaskbarAutoHideStyle:Z

.field public final mLastConfig:Landroid/content/res/Configuration;

.field public mLastRotation:I

.field public final mMinimizeAllReceiver:Lcom/android/server/wm/MultiTaskingController$1;

.field public mMoveToBackTaskWithIme:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda3;

.field public final mNotifyFinishRecentsAnimation:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

.field public final mNotifyStartHomeAnimation:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

.field public final mNotifyStartRecentsAnimation:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

.field public final mNotifyWallpaperVisibilityChanged:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

.field public final mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

.field public mSettingsObserver:Lcom/android/server/wm/MultiTaskingController$SettingsObserver;

.field public mSplitFeasibleMode:I

.field public mSwipeGestureThreshold:I

.field public mSystemUIUid:I

.field public mTmpPipCandidate:Lcom/android/server/wm/ActivityRecord;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static -$$Nest$mforAllRemoteAppTransitionListeners(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_0

    .line 13
    .line 14
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;

    .line 21
    .line 22
    invoke-virtual {p1, v2, p2}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;->accept(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :catch_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/wm/MultiTaskingController;->mSystemUIUid:I

    .line 6
    .line 7
    new-instance v0, Landroid/content/res/Configuration;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mLastConfig:Landroid/content/res/Configuration;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitFeasibleMode:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/server/wm/MultiTaskingController;->mIsDisplaySizeOverride:Z

    .line 19
    .line 20
    new-instance v1, Landroid/os/RemoteCallbackList;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mRemoteAppTransitionListeners:Landroid/os/RemoteCallbackList;

    .line 26
    .line 27
    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, v2}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyStartRecentsAnimation:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    .line 34
    .line 35
    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-direct {v1, v2}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyFinishRecentsAnimation:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    .line 42
    .line 43
    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    invoke-direct {v1, v2}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyStartHomeAnimation:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    .line 50
    .line 51
    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    .line 52
    .line 53
    const/4 v2, 0x3

    .line 54
    invoke-direct {v1, v2}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mNotifyWallpaperVisibilityChanged:Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/android/server/wm/MultiTaskingController;->mDeferEnsureConfig:Z

    .line 60
    .line 61
    new-instance v0, Landroid/graphics/Rect;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpRect:Landroid/graphics/Rect;

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    .line 70
    .line 71
    new-instance v0, Ljava/util/LinkedList;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mFocusableTaskIds:Ljava/util/Queue;

    .line 77
    .line 78
    new-instance v0, Lcom/android/server/wm/MultiTaskingController$1;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiTaskingController$1;-><init>(Lcom/android/server/wm/MultiTaskingController;I)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mMinimizeAllReceiver:Lcom/android/server/wm/MultiTaskingController$1;

    .line 85
    .line 86
    new-instance v0, Lcom/android/server/wm/MultiTaskingController$1;

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiTaskingController$1;-><init>(Lcom/android/server/wm/MultiTaskingController;I)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mDemoResetStartedReceiver:Lcom/android/server/wm/MultiTaskingController$1;

    .line 93
    .line 94
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 95
    .line 96
    new-instance v0, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    .line 97
    .line 98
    invoke-direct {v0, p1}, Lcom/android/server/wm/ActivityEmbeddedPackageRepository;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mActivityEmbeddedPackageRepository:Lcom/android/server/wm/ActivityEmbeddedPackageRepository;

    .line 102
    .line 103
    return-void
.end method

.method public static isInImmersiveSplitScreenMode()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public static isInSystemBarArea(IIILcom/android/server/wm/DisplayContent;)Z
    .locals 5

    .line 1
    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 4
    .line 5
    invoke-virtual {p3}, Landroid/view/InsetsState;->sourceSize()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ne v4, p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return v1
.end method

.method public static needAffordanceAnimation(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    if-eqz p1, :cond_5

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->isResumedAffordanceAnimationRequested()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v1, 0x1

    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    move v0, v1

    .line 50
    :cond_2
    return v0

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    return v1

    .line 58
    :cond_4
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 59
    .line 60
    if-eqz p1, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_5

    .line 73
    .line 74
    return v1

    .line 75
    :cond_5
    :goto_0
    return v0
.end method

.method public static printAllTasksLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/WindowContainer;I)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isRootTask()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const-string v1, "Root #"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string v1, "Leaf #"

    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p3, " "

    .line 30
    .line 31
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p3, p2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    add-int/lit8 p3, p3, -0x1

    .line 51
    .line 52
    :goto_1
    if-ltz p3, :cond_2

    .line 53
    .line 54
    const-string v0, "  "

    .line 55
    .line 56
    invoke-static {p1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 61
    .line 62
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 67
    .line 68
    invoke-static {p0, v0, v1, p3}, Lcom/android/server/wm/MultiTaskingController;->printAllTasksLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/WindowContainer;I)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 p3, p3, -0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    return-void
.end method

.method public static printTaskDisplayAreaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/WindowContainer;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    const-string v1, "TaskDisplayArea: "

    .line 10
    .line 11
    invoke-static {p1, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const-string v3, "  "

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {p0, v1, p2}, Lcom/android/server/wm/MultiTaskingController;->printTaskDisplayAreaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/WindowContainer;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {p0, v2, v1, v0}, Lcom/android/server/wm/MultiTaskingController;->printAllTasksLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/wm/WindowContainer;I)V

    .line 76
    .line 77
    .line 78
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 8

    .line 1
    const-string v0, "[MultiTaskingController]"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "  mAffordanceTargetTask="

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "  mSplitFeasibleMode="

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitFeasibleMode:I

    .line 45
    .line 46
    const-string v2, "  mIsDisplaySizeOverride="

    .line 47
    .line 48
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-boolean v1, p0, Lcom/android/server/wm/MultiTaskingController;->mIsDisplaySizeOverride:Z

    .line 53
    .line 54
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    const-string v0, "  (CONFIGURATION CONTAINERS)"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 65
    .line 66
    const-string v2, "  "

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/ConfigurationContainer;->dumpConfigurationLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 73
    .line 74
    .line 75
    const-string v1, "  (TASK ORDER INFO)"

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    add-int/lit8 v1, v1, -0x1

    .line 87
    .line 88
    :goto_0
    const-string v2, "    DisplayContent #"

    .line 89
    .line 90
    if-ltz v1, :cond_2

    .line 91
    .line 92
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 93
    .line 94
    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 99
    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget v2, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 106
    .line 107
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v2, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda9;

    .line 118
    .line 119
    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/MultiTaskingController;Ljava/io/PrintWriter;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    .line 123
    .line 124
    .line 125
    add-int/lit8 v1, v1, -0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 129
    .line 130
    .line 131
    const-string p0, "  (FOCUS INFO)"

    .line 132
    .line 133
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v4, "    TopDisplayFocusedTask="

    .line 141
    .line 142
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v4, "    TopResumedActivity="

    .line 162
    .line 163
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    add-int/lit8 v1, v1, -0x1

    .line 188
    .line 189
    :goto_1
    if-ltz v1, :cond_3

    .line 190
    .line 191
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 196
    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget v6, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 203
    .line 204
    const-string v7, "      FocusedTask="

    .line 205
    .line 206
    invoke-static {v5, v6, p1, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v6, "      Preferred TopFocusableTask="

    .line 227
    .line 228
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    iget-object v6, v6, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 236
    .line 237
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v6, "      mFocusedApp="

    .line 250
    .line 251
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object v6, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 255
    .line 256
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v6, "      mCurrentFocus="

    .line 269
    .line 270
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iget-object v6, v4, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 274
    .line 275
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v6, "      mInputMethodWindow="

    .line 288
    .line 289
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-object v6, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 293
    .line 294
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string v6, "      mImeLayeringTarget="

    .line 307
    .line 308
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    const-string v6, "      mImeInputTarget="

    .line 328
    .line 329
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object v6, v4, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 333
    .line 334
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    new-instance v5, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    const-string v6, "      mImeControlTarget="

    .line 347
    .line 348
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    const/4 v6, 0x2

    .line 352
    invoke-virtual {v4, v6}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    const-string v6, "      "

    .line 369
    .line 370
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 374
    .line 375
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    iget-object v4, v4, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 380
    .line 381
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    add-int/lit8 v1, v1, -0x1

    .line 392
    .line 393
    goto/16 :goto_1

    .line 394
    .line 395
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    .line 396
    .line 397
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-nez v1, :cond_4

    .line 402
    .line 403
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 404
    .line 405
    .line 406
    const-string v1, "    mTopFocusedAppByProcess"

    .line 407
    .line 408
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    .line 412
    .line 413
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 414
    .line 415
    .line 416
    move-result-object p0

    .line 417
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 418
    .line 419
    .line 420
    move-result-object p0

    .line 421
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_4

    .line 426
    .line 427
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    check-cast v1, Ljava/util/Map$Entry;

    .line 432
    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    const-string v3, "      ["

    .line 436
    .line 437
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    const-string v3, "] r="

    .line 448
    .line 449
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    goto :goto_2

    .line 467
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 468
    .line 469
    .line 470
    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 471
    .line 472
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 473
    .line 474
    if-nez p0, :cond_5

    .line 475
    .line 476
    goto :goto_3

    .line 477
    :cond_5
    const-string v0, "  (TRANSITION INFO)"

    .line 478
    .line 479
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    if-eqz v0, :cond_6

    .line 487
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    const-string v1, "    mCollectingTransition="

    .line 491
    .line 492
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 510
    .line 511
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-nez v0, :cond_7

    .line 516
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    const-string v1, "    mWaitingTransitions="

    .line 520
    .line 521
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 525
    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 537
    .line 538
    if-eqz v0, :cond_8

    .line 539
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    const-string v1, "    mFinishingTransition="

    .line 543
    .line 544
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 548
    .line 549
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object p0

    .line 556
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    :cond_8
    :goto_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 560
    .line 561
    .line 562
    return-void
.end method

.method public final exitMultiWindow(Landroid/os/IBinder;)Z
    .locals 10

    .line 1
    const-string v0, "exitMultiWindow: cannot find task, token="

    .line 2
    .line 3
    const-string v1, "exitMultiWindow: invalid windowing mode to request mode="

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

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
    instance-of v3, p1, Lcom/android/server/wm/ActivityRecord$Token;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 27
    .line 28
    :cond_0
    move v7, v4

    .line 29
    move-object v9, v5

    .line 30
    move-object v5, v3

    .line 31
    move-object v3, v9

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_1
    instance-of v3, p1, Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 37
    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    move-object v3, p1

    .line 41
    check-cast v3, Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 50
    .line 51
    instance-of v3, v3, Lcom/android/server/wm/Task;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    move-object v3, p1

    .line 56
    check-cast v3, Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 57
    .line 58
    iget-object v3, v3, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    :cond_2
    move v7, v6

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move v7, v4

    .line 79
    move-object v3, v5

    .line 80
    :goto_0
    if-eqz v5, :cond_a

    .line 81
    .line 82
    if-eqz v3, :cond_a

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    if-nez v8, :cond_4

    .line 89
    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :cond_4
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v7, :cond_5

    .line 97
    .line 98
    iget-object p1, v5, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 99
    .line 100
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-static {v7}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_6

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v7}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_6

    .line 119
    .line 120
    new-instance p1, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    .line 121
    .line 122
    invoke-direct {p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    .line 123
    .line 124
    .line 125
    iget v0, v3, Lcom/android/server/wm/Task;->mTaskId:I

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setExitSplitScreenTopTaskId(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStageType()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setExitSplitScreenStageType(I)V

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 142
    .line 143
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->toBundle()Landroid/os/Bundle;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->onSplitLayoutChangeRequested(Landroid/os/Bundle;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_6
    const/4 v3, 0x5

    .line 154
    if-ne v3, v0, :cond_7

    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 159
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_7
    if-ne v6, v0, :cond_8

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_8
    const-string p0, "MultiTaskingController"

    .line 168
    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v0, ", r="

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    :goto_1
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    if-ne p0, v6, :cond_9

    .line 201
    .line 202
    move v4, v6

    .line 203
    :cond_9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 205
    .line 206
    .line 207
    return v4

    .line 208
    :cond_a
    :goto_2
    :try_start_1
    const-string p0, "MultiTaskingController"

    .line 209
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .line 224
    .line 225
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 227
    .line 228
    .line 229
    return v4

    .line 230
    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 232
    .line 233
    .line 234
    throw p0
.end method

.method public final getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    .line 6
    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityEmbeddedController;->getEnabled(ILjava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 p1, 0x2

    .line 12
    if-eq p0, p1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public final getMultiSplitFlags()I
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-direct {v1, v2}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_16

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x4

    .line 31
    const/4 v5, 0x1

    .line 32
    const/4 v6, 0x2

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    :cond_0
    move v1, v6

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    move v1, v5

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    :goto_0
    move v1, v4

    .line 59
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/16 v7, 0x20

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    or-int/2addr v1, v7

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_5

    .line 74
    .line 75
    or-int/lit8 v1, v1, 0x10

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    or-int/lit8 v1, v1, 0x8

    .line 79
    .line 80
    :goto_2
    iget-object v3, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootMainStageTask:Lcom/android/server/wm/Task;

    .line 81
    .line 82
    if-eqz v3, :cond_6

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    move v3, v2

    .line 90
    :goto_3
    iget-object v8, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootSideStageTask:Lcom/android/server/wm/Task;

    .line 91
    .line 92
    if-eqz v8, :cond_7

    .line 93
    .line 94
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    goto :goto_4

    .line 99
    :cond_7
    move v8, v2

    .line 100
    :goto_4
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 101
    .line 102
    if-eqz v9, :cond_8

    .line 103
    .line 104
    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootCellStageTask:Lcom/android/server/wm/Task;

    .line 105
    .line 106
    if-eqz v0, :cond_8

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getStagePosition()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    :cond_8
    const/16 v0, 0x40

    .line 113
    .line 114
    const/16 v10, 0x100

    .line 115
    .line 116
    const/16 v11, 0x200

    .line 117
    .line 118
    const/16 v12, 0x80

    .line 119
    .line 120
    if-eqz v9, :cond_14

    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    and-int/lit8 p0, v3, 0x8

    .line 128
    .line 129
    if-eqz p0, :cond_9

    .line 130
    .line 131
    and-int/lit8 p0, v8, 0x20

    .line 132
    .line 133
    if-eqz p0, :cond_9

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_9
    and-int/lit8 p0, v8, 0x8

    .line 137
    .line 138
    if-eqz p0, :cond_a

    .line 139
    .line 140
    and-int/lit8 p0, v3, 0x20

    .line 141
    .line 142
    if-eqz p0, :cond_a

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_a
    if-nez v3, :cond_f

    .line 146
    .line 147
    if-nez v8, :cond_f

    .line 148
    .line 149
    :goto_5
    and-int/lit8 p0, v2, 0x8

    .line 150
    .line 151
    if-eqz p0, :cond_c

    .line 152
    .line 153
    :cond_b
    :goto_6
    move v0, v12

    .line 154
    goto :goto_8

    .line 155
    :cond_c
    and-int/lit8 p0, v2, 0x20

    .line 156
    .line 157
    if-eqz p0, :cond_e

    .line 158
    .line 159
    :cond_d
    move v0, v11

    .line 160
    goto :goto_8

    .line 161
    :cond_e
    if-ne v8, v7, :cond_d

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_f
    and-int/lit8 p0, v2, 0x10

    .line 165
    .line 166
    if-eqz p0, :cond_11

    .line 167
    .line 168
    :cond_10
    :goto_7
    move v0, v10

    .line 169
    goto :goto_8

    .line 170
    :cond_11
    and-int/lit8 p0, v2, 0x40

    .line 171
    .line 172
    const/16 v2, 0x400

    .line 173
    .line 174
    if-eqz p0, :cond_13

    .line 175
    .line 176
    :cond_12
    move v0, v2

    .line 177
    goto :goto_8

    .line 178
    :cond_13
    if-ne v8, v0, :cond_12

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_14
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 182
    .line 183
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 184
    .line 185
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 188
    .line 189
    iget v3, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 190
    .line 191
    iget p0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 192
    .line 193
    iget v2, v2, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 194
    .line 195
    if-eq v2, v5, :cond_d

    .line 196
    .line 197
    if-eq v2, v6, :cond_b

    .line 198
    .line 199
    if-eq v2, v4, :cond_15

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_15
    if-le v3, p0, :cond_10

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :goto_8
    or-int v2, v1, v0

    .line 206
    .line 207
    :cond_16
    and-int/lit8 p0, v2, 0x1

    .line 208
    .line 209
    if-nez p0, :cond_17

    .line 210
    .line 211
    and-int/lit8 p0, v2, 0x4

    .line 212
    .line 213
    if-eqz p0, :cond_18

    .line 214
    .line 215
    :cond_17
    or-int/lit16 v2, v2, 0x800

    .line 216
    .line 217
    :cond_18
    return v2
.end method

.method public final getMultiWindowModeForAssistantHotKeyLocked()I
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v4, 0x3

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    .line 30
    .line 31
    if-eqz p0, :cond_6

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_6

    .line 38
    .line 39
    iget-object p0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootCellStageTask:Lcom/android/server/wm/Task;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_0

    .line 46
    .line 47
    iget-object p0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootCellStageTask:Lcom/android/server/wm/Task;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_6

    .line 54
    .line 55
    :cond_0
    :goto_0
    move v3, v4

    .line 56
    goto :goto_3

    .line 57
    :cond_1
    const/4 v0, 0x1

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 63
    .line 64
    .line 65
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    .line 66
    .line 67
    xor-int/2addr v2, v0

    .line 68
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_5

    .line 73
    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    new-instance v2, Landroid/content/Intent;

    .line 84
    .line 85
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getAiKeyAction()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-wide/32 v5, 0x10000

    .line 93
    .line 94
    .line 95
    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {p0, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    new-instance v2, Landroid/util/ArraySet;

    .line 104
    .line 105
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_3

    .line 117
    .line 118
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 123
    .line 124
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 125
    .line 126
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    if-eqz p0, :cond_4

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindow()Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-nez p0, :cond_6

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_5
    :goto_2
    move v3, v0

    .line 151
    :cond_6
    :goto_3
    const-string p0, "ai key mode = "

    .line 152
    .line 153
    const-string v0, "MultiTaskingController"

    .line 154
    .line 155
    invoke-static {v3, p0, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return v3
.end method

.method public final getTaskInfoFromPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/lit8 v3, v3, -0x1

    .line 32
    .line 33
    :goto_0
    if-ltz v3, :cond_1

    .line 34
    .line 35
    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 36
    .line 37
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 44
    .line 45
    new-instance v5, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda9;

    .line 46
    .line 47
    invoke-direct {v5, p1, v2, v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v3, v3, -0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 59
    .line 60
    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 65
    .line 66
    .line 67
    return-object p0

    .line 68
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public final handleAltTabKeyIfNeededLocked()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

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
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_8

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_8

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/MultiTaskingController;->mFocusableTaskIds:Ljava/util/Queue;

    .line 33
    .line 34
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x1

    .line 39
    const/4 v6, -0x1

    .line 40
    if-eqz v4, :cond_6

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    new-instance v4, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda7;

    .line 47
    .line 48
    const/4 v7, 0x2

    .line 49
    invoke-direct {v4, v7}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda7;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    sub-int/2addr v4, v5

    .line 64
    :goto_0
    if-ltz v4, :cond_4

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    if-eqz v8, :cond_3

    .line 75
    .line 76
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-nez v8, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eq v8, v2, :cond_3

    .line 92
    .line 93
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-eqz v8, :cond_3

    .line 98
    .line 99
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    if-eqz v7, :cond_3

    .line 104
    .line 105
    iget-object v8, p0, Lcom/android/server/wm/MultiTaskingController;->mFocusableTaskIds:Ljava/util/Queue;

    .line 106
    .line 107
    iget v7, v7, Lcom/android/server/wm/Task;->mTaskId:I

    .line 108
    .line 109
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v8, Ljava/util/LinkedList;

    .line 114
    .line 115
    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mFocusableTaskIds:Ljava/util/Queue;

    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_5

    .line 128
    .line 129
    return v3

    .line 130
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mFocusableTaskIds:Ljava/util/Queue;

    .line 131
    .line 132
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v1, Ljava/util/LinkedList;

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v2, "collectFocusableSplitScreenTasksLocked:"

    .line 144
    .line 145
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mFocusableTaskIds:Ljava/util/Queue;

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v2, "MultiTaskingController"

    .line 158
    .line 159
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mFocusableTaskIds:Ljava/util/Queue;

    .line 163
    .line 164
    check-cast p0, Ljava/util/LinkedList;

    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    check-cast p0, Ljava/lang/Integer;

    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    if-ne p0, v6, :cond_7

    .line 177
    .line 178
    return v3

    .line 179
    :cond_7
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    .line 180
    .line 181
    .line 182
    return v5

    .line 183
    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mFocusableTaskIds:Ljava/util/Queue;

    .line 184
    .line 185
    check-cast p0, Ljava/util/LinkedList;

    .line 186
    .line 187
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 188
    .line 189
    .line 190
    return v3
.end method

.method public final initialize()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/MultiTaskingController$H;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiTaskingController$H;-><init>(Lcom/android/server/wm/MultiTaskingController;Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;-><init>(Lcom/android/server/wm/MultiTaskingController;Landroid/os/Handler;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mSettingsObserver:Lcom/android/server/wm/MultiTaskingController$SettingsObserver;

    .line 24
    .line 25
    return-void
.end method

.method public final minimizeAllTasksLocked(IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_BLOCKED_MINIMIZED_FREEFORM_ENABLED:Z

    .line 14
    .line 15
    const-string v3, "MultiTaskingController"

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string p0, "Blocked minimized freeform by multistar"

    .line 26
    .line 27
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    move p1, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move p1, v2

    .line 47
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 48
    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 53
    .line 54
    iput-boolean v4, v5, Lcom/android/server/wm/FreeformController;->mDeferMinimizeCallback:Z

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto/16 :goto_5

    .line 59
    .line 60
    :cond_3
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v6, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;

    .line 70
    .line 71
    const/4 v7, 0x1

    .line 72
    invoke-direct {v6, p0, v5, v7}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingController;Ljava/lang/Object;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v6, v4}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_5

    .line 87
    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Lcom/android/server/wm/Task;

    .line 93
    .line 94
    const/4 v5, -0x1

    .line 95
    invoke-virtual {p0, v5, v5, v4, p2}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(IILcom/android/server/wm/Task;Z)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_4

    .line 100
    .line 101
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PIP:Z

    .line 105
    .line 106
    if-eqz p2, :cond_7

    .line 107
    .line 108
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpPipCandidate:Lcom/android/server/wm/ActivityRecord;

    .line 109
    .line 110
    if-eqz p2, :cond_7

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    iput-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mTmpPipCandidate:Lcom/android/server/wm/ActivityRecord;

    .line 114
    .line 115
    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 116
    .line 117
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityClientController;->requestPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-eqz p0, :cond_6

    .line 122
    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string/jumbo v1, "minimizeAllTasksLocked: entered pip, r="

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_6
    iput-boolean v2, p2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 146
    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string/jumbo v1, "minimizeAllTasksLocked: failed to enter pip, r="

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .line 167
    .line 168
    :cond_7
    :goto_3
    if-eqz p1, :cond_8

    .line 169
    .line 170
    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformController;->continueMinimizeStateChangedCallbacks()V

    .line 173
    .line 174
    .line 175
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 176
    .line 177
    .line 178
    :goto_4
    return-void

    .line 179
    :goto_5
    if-eqz p1, :cond_9

    .line 180
    .line 181
    iget-object p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/android/server/wm/FreeformController;->continueMinimizeStateChangedCallbacks()V

    .line 184
    .line 185
    .line 186
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 187
    .line 188
    .line 189
    throw p0
.end method

.method public final minimizeTaskLocked(IILcom/android/server/wm/Task;Z)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "MultiTaskingController"

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    const-string/jumbo p0, "minimizeTaskLocked: fail, task is null"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->canMinimize()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo p1, "minimizeTaskLocked: fail, task can\'t minimize. t="

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    const/4 p1, 0x5

    .line 48
    if-ne p0, p1, :cond_1

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo p1, "minimizeTaskLocked: cancelAnimation, t="

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 69
    .line 70
    .line 71
    :cond_1
    return v0

    .line 72
    :cond_2
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX:Z

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 110
    .line 111
    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-ne v1, p3, :cond_4

    .line 120
    .line 121
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget-boolean v1, v1, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    .line 128
    .line 129
    if-eqz v1, :cond_4

    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iget-boolean v0, v0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    .line 138
    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const/16 p2, 0x3d

    .line 146
    .line 147
    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideAllInputMethods(I)V

    .line 148
    .line 149
    .line 150
    new-instance p1, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda3;

    .line 151
    .line 152
    invoke-direct {p1, p0, p3, p4}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/Task;Z)V

    .line 153
    .line 154
    .line 155
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 156
    .line 157
    const-wide/16 p2, 0x190

    .line 158
    .line 159
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    .line 161
    .line 162
    const/4 p0, 0x1

    .line 163
    return p0

    .line 164
    :cond_4
    :goto_0
    const/4 v2, 0x0

    .line 165
    const/4 v3, 0x1

    .line 166
    move-object v0, p3

    .line 167
    move-object v1, p3

    .line 168
    move v4, p4

    .line 169
    move v5, p1

    .line 170
    move v6, p2

    .line 171
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZII)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    return p0
.end method

.method public final removeEmbedActivityProcessIfNeeded(ILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p2, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 17
    .line 18
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 19
    .line 20
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 21
    .line 22
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 23
    .line 24
    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(ILjava/lang/String;)Lcom/android/server/wm/WindowProcessController;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget p2, p1, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 31
    .line 32
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 33
    .line 34
    if-ne p2, v0, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 38
    .line 39
    new-instance v0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda15;

    .line 40
    .line 41
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/WindowProcessController;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    :catch_0
    :cond_1
    return-void
.end method

.method public final removeFocusedTask(I)Z
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x1

    .line 32
    :try_start_1
    new-array v2, v2, [Z

    .line 33
    .line 34
    aput-boolean v1, v2, v1

    .line 35
    .line 36
    new-instance v3, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    invoke-direct {v3, p0, v2, v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiTaskingController;Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V

    .line 42
    .line 43
    .line 44
    aget-boolean p0, v2, v1

    .line 45
    .line 46
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    return p0

    .line 51
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final setAffordanceTargetTask(Lcom/android/server/wm/Task;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mAffordanceTargetTask:Lcom/android/server/wm/Task;

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v0, "setAffordanceTargetTask: "

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "MultiTaskingController"

    .line 23
    .line 24
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    move p2, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p2, 0x2

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    .line 12
    .line 13
    invoke-virtual {v1, p3, p1}, Lcom/android/server/wm/ActivityEmbeddedController;->getEnabled(ILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ne v1, p2, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    .line 25
    .line 26
    invoke-virtual {v1, p3}, Lcom/android/server/wm/ActivityEmbeddedController;->findTargetUserId(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object v1, v1, Lcom/android/server/wm/ActivityEmbeddedController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 35
    .line 36
    invoke-virtual {v1, p1, v2, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 42
    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 44
    .line 45
    .line 46
    monitor-enter p2

    .line 47
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    new-instance v3, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;

    .line 63
    .line 64
    invoke-direct {v3, p0, p3, p1, v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/MultiTaskingController;ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0, p3, p1}, Lcom/android/server/wm/MultiTaskingController;->removeEmbedActivityProcessIfNeeded(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_3

    .line 86
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    if-eqz p3, :cond_6

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    check-cast p3, Lcom/android/server/wm/Task;

    .line 101
    .line 102
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    iput-boolean v0, p3, Lcom/android/server/wm/Task;->mIsWaitingRemoveEmbedActivityTask:Z

    .line 109
    .line 110
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    const/4 v2, 0x0

    .line 115
    invoke-virtual {v1, p3, v2}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    iget-object v1, p3, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 120
    .line 121
    if-eqz v1, :cond_3

    .line 122
    .line 123
    iget v2, v1, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 124
    .line 125
    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 126
    .line 127
    if-ne v2, v3, :cond_5

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mH:Lcom/android/server/wm/MultiTaskingController$H;

    .line 131
    .line 132
    new-instance v3, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda14;

    .line 133
    .line 134
    invoke-direct {v3, p0, p3, v1}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/MultiTaskingController;Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowProcessController;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_6
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 143
    .line 144
    .line 145
    :goto_2
    return-void

    .line 146
    :goto_3
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 148
    .line 149
    .line 150
    throw p0
.end method

.method public final setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    return-void
.end method

.method public final startAssistantActivityToSplitLocked(Landroid/content/Intent;F)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x400

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "MultiTaskingController"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAiKeyTrampolineActivity(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAiKeyAppLaunch(Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "confirmSplitScreenMode : ri is null, li="

    .line 40
    .line 41
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v3, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-direct {v3, v4}, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const/4 v5, 0x0

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move-object v3, v5

    .line 86
    :goto_2
    if-eqz v3, :cond_5

    .line 87
    .line 88
    iget v6, v3, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    .line 89
    .line 90
    iget v3, v3, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    :cond_4
    if-ne v6, v2, :cond_5

    .line 99
    .line 100
    if-nez v3, :cond_5

    .line 101
    .line 102
    if-eqz v5, :cond_5

    .line 103
    .line 104
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 105
    .line 106
    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 107
    .line 108
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    .line 115
    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    const-string v0, "deferSplitRotationIfNeeded: trigger"

    .line 119
    .line 120
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_5
    move v2, v4

    .line 125
    :goto_3
    new-instance v0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    .line 126
    .line 127
    invoke-direct {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p1, p2, v2}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setAssistantActivityToSplit(Landroid/content/Intent;FZ)V

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->toBundle()Landroid/os/Bundle;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->onSplitLayoutChangeRequested(Landroid/os/Bundle;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final updateEmbedActivityPackageEnabled(IILjava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    .line 6
    .line 7
    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/ActivityEmbeddedController;->getEnabled(ILjava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-eqz p4, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mActivityEmbeddedController:Lcom/android/server/wm/ActivityEmbeddedController;

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityEmbeddedController;->findTargetUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 28
    .line 29
    invoke-virtual {p0, p3, p2, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final updateMultiSplitAppMinimumSizeLocked()V
    .locals 13

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_ENSURE_APP_SIZE:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitFeasibleMode:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    iput v1, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitFeasibleMode:I

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const v6, 0x1050183

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const v7, 0x1050184

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    mul-int/2addr v6, v1

    .line 41
    sub-int/2addr v7, v6

    .line 42
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    iget v6, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    iget v8, v8, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 53
    .line 54
    const/4 v9, 0x5

    .line 55
    const/4 v10, 0x0

    .line 56
    const/4 v11, 0x1

    .line 57
    if-ne v8, v9, :cond_2

    .line 58
    .line 59
    move v8, v11

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move v8, v10

    .line 62
    :goto_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-nez v9, :cond_4

    .line 67
    .line 68
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOR_COVER_DISPLAY:Z

    .line 69
    .line 70
    if-eqz v9, :cond_3

    .line 71
    .line 72
    if-eqz v8, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const/16 v8, 0x1cc

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    :goto_1
    const/16 v8, 0x1a4

    .line 79
    .line 80
    :goto_2
    if-lt v6, v8, :cond_5

    .line 81
    .line 82
    const v6, 0x105016f

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    const v6, 0x10502bd

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    :goto_3
    move v6, v10

    .line 98
    :goto_4
    const/4 v8, 0x4

    .line 99
    if-ge v6, v8, :cond_f

    .line 100
    .line 101
    if-ne v6, v1, :cond_6

    .line 102
    .line 103
    iget-object v8, v3, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 104
    .line 105
    iget v8, v8, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 106
    .line 107
    if-ne v8, v11, :cond_e

    .line 108
    .line 109
    :cond_6
    if-eq v6, v11, :cond_8

    .line 110
    .line 111
    const/4 v8, 0x3

    .line 112
    if-ne v6, v8, :cond_7

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_7
    move v8, v10

    .line 116
    goto :goto_6

    .line 117
    :cond_8
    :goto_5
    move v8, v11

    .line 118
    :goto_6
    if-eqz v8, :cond_9

    .line 119
    .line 120
    iget v9, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 121
    .line 122
    goto :goto_7

    .line 123
    :cond_9
    iget v9, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 124
    .line 125
    :goto_7
    if-eqz v8, :cond_a

    .line 126
    .line 127
    iget v8, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 128
    .line 129
    goto :goto_8

    .line 130
    :cond_a
    iget v8, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 131
    .line 132
    :goto_8
    invoke-virtual {v4, v6, v9, v8}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    iget-object v9, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    .line 137
    .line 138
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    iget-object v8, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    .line 143
    .line 144
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    mul-int/lit8 v12, v5, 0x2

    .line 149
    .line 150
    add-int/2addr v12, v7

    .line 151
    if-ge v9, v12, :cond_b

    .line 152
    .line 153
    move v9, v11

    .line 154
    goto :goto_9

    .line 155
    :cond_b
    move v9, v10

    .line 156
    :goto_9
    if-ge v8, v12, :cond_c

    .line 157
    .line 158
    move v8, v11

    .line 159
    goto :goto_a

    .line 160
    :cond_c
    move v8, v10

    .line 161
    :goto_a
    if-eqz v9, :cond_d

    .line 162
    .line 163
    if-eqz v8, :cond_d

    .line 164
    .line 165
    iput v10, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitFeasibleMode:I

    .line 166
    .line 167
    goto :goto_b

    .line 168
    :cond_d
    if-eq v9, v8, :cond_e

    .line 169
    .line 170
    iput v11, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitFeasibleMode:I

    .line 171
    .line 172
    goto :goto_b

    .line 173
    :cond_e
    add-int/lit8 v6, v6, 0x1

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_f
    :goto_b
    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    .line 177
    .line 178
    if-nez v4, :cond_10

    .line 179
    .line 180
    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    .line 181
    .line 182
    if-eqz v3, :cond_11

    .line 183
    .line 184
    :cond_10
    move v10, v11

    .line 185
    :cond_11
    if-nez v10, :cond_12

    .line 186
    .line 187
    iget-boolean v3, p0, Lcom/android/server/wm/MultiTaskingController;->mIsDisplaySizeOverride:Z

    .line 188
    .line 189
    if-eqz v3, :cond_14

    .line 190
    .line 191
    :cond_12
    new-instance v3, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    .line 192
    .line 193
    invoke-direct {v3}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>()V

    .line 194
    .line 195
    .line 196
    if-nez v10, :cond_13

    .line 197
    .line 198
    invoke-virtual {v3, v1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setSplitFeasibleMode(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_c

    .line 202
    :cond_13
    iget v1, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitFeasibleMode:I

    .line 203
    .line 204
    invoke-virtual {v3, v1}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->setSplitFeasibleMode(I)V

    .line 205
    .line 206
    .line 207
    :goto_c
    iget-object v1, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 208
    .line 209
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->toBundle()Landroid/os/Bundle;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskOrganizerController;->onSplitLayoutChangeRequested(Landroid/os/Bundle;)V

    .line 214
    .line 215
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string/jumbo v2, "split feasible change, prev="

    .line 219
    .line 220
    .line 221
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v0, ", cur="

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget v0, p0, Lcom/android/server/wm/MultiTaskingController;->mSplitFeasibleMode:I

    .line 233
    .line 234
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v0, ", override="

    .line 238
    .line 239
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const-string v1, "MultiTaskingController"

    .line 250
    .line 251
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    :cond_14
    iput-boolean v10, p0, Lcom/android/server/wm/MultiTaskingController;->mIsDisplaySizeOverride:Z

    .line 255
    .line 256
    return-void
.end method
