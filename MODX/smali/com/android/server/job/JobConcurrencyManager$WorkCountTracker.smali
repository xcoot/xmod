.class Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

.field public mConfigMaxTotal:I

.field public final mConfigNumReservedSlots:Landroid/util/SparseIntArray;

.field public final mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

.field public final mNumPendingJobs:Landroid/util/SparseIntArray;

.field public final mNumRunningJobs:Landroid/util/SparseIntArray;

.field public final mNumStartingJobs:Landroid/util/SparseIntArray;

.field public mNumUnspecializedRemaining:I

.field public final mRecycledReserved:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 6
    const/4 v1, 0x7

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    .line 12
    new-instance v0, Landroid/util/SparseIntArray;

    .line 14
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 17
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    .line 19
    new-instance v0, Landroid/util/SparseIntArray;

    .line 21
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 24
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mRecycledReserved:Landroid/util/SparseIntArray;

    .line 26
    new-instance v0, Landroid/util/SparseIntArray;

    .line 28
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 31
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 33
    new-instance v0, Landroid/util/SparseIntArray;

    .line 35
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 38
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    .line 40
    new-instance v0, Landroid/util/SparseIntArray;

    .line 42
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 45
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 47
    new-instance v0, Landroid/util/SparseIntArray;

    .line 49
    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 52
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    .line 54
    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 57
    return-void
.end method


# virtual methods
.method public final adjustPendingJobCount(IZ)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_0

    .line 4
    move p2, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p2, -0x1

    .line 7
    :goto_0
    const/4 v1, 0x0

    .line 8
    :goto_1
    if-gt v0, p1, :cond_2

    .line 10
    and-int v2, p1, v0

    .line 12
    if-ne v2, v0, :cond_1

    .line 14
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    .line 16
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 19
    move-result v3

    .line 20
    add-int/2addr v3, p2

    .line 21
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    return v1
.end method

.method public final canJobStart(I)I
    .locals 4

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p1, :cond_1

    and-int v1, p1, v0

    if-ne v1, v0, :cond_0

    .line 1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    .line 2
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    add-int/2addr v2, v3

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    if-ge v3, v1, :cond_0

    return v0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final canJobStart(II)I
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    if-lez v0, :cond_0

    .line 7
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result p1

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 11
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    :cond_1
    return p1
.end method

.method public final getPendingJobCount(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final maybeAdjustReservations(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 9
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    .line 15
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 18
    move-result v2

    .line 19
    add-int/2addr v2, v1

    .line 20
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    .line 22
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 25
    move-result v1

    .line 26
    add-int/2addr v1, v2

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 33
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 36
    move-result v1

    .line 37
    if-ge v0, v1, :cond_4

    .line 39
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 41
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    const/4 p1, 0x0

    .line 45
    move v0, p1

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 48
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    .line 51
    move-result v1

    .line 52
    if-ge p1, v1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 56
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 59
    move-result v1

    .line 60
    if-eqz v0, :cond_0

    .line 62
    if-ge v1, v0, :cond_1

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 66
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 69
    move-result v2

    .line 70
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    .line 72
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 75
    move-result v3

    .line 76
    add-int/2addr v3, v2

    .line 77
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    .line 79
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 82
    move-result v2

    .line 83
    add-int/2addr v2, v3

    .line 84
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 86
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 89
    move-result v3

    .line 90
    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    .line 92
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 95
    move-result v4

    .line 96
    if-ge v3, v4, :cond_1

    .line 98
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 100
    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 103
    move-result v3

    .line 104
    if-le v2, v3, :cond_1

    .line 106
    move v0, v1

    .line 107
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    if-eqz v0, :cond_3

    .line 112
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 114
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 117
    move-result p1

    .line 118
    add-int/lit8 p1, p1, 0x1

    .line 120
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 126
    add-int/lit8 p1, p1, 0x1

    .line 128
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 130
    :cond_4
    :goto_1
    return-void
.end method

.method public final stageJob(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    .line 11
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, p2, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->adjustPendingJobCount(IZ)I

    .line 18
    move-result v2

    .line 19
    if-le v2, v1, :cond_1

    .line 21
    move v2, v1

    .line 22
    :goto_0
    if-gt v2, p2, :cond_1

    .line 24
    and-int v3, v2, p2

    .line 26
    if-ne v3, v2, :cond_0

    .line 28
    invoke-virtual {p0, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->maybeAdjustReservations(I)V

    .line 31
    :cond_0
    shl-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 36
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 39
    move-result p2

    .line 40
    add-int/2addr p2, v0

    .line 41
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 43
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 46
    move-result p1

    .line 47
    if-le p2, p1, :cond_2

    .line 49
    iget p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 51
    sub-int/2addr p1, v1

    .line 52
    iput p1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 54
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Config={tot="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigMaxTotal:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " mins="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, " maxs="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v1, "}, act res="

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ", Pending="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ", Running="

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", Staged="

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", # unspecialized remaining="

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    return-object p0
.end method
