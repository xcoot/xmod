.class public final Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;
.super Lcom/android/server/job/JobSchedulerService$MySimpleClock;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService$MySimpleClock;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService$MySimpleClock;Ljava/time/ZoneId;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;->this$0:Lcom/android/server/job/JobSchedulerService$MySimpleClock;

    .line 3
    invoke-direct {p0, p2}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;-><init>(Ljava/time/ZoneId;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final millis()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;->this$0:Lcom/android/server/job/JobSchedulerService$MySimpleClock;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->millis()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
