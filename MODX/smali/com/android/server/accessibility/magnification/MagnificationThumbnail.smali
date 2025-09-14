.class public final Lcom/android/server/accessibility/magnification/MagnificationThumbnail;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFadingIn:Z

.field public final mSubDisplayWindowManager:Landroid/view/WindowManager;

.field public mThumbnailAnimator:Landroid/animation/ObjectAnimator;

.field public mThumbnailHeight:I

.field public mThumbnailLayout:Landroid/widget/FrameLayout;

.field public mThumbnailView:Landroid/view/View;

.field public mThumbnailWidth:I

.field public mVisible:Z

.field public mWindowBounds:Landroid/graphics/Rect;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/os/Handler;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    .line 7
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mContext:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    .line 11
    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    .line 13
    const-string/jumbo p2, "display"

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 22
    const-string/jumbo p2, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 25
    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 28
    move-result-object p1

    .line 29
    array-length p2, p1

    .line 30
    move p3, v0

    .line 31
    :goto_0
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-ge p3, p2, :cond_1

    .line 35
    aget-object v3, p1, p3

    .line 37
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 40
    move-result v4

    .line 41
    if-ne v4, v1, :cond_0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object v3, v2

    .line 48
    :goto_1
    if-eqz v3, :cond_2

    .line 50
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 55
    move-result-object p1

    .line 56
    const-class p2, Landroid/view/WindowManager;

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 62
    move-object v2, p1

    .line 63
    check-cast v2, Landroid/view/WindowManager;

    .line 65
    :cond_2
    iput-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mSubDisplayWindowManager:Landroid/view/WindowManager;

    .line 67
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->isFlipCoverScreen()Z

    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 73
    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    .line 86
    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowBounds:Landroid/graphics/Rect;

    .line 96
    :goto_2
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 98
    const/16 v6, 0x18

    .line 100
    const/4 v7, -0x2

    .line 101
    const/4 v3, -0x2

    .line 102
    const/4 v4, -0x2

    .line 103
    const/16 v5, 0x7eb

    .line 105
    move-object v2, p1

    .line 106
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 109
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 111
    const/16 p2, 0x53

    .line 113
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 115
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 118
    move-result p2

    .line 119
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 122
    move-result p3

    .line 123
    or-int/2addr p2, p3

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 127
    iput-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 129
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    .line 131
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    .line 133
    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailHeight:I

    .line 135
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    .line 139
    const/4 p3, 0x2

    .line 140
    invoke-direct {p2, p0, p3}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V

    .line 143
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method


# virtual methods
.method public final animateThumbnail(Z)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V

    .line 8
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    .line 10
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    if-eqz p1, :cond_0

    .line 15
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    .line 17
    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V

    .line 20
    const-wide/16 v4, 0x1f4

    .line 22
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mIsFadingIn:Z

    .line 27
    if-ne p1, v1, :cond_1

    .line 29
    return-void

    .line 30
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mIsFadingIn:Z

    .line 32
    if-eqz p1, :cond_3

    .line 34
    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    .line 36
    if-nez v1, :cond_3

    .line 38
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->isFlipCoverScreen()Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mSubDisplayWindowManager:Landroid/view/WindowManager;

    .line 46
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    .line 48
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    .line 50
    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mWindowManager:Landroid/view/WindowManager;

    .line 56
    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    .line 58
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mBackgroundParams:Landroid/view/WindowManager$LayoutParams;

    .line 60
    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mVisible:Z

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    if-eqz v1, :cond_4

    .line 69
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 72
    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailLayout:Landroid/widget/FrameLayout;

    .line 74
    if-eqz p1, :cond_5

    .line 76
    const/high16 v3, 0x3f800000    # 1.0f

    .line 78
    goto :goto_1

    .line 79
    :cond_5
    const/4 v3, 0x0

    .line 80
    :goto_1
    new-array v0, v0, [F

    .line 82
    aput v3, v0, v2

    .line 84
    const-string v2, "alpha"

    .line 86
    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailAnimator:Landroid/animation/ObjectAnimator;

    .line 92
    if-eqz p1, :cond_6

    .line 94
    const-wide/16 v1, 0xc8

    .line 96
    goto :goto_2

    .line 97
    :cond_6
    const-wide/16 v1, 0x3e8

    .line 99
    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 102
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailAnimator:Landroid/animation/ObjectAnimator;

    .line 104
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 106
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 109
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailAnimator:Landroid/animation/ObjectAnimator;

    .line 114
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$1;

    .line 116
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 122
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailAnimator:Landroid/animation/ObjectAnimator;

    .line 124
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 127
    return-void
.end method

.method public final isFlipCoverScreen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mSubDisplayWindowManager:Landroid/view/WindowManager;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    sget-boolean p0, Landroid/view/accessibility/A11yRune;->A11Y_COMMON_BOOL_SUPPORT_LARGE_COVER_SCREEN_FLIP:Z

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final updateThumbnailMainThread(FFF)V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    cmpg-float v1, p1, v0

    .line 5
    if-gtz v1, :cond_0

    .line 7
    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-direct {p1, p0, p2}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationThumbnail;I)V

    .line 13
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mHandler:Landroid/os/Handler;

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->animateThumbnail(Z)V

    .line 23
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 29
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    div-float/2addr v0, p1

    .line 37
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 43
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 48
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 53
    :cond_2
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3

    .line 59
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_3

    .line 65
    iget p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    .line 67
    if-lez p1, :cond_3

    .line 69
    iget p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailHeight:I

    .line 71
    if-lez p1, :cond_3

    .line 73
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 78
    move-result p1

    .line 79
    const v0, 0x3e124925

    .line 82
    mul-float/2addr p2, v0

    .line 83
    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailWidth:I

    .line 85
    int-to-float v1, v1

    .line 86
    const/high16 v2, 0x40000000    # 2.0f

    .line 88
    div-float/2addr v1, v2

    .line 89
    int-to-float p1, p1

    .line 90
    add-float/2addr v1, p1

    .line 91
    sub-float/2addr p2, v1

    .line 92
    mul-float/2addr p3, v0

    .line 93
    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailHeight:I

    .line 95
    int-to-float v0, v0

    .line 96
    div-float/2addr v0, v2

    .line 97
    add-float/2addr v0, p1

    .line 98
    sub-float/2addr p3, v0

    .line 99
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 104
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationThumbnail;->mThumbnailView:Landroid/view/View;

    .line 106
    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 109
    :cond_3
    :goto_1
    return-void
.end method
