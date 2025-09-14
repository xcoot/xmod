.class public final Lcom/android/server/sepunion/cover/CoverHideAnimator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mAnimationInterpolator:Landroid/view/animation/Interpolator;

.field public mCallbackRunnable:Ljava/lang/Runnable;

.field public final mContext:Landroid/content/Context;

.field public mCoverHideView:Landroid/view/View;

.field public final mFadeInAnimatorListener:Lcom/android/server/sepunion/cover/CoverHideAnimator$2;

.field public final mFadeOutAnimatorListener:Lcom/android/server/sepunion/cover/CoverHideAnimator$3;

.field public final mHandler:Lcom/android/server/sepunion/cover/CoverHideAnimator$1;

.field public final mWindowLP:Landroid/view/WindowManager$LayoutParams;

.field public final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "CoverManager_CoverHideAnimator"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;-><init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeInAnimatorListener:Lcom/android/server/sepunion/cover/CoverHideAnimator$2;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;-><init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeOutAnimatorListener:Lcom/android/server/sepunion/cover/CoverHideAnimator$3;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const-string/jumbo v0, "window"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/view/WindowManager;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWm:Landroid/view/WindowManager;

    .line 44
    .line 45
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 46
    .line 47
    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    .line 51
    .line 52
    const-string v0, "clear cover animation"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    const/16 v0, 0x11

    .line 58
    .line 59
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 60
    .line 61
    const/4 v0, -0x1

    .line 62
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 63
    .line 64
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 65
    .line 66
    const/16 v0, 0x7e8

    .line 67
    .line 68
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 69
    .line 70
    const/4 v0, -0x2

    .line 71
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 75
    .line 76
    const v0, 0x4080008

    .line 77
    .line 78
    .line 79
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    not-int v1, v1

    .line 90
    and-int/2addr v0, v1

    .line 91
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    not-int v1, v1

    .line 96
    and-int/2addr v0, v1

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 98
    .line 99
    .line 100
    new-instance p1, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;

    .line 101
    .line 102
    invoke-direct {p1, p0, p2}, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;-><init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;Landroid/os/Looper;)V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Lcom/android/server/sepunion/cover/CoverHideAnimator$1;

    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final removeViewFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWm:Landroid/view/WindowManager;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 19
    .line 20
    return-void
.end method
