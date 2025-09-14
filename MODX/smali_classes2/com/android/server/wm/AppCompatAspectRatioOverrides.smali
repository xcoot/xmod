.class public final Lcom/android/server/wm/AppCompatAspectRatioOverrides;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowUserAspectRatioFullscreenOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

.field public final mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

.field public final mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;Lcom/android/server/wm/AppCompatReachabilityOverrides;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 9
    .line 10
    new-instance p1, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 p4, 0x0

    .line 16
    iput p4, p1, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 21
    .line 22
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_MIN_ASPECT_RATIO_OVERRIDE"

    .line 23
    .line 24
    invoke-virtual {p3, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 29
    .line 30
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/android/server/wm/AppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 p4, 0x0

    .line 36
    invoke-direct {p1, p2, p4}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    .line 37
    .line 38
    .line 39
    const-string p4, "android.window.PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_OVERRIDE"

    .line 40
    .line 41
    invoke-virtual {p3, p4, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 46
    .line 47
    new-instance p1, Lcom/android/server/wm/AppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    const/4 p4, 0x1

    .line 50
    invoke-direct {p1, p2, p4}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatConfiguration;I)V

    .line 51
    .line 52
    .line 53
    const-string p2, "android.window.PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_FULLSCREEN_OVERRIDE"

    .line 54
    .line 55
    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioFullscreenOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 60
    .line 61
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_ORIENTATION_OVERRIDE"

    .line 62
    .line 63
    invoke-virtual {p3, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final getDefaultMinAspectRatioForUnresizableApps()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    :cond_1
    :goto_0
    iget v1, v0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    .line 22
    .line 23
    const/high16 v3, 0x3f800000    # 1.0f

    .line 24
    .line 25
    cmpl-float v3, v1, v3

    .line 26
    .line 27
    if-lez v3, :cond_2

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    iget-boolean v1, v0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    .line 37
    .line 38
    if-nez v1, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDisplaySizeMinAspectRatio()F

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    :goto_1
    move v1, p0

    .line 46
    goto :goto_3

    .line 47
    :cond_4
    :goto_2
    iget p0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :goto_3
    return v1
.end method

.method public getDisplaySizeMinAspectRatio()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p0, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final getSplitScreenAspectRatio()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDefaultMinAspectRatioForUnresizableApps()F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const v2, 0x1050184

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v2, 0x1050183

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    mul-int/lit8 v0, v0, 0x2

    .line 45
    .line 46
    sub-int/2addr p0, v0

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/4 v3, 0x0

    .line 69
    if-lt v1, v2, :cond_1

    .line 70
    .line 71
    div-int/lit8 p0, p0, 0x2

    .line 72
    .line 73
    invoke-virtual {v0, p0, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    div-int/lit8 p0, p0, 0x2

    .line 84
    .line 85
    invoke-virtual {v0, v3, p0}, Landroid/graphics/Rect;->inset(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    .line 93
    .line 94
    :goto_0
    invoke-static {v0}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    return p0
.end method

.method public final getUserMinAspectRatio()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v1, v2, :cond_4

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v1, v2, :cond_3

    .line 10
    .line 11
    const/4 p0, 0x3

    .line 12
    if-eq v1, p0, :cond_2

    .line 13
    .line 14
    const/4 p0, 0x4

    .line 15
    if-eq v1, p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x5

    .line 18
    if-ne v1, p0, :cond_0

    .line 19
    .line 20
    const/high16 p0, 0x3fc00000    # 1.5f

    .line 21
    .line 22
    return p0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Unexpected user min aspect ratio override: "

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v0, v0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_1
    const p0, 0x3fe38e39

    .line 46
    .line 47
    .line 48
    return p0

    .line 49
    :cond_2
    const p0, 0x3faaaaab

    .line 50
    .line 51
    .line 52
    return p0

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDisplaySizeMinAspectRatio()F

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0
.end method

.method public final getUserMinAspectRatioOverrideCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 15
    .line 16
    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageManager;->getUserMinAspectRatio(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return p0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Exception thrown retrieving aspect ratio user override "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "ActivityTaskManager"

    .line 37
    .line 38
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    .line 42
    .line 43
    iget p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    .line 44
    .line 45
    return p0
.end method

.method public final isSystemOverrideToFullscreenEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 4
    .line 5
    const-wide/32 v1, 0x1286aeb5

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x6

    .line 29
    if-ne p0, v0, :cond_1

    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method public final shouldApplyUserFullscreenOverride()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioFullscreenOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioFullscreenEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    move v0, v1

    .line 31
    :goto_1
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    .line 38
    .line 39
    iput v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    .line 40
    .line 41
    const/4 p0, 0x6

    .line 42
    if-ne v0, p0, :cond_2

    .line 43
    .line 44
    move v1, v2

    .line 45
    :cond_2
    return v1
.end method

.method public final shouldApplyUserMinAspectRatioOverride()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldEnableUserAspectRatioSettings()Z

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
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ASPECT_RATIO_POLICY:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    const-string v2, " declared PROPERTY_COMPAT_ALLOW_MIN_ASPECT_RATIO_OVERRIDE false. User aspect ratio should not applied because the package is not displayed in user settings."

    .line 31
    .line 32
    const-string v3, "ActivityTaskManager"

    .line 33
    .line 34
    invoke-static {v0, p0, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    .line 43
    .line 44
    iput v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const/4 p0, 0x7

    .line 49
    if-eq v0, p0, :cond_2

    .line 50
    .line 51
    const/4 p0, 0x6

    .line 52
    if-eq v0, p0, :cond_2

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    :cond_2
    return v1
.end method

.method public final shouldEnableUserAspectRatioSettings()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioSettingsEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
.end method
