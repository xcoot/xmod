.class public final Lcom/android/server/wm/RecentsAnimationController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAppTransitionListener:Lcom/android/server/wm/RecentsAnimationController$1;

.field public final mCallbacks:Lcom/android/server/wm/RecentsAnimation;

.field public mCancelDeferredWithScreenshot:Z

.field public mCancelOnNextTransitionStart:Z

.field public mCanceled:Z

.field public final mController:Lcom/android/server/wm/RecentsAnimationController$2;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayId:I

.field public final mFailsafeRunnable:Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;

.field public mInputConsumerEnabled:Z

.field mIsAddingTaskToTargets:Z

.field public mLinkedToDeathOfRunner:Z

.field public mNavBarAttachedApp:Lcom/android/server/wm/ActivityRecord;

.field public mNavigationBarAttachedToApp:Z

.field public final mPendingAnimations:Ljava/util/ArrayList;

.field public mPendingCancelWithScreenshotReorderMode:I

.field public final mPendingNewTaskTargets:Landroid/util/IntArray;

.field public mPendingStart:Z

.field public final mPendingTaskAppears:Ljava/util/ArrayList;

.field public final mPendingWallpaperAnimations:Ljava/util/ArrayList;

.field public mRequestDeferCancelUntilNextTransition:Z

