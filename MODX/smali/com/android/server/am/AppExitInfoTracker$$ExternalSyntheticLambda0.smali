.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppExitInfoTracker;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 6
    iput p2, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    .line 10
    iput p4, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;->f$3:I

    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 3
    iget v1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    .line 7
    iget p0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;->f$3:I

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 11
    check-cast p2, Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 22
    if-eqz p1, :cond_7

    .line 24
    iget-object p2, v0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 29
    iget-object p2, v0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 31
    if-nez p2, :cond_0

    .line 33
    new-instance p2, Ljava/util/ArrayList;

    .line 35
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 43
    move-result v0

    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 46
    :goto_0
    if-ltz v0, :cond_3

    .line 48
    if-eqz p0, :cond_1

    .line 50
    iget-object v1, p1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 55
    move-result v1

    .line 56
    if-ne p0, v1, :cond_2

    .line 58
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 60
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 66
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object v0, p1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 74
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 77
    move-result v0

    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 80
    :goto_1
    if-ltz v0, :cond_6

    .line 82
    if-eqz p0, :cond_4

    .line 84
    iget-object v1, p1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 86
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 89
    move-result v1

    .line 90
    if-ne p0, v1, :cond_5

    .line 92
    :cond_4
    iget-object v1, p1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 94
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 100
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_6
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_7
    const/4 p0, 0x0

    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method
