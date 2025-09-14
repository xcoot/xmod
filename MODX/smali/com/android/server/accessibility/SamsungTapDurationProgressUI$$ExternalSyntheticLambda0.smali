.class public final synthetic Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 18
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    .line 23
    if-nez v0, :cond_2

    .line 25
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    .line 27
    if-eqz v0, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 32
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    .line 38
    const/16 v1, 0x8

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    :goto_1
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mWindowManager:Landroid/view/WindowManager;

    .line 52
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 54
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 56
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    return-void

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    .line 62
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    .line 70
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 75
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 83
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 86
    :cond_4
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 88
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 91
    return-void

    .line 92
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    .line 102
    move-result-object v0

    .line 103
    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mUiMode:I

    .line 105
    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 107
    if-ne v1, v2, :cond_5

    .line 109
    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDensityDpi:I

    .line 111
    iget v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 113
    if-eq v1, v3, :cond_6

    .line 115
    :cond_5
    iput v2, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mUiMode:I

    .line 117
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 119
    iput v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDensityDpi:I

    .line 121
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 129
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mWindowManager:Landroid/view/WindowManager;

    .line 131
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 133
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    move-result-object v0

    .line 142
    const v1, 0x1050575

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 148
    move-result v0

    .line 149
    iput v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    .line 151
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->makeView()V

    .line 154
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->makeAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :catch_0
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 159
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_7

    .line 165
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 167
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 172
    iget-wide v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDuration:J

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 177
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    .line 179
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 182
    return-void

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
