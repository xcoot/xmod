.class public final synthetic Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SurfaceAnimator;

.field public final synthetic f$1:Lcom/android/server/wm/AnimationAdapter;

.field public final synthetic f$2:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/SurfaceAnimator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/AnimationAdapter;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;->f$3:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/SurfaceAnimator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/AnimationAdapter;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/wm/SurfaceAnimator$$ExternalSyntheticLambda1;->f$3:I

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 10
    .line 11
    if-eq v1, v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 15
    .line 16
    iget-object v4, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 17
    .line 18
    invoke-interface {v4}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/SurfaceAnimator;->reset(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 24
    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v2, p0, v1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-interface {v3, p0, v1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method
