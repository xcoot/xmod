.class public final Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public bucketExpiryTimesMs:Landroid/util/SparseLongArray;

.field public bucketingReason:I

.field public currentBucket:I

.field public lastInformedBucket:I

.field public lastJobRunTime:J

.field public lastPredictedBucket:I

.field public lastPredictedTime:J

.field public lastRestrictAttemptElapsedTime:J

.field public lastRestrictReason:I

.field public lastUsedByUserElapsedTime:J

.field public lastUsedElapsedTime:J

.field public lastUsedScreenTime:J

.field public nextEstimatedLaunchTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    .line 6
    .line 7
    return-void
.end method
