.class public final Lcom/android/server/am/ProcessList$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 3
    check-cast p2, Landroid/util/Pair;

    .line 5
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 7
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 9
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 11
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 13
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 15
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 17
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 19
    iget v2, v1, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 21
    sub-int/2addr v0, v2

    .line 22
    if-eqz v0, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 27
    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 29
    sub-int v0, p0, v0

    .line 31
    if-eqz v0, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 36
    check-cast p0, Ljava/lang/Integer;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result p0

    .line 42
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 44
    check-cast p1, Ljava/lang/Integer;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 49
    move-result p1

    .line 50
    sub-int v0, p0, p1

    .line 52
    if-eqz v0, :cond_2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0
.end method
