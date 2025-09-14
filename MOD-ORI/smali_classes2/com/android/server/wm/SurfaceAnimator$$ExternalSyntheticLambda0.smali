.class public final synthetic Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimator;

.field public final synthetic f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SurfaceAnimator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SurfaceAnimator;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/wm/SurfaceAnimator;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object p0, v2, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 26
    .line 27
    invoke-interface {p0, p1, p2}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 28
    .line 29
    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 38
    .line 39
    if-eq p2, v2, :cond_1

    .line 40
    .line 41
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :try_start_2
    new-instance v2, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    invoke-direct {v2, v0, p2, p0, p1}, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V

    .line 49
    .line 50
    .line 51
    iget-object p0, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 52
    .line 53
    invoke-interface {p0, v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_2

    .line 58
    .line 59
    invoke-interface {p2}, Lcom/android/server/wm/AnimationAdapter;->shouldDeferAnimationFinish()Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;->run()V

    .line 66
    .line 67
    .line 68
    :cond_2
    const/4 p0, 0x1

    .line 69
    iput-boolean p0, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinished:Z

    .line 70
    .line 71
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 78
    .line 79
    .line 80
    throw p0
.end method
