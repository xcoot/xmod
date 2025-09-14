.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;->f$0:I

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;->f$0:I

    .line 3
    check-cast p1, Ljava/lang/String;

    .line 5
    check-cast p2, Landroid/util/SparseArray;

    .line 7
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    sub-int/2addr p1, v0

    .line 13
    :goto_0
    if-ltz p1, :cond_1

    .line 15
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 22
    move-result v1

    .line 23
    if-ne v1, p0, :cond_0

    .line 25
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 31
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 33
    invoke-static {v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked(Landroid/util/SparseArray;)V

    .line 36
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mRecoverableCrashes:Landroid/util/SparseArray;

    .line 38
    invoke-static {p0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked(Landroid/util/SparseArray;)V

    .line 41
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_2

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/4 v0, 0x0

    .line 56
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method
