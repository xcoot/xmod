.class public final Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mFirstFgsStartRealtime:J

.field public mFirstFgsStartUptime:J

.field public mLastFgsStartTime:J

.field public mNumParallelServices:I

.field public mTimeLimitExceededAt:J

.field public mTotalRuntime:J


# virtual methods
.method public final decNumParallelServices()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final getFirstFgsStartRealtime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartRealtime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getTimeLimitExceededAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTimeLimitExceededAt:J

    .line 2
    .line 3
    return-wide v0
.end method
