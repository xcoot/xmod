.class public abstract Lcom/android/server/job/JobSchedulerService$MySimpleClock;
.super Ljava/time/Clock;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mZoneId:Ljava/time/ZoneId;


# direct methods
.method public constructor <init>(Ljava/time/ZoneId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->mZoneId:Ljava/time/ZoneId;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getZone()Ljava/time/ZoneId;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->mZoneId:Ljava/time/ZoneId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final instant()Ljava/time/Instant;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->millis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public abstract millis()J
.end method

.method public final withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;-><init>(Lcom/android/server/job/JobSchedulerService$MySimpleClock;Ljava/time/ZoneId;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