.field public mRunner:Landroid/view/IRecentsAnimationRunner;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field final mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mTargetActivityType:I

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mWillFinishToHome:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/wm/RecentsAnimationController;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimation;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/util/IntArray;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingNewTaskTargets:Landroid/util/IntArray;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 37
    .line 38
    new-instance v0, Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    iput v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingCancelWithScreenshotReorderMode:I

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    .line 54
    .line 55
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$1;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$1;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mAppTransitionListener:Lcom/android/server/wm/RecentsAnimationController$1;

    .line 61
    .line 62
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$2;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$2;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mController:Lcom/android/server/wm/RecentsAnimationController$2;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 70
    .line 71
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 72
    .line 73
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimation;

    .line 74
    .line 75
    iput p4, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    .line 76
    .line 77
    const-class p2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 78
    .line 79
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 84
    .line 85
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 88
    .line 89
    invoke-virtual {p1, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    move-result-object p0

    return-object p0
.end method

.method public addAnimation(Lcom/android/server/wm/Task;ZZLcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .locals 14

    move-object v0, p0

    .line 2
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v6, 0x0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x34c1a190cc27cc4aL    # -2.908761237186011E54

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :cond_0
    new-instance v1, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    move-object v2, p1

    move/from16 v3, p2

    invoke-direct {v1, p0, p1, v3}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;-><init>(Lcom/android/server/wm/RecentsAnimationController;Lcom/android/server/wm/Task;Z)V

    .line 4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    const/16 v12, 0x8

    move-object v8, p1

    move-object v10, v1

    move/from16 v11, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 6
    iget-object v0, v0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final binderDied()V
    .locals 3

    .line 1
    const-string v0, "binderDied"

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->continueDeferredCancelAnimation()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 24
    .line 25
    const-string/jumbo v1, "recents_animation_input_consumer"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, v1, Lcom/android/server/wm/InputConsumerImpl;->mToken:Landroid/os/IBinder;

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputMonitor;->destroyInputConsumer(Landroid/os/IBinder;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_1
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final cancelAnimation(ILjava/lang/String;Z)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 13
    .line 14
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    const-wide v3, 0x4b90498bc1253138L    # 9.98407894308193E55

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 29
    .line 30
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    monitor-exit p2

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 53
    .line 54
    if-eqz p3, :cond_3

    .line 55
    .line 56
    iget-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-nez p3, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->screenshotRecentTasks()Landroid/util/ArrayMap;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    iput p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingCancelWithScreenshotReorderMode:I

    .line 69
    .line 70
    invoke-virtual {p3}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    :try_start_1
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    new-array p1, p1, [I

    .line 81
    .line 82
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    new-array v1, v1, [Landroid/window/TaskSnapshot;

    .line 87
    .line 88
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    sub-int/2addr v2, v0

    .line 93
    :goto_0
    if-ltz v2, :cond_2

    .line 94
    .line 95
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/android/server/wm/Task;

    .line 100
    .line 101
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 102
    .line 103
    aput v0, p1, v2

    .line 104
    .line 105
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroid/window/TaskSnapshot;

    .line 110
    .line 111
    aput-object v0, v1, v2

    .line 112
    .line 113
    add-int/lit8 v2, v2, -0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception p1

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    iget-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 119
    .line 120
    invoke-interface {p3, p1, v1}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :goto_1
    :try_start_2
    const-string p3, "RecentsAnimationController"

    .line 125
    .line 126
    const-string v0, "Failed to cancel recents animation"

    .line 127
    .line 128
    invoke-static {p3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .line 130
    .line 131
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 132
    .line 133
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 134
    .line 135
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda0;

    .line 136
    .line 137
    const-wide/16 v0, 0x3e8

    .line 138
    .line 139
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    .line 141
    .line 142
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    return-void

    .line 144
    :cond_3
    :try_start_3
    iget-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 145
    .line 146
    const/4 v0, 0x0

    .line 147
    invoke-interface {p3, v0, v0}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :catch_1
    move-exception p3

    .line 152
    :try_start_4
    const-string v0, "RecentsAnimationController"

    .line 153
    .line 154
    const-string v2, "Failed to cancel recents animation"

    .line 155
    .line 156
    invoke-static {v0, v2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .line 158
    .line 159
    :goto_3
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimation;

    .line 160
    .line 161
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/RecentsAnimation;->onAnimationFinished(IZ)V

    .line 162
    .line 163
    .line 164
    monitor-exit p2

    .line 165
    return-void

    .line 166
    :goto_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 167
    throw p0
.end method

.method public continueDeferredCancelAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimation;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingCancelWithScreenshotReorderMode:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/RecentsAnimation;->onAnimationFinished(IZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getNavigationBarWindow()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    return-object p0
.end method

.method public final isAnimatingTask(Lcom/android/server/wm/Task;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 20
    .line 21
    if-ne p1, v2, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    if-ne p1, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 11
    .line 12
    int-to-long v0, v0

    .line 13
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

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
    const-wide v3, 0x33a554833de13e71L    # 6.636885493469724E-60

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v2, p1, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    iput-object v0, p1, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 54
    .line 55
    :cond_1
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, v1, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 57
    .line 58
    iget-object v0, p1, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 59
    .line 60
    iget v1, p1, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mLastAnimationType:I

    .line 61
    .line 62
    invoke-interface {v0, v1, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public removeWallpaperAnimation(Lcom/android/server/wm/WallpaperAnimationAdapter;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const-wide v2, 0x478f3d8892213e7eL    # 5.190695995376174E36

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WallpaperAnimationAdapter;->mCapturedLeashFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 22
    .line 23
    iget v1, p1, Lcom/android/server/wm/WallpaperAnimationAdapter;->mLastAnimationType:I

    .line 24
    .line 25
    invoke-interface {v0, v1, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public restoreNavigationBarFromApp(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavigationBarAttachedToApp:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mNavigationBarAttachedToApp:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    .line 15
    .line 16
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    :try_start_0
    invoke-interface {v1, v3, v2}, Lcom/android/internal/statusbar/IStatusBar;->setNavigationBarLumaSamplingEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :catch_0
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/RecentsAnimationController;->getNavigationBarWindow()Lcom/android/server/wm/WindowState;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iput v0, v1, Lcom/android/server/wm/WindowState;->mSurfaceTranslationY:I

    .line 35
    .line 36
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 58
    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    new-instance p1, Lcom/android/server/wm/NavBarFadeAnimationController;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v2}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeWindowToken(Z)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 80
    .line 81
    .line 82
    :goto_0
    return-void
.end method

.method public final screenshotRecentTasks()Landroid/util/ArrayMap;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 6
    .line 7
    new-instance v8, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/lit8 v2, v2, -0x1

    .line 19
    .line 20
    move v9, v2

    .line 21
    :goto_0
    if-ltz v9, :cond_3

    .line 22
    .line 23
    iget-object v2, v0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-object v10, v2

    .line 30
    check-cast v10, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 31
    .line 32
    iget-object v11, v10, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 33
    .line 34
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_0
    invoke-virtual {v1, v11}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    .line 43
    .line 44
    .line 45
    iget v3, v11, Lcom/android/server/wm/Task;->mTaskId:I

    .line 46
    .line 47
    iget v4, v11, Lcom/android/server/wm/Task;->mUserId:I

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    move-object v2, v1

    .line 53
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZZ)Landroid/window/TaskSnapshot;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {v8, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_1
    new-instance v4, Landroid/view/SurfaceSession;

    .line 71
    .line 72
    invoke-direct {v4}, Landroid/view/SurfaceSession;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v5, v10, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 76
    .line 77
    iget-object v5, v5, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 78
    .line 79
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSurfaceControlFactory:Ljava/util/function/Function;

    .line 80
    .line 81
    invoke-interface {v5, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Landroid/view/SurfaceControl$Builder;

    .line 86
    .line 87
    const-string v5, "RecentTaskScreenshotSurface"

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const-string v5, "TaskAnimationAdapter.setSnapshotOverlay"

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->getFormat()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    iget-object v5, v10, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 108
    .line 109
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    iput-object v4, v10, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 122
    .line 123
    iget-object v4, v10, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    int-to-float v5, v5

    .line 134
    const/high16 v6, 0x3f800000    # 1.0f

    .line 135
    .line 136
    mul-float/2addr v5, v6

    .line 137
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->getWidth()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    int-to-float v6, v6

    .line 142
    div-float v16, v5, v6

    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    iget-object v5, v10, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 149
    .line 150
    invoke-static {v3}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v4, v5, v3}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    iget-object v4, v10, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 159
    .line 160
    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v3, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iget-object v3, v10, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 169
    .line 170
    const v4, 0x7fffffff

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 174
    .line 175
    .line 176
    move-result-object v11

    .line 177
    iget-object v12, v10, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 178
    .line 179
    const/4 v14, 0x0

    .line 180
    const/4 v15, 0x0

    .line 181
    move/from16 v13, v16

    .line 182
    .line 183
    invoke-virtual/range {v11 .. v16}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iget-object v3, v10, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mSnapshotOverlay:Landroid/view/SurfaceControl;

    .line 188
    .line 189
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 194
    .line 195
    .line 196
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, -0x1

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_3
    invoke-virtual {v8}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V

    .line 205
    .line 206
    .line 207
    return-object v8
.end method

.method public final sendTasksAppeared()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Landroid/view/IRecentsAnimationRunner;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingTaskAppears:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    const-string v0, "RecentsAnimationController"

    .line 38
    .line 39
    const-string v1, "Failed to report task appeared"

    .line 40
    .line 41
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public setWillFinishToHome(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mWillFinishToHome:Z

    .line 2
    .line 3
    return-void
.end method

.method public final shouldApplyInputConsumer(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    :goto_0
    if-ltz v0, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    :goto_1
    return v1
.end method

.method public final startAnimation()V
    .locals 14

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v2, v0, v1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 9
    .line 10
    iget-boolean v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 11
    .line 12
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    const/16 v7, 0xf

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    const-wide v5, -0x1bb9bdbb9bd4cd4dL    # -1.1010583615349303E175

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 38
    .line 39
    if-eqz v2, :cond_9

    .line 40
    .line 41
    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    goto/16 :goto_7

    .line 46
    .line 47
    :cond_1
    const/4 v2, 0x1

    .line 48
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    sub-int/2addr v4, v2

    .line 60
    :goto_0
    if-ltz v4, :cond_3

    .line 61
    .line 62
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 69
    .line 70
    const/4 v6, -0x1

    .line 71
    invoke-virtual {v5, v6, v6}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->createRemoteAnimationTarget(II)Landroid/view/RemoteAnimationTarget;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    new-array v4, v4, [Landroid/view/RemoteAnimationTarget;

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    move-object v6, v3

    .line 98
    check-cast v6, [Landroid/view/RemoteAnimationTarget;

    .line 99
    .line 100
    array-length v3, v6

    .line 101
    if-nez v3, :cond_4

    .line 102
    .line 103
    const-string/jumbo v0, "startAnimation-noAppWindows"

    .line 104
    .line 105
    .line 106
    const/4 v3, 0x2

    .line 107
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    goto/16 :goto_5

    .line 113
    .line 114
    :cond_4
    aget-boolean v3, v0, v1

    .line 115
    .line 116
    if-eqz v3, :cond_5

    .line 117
    .line 118
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 119
    .line 120
    const/4 v11, 0x0

    .line 121
    const/4 v12, 0x0

    .line 122
    const-wide v8, 0x235aa408845931bbL

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    const/4 v10, 0x0

    .line 128
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 132
    .line 133
    new-instance v12, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda1;

    .line 134
    .line 135
    const/4 v3, 0x1

    .line 136
    invoke-direct {v12, v3, p0}, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object v13, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 140
    .line 141
    const-wide/16 v8, 0x0

    .line 142
    .line 143
    const-wide/16 v10, 0x0

    .line 144
    .line 145
    invoke-static/range {v7 .. v13}, Lcom/android/server/wm/WallpaperAnimationAdapter;->startWallpaperAnimations(Lcom/android/server/wm/DisplayContent;JJLjava/util/function/Consumer;Ljava/util/ArrayList;)[Landroid/view/RemoteAnimationTarget;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 150
    .line 151
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 152
    .line 153
    if-nez v3, :cond_6

    .line 154
    .line 155
    const/4 v3, 0x0

    .line 156
    goto :goto_2

    .line 157
    :cond_6
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    :goto_2
    if-eqz v3, :cond_7

    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 168
    .line 169
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    invoke-virtual {v3, v4, v5, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v3}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    :goto_3
    move-object v8, v3

    .line 186
    goto :goto_4

    .line 187
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 188
    .line 189
    iget v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    .line 190
    .line 191
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 192
    .line 193
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 194
    .line 195
    .line 196
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :goto_4
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 200
    .line 201
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mController:Lcom/android/server/wm/RecentsAnimationController$2;

    .line 202
    .line 203
    new-instance v10, Landroid/os/Bundle;

    .line 204
    .line 205
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 206
    .line 207
    .line 208
    const/4 v9, 0x0

    .line 209
    invoke-interface/range {v4 .. v10}, Landroid/view/IRecentsAnimationRunner;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 210
    .line 211
    .line 212
    aget-boolean v0, v0, v1

    .line 213
    .line 214
    if-eqz v0, :cond_8

    .line 215
    .line 216
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    new-instance v1, Lcom/android/server/wm/RecentsAnimationController$$ExternalSyntheticLambda5;

    .line 223
    .line 224
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 244
    .line 245
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    const/4 v6, 0x0

    .line 250
    const/4 v7, 0x0

    .line 251
    const-wide v4, -0x688815d0d030cf7bL    # -1.2797032199935463E-195

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :goto_5
    const-string v1, "RecentsAnimationController"

    .line 261
    .line 262
    const-string v3, "Failed to start recents animation"

    .line 263
    .line 264
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .line 266
    .line 267
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 268
    .line 269
    if-eqz v0, :cond_9

    .line 270
    .line 271
    new-instance v0, Landroid/util/ArrayMap;

    .line 272
    .line 273
    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 274
    .line 275
    .line 276
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 277
    .line 278
    const/4 v2, 0x5

    .line 279
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    iget-object p0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 287
    .line 288
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 289
    .line 290
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 291
    .line 292
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 293
    .line 294
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    .line 295
    .line 296
    .line 297
    :cond_9
    :goto_7
    return-void
.end method
