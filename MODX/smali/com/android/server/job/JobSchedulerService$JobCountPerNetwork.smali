.class public final Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public deferedJobCount:I

.field public hasNetworkJob:Z

.field public final network:Landroid/net/Network;

.field public totalJobCount:I

.field public unbatchJobCount:I


# direct methods
.method public constructor <init>(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->network:Landroid/net/Network;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->totalJobCount:I

    .line 9
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->unbatchJobCount:I

    .line 11
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->deferedJobCount:I

    .line 13
    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->hasNetworkJob:Z

    .line 15
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->network:Landroid/net/Network;

    .line 8
    if-nez v1, :cond_0

    .line 10
    const-string/jumbo v1, "cpu"

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Landroid/net/Network;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->totalJobCount:I

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v1

    .line 27
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->unbatchJobCount:I

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v2

    .line 33
    iget p0, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->deferedJobCount:I

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p0

    .line 39
    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    const-string v1, ",T:%d,U:%d,D:%d"

    .line 45
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
