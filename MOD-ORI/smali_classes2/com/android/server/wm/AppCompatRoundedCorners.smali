.class public final Lcom/android/server/wm/AppCompatRoundedCorners;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mIsLetterboxedNotForDisplayCutout:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatLetterboxPolicy$$ExternalSyntheticLambda1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mIsLetterboxedNotForDisplayCutout:Ljava/util/function/Predicate;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isInLetterboxAnimation()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    iget v2, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 66
    .line 67
    if-ne p0, v2, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    iget v2, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 74
    .line 75
    if-eq p0, v2, :cond_3

    .line 76
    .line 77
    :cond_2
    return-object v1

    .line 78
    :cond_3
    invoke-static {p1, v0}, Lcom/android/server/wm/AppCompatUtils;->adjustBoundsForTaskbar(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 79
    .line 80
    .line 81
    iget p0, p1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 82
    .line 83
    const/high16 p1, 0x3f800000    # 1.0f

    .line 84
    .line 85
    cmpl-float p1, p0, p1

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    cmpl-float p1, p0, p1

    .line 91
    .line 92
    if-lez p1, :cond_4

    .line 93
    .line 94
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->scale(F)V

    .line 95
    .line 96
    .line 97
    :cond_4
    const/4 p0, 0x0

    .line 98
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_5
    :goto_0
    return-object v1
.end method

.method public final getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getLetterboxActivityCornersRadius()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget v3, v2, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 38
    .line 39
    :goto_0
    if-ltz v3, :cond_3

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getLetterboxActivityCornersRadius()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    goto :goto_3

    .line 52
    :cond_2
    iget p0, v2, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v2, 0x3

    .line 64
    invoke-virtual {v0, v2}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    move v0, v1

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    :goto_1
    invoke-virtual {p0}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const/4 v2, 0x2

    .line 81
    invoke-virtual {p0, v2}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    if-nez p0, :cond_5

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    invoke-virtual {p0}, Landroid/view/RoundedCorner;->getRadius()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    :goto_3
    iget p1, p1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 97
    .line 98
    const/high16 v0, 0x3f800000    # 1.0f

    .line 99
    .line 100
    cmpl-float v0, p1, v0

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    cmpl-float v0, p1, v0

    .line 106
    .line 107
    if-lez v0, :cond_6

    .line 108
    .line 109
    int-to-float p0, p0

    .line 110
    mul-float/2addr p1, p0

    .line 111
    float-to-int p0, p1

    .line 112
    :cond_6
    return p0
.end method

.method public final requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mIsLetterboxedNotForDisplayCutout:Ljava/util/function/Predicate;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iget-object p0, v0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getConfig(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->getLetterboxActivityCornersRadius()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, v0, Lcom/android/server/wm/AppCompatLetterboxOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 38
    .line 39
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    :goto_0
    const/4 p0, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    :goto_1
    return p0
.end method
