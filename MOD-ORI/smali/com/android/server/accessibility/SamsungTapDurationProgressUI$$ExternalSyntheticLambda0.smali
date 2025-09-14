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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mWindowManager:Landroid/view/WindowManager;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 55
    .line 56
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mUiMode:I

    .line 104
    .line 105
    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 106
    .line 107
    if-ne v1, v2, :cond_5

    .line 108
    .line 109
    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDensityDpi:I

    .line 110
    .line 111
    iget v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 112
    .line 113
    if-eq v1, v3, :cond_6

    .line 114
    .line 115
    :cond_5
    iput v2, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mUiMode:I

    .line 116
    .line 117
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 118
    .line 119
    iput v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDensityDpi:I

    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mWindowManager:Landroid/view/WindowManager;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 132
    .line 133
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const v1, 0x1050575

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    iput v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->makeView()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->makeAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    .line 157
    :catch_0
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 158
    .line 159
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_7

    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 168
    .line 169
    .line 170
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 171
    .line 172
    iget-wide v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDuration:J

    .line 173
    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 175
    .line 176
    .line 177
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 180
    .line 181
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
