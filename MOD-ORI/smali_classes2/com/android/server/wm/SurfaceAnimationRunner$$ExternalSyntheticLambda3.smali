.class public final synthetic Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

.field public final synthetic f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnim:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    .line 12
    .line 13
    iget-object p0, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    .line 18
    iget-object p0, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {p0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 27
    .line 28
    .line 29
    iget-object p0, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    iput-boolean p0, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    .line 36
    .line 37
    return-void
.end method
