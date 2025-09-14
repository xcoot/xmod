.class public final Lcom/android/server/wm/AppCompatSizeCompatModePolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field public mInSizeCompatModeForBounds:Z

.field public mPreCreatedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field public mReturnSizeCompatBounds:Landroid/graphics/Rect;

.field public mSizeCompatBounds:Landroid/graphics/Rect;

.field public mSizeCompatScale:F

.field public mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    .line 6
    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final clearSizeCompatMode(ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatModeAttributes()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 18
    .line 19
    .line 20
    iget-object p2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    if-eqz p1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final clearSizeCompatModeAttributes()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    .line 3
    .line 4
    iget v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 5
    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    iput v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 9
    .line 10
    cmpl-float v1, v2, v1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 28
    .line 29
    iget-object p0, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 36
    .line 37
    return-void
.end method

.method public final hasAppCompatDisplayInsetsWithoutInheritance()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final hasSizeCompatBounds()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final updateAppCompatDisplayInsets()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mPreCreatedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->isRunning()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->mInheritedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 24
    .line 25
    :goto_0
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mPreCreatedAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 29
    .line 30
    :goto_1
    if-nez v1, :cond_5

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget v3, v2, Landroid/content/res/Configuration;->colorMode:I

    .line 48
    .line 49
    iput v3, v1, Landroid/content/res/Configuration;->colorMode:I

    .line 50
    .line 51
    iget v3, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 52
    .line 53
    iput v3, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 54
    .line 55
    iget v3, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 56
    .line 57
    iput v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 70
    .line 71
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 81
    .line 82
    iget-object v1, v1, Lcom/android/server/wm/AppCompatController;->mAppCompatAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    .line 83
    .line 84
    iget-object v1, v1, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    .line 85
    .line 86
    iget-object v2, v1, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    .line 87
    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    iget-object v2, v1, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    .line 92
    .line 93
    :goto_2
    new-instance v1, Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 94
    .line 95
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 96
    .line 97
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    .line 98
    .line 99
    iget-boolean v4, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    .line 100
    .line 101
    invoke-direct {v1, v3, v0, v2, v4}, Lcom/android/server/wm/AppCompatDisplayInsets;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Z)V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 105
    .line 106
    :cond_5
    :goto_3
    return-void
.end method

.method public final updateSizeCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/TransparentPolicy;->mTransparentPolicyState:Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState;->findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Float;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 38
    .line 39
    return-void
.end method
