.class public final Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final MIN_COUNT_TO_IGNORE_REQUEST_IN_LOOP:I = 0x2

.field static final SET_ORIENTATION_REQUEST_COUNTER_TIMEOUT_MS:I = 0x3e8


# instance fields
.field mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

.field public final mIsOverrideAnyOrientationEnabled:Z

.field public final mIsOverrideToNosensorOrientationEnabled:Z

.field public final mIsOverrideToPortraitOrientationEnabled:Z

.field public final mIsOverrideToReverseLandscapeOrientationEnabled:Z

.field public mIsRelaunchingAfterRequestedOrientationChanged:Z

.field public mSetOrientationRequestCounter:I

.field public mTimeMsLastSetOrientationRequest:J


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOrientationOverrides$$ExternalSyntheticLambda0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

    .line 12
    .line 13
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 14
    .line 15
    const-wide/32 v0, 0xfd27655

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iput-boolean p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToNosensorOrientationEnabled:Z

    .line 23
    .line 24
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 25
    .line 26
    const-wide/32 v0, 0xfd27b38

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iput-boolean p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToPortraitOrientationEnabled:Z

    .line 34
    .line 35
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 36
    .line 37
    const-wide/32 v0, 0xfd2aa87

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iput-boolean p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideAnyOrientationEnabled:Z

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 47
    .line 48
    const-wide/32 v0, 0xfdcbe7f

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToReverseLandscapeOrientationEnabled:Z

    .line 56
    .line 57
    return-void
.end method
