.class public final Lcom/android/server/wm/AppCompatReachabilityOverrides;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

.field public final mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 9
    .line 10
    new-instance p1, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final getHorizontalPositionMultiplier(Landroid/content/res/Configuration;)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, v2, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled(Landroid/content/res/Configuration;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppCompatConfiguration;->getHorizontalMultiplierForReachability(Z)F

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget p0, v2, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBookModePositionMultiplier:F

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget p0, v2, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    .line 34
    .line 35
    :goto_0
    return p0
.end method

.method public final isHorizontalReachabilityEnabled(Landroid/content/res/Configuration;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/window/flags/Flags;->disableThinLetterboxingPolicy()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalThinLetterboxed()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    xor-int/2addr v0, v1

    .line 15
    :goto_0
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-static {v3}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    :goto_1
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 41
    .line 42
    iget-object v4, v4, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    iget-object v4, v4, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    :goto_2
    new-instance v5, Lcom/android/server/wm/AppCompatReachabilityOverrides$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getScreenResolvedBounds()Landroid/graphics/Rect;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v4, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/graphics/Rect;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 81
    .line 82
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    .line 83
    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    iget-object p0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-ne p0, v1, :cond_4

    .line 93
    .line 94
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-gt p0, p1, :cond_4

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-le p0, p1, :cond_4

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    move v1, v2

    .line 116
    :goto_3
    return v1
.end method

.method public final isHorizontalThinLetterboxed()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxWidthPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/utils/DimenPxIntSupplier;->getAsInt()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    sub-int/2addr v2, p0

    .line 37
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    div-int/lit8 p0, p0, 0x2

    .line 42
    .line 43
    if-gt p0, v0, :cond_2

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_2
    return v1
.end method

.method public final isVerticalReachabilityEnabled(Landroid/content/res/Configuration;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/window/flags/Flags;->disableThinLetterboxingPolicy()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalThinLetterboxed()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    xor-int/2addr v0, v1

    .line 15
    :goto_0
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-static {v3}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    :goto_1
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 39
    .line 40
    iget-object v4, v4, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 41
    .line 42
    iget-object v4, v4, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    iget-object v4, v4, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mFirstOpaqueActivity:Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    :goto_2
    new-instance v5, Lcom/android/server/wm/AppCompatReachabilityOverrides$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getScreenResolvedBounds()Landroid/graphics/Rect;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v4, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/graphics/Rect;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 81
    .line 82
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    .line 83
    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    iget-object p0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-ne p0, v1, :cond_4

    .line 93
    .line 94
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-gt p0, p1, :cond_4

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-le p0, p1, :cond_4

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    move v1, v2

    .line 116
    :goto_3
    return v1
.end method

.method public final isVerticalThinLetterboxed()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxHeightPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/utils/DimenPxIntSupplier;->getAsInt()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    sub-int/2addr v2, p0

    .line 37
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    div-int/lit8 p0, p0, 0x2

    .line 42
    .line 43
    if-gt p0, v0, :cond_2

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_2
    return v1
.end method
