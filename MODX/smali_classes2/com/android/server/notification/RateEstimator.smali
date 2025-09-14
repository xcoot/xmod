.class public final Lcom/android/server/notification/RateEstimator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mInterarrivalTime:D

.field public mLastEventTime:Ljava/lang/Long;


# virtual methods
.method public final getInterarrivalEstimate(J)D
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sub-long/2addr p1, v0

    .line 8
    long-to-double p1, p1

    .line 9
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    div-double/2addr p1, v0

    .line 15
    const-wide v0, 0x3f40624dd2f1a9fcL    # 5.0E-4

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    const-wide v0, 0x3fe6666666666666L    # 0.7

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iget-wide v2, p0, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:D

    .line 30
    .line 31
    mul-double/2addr v2, v0

    .line 32
    const-wide v0, 0x3fd3333333333334L    # 0.30000000000000004

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    mul-double/2addr p1, v0

    .line 38
    add-double/2addr p1, v2

    .line 39
    return-wide p1
.end method
