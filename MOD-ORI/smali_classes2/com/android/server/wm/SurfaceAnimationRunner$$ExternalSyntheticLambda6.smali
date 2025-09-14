.class public final synthetic Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

.field public final synthetic f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

.field public final synthetic f$2:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda6;->f$2:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda6;->f$2:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    cmp-long p0, v4, v2

    .line 23
    .line 24
    if-lez p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-wide v2, v4

    .line 28
    :goto_0
    iget-object p0, p1, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 29
    .line 30
    iget-object v4, v0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    .line 33
    .line 34
    invoke-interface {v4, p0, v0, v2, v3}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget-boolean p0, p1, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    .line 42
    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    iget-object p0, p1, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    .line 46
    .line 47
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v2, 0x3

    .line 51
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x1

    .line 55
    iput-boolean p0, p1, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    .line 56
    .line 57
    :cond_2
    return-void

    .line 58
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p0
.end method
