.class public final Lcom/android/server/wm/AppCompatLetterboxPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mAppCompatRoundedCorners:Lcom/android/server/wm/AppCompatRoundedCorners;

.field public mLastShouldShowLetterboxUi:Z

.field public final mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;-><init>(Lcom/android/server/wm/AppCompatLetterboxPolicy;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/wm/AppCompatRoundedCorners;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatLetterboxPolicy;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/AppCompatRoundedCorners;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatRoundedCorners:Lcom/android/server/wm/AppCompatRoundedCorners;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatRoundedCorners:Lcom/android/server/wm/AppCompatRoundedCorners;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getLetterboxDirection()I
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 20
    .line 21
    iget v2, v2, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(IZ)Landroid/view/DisplayCutout;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-lez v1, :cond_1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 46
    .line 47
    iget-object v4, v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    iget-object v2, v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-ne v1, v2, :cond_1

    .line 66
    .line 67
    const/4 v3, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    if-lez v0, :cond_2

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_3

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-ne v0, p0, :cond_3

    .line 92
    .line 93
    const/4 v3, 0x2

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_0
    return v3
.end method

.method public final isLetterboxedNotForDisplayCutout(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0
.end method

.method public shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    .line 10
    .line 11
    iget-boolean v1, v1, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsRelaunchingAfterRequestedOrientationChanged:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLastShouldShowLetterboxUi:Z

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInLetterboxAnimation()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 43
    .line 44
    const/high16 v0, 0x100000

    .line 45
    .line 46
    and-int/2addr p1, v0

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLastShouldShowLetterboxUi:Z

    .line 53
    .line 54
    return p1
.end method

.method public final start(Lcom/android/server/wm/WindowState;)V
    .locals 12

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 5
    .line 6
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    :cond_2
    :goto_0
    return-void

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mAppCompatRoundedCorners:Lcom/android/server/wm/AppCompatRoundedCorners;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 25
    .line 26
    if-eqz v3, :cond_5

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_4
    iget-object v4, v0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v4, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    int-to-float v0, v0

    .line 54
    invoke-virtual {v4, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 55
    .line 56
    .line 57
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_15

    .line 64
    .line 65
    if-eq v3, p1, :cond_6

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eq v3, v4, :cond_6

    .line 76
    .line 77
    goto/16 :goto_8

    .line 78
    .line 79
    :cond_6
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 80
    .line 81
    iget-object v3, v3, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 82
    .line 83
    iget-object v3, v3, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundType()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    const/4 v5, 0x0

    .line 90
    if-ne v4, v1, :cond_9

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isLetterboxedNotForDisplayCutout(Lcom/android/server/wm/WindowState;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_9

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperBlurRadiusPx()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-gtz v1, :cond_7

    .line 103
    .line 104
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperDarkScrimAlpha()F

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    const/4 v4, 0x0

    .line 109
    cmpl-float v1, v1, v4

    .line 110
    .line 111
    if-lez v1, :cond_9

    .line 112
    .line 113
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperBlurRadiusPx()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-lez v1, :cond_8

    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->isLetterboxWallpaperBlurSupported()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_9

    .line 124
    .line 125
    :cond_8
    move v1, v2

    .line 126
    goto :goto_2

    .line 127
    :cond_9
    move v1, v5

    .line 128
    :goto_2
    iget-boolean v4, v3, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mShowWallpaperForLetterboxBackground:Z

    .line 129
    .line 130
    if-eq v4, v1, :cond_b

    .line 131
    .line 132
    iput-boolean v1, v3, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mShowWallpaperForLetterboxBackground:Z

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    .line 135
    .line 136
    .line 137
    if-nez v1, :cond_b

    .line 138
    .line 139
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 140
    .line 141
    if-eqz v0, :cond_b

    .line 142
    .line 143
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 144
    .line 145
    iget-object v1, v1, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 146
    .line 147
    if-ne v1, p1, :cond_b

    .line 148
    .line 149
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 150
    .line 151
    if-eqz v1, :cond_a

    .line 152
    .line 153
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    .line 154
    .line 155
    if-eqz v1, :cond_a

    .line 156
    .line 157
    invoke-virtual {v1, v5}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->onAdjustWallpaperWindows(Z)V

    .line 158
    .line 159
    .line 160
    :cond_a
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 161
    .line 162
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 163
    .line 164
    new-instance v4, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda0;

    .line 165
    .line 166
    invoke-direct {v4, v0, v3, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/AppCompatLetterboxOverrides;Lcom/android/server/wm/WindowState;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    .line 171
    .line 172
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->shouldShowLetterboxUi(Lcom/android/server/wm/WindowState;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 177
    .line 178
    if-eqz v0, :cond_14

    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 185
    .line 186
    if-nez v0, :cond_e

    .line 187
    .line 188
    iget-object v0, v1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 189
    .line 190
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 191
    .line 192
    iget-object v3, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 193
    .line 194
    iget-object v10, v3, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 195
    .line 196
    new-instance v3, Lcom/android/server/wm/Letterbox;

    .line 197
    .line 198
    new-instance v7, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;

    .line 199
    .line 200
    const/4 v4, 0x1

    .line 201
    invoke-direct {v7, v4, p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    iget-object v4, v1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 205
    .line 206
    iget-object v6, v4, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 207
    .line 208
    iget-object v8, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 209
    .line 210
    new-instance v11, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;

    .line 211
    .line 212
    const/4 v6, 0x0

    .line 213
    invoke-direct {v11, v6, p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    iget-object v9, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 217
    .line 218
    move-object v6, v3

    .line 219
    invoke-direct/range {v6 .. v11}, Lcom/android/server/wm/Letterbox;-><init>(Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;Ljava/util/function/Supplier;Lcom/android/server/wm/AppCompatReachabilityPolicy;Lcom/android/server/wm/AppCompatLetterboxOverrides;Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;)V

    .line 220
    .line 221
    .line 222
    iput-object v3, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 223
    .line 224
    iput-object p1, v3, Lcom/android/server/wm/Letterbox;->mInputWindow:Lcom/android/server/wm/WindowState;

    .line 225
    .line 226
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    iput-boolean v0, v3, Lcom/android/server/wm/Letterbox;->mLastUseFullWindowSurface:Z

    .line 231
    .line 232
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_c

    .line 237
    .line 238
    iget-object v0, v3, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 239
    .line 240
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_c
    iget-object v0, v3, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 245
    .line 246
    array-length v3, v0

    .line 247
    :goto_3
    if-ge v5, v3, :cond_d

    .line 248
    .line 249
    aget-object v6, v0, v5

    .line 250
    .line 251
    invoke-virtual {v6, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 252
    .line 253
    .line 254
    add-int/lit8 v5, v5, 0x1

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_d
    :goto_4
    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 258
    .line 259
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 260
    .line 261
    iget-object v3, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 262
    .line 263
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    new-instance v4, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;

    .line 267
    .line 268
    const/4 v5, 0x2

    .line 269
    invoke-direct {v4, v5, v3}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    iput-object v4, v0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;

    .line 273
    .line 274
    :cond_e
    new-instance v0, Landroid/graphics/Point;

    .line 275
    .line 276
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 277
    .line 278
    .line 279
    iget-object v3, v1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 280
    .line 281
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isInLetterboxAnimation()Z

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    iget-object v1, v1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 286
    .line 287
    if-eqz v3, :cond_f

    .line 288
    .line 289
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 290
    .line 291
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ConfigurationContainer;->getPosition(Landroid/graphics/Point;)V

    .line 292
    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_f
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ConfigurationContainer;->getPosition(Landroid/graphics/Point;)V

    .line 296
    .line 297
    .line 298
    :goto_5
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    if-eqz v3, :cond_10

    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_11

    .line 310
    .line 311
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    goto :goto_6

    .line 320
    :cond_11
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    :goto_6
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 333
    .line 334
    if-eqz v4, :cond_12

    .line 335
    .line 336
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    if-eqz v4, :cond_12

    .line 341
    .line 342
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 351
    .line 352
    .line 353
    :cond_12
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 354
    .line 355
    iget-object v4, v4, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 356
    .line 357
    iget-object v4, v4, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 358
    .line 359
    invoke-virtual {v4}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    if-eqz v4, :cond_13

    .line 364
    .line 365
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    goto :goto_7

    .line 370
    :cond_13
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 371
    .line 372
    iget-object p1, p1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 373
    .line 374
    :goto_7
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 375
    .line 376
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 377
    .line 378
    .line 379
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 380
    .line 381
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 382
    .line 383
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 384
    .line 385
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    .line 386
    .line 387
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    .line 388
    .line 389
    if-eqz p0, :cond_15

    .line 390
    .line 391
    iget-object p0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 392
    .line 393
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 394
    .line 395
    .line 396
    goto :goto_8

    .line 397
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 398
    .line 399
    .line 400
    move-result p1

    .line 401
    if-eqz p1, :cond_15

    .line 402
    .line 403
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 404
    .line 405
    sget-object p1, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 406
    .line 407
    sget-object v0, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    .line 408
    .line 409
    invoke-virtual {p0, p1, p1, v0}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 410
    .line 411
    .line 412
    :cond_15
    :goto_8
    return-void
.end method
