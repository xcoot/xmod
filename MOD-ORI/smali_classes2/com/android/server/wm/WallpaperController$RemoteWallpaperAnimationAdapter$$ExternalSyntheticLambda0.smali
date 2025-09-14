.class public final synthetic Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;

.field public final synthetic f$1:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;[Landroid/view/RemoteAnimationTarget;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$1:[Landroid/view/RemoteAnimationTarget;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;

    .line 2
    .line 3
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$1:[Landroid/view/RemoteAnimationTarget;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    const-string/jumbo v1, "mRunner#onAnimationStart for remote wallpaper="

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->this$0:Lcom/android/server/wm/WallpaperController;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 13
    .line 14
    iget-object v7, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 15
    .line 16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 17
    .line 18
    .line 19
    monitor-enter v7

    .line 20
    :try_start_0
    const-string v2, "WindowManager"

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", transaction="

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;->mRunner:Landroid/view/IRemoteAnimationRunner;

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v2, -0x1

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-interface/range {v1 .. v6}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 68
    .line 69
    .line 70
    throw p0
.end method
