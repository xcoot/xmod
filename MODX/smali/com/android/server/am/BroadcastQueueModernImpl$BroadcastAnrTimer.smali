.class public final Lcom/android/server/am/BroadcastQueueModernImpl$BroadcastAnrTimer;
.super Lcom/android/server/utils/AnrTimer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final getPid(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 3
    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final getUid(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 3
    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method
