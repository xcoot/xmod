.class public final synthetic Lcom/android/server/job/JobSchedulerService$JobSchedulerStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 6
    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 5
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v1, Landroid/app/job/JobSnapshot;

    .line 12
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 14
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    .line 16
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 21
    move-result p1

    .line 22
    invoke-direct {v1, v2, v3, p1}, Landroid/app/job/JobSnapshot;-><init>(Landroid/app/job/JobInfo;IZ)V

    .line 25
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method
