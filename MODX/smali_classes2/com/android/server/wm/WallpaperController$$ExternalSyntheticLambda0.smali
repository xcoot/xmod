.class public final synthetic Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WallpaperController;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WallpaperController;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WallpaperController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WallpaperController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 4
    .line 5
    iget-object p2, p1, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter p2

    .line 13
    :try_start_0
    iget-object p1, p1, Lcom/android/server/wm/WallpaperController;->mRemoteWallpaperAnimAreaMap:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    throw p0
.end method
