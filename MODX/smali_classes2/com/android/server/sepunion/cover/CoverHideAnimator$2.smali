.class public final Lcom/android/server/sepunion/cover/CoverHideAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Lcom/android/server/sepunion/cover/CoverHideAnimator$1;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-wide/16 v1, 0x96

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-wide/16 v1, 0x12c

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeOutAnimatorListener:Lcom/android/server/sepunion/cover/CoverHideAnimator$3;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
