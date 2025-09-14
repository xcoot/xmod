.class public final Lcom/android/server/sepunion/cover/CoverHideAnimator$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x65

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x66

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->removeViewFromWindow()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "handleStartAnimation : mCoverHideView is not null!!"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->removeViewFromWindow()V

    .line 41
    .line 42
    .line 43
    :cond_2
    new-instance p1, Landroid/view/View;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 57
    .line 58
    const/high16 v0, -0x1000000

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-wide/16 v0, 0x64

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeInAnimatorListener:Lcom/android/server/sepunion/cover/CoverHideAnimator$2;

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWm:Landroid/view/WindowManager;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    .line 97
    .line 98
    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_0
    return-void
.end method
