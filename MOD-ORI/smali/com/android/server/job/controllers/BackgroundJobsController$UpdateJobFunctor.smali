.class public final Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mActiveState:I

.field public final mChangedJobs:Landroid/util/ArraySet;

.field public mCheckedCount:I

.field public mTotalCount:I

.field public mUpdateTimeElapsed:J

.field public final synthetic this$0:Lcom/android/server/job/controllers/BackgroundJobsController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 15
    .line 16
    iput p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mUpdateTimeElapsed:J

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mTotalCount:I

    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mCheckedCount:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 16
    .line 17
    iget-wide v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mUpdateTimeElapsed:J

    .line 18
    .line 19
    iget v3, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mActiveState:I

    .line 20
    .line 21
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/job/controllers/BackgroundJobsController;->updateSingleJobRestrictionLocked(Lcom/android/server/job/controllers/JobStatus;JI)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$UpdateJobFunctor;->mChangedJobs:Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
