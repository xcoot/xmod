.class public final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

.field public final synthetic this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    const/16 v0, 0xff

    .line 8
    .line 9
    filled-new-array {p3, v0}, [I

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    const-string v0, "alpha"

    .line 14
    .line 15
    invoke-static {p1, v0, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    .line 22
    .line 23
    const/high16 p3, 0x40200000    # 2.5f

    .line 24
    .line 25
    invoke-direct {p0, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const p3, 0x10e0002

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    int-to-long p2, p2

    .line 40
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v2

    .line 15
    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 16
    .line 17
    if-ne p1, v1, :cond_4

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;->this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    const/16 p1, 0xff

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
.end method
