.class public final Lcom/android/server/usage/IntervalStats$EventTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public count:I

.field public curStartTime:J

.field public duration:J

.field public lastEventTime:J


# virtual methods
.method public final addToEventStats(Ljava/util/List;IJJ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    new-instance v0, Landroid/app/usage/EventStats;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/app/usage/EventStats;-><init>()V

    .line 16
    .line 17
    .line 18
    iput p2, v0, Landroid/app/usage/EventStats;->mEventType:I

    .line 19
    .line 20
    iget p2, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 21
    .line 22
    iput p2, v0, Landroid/app/usage/EventStats;->mCount:I

    .line 23
    .line 24
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 25
    .line 26
    iput-wide v1, v0, Landroid/app/usage/EventStats;->mTotalTime:J

    .line 27
    .line 28
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->lastEventTime:J

    .line 29
    .line 30
    iput-wide v1, v0, Landroid/app/usage/EventStats;->mLastEventTime:J

    .line 31
    .line 32
    iput-wide p3, v0, Landroid/app/usage/EventStats;->mBeginTimeStamp:J

    .line 33
    .line 34
    iput-wide p5, v0, Landroid/app/usage/EventStats;->mEndTimeStamp:J

    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final commitTime(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 10
    .line 11
    sub-long/2addr p1, v0

    .line 12
    add-long/2addr p1, v4

    .line 13
    iput-wide p1, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 14
    .line 15
    iput-wide v2, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final update(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/IntervalStats$EventTracker;->commitTime(J)V

    .line 16
    .line 17
    .line 18
    iput-wide p1, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    .line 19
    .line 20
    iput-wide p1, p0, Lcom/android/server/usage/IntervalStats$EventTracker;->lastEventTime:J

    .line 21
    .line 22
    return-void
.end method
