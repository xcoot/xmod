.class public final Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mDeferred:I


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 3
    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmp-long p1, v0, v2

    .line 9
    if-lez p1, :cond_0

    .line 11
    iget p1, p0, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->mDeferred:I

    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 15
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->mDeferred:I

    .line 17
    :cond_0
    return-void
.end method
