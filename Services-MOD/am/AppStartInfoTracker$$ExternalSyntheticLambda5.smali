.class public final synthetic Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 3
    check-cast p2, Landroid/util/SparseArray;

    .line 5
    const/4 p0, 0x0

    .line 6
    move p1, p0

    .line 7
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_3

    .line 13
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    .line 19
    iput-boolean p0, v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    .line 21
    iget-object v1, v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v1

    .line 27
    iget-boolean v2, v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    .line 29
    const/16 v3, 0x64

    .line 31
    if-eqz v2, :cond_0

    .line 33
    move v2, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget v2, v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMaxCapacity:I

    .line 37
    :goto_1
    if-gt v1, v2, :cond_1

    .line 39
    goto :goto_3

    .line 40
    :cond_1
    iget-object v1, v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 42
    new-instance v2, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda1;

    .line 44
    const/4 v4, 0x1

    .line 45
    invoke-direct {v2, v4}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 48
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    iget-object v1, v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 56
    move-result v2

    .line 57
    iget-boolean v4, v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMonitoringModeEnabled:Z

    .line 59
    if-eqz v4, :cond_2

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    iget v3, v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mMaxCapacity:I

    .line 64
    :goto_2
    sub-int/2addr v2, v3

    .line 65
    invoke-virtual {v1, p0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->mInfos:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 77
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method
