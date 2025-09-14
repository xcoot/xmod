.class Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mTrackedJobs:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 13
    const/4 p1, 0x0

    .line 14
    :goto_0
    if-gt p1, p2, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 18
    new-instance v1, Landroid/util/ArraySet;

    .line 20
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 p1, p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/util/ArraySet;

    .line 20
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public final calculateNumDroppedConstraints(Lcom/android/server/job/controllers/JobStatus;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController;->getCurPercentOfLifecycleLocked(Lcom/android/server/job/controllers/JobStatus;J)I

    .line 6
    move-result p2

    .line 7
    iget p3, p1, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 9
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/FlexibilityController;->getPercentsToDropConstraints(I)[I

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v2, p3, :cond_1

    .line 22
    aget v4, v0, v2

    .line 24
    if-lt p2, v4, :cond_0

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 33
    if-eq v3, p2, :cond_2

    .line 35
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 40
    move-result p3

    .line 41
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Landroid/util/ArraySet;

    .line 47
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 50
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 52
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 55
    move-result p2

    .line 56
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 59
    move-result p2

    .line 60
    iput p2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 65
    :cond_2
    return-void
.end method

.method public final updateFlexibleConstraints(Lcom/android/server/job/controllers/JobStatus;J)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 7
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    .line 14
    move-result v2

    .line 15
    iput v2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 17
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    .line 20
    move-result v3

    .line 21
    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/FlexibilityController;->getPercentsToDropConstraints(I)[I

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController;->getCurPercentOfLifecycleLocked(Lcom/android/server/job/controllers/JobStatus;J)I

    .line 28
    move-result p2

    .line 29
    const/4 p3, 0x0

    .line 30
    move v1, p3

    .line 31
    move v4, v1

    .line 32
    :goto_0
    if-ge v1, v2, :cond_1

    .line 34
    aget v5, v3, v1

    .line 36
    if-lt p2, v5, :cond_0

    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 40
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 45
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 48
    move-result p2

    .line 49
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    .line 52
    move-result p2

    .line 53
    iput p2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 55
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 58
    move-result p2

    .line 59
    if-ne v0, p2, :cond_2

    .line 61
    return-void

    .line 62
    :cond_2
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/util/ArraySet;

    .line 70
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 76
    return-void
.end method
