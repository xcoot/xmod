.class public final Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallingPid:I

.field public final mRemoteWallpaperAnimArea:Lcom/android/server/wm/DisplayArea;

.field public final mRunner:Landroid/view/IRemoteAnimationRunner;

.field public final mRunnerToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WallpaperController;Landroid/os/IBinder;Lcom/android/server/wm/DisplayArea;ILandroid/view/IRemoteAnimationRunner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->this$0:Lcom/android/server/wm/WallpaperController;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mRunnerToken:Landroid/os/IBinder;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    iput-object p3, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mRemoteWallpaperAnimArea:Lcom/android/server/wm/DisplayArea;

    .line 15
    .line 16
    iput p4, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mCallingPid:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->this$0:Lcom/android/server/wm/WallpaperController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mRemoteWallpaperAnimArea:Lcom/android/server/wm/DisplayArea;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, "RemoteWallpaperAnimAdapter callingPid="

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p0, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mCallingPid:I

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final dumpDebug$1(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getDurationHint()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getShowWallpaper()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getStatusBarTransitionsStartTime()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "mRunner#onAnimationCancelled, leash="

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v1, "WindowManager"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, ", caller="

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x5

    .line 20
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    .line 35
    .line 36
    invoke-interface {p0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :catch_0
    return-void
.end method

.method public final startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v13, p2

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "startAnimation for remote wallpaper, leash="

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "WindowManager"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    new-array v12, v1, [Landroid/view/RemoteAnimationTarget;

    .line 29
    .line 30
    new-instance v18, Landroid/view/RemoteAnimationTarget;

    .line 31
    .line 32
    move-object/from16 v1, v18

    .line 33
    .line 34
    new-instance v2, Landroid/graphics/Point;

    .line 35
    .line 36
    move-object v9, v2

    .line 37
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v14, 0x0

    .line 41
    const/4 v15, 0x0

    .line 42
    const/4 v2, -0x1

    .line 43
    const/4 v3, -0x1

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v8, -0x1

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v11, 0x0

    .line 50
    const/16 v16, 0x0

    .line 51
    .line 52
    move-object/from16 v19, v12

    .line 53
    .line 54
    move-object/from16 v12, v16

    .line 55
    .line 56
    const/16 v16, 0x1

    .line 57
    .line 58
    move/from16 v13, v16

    .line 59
    .line 60
    const/16 v16, 0x0

    .line 61
    .line 62
    const/16 v17, 0x0

    .line 63
    .line 64
    move-object v0, v4

    .line 65
    move-object/from16 v4, p1

    .line 66
    .line 67
    invoke-direct/range {v1 .. v17}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    move-object/from16 v2, v19

    .line 72
    .line 73
    aput-object v18, v2, v1

    .line 74
    .line 75
    move-object/from16 v1, p2

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 78
    .line 79
    .line 80
    const/high16 v3, 0x3f800000    # 1.0f

    .line 81
    .line 82
    invoke-virtual {v1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 83
    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string/jumbo v3, "startRemoteWallpaperAnimation_"

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    move-object/from16 v3, p0

    .line 94
    .line 95
    iget-object v4, v3, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    .line 96
    .line 97
    invoke-interface {v4}, Landroid/view/IRemoteAnimationRunner;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->addLowDebugName(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v4, Landroid/os/HandlerExecutor;

    .line 112
    .line 113
    iget-object v5, v3, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->this$0:Lcom/android/server/wm/WallpaperController;

    .line 114
    .line 115
    iget-object v5, v5, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 116
    .line 117
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 118
    .line 119
    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 120
    .line 121
    .line 122
    new-instance v5, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    invoke-direct {v5, v3, v2, v0}, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;[Landroid/view/RemoteAnimationTarget;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 128
    .line 129
    .line 130
    return-void
.end method
