.class public final Lcom/android/server/wm/PinnedTaskController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDeferOrientationChanging:Z

.field public final mDeferOrientationTimeoutRunnable:Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;

.field public mDestRotatedBounds:Landroid/graphics/Rect;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFreezingTaskConfig:Z

.field public mImeHeight:I

.field public mIsImeShowing:Z

.field public mMaxAspectRatio:F

.field public mMinAspectRatio:F

.field public mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

.field public final mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

.field public mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedTaskController;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    new-instance p2, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PinnedTaskController;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const p2, 0x1050100

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iput p2, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    .line 36
    .line 37
    const p2, 0x10500ff

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final continueOrientationChange()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAppTransitioning()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final deferOrientationChangeForEnteringPipFromFullScreenIfNeeded()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(ILcom/android/server/wm/ActivityRecord;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    const/high16 v1, 0x3f800000    # 1.0f

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 55
    .line 56
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 57
    .line 58
    mul-float/2addr v1, v2

    .line 59
    float-to-int v1, v1

    .line 60
    int-to-long v1, v1

    .line 61
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method public final notifyMovementBoundsChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :try_start_1
    invoke-interface {p0, p1}, Landroid/view/IPinnedTaskListener;->onMovementBoundsChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    :try_start_2
    const-string p1, "WindowManager"

    .line 26
    .line 27
    const-string v1, "Error delivering actions changed event."

    .line 28
    .line 29
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    throw p0
.end method
