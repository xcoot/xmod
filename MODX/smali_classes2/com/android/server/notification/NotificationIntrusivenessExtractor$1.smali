.class public final Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;
.super Lcom/android/server/notification/RankingReconsideration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p1, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x2710

    .line 9
    .line 10
    cmp-long p0, v0, v2

    .line 11
    .line 12
    if-ltz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    iput-boolean p0, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final work()V
    .locals 0

    .line 1
    return-void
.end method
