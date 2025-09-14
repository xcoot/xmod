.class public final Lcom/android/server/job/PendingJobQueue$AppJobQueue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

.field public static final sJobComparator:Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;


# instance fields
.field public mCurIndex:I

.field public final mJobs:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    new-instance v0, Landroid/util/Pools$SimplePool;

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final indexOf(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 13
    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 23
    .line 24
    if-ne v2, p1, :cond_0

    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, -0x1

    .line 31
    return p0
.end method

.method public final peekNextOverrideState()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    return p0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 18
    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 28
    .line 29
    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 30
    .line 31
    return p0
.end method

.method public final peekNextTimestamp()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    const-wide/16 v0, -0x1

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 19
    .line 20
    check-cast v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 27
    .line 28
    iget-wide v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 29
    .line 30
    return-wide v0
.end method
