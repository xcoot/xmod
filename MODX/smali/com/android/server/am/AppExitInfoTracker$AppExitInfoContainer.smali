.class public final Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInfos:Landroid/util/SparseArray;

.field public final mMaxCapacity:I

.field public final mRecoverableCrashes:Landroid/util/SparseArray;

.field public mUid:I

.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 13
    new-instance p1, Landroid/util/SparseArray;

    .line 15
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 20
    iput p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mMaxCapacity:I

    .line 22
    return-void
.end method

.method public static destroyLocked(Landroid/util/SparseArray;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 9
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 15
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    .line 28
    invoke-virtual {v1, v2}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public final addInfoLocked(Landroid/util/SparseArray;Landroid/app/ApplicationExitInfo;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mMaxCapacity:I

    .line 7
    if-lt v0, v1, :cond_3

    .line 9
    const/4 v1, -0x1

    .line 10
    const-wide v2, 0x7fffffffffffffffL

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_0
    if-ge v4, v0, :cond_1

    .line 18
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Landroid/app/ApplicationExitInfo;

    .line 24
    invoke-virtual {v5}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    .line 27
    move-result-wide v6

    .line 28
    cmp-long v6, v6, v2

    .line 30
    if-gez v6, :cond_0

    .line 32
    invoke-virtual {v5}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    .line 35
    move-result-wide v1

    .line 36
    move-wide v2, v1

    .line 37
    move v1, v4

    .line 38
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-ltz v1, :cond_3

    .line 43
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 49
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 58
    :cond_2
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 61
    :cond_3
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    .line 64
    move-result v0

    .line 65
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    .line 68
    move-result v1

    .line 69
    invoke-static {v1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4

    .line 75
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    .line 78
    move-result v0

    .line 79
    :cond_4
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getPid()I

    .line 82
    move-result v1

    .line 83
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getProcessStateSummary()[B

    .line 86
    move-result-object v2

    .line 87
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 89
    if-nez v2, :cond_5

    .line 91
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 93
    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$smfindAndRemoveFromSparse2dArray(IILandroid/util/SparseArray;)Ljava/lang/Object;

    .line 96
    move-result-object v2

    .line 97
    check-cast v2, [B

    .line 99
    invoke-virtual {p2, v2}, Landroid/app/ApplicationExitInfo;->setProcessStateSummary([B)V

    .line 102
    :cond_5
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    .line 105
    move-result-object v2

    .line 106
    if-nez v2, :cond_6

    .line 108
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 110
    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$smfindAndRemoveFromSparse2dArray(IILandroid/util/SparseArray;)Ljava/lang/Object;

    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Ljava/io/File;

    .line 116
    invoke-virtual {p2, v0}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    .line 119
    :cond_6
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    .line 121
    invoke-virtual {p2, p0}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    .line 124
    invoke-virtual {p1, v1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 127
    return-void
.end method

.method public final getExitInfoLocked(IILjava/util/ArrayList;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 3
    if-lez p1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/ApplicationExitInfo;

    .line 11
    if-eqz p0, :cond_9

    .line 13
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    goto/16 :goto_4

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 21
    move-result p1

    .line 22
    const/4 v1, 0x0

    .line 23
    if-lez p2, :cond_7

    .line 25
    if-gt p1, p2, :cond_1

    .line 27
    goto :goto_3

    .line 28
    :cond_1
    const/4 v2, 0x1

    .line 29
    if-ne p2, v2, :cond_4

    .line 31
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Landroid/app/ApplicationExitInfo;

    .line 37
    :goto_0
    if-ge v2, p1, :cond_3

    .line 39
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Landroid/app/ApplicationExitInfo;

    .line 45
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    .line 48
    move-result-wide v3

    .line 49
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    .line 52
    move-result-wide v5

    .line 53
    cmp-long v1, v3, v5

    .line 55
    if-gez v1, :cond_2

    .line 57
    move-object p0, p2

    .line 58
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_4

    .line 65
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 67
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 72
    move v2, v1

    .line 73
    :goto_1
    if-ge v2, p1, :cond_5

    .line 75
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Landroid/app/ApplicationExitInfo;

    .line 81
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 86
    goto :goto_1

    .line 87
    :cond_5
    new-instance p1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;

    .line 89
    const/4 v0, 0x2

    .line 90
    invoke-direct {p1, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 93
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    :goto_2
    if-ge v1, p2, :cond_6

    .line 98
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroid/app/ApplicationExitInfo;

    .line 104
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 109
    goto :goto_2

    .line 110
    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 113
    goto :goto_4

    .line 114
    :cond_7
    :goto_3
    if-ge v1, p1, :cond_8

    .line 116
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 119
    move-result-object p0

    .line 120
    check-cast p0, Landroid/app/ApplicationExitInfo;

    .line 122
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v1, v1, 0x1

    .line 127
    goto :goto_3

    .line 128
    :cond_8
    new-instance p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;

    .line 130
    const/4 p1, 0x1

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 134
    invoke-static {p3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    :cond_9
    :goto_4
    return-void
.end method
