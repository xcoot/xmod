.class public final Lcom/android/server/accessibility/SamsungTapDurationProgressUI;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mArrow:Landroid/widget/ImageView;

.field public mBackground:Landroid/widget/ImageView;

.field public mCircle:Landroid/widget/ImageView;

.field public mContext:Landroid/content/Context;

.field public mDensityDpi:I

.field public mDisplay:Landroid/view/Display;

.field public mDuration:J

.field public mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field public mFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field public final mHandler:Landroid/os/Handler;

.field public mHold:Landroid/widget/ImageView;

.field public mIsRemoveAnimationEnabled:Z

.field public mIsShortThreshold:Z

.field public final mNavigationBarHeight:I

.field public mParams:Landroid/view/WindowManager$LayoutParams;

.field public mProgress:Landroid/widget/ProgressBar;

.field public mRotationSet:Landroid/animation/AnimatorSet;

.field public mScaleSet:Landroid/animation/AnimatorSet;

.field public mSize:I

.field public mStandBy:Landroid/widget/ImageView;

.field public mUiMode:I

.field public final mUiThread:Ljava/lang/Thread;

.field public mView:Landroid/view/View;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHandler:Landroid/os/Handler;

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mUiThread:Ljava/lang/Thread;

    .line 17
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    move-result-object p1

    .line 27
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 29
    iput p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mUiMode:I

    .line 31
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 40
    move-result-object p1

    .line 41
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 43
    iput p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDensityDpi:I

    .line 45
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object p1

    .line 51
    const v0, 0x1050575

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mSize:I

    .line 60
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object p1

    .line 66
    const v0, 0x1110227

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 72
    move-result p1

    .line 73
    const/4 v0, 0x0

    .line 74
    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    move-result-object p1

    .line 82
    const v1, 0x10502c9

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 88
    move-result p1

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    move p1, v0

    .line 91
    :goto_0
    iput p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mNavigationBarHeight:I

    .line 93
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 98
    move-result-object p1

    .line 99
    const-string/jumbo v1, "remove_animations"

    .line 102
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 105
    move-result p1

    .line 106
    const/4 v1, 0x1

    .line 107
    if-ne p1, v1, :cond_1

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    move v1, v0

    .line 111
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->makeView()V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->makeAnimation()V

    .line 121
    return-void
.end method


