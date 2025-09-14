.class public final Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAdjustment:F

.field public final mBrightness:F

.field public final mLowerBoundary:F

.field public final mLux:F

.field public mPostTimeDuration:F

.field public final mPreTimeDuration:F

.field public final mSpline:Landroid/util/Spline;

.field public final mUpperBoundary:F


# direct methods
.method public constructor <init>(FFFLandroid/util/Spline;F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPostTimeDuration:F

    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    .line 8
    .line 9
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mBrightness:F

    .line 10
    .line 11
    iput-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mSpline:Landroid/util/Spline;

    .line 12
    .line 13
    iput p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mAdjustment:F

    .line 14
    .line 15
    sget-object p2, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    const/high16 p2, 0x40200000    # 2.5f

    .line 18
    .line 19
    div-float p3, p1, p2

    .line 20
    .line 21
    const/high16 p4, 0x41200000    # 10.0f

    .line 22
    .line 23
    sub-float v0, p1, p4

    .line 24
    .line 25
    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    iput p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLowerBoundary:F

    .line 30
    .line 31
    mul-float/2addr p2, p1

    .line 32
    add-float/2addr p1, p4

    .line 33
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mUpperBoundary:F

    .line 38
    .line 39
    iput p5, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPreTimeDuration:F

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mBrightness:F

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mAdjustment:F

    .line 4
    .line 5
    sub-float v2, v0, v1

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLowerBoundary:F

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mUpperBoundary:F

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPreTimeDuration:F

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPostTimeDuration:F

    .line 44
    .line 45
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v0, "%5.1f -> %5.1f (%+6.1f) @ [%6.1f < %6.1f < %6.1f]  (%.1fs : %.1fs)"

    .line 54
    .line 55
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method
