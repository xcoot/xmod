.class public final Lcom/android/server/wm/AppCompatCameraOverrides;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mCameraCompatAllowForceRotationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mCameraCompatAllowRefreshOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mCameraCompatEnableRefreshViaPauseOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 7
    .line 8
    new-instance p1, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p1, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mFreeformCameraCompatMode:I

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    .line 17
    .line 18
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_MIN_ASPECT_RATIO_OVERRIDE"

    .line 19
    .line 20
    invoke-virtual {p3, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 25
    .line 26
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/android/server/wm/AppCompatCameraOverrides$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatCameraOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 32
    .line 33
    .line 34
    new-instance p2, Lcom/android/server/wm/AppCompatUtils$1;

    .line 35
    .line 36
    invoke-direct {p2, p1}, Lcom/android/server/wm/AppCompatUtils$1;-><init>(Ljava/util/function/BooleanSupplier;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "android.window.PROPERTY_CAMERA_COMPAT_ALLOW_REFRESH"

    .line 40
    .line 41
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowRefreshOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 46
    .line 47
    const-string p1, "android.window.PROPERTY_CAMERA_COMPAT_ENABLE_REFRESH_VIA_PAUSE"

    .line 48
    .line 49
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatEnableRefreshViaPauseOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 54
    .line 55
    const-string p1, "android.window.PROPERTY_CAMERA_COMPAT_ALLOW_FORCE_ROTATION"

    .line 56
    .line 57
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowForceRotationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final isCameraActive()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isCameraActive(ZLcom/android/server/wm/ActivityRecord;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    return v1
.end method

.method public final isCameraCompatSplitScreenAspectRatioAllowed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSplitScreenAspectRatioEnabled:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final shouldForceRotateForCameraCompat()Z
    .locals 7

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CAMERA_POLICY:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowForceRotationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 16
    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequestOverride:Z

    .line 20
    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    sget-object v0, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    iget v5, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 28
    .line 29
    new-instance v6, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda5;

    .line 30
    .line 31
    invoke-direct {v6, v4}, Lcom/android/server/wm/CompatChangeableAppsCache$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v6, v5}, Lcom/android/server/wm/CompatChangeableAppsCache;->query(Lcom/android/internal/util/ToBooleanFunction;I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    iget-object v0, v3, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-ne v0, v2, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldIgnoreOrientationRequests()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    return v2

    .line 68
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 69
    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    iget p0, p0, Lcom/android/server/wm/Task;->mRespectOrientationRequestOverride:I

    .line 73
    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    const/16 v0, 0x20

    .line 77
    .line 78
    if-ne p0, v0, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    return v2

    .line 82
    :cond_3
    :goto_0
    return v1

    .line 83
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 84
    .line 85
    const-wide/32 v4, 0xfbbb1dc

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v4, v5}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    iget-object v0, v3, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->mCondition:Ljava/util/function/BooleanSupplier;

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->getValue()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    if-nez p0, :cond_6

    .line 108
    .line 109
    move v1, v2

    .line 110
    :cond_6
    :goto_2
    return v1
.end method

.method public final shouldOverrideMinAspectRatioForCamera()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isCameraActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 10
    .line 11
    const-wide/32 v1, 0x13680faa

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method
