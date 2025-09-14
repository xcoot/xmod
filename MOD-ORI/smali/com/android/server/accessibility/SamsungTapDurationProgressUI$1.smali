.class public final Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onAnimationCancel$com$android$server$accessibility$SamsungTapDurationProgressUI$1(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationCancel$com$android$server$accessibility$SamsungTapDurationProgressUI$3(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationRepeat$com$android$server$accessibility$SamsungTapDurationProgressUI$1(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onAnimationRepeat$com$android$server$accessibility$SamsungTapDurationProgressUI$3(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    .line 9
    .line 10
    iget-boolean v1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-boolean p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p1, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 45
    .line 46
    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mCircle:Landroid/widget/ImageView;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 48
    .line 49
    const v0, 0x3f4ccccd    # 0.8f

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 65
    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mProgress:Landroid/widget/ProgressBar;

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
