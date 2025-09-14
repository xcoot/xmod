.class public final Lcom/android/server/job/JobStore$JobSet;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final mJobs:Landroid/util/SparseArray;

.field final mJobsPerSourceUid:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/util/ArraySet;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    .line 24
    .line 25
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/util/ArraySet;

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eq p0, p1, :cond_2

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v1, "mJobs and mJobsPerSourceUid mismatch; caller= "

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, " source= "

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "JobStore"

    .line 79
    .line 80
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_2
    if-nez p0, :cond_4

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    const/4 p0, 0x0

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 91
    :goto_1
    return p0
.end method

.method public final forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_3

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/util/ArraySet;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    add-int/lit8 v2, v2, -0x1

    .line 26
    .line 27
    :goto_1
    if-ltz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    :cond_0
    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return-void
.end method

.method public final get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/util/ArraySet;

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    add-int/lit8 p1, p1, -0x1

    .line 16
    .line 17
    :goto_0
    if-ltz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ne v1, p2, :cond_0

    .line 32
    .line 33
    iget-object v1, v0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    return-object p0
.end method

.method public final getAllJobs()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/job/JobStore$JobSet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz v1, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/util/ArraySet;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/lit8 v3, v3, -0x1

    .line 35
    .line 36
    :goto_1
    if-ltz v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v3, -0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-object v0
.end method

.method public final getJobsBySourceUid(ILjava/util/Set;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/util/ArraySet;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    check-cast p2, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final remove(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 9

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/util/ArraySet;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    .line 12
    .line 13
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/util/ArraySet;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    move v6, v5

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v6, v4

    .line 34
    :goto_0
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    move p1, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move p1, v4

    .line 45
    :goto_1
    if-eq v6, p1, :cond_2

    .line 46
    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v8, "Job presence mismatch; caller="

    .line 50
    .line 51
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v8, " source="

    .line 58
    .line 59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const-string v8, "JobStore"

    .line 70
    .line 71
    invoke-static {v8, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_2
    if-nez v6, :cond_4

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    return v4

    .line 80
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_5

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 91
    .line 92
    .line 93
    :cond_5
    if-eqz v2, :cond_6

    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_6

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobsPerSourceUid:Landroid/util/SparseArray;

    .line 102
    .line 103
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 104
    .line 105
    .line 106
    :cond_6
    return v5
.end method

.method public final size()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/2addr v1, v2

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v1
.end method