# virtual methods
.method public final makeAnimation()V
    .locals 9

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 3
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    .line 8
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 10
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 15
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 17
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 19
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v4, v3, [F

    .line 24
    fill-array-data v4, :array_0

    .line 27
    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 33
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 35
    new-array v5, v3, [F

    .line 37
    fill-array-data v5, :array_1

    .line 40
    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 43
    move-result-object v1

    .line 44
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    .line 46
    new-array v5, v3, [Landroid/animation/Animator;

    .line 48
    const/4 v6, 0x0

    .line 49
    aput-object v0, v5, v6

    .line 51
    const/4 v0, 0x1

    .line 52
    aput-object v1, v5, v0

    .line 54
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 57
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    .line 59
    const-wide/16 v4, 0x15e

    .line 61
    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 64
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    .line 66
    new-instance v4, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;

    .line 68
    invoke-direct {v4, p0, v6}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V

    .line 71
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mScaleSet:Landroid/animation/AnimatorSet;

    .line 76
    new-instance v4, Landroid/view/animation/PathInterpolator;

    .line 78
    const v5, 0x3e6147ae    # 0.22f

    .line 81
    const v7, 0x3e2e147b    # 0.17f

    .line 84
    const/4 v8, 0x0

    .line 85
    invoke-direct {v4, v5, v7, v8, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 88
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 91
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mCircle:Landroid/widget/ImageView;

    .line 93
    sget-object v2, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 95
    new-array v4, v3, [F

    .line 97
    fill-array-data v4, :array_2

    .line 100
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 103
    move-result-object v1

    .line 104
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    .line 106
    new-array v5, v3, [F

    .line 108
    fill-array-data v5, :array_3

    .line 111
    invoke-static {v4, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 114
    move-result-object v2

    .line 115
    new-instance v4, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$2;

    .line 117
    invoke-direct {v4, p0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$2;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;)V

    .line 120
    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mRotationSet:Landroid/animation/AnimatorSet;

    .line 125
    new-array v5, v3, [Landroid/animation/Animator;

    .line 127
    aput-object v1, v5, v6

    .line 129
    aput-object v2, v5, v0

    .line 131
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 134
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    .line 136
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 138
    new-array v4, v3, [F

    .line 140
    fill-array-data v4, :array_4

    .line 143
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 146
    move-result-object v1

    .line 147
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 149
    const-wide/16 v4, 0x64

    .line 151
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 154
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 156
    new-array v3, v3, [F

    .line 158
    fill-array-data v3, :array_5

    .line 161
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 164
    move-result-object v1

    .line 165
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 167
    const-wide/16 v2, 0x96

    .line 169
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 172
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 174
    new-instance v2, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;

    .line 176
    invoke-direct {v2, p0, v0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI$1;-><init>(Lcom/android/server/accessibility/SamsungTapDurationProgressUI;I)V

    .line 179
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    return-void

    .line 183
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 191
    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 199
    :array_2
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final makeView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v1, "window"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/WindowManager;

    .line 12
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mWindowManager:Landroid/view/WindowManager;

    .line 14
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mDisplay:Landroid/view/Display;

    .line 20
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 22
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 26
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 31
    const/4 v1, -0x2

    .line 32
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 34
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 36
    const/16 v1, 0x7d6

    .line 38
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 40
    const/16 v1, 0x708

    .line 42
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 44
    const/4 v1, -0x3

    .line 45
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 47
    const/16 v1, 0x33

    .line 49
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 51
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 53
    const/high16 v2, 0x20000

    .line 55
    or-int/2addr v1, v2

    .line 56
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 58
    const/4 v1, 0x1

    .line 59
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 66
    move-result-object v0

    .line 67
    const v1, 0x10900b3

    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 85
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 87
    const/16 v1, 0x8

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 94
    const v1, 0x1020620

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/ImageView;

    .line 103
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mCircle:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 107
    const v1, 0x102061e

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Landroid/widget/ImageView;

    .line 116
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 120
    const v1, 0x102061f

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/ImageView;

    .line 129
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mBackground:Landroid/widget/ImageView;

    .line 131
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 133
    const v1, 0x1020626

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/ProgressBar;

    .line 142
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mProgress:Landroid/widget/ProgressBar;

    .line 144
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 146
    const v1, 0x1020627

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Landroid/widget/ImageView;

    .line 155
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    .line 157
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 159
    const v1, 0x1020621

    .line 162
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Landroid/widget/ImageView;

    .line 168
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    .line 170
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->setRemoveAnimationEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mWindowManager:Landroid/view/WindowManager;

    .line 177
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mView:Landroid/view/View;

    .line 179
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 181
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    return-void
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mUiThread:Ljava/lang/Thread;

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHandler:Landroid/os/Handler;

    .line 11
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 18
    :goto_0
    return-void
.end method

.method public final setRemoveAnimationEnabled(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsRemoveAnimationEnabled:Z

    .line 3
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mCircle:Landroid/widget/ImageView;

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 8
    if-nez p1, :cond_1

    .line 10
    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    .line 12
    if-eqz v3, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    move v3, v2

    .line 18
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mArrow:Landroid/widget/ImageView;

    .line 23
    if-nez p1, :cond_3

    .line 25
    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    .line 27
    if-eqz v3, :cond_2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move v3, v1

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    :goto_2
    move v3, v2

    .line 33
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mBackground:Landroid/widget/ImageView;

    .line 38
    if-nez p1, :cond_5

    .line 40
    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    .line 42
    if-eqz v3, :cond_4

    .line 44
    goto :goto_4

    .line 45
    :cond_4
    move v3, v1

    .line 46
    goto :goto_5

    .line 47
    :cond_5
    :goto_4
    move v3, v2

    .line 48
    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mProgress:Landroid/widget/ProgressBar;

    .line 53
    if-nez p1, :cond_7

    .line 55
    iget-boolean v3, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    .line 57
    if-eqz v3, :cond_6

    .line 59
    goto :goto_6

    .line 60
    :cond_6
    move v3, v1

    .line 61
    goto :goto_7

    .line 62
    :cond_7
    :goto_6
    move v3, v2

    .line 63
    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mStandBy:Landroid/widget/ImageView;

    .line 68
    if-nez p1, :cond_9

    .line 70
    iget-boolean p1, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mIsShortThreshold:Z

    .line 72
    if-eqz p1, :cond_8

    .line 74
    goto :goto_8

    .line 75
    :cond_8
    move v1, v2

    .line 76
    :cond_9
    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->mHold:Landroid/widget/ImageView;

    .line 81
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    return-void
.end method
