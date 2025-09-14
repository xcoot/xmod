.class public final Lcom/android/server/job/JobSchedulerService$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/job/controllers/JobStatus;

    .line 4
    .line 5
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 6
    .line 7
    iget v0, p2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget-object p2, p2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getId()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, -0x1

    .line 23
    if-eq p0, v0, :cond_0

    .line 24
    .line 25
    if-ge p0, v0, :cond_3

    .line 26
    .line 27
    :goto_0
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    if-ge p1, p2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-le p1, p2, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    :cond_3
    :goto_1
    return v1
.end method
