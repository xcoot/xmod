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

    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 3
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 8
    iget-object v0, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    .line 10
    iget-boolean v1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    .line 12
    const/16 v2, 0x8

    .line 14
    if-nez v1, :cond_1

    .line 16
    iget-boolean p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    .line 18
    if-eqz p1, :cond_0

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

    .line 27
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 29
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    .line 31
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 36
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 38
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    return-void

    .line 42
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 44
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 46
    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 51
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 53
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

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

    .line 3
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 8
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 15
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 17
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 25
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mCircle:Landroid/widget/ImageView;

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 31
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 33
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 38
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 40
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 45
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 47
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 49
    const v0, 0x3f4ccccd    # 0.8f

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 55
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 57
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 62
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 64
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 71
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 73
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mProgress:Landroid/widget/ProgressBar;

    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 79
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 81
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 83
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 86
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;->this$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 88
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 90
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

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
