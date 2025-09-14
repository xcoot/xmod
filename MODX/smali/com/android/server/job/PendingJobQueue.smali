.class public final Lcom/android/server/job/PendingJobQueue;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppJobQueuePool:Landroid/util/Pools$Pool;

.field public final mCurrentQueues:Landroid/util/SparseArray;

.field public mNeedToResetIterators:Z

.field public mOptimizeIteration:Z

.field public final mOrderedQueues:Ljava/util/PriorityQueue;

.field public mPullCount:I

.field public mSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/Pools$SimplePool;

    .line 6
    const/16 v1, 0x8

    .line 8
    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 11
    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    .line 15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    .line 20
    new-instance v0, Ljava/util/PriorityQueue;

    .line 22
    new-instance v1, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, v2}, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;-><init>(I)V

    .line 28
    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    .line 31
    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 33
    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 36
    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lcom/android/server/job/PendingJobQueue;->mOptimizeIteration:Z

    .line 39
    iput v0, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    .line 41
    iput-boolean v0, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 43
    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 11

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/PendingJobQueue;->getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    .line 11
    move-result-wide v2

    .line 12
    sget-object v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    .line 14
    check-cast v4, Landroid/util/Pools$SimplePool;

    .line 16
    invoke-virtual {v4}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 22
    if-nez v4, :cond_0

    .line 24
    new-instance v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 26
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 29
    :cond_0
    iget-wide v5, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 31
    iput-wide v5, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 33
    iput-object p1, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 35
    iget-object p1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 37
    sget-object v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;

    .line 39
    invoke-static {p1, v4, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 42
    move-result p1

    .line 43
    if-gez p1, :cond_1

    .line 45
    not-int p1, p1

    .line 46
    :cond_1
    iget-object v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 48
    check-cast v5, Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v5, p1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 53
    iget v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 55
    if-ge p1, v5, :cond_2

    .line 57
    iput p1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 59
    :cond_2
    if-lez p1, :cond_3

    .line 61
    iget-object v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 63
    add-int/lit8 v6, p1, -0x1

    .line 65
    check-cast v5, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 73
    iget-wide v5, v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 75
    iget-wide v7, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 77
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 80
    move-result-wide v5

    .line 81
    iput-wide v5, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 83
    :cond_3
    iget-object v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 85
    check-cast v5, Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 90
    move-result v5

    .line 91
    add-int/lit8 v6, v5, -0x1

    .line 93
    if-ge p1, v6, :cond_5

    .line 95
    :goto_0
    if-ge p1, v5, :cond_5

    .line 97
    iget-object v6, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 99
    check-cast v6, Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 107
    iget-wide v7, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 109
    iget-wide v9, v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 111
    cmp-long v9, v7, v9

    .line 113
    if-gez v9, :cond_4

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    iput-wide v7, v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 118
    add-int/lit8 p1, p1, 0x1

    .line 120
    goto :goto_0

    .line 121
    :cond_5
    :goto_1
    iget p1, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 123
    add-int/2addr p1, v1

    .line 124
    iput p1, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 126
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    .line 129
    move-result-wide v4

    .line 130
    cmp-long p1, v2, v4

    .line 132
    if-eqz p1, :cond_6

    .line 134
    iget-object p1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 136
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 139
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 141
    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 144
    :cond_6
    return-void
.end method

.method public final addAll(Landroid/util/ArraySet;)V
    .locals 12

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    sub-int/2addr v1, v2

    .line 12
    :goto_0
    if-ltz v1, :cond_1

    .line 14
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 20
    iget v4, v3, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 22
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Ljava/util/List;

    .line 28
    if-nez v4, :cond_0

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget v5, v3, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 37
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, -0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 49
    move-result v1

    .line 50
    sub-int/2addr v1, v2

    .line 51
    :goto_1
    if-ltz v1, :cond_7

    .line 53
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 56
    move-result v3

    .line 57
    invoke-virtual {p0, v3, v2}, Lcom/android/server/job/PendingJobQueue;->getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/util/List;

    .line 67
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 73
    move-result v5

    .line 74
    sub-int/2addr v5, v2

    .line 75
    const v6, 0x7fffffff

    .line 78
    :goto_2
    if-ltz v5, :cond_5

    .line 80
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v7

    .line 84
    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    .line 86
    sget-object v8, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    .line 88
    check-cast v8, Landroid/util/Pools$SimplePool;

    .line 90
    invoke-virtual {v8}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 93
    move-result-object v8

    .line 94
    check-cast v8, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 96
    if-nez v8, :cond_2

    .line 98
    new-instance v8, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 100
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 103
    :cond_2
    iget-wide v9, v7, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 105
    iput-wide v9, v8, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 107
    iput-object v7, v8, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 109
    iget-object v7, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 111
    sget-object v9, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;

    .line 113
    invoke-static {v7, v8, v9}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 116
    move-result v7

    .line 117
    if-gez v7, :cond_3

    .line 119
    not-int v7, v7

    .line 120
    :cond_3
    iget-object v9, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 122
    check-cast v9, Ljava/util/ArrayList;

    .line 124
    invoke-virtual {v9, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 127
    iget v8, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 129
    if-ge v7, v8, :cond_4

    .line 131
    iput v7, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 133
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 136
    move-result v6

    .line 137
    add-int/lit8 v5, v5, -0x1

    .line 139
    goto :goto_2

    .line 140
    :cond_5
    iget-object v4, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 142
    check-cast v4, Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 147
    move-result v4

    .line 148
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 151
    move-result v5

    .line 152
    :goto_3
    if-ge v5, v4, :cond_6

    .line 154
    iget-object v6, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 156
    check-cast v6, Ljava/util/ArrayList;

    .line 158
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 164
    iget-object v7, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 166
    add-int/lit8 v8, v5, -0x1

    .line 168
    check-cast v7, Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    move-result-object v7

    .line 174
    check-cast v7, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 176
    iget-wide v8, v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 178
    iget-wide v10, v7, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 180
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 183
    move-result-wide v7

    .line 184
    iput-wide v7, v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 186
    add-int/lit8 v5, v5, 0x1

    .line 188
    goto :goto_3

    .line 189
    :cond_6
    add-int/lit8 v1, v1, -0x1

    .line 191
    goto/16 :goto_1

    .line 193
    :cond_7
    iget v0, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 195
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 198
    move-result p1

    .line 199
    add-int/2addr p1, v0

    .line 200
    iput p1, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 202
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 204
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->clear()V

    .line 207
    return-void
.end method

.method public final contains(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    .line 3
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 5
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p0, :cond_0

    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->indexOf(Lcom/android/server/job/controllers/JobStatus;)I

    .line 18
    move-result p0

    .line 19
    if-ltz p0, :cond_1

    .line 21
    const/4 v0, 0x1

    .line 22
    :cond_1
    return v0
.end method

.method public final getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 9
    if-nez v0, :cond_1

    .line 11
    if-eqz p2, :cond_1

    .line 13
    iget-object p2, p0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    .line 15
    check-cast p2, Landroid/util/Pools$SimplePool;

    .line 17
    invoke-virtual {p2}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 23
    if-nez p2, :cond_0

    .line 25
    new-instance p2, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 27
    invoke-direct {p2}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;-><init>()V

    .line 30
    :cond_0
    move-object v0, p2

    .line 31
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    :cond_1
    return-object v0
.end method

.method public final next()Lcom/android/server/job/controllers/JobStatus;
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 9
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 12
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 17
    move-result v0

    .line 18
    sub-int/2addr v0, v2

    .line 19
    :goto_0
    if-ltz v0, :cond_0

    .line 21
    iget-object v3, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 29
    iput v1, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 31
    iget-object v4, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 33
    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 41
    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 46
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 57
    move-result v0

    .line 58
    sub-int/2addr v0, v2

    .line 59
    :goto_1
    if-ltz v0, :cond_2

    .line 61
    iget-object v3, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    .line 63
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 69
    iget-object v4, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 71
    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v0, v0, -0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    .line 79
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 81
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 84
    move-result v0

    .line 85
    const/4 v3, 0x0

    .line 86
    if-nez v0, :cond_4

    .line 88
    return-object v3

    .line 89
    :cond_4
    iget-boolean v4, p0, Lcom/android/server/job/PendingJobQueue;->mOptimizeIteration:Z

    .line 91
    if-eqz v4, :cond_5

    .line 93
    sub-int/2addr v0, v2

    .line 94
    ushr-int/lit8 v0, v0, 0x2

    .line 96
    add-int/2addr v0, v2

    .line 97
    const/4 v4, 0x3

    .line 98
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 101
    move-result v0

    .line 102
    goto :goto_3

    .line 103
    :cond_5
    move v0, v2

    .line 104
    :goto_3
    iget-object v4, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 106
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 112
    if-eqz v4, :cond_a

    .line 114
    iget v5, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 116
    iget-object v6, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 118
    check-cast v6, Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 123
    move-result v6

    .line 124
    if-lt v5, v6, :cond_6

    .line 126
    goto :goto_4

    .line 127
    :cond_6
    iget-object v3, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 129
    iget v5, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 131
    add-int/lit8 v6, v5, 0x1

    .line 133
    iput v6, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 135
    check-cast v3, Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 143
    iget-object v3, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 145
    :goto_4
    iget v5, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    .line 147
    add-int/2addr v5, v2

    .line 148
    iput v5, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    .line 150
    const-wide/16 v6, -0x1

    .line 152
    if-ge v5, v0, :cond_8

    .line 154
    if-eqz v3, :cond_7

    .line 156
    invoke-virtual {v4}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextOverrideState()I

    .line 159
    move-result v0

    .line 160
    iget v2, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 162
    if-ne v0, v2, :cond_8

    .line 164
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    .line 167
    move-result-wide v8

    .line 168
    cmp-long v0, v8, v6

    .line 170
    if-nez v0, :cond_a

    .line 172
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 174
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 177
    invoke-virtual {v4}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    .line 180
    move-result-wide v8

    .line 181
    cmp-long v0, v8, v6

    .line 183
    if-eqz v0, :cond_9

    .line 185
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 187
    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 190
    :cond_9
    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    .line 192
    :cond_a
    return-object v3
.end method

.method public final remove(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 8

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/PendingJobQueue;->getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    .line 14
    move-result-wide v2

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->indexOf(Lcom/android/server/job/controllers/JobStatus;)I

    .line 18
    move-result v4

    .line 19
    if-gez v4, :cond_1

    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 24
    check-cast v5, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    .line 32
    const-wide/16 v6, 0x0

    .line 34
    iput-wide v6, v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    .line 36
    const/4 v6, 0x0

    .line 37
    iput-object v6, v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    .line 39
    sget-object v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    .line 41
    check-cast v6, Landroid/util/Pools$SimplePool;

    .line 43
    invoke-virtual {v6, v5}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 46
    iget v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 48
    const/4 v6, 0x1

    .line 49
    if-ge v4, v5, :cond_2

    .line 51
    sub-int/2addr v5, v6

    .line 52
    iput v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 54
    :cond_2
    iget v4, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 56
    sub-int/2addr v4, v6

    .line 57
    iput v4, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 59
    iget-object v4, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 61
    check-cast v4, Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 69
    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    .line 71
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 73
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 76
    iget-object p1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 78
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    .line 83
    check-cast p1, Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 88
    iput v1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    .line 90
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    .line 92
    check-cast p0, Landroid/util/Pools$SimplePool;

    .line 94
    invoke-virtual {p0, v0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    .line 101
    move-result-wide v4

    .line 102
    cmp-long p1, v2, v4

    .line 104
    if-eqz p1, :cond_4

    .line 106
    iget-object p1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 108
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 111
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    .line 113
    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 116
    :cond_4
    :goto_0
    return v6
.end method

.method public setOptimizeIteration(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/job/PendingJobQueue;->mOptimizeIteration:Z

    .line 3
    return-void
.end method
