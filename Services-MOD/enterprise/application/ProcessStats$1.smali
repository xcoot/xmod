.class public final Lcom/android/server/enterprise/application/ProcessStats$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 3
    check-cast p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 5
    iget p0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 7
    iget v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 9
    add-int/2addr p0, v0

    .line 10
    iget v0, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 12
    iget v1, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 14
    add-int/2addr v0, v1

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, -0x1

    .line 17
    if-eq p0, v0, :cond_0

    .line 19
    if-le p0, v0, :cond_3

    .line 21
    :goto_0
    move v1, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-boolean p0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    .line 25
    iget-boolean v0, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    .line 27
    if-eq p0, v0, :cond_1

    .line 29
    if-eqz p0, :cond_3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-boolean p0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    .line 34
    iget-boolean p1, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    .line 36
    if-eq p0, p1, :cond_2

    .line 38
    if-eqz p0, :cond_3

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    :cond_3
    :goto_1
    return v1
.end method
