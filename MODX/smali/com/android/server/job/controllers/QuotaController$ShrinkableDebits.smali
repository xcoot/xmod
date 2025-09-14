.class final Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDebitTally:J

.field public mStandbyBucket:I


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ShrinkableDebits { debit tally: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", bucket: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    .line 20
    const-string v1, " }"

    .line 22
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public final transactLocked(J)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p1, v0

    .line 5
    if-gez v2, :cond_0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    .line 10
    move-result-wide v2

    .line 11
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    .line 13
    cmp-long v2, v2, v4

    .line 15
    if-lez v2, :cond_0

    .line 17
    add-long/2addr v4, p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-wide v4, v0

    .line 20
    :goto_0
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    .line 22
    add-long/2addr v2, p1

    .line 23
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 26
    move-result-wide p1

    .line 27
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    .line 29
    return-wide v4
.end method
