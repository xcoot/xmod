.class public final Lcom/android/server/wm/AppCompatOrientationOverrides;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowDisplayOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowIgnoringOrientationRequestWhenLoopDetectedOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mIgnoreRequestedOrientationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda0;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    .line 17
    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda2;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-direct {p1, v0, p2}, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance p2, Lcom/android/server/wm/AppCompatUtils$1;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Lcom/android/server/wm/AppCompatUtils$1;-><init>(Ljava/util/function/BooleanSupplier;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "android.window.PROPERTY_COMPAT_IGNORE_REQUESTED_ORIENTATION"

    .line 33
    .line 34
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mIgnoreRequestedOrientationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 39
    .line 40
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_IGNORING_ORIENTATION_REQUEST_WHEN_LOOP_DETECTED"

    .line 41
    .line 42
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowIgnoringOrientationRequestWhenLoopDetectedOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 47
    .line 48
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_ORIENTATION_OVERRIDE"

    .line 49
    .line 50
    invoke-virtual {p3, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 55
    .line 56
    new-instance p1, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda2;

    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const-string p2, "android.window.PROPERTY_COMPAT_ALLOW_DISPLAY_ORIENTATION_OVERRIDE"

    .line 63
    .line 64
    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowDisplayOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public getSetOrientationRequestCounter()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    .line 4
    .line 5
    return p0
.end method

.method public final shouldIgnoreOrientationRequestLoop()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 4
    .line 5
    const-wide/32 v2, 0x104d6bf7

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mAllowIgnoringOrientationRequestWhenLoopDetectedOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/function/LongSupplier;->getAsLong()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    iget-wide v5, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    .line 31
    .line 32
    sub-long v5, v3, v5

    .line 33
    .line 34
    const-wide/16 v7, 0x3e8

    .line 35
    .line 36
    cmp-long v1, v5, v7

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    if-gez v1, :cond_1

    .line 40
    .line 41
    iget v1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    .line 42
    .line 43
    add-int/2addr v1, v5

    .line 44
    iput v1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iput v2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    .line 48
    .line 49
    :goto_0
    iput-wide v3, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    .line 50
    .line 51
    iget p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    if-lt p0, v1, :cond_2

    .line 55
    .line 56
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_2

    .line 65
    .line 66
    move v2, v5

    .line 67
    :cond_2
    return v2
.end method
