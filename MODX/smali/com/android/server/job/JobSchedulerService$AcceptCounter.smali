.class public final Lcom/android/server/job/JobSchedulerService$AcceptCounter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public batchNetwork:J

.field public batchOthers:J

.field public batchPrefetch:J

.field public batchStandbyBucket:J

.field public unbatchAttempts:J

.field public unbatchExpedited:J

.field public unbatchNetwork:J

.field public unbatchOthers:J

.field public unbatchOverrideNone:J

.field public unbatchPrefetch:J


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "u:"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOverrideNone:J

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    move-result-object v3

    .line 15
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchExpedited:J

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    move-result-object v4

    .line 21
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchPrefetch:J

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    move-result-object v5

    .line 27
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchAttempts:J

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    move-result-object v6

    .line 33
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchNetwork:J

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    move-result-object v7

    .line 39
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOthers:J

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object v8

    .line 45
    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    const-string v2, "%d,%d,%d,%d,%d,%d"

    .line 51
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ",b:"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchStandbyBucket:J

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    move-result-object v1

    .line 69
    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchPrefetch:J

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    move-result-object v2

    .line 75
    iget-wide v3, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchNetwork:J

    .line 77
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    move-result-object v3

    .line 81
    iget-wide v4, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchOthers:J

    .line 83
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    move-result-object p0

    .line 87
    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 90
    move-result-object p0

    .line 91
    const-string v1, "%d,%d,%d,%d"

    .line 93
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method
