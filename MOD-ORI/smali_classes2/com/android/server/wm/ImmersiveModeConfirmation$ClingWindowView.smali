.class public final Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;
.super Landroid/widget/FrameLayout;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mClingLayout:Landroid/view/ViewGroup;

.field public final mColor:Landroid/graphics/drawable/ColorDrawable;

.field public mColorAnim:Landroid/animation/ValueAnimator;

.field public final mConfirm:Ljava/lang/Runnable;

.field public final mInsetsListener:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public final mReceiver:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$3;

.field public final mUpdateLayoutRunnable:Lcom/android/server/wm/ImmersiveModeConfirmation$1;

.field public final synthetic this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 13
    .line 14
    new-instance p2, Lcom/android/server/wm/ImmersiveModeConfirmation$1;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p2, v0, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$1;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Lcom/android/server/wm/ImmersiveModeConfirmation$1;

    .line 21
    .line 22
    new-instance p2, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;

    .line 28
    .line 29
    new-instance p2, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$3;

    .line 30
    .line 31
    invoke-direct {p2, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$3;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$3;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x2

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const p2, 0x10c000e

    .line 48
    .line 49
    .line 50
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0x10501d5

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .line 39
    .line 40
    :goto_0
    div-int/lit8 v3, v1, 0x2

    .line 41
    .line 42
    sub-int v4, v0, v3

    .line 43
    .line 44
    add-int/2addr v3, v0

    .line 45
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    if-ltz v1, :cond_1

    .line 59
    .line 60
    if-lez v0, :cond_2

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    :cond_1
    const v0, 0x1020363

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    .line 79
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 80
    .line 81
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    new-instance p0, Landroid/view/WindowInsets$Builder;

    .line 87
    .line 88
    invoke-direct {p0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 96
    .line 97
    invoke-virtual {p0, p1, v0}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 16
    .line 17
    .line 18
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const v2, 0x109009e

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/view/ViewGroup;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 44
    .line 45
    const v2, 0x102046d

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/widget/Button;

    .line 53
    .line 54
    new-instance v2, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$4;

    .line 55
    .line 56
    invoke-direct {v2, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$4;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    .line 71
    iget-object v2, v2, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const v4, 0x10501d5

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const/4 v4, -0x2

    .line 85
    const/16 v5, 0x31

    .line 86
    .line 87
    invoke-direct {v3, v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 103
    .line 104
    .line 105
    const/high16 v2, -0x3d400000    # -96.0f

    .line 106
    .line 107
    mul-float/2addr v0, v2

    .line 108
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;

    .line 112
    .line 113
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 121
    .line 122
    const/high16 v1, -0x80000000

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 125
    .line 126
    .line 127
    :goto_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$3;

    .line 130
    .line 131
    new-instance v1, Landroid/content/IntentFilter;

    .line 132
    .line 133
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 134
    .line 135
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$3;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
