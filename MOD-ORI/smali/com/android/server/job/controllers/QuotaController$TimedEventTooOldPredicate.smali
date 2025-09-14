.class public final Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public mNowElapsed:J


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide p0, p0, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->mNowElapsed:J

    .line 8
    .line 9
    const-wide/32 v2, 0x5265c00

    .line 10
    .line 11
    .line 12
    sub-long/2addr p0, v2

    .line 13
    cmp-long p0, v0, p0

    .line 14
    .line 15
    if-gtz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method
