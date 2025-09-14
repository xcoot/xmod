.class public final synthetic Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/android/server/job/controllers/JobStatus;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$3:Landroid/os/Handler;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$0:I

    .line 6
    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/job/controllers/JobStatus;

    .line 8
    iput-object p3, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$2:Ljava/util/concurrent/CountDownLatch;

    .line 10
    iput-object p4, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$3:Landroid/os/Handler;

    .line 12
    const-wide/16 p1, 0x3e8

    .line 14
    iput-wide p1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$4:J

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$0:I

    .line 3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/job/controllers/JobStatus;

    .line 5
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$2:Ljava/util/concurrent/CountDownLatch;

    .line 7
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$3:Landroid/os/Handler;

    .line 9
    iget-wide v4, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$4:J

    .line 11
    if-lez v0, :cond_1

    .line 13
    iget p0, v1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    .line 15
    invoke-virtual {v1, p0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 24
    new-instance p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;

    .line 26
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;-><init>(ILcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;Landroid/os/Handler;)V

    .line 29
    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 36
    :goto_1
    return-void
.end method
