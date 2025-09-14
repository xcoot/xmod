.class public final Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public activeNetwork:J

.field public batchDealyExpired:J

.field public deferrable:J

.field public exemptedStandbyBucket:J

.field public notEnoughDeadline:J

.field public procState:J


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "n:"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->batchDealyExpired:J

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    move-result-object v1

    .line 15
    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->notEnoughDeadline:J

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    move-result-object v2

    .line 21
    iget-wide v3, p0, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->exemptedStandbyBucket:J

    .line 23
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    move-result-object v3

    .line 27
    iget-wide v4, p0, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->activeNetwork:J

    .line 29
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    move-result-object v4

    .line 33
    iget-wide v5, p0, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->procState:J

    .line 35
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    move-result-object v5

    .line 39
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    const-string v2, "%d,%d,%d,%d,%d"

    .line 45
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ",d:"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->deferrable:J

    .line 59
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    move-result-object p0

    .line 63
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 67
    const-string v1, "%d"

    .line 69
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
