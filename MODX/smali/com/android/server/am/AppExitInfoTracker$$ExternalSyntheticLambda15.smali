.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppExitInfoTracker;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/Integer;

.field public final synthetic f$5:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 6
    iput p2, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;->f$2:Ljava/util/ArrayList;

    .line 10
    iput p4, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;->f$3:I

    .line 12
    iput-object p5, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;->f$4:Ljava/lang/Integer;

    .line 14
    iput-object p6, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;->f$5:Ljava/lang/Integer;

    .line 16
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 3
    iget v1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;->f$2:Ljava/util/ArrayList;

    .line 7
    iget v3, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;->f$3:I

    .line 9
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;->f$4:Ljava/lang/Integer;

    .line 11
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;->f$5:Ljava/lang/Integer;

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 15
    check-cast p2, Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v5

    .line 31
    if-nez p1, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 37
    const/4 v6, 0x1

    .line 38
    invoke-virtual {p1, v3, v6, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfoLocked(IILjava/util/ArrayList;)V

    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/app/ApplicationExitInfo;

    .line 54
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    .line 57
    move-result p2

    .line 58
    if-eq p2, v1, :cond_2

    .line 60
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0, p1, v4, p0}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 67
    const/4 p0, 0x2

    .line 68
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v5

    .line 72
    :goto_0
    return-object v5
.end method
