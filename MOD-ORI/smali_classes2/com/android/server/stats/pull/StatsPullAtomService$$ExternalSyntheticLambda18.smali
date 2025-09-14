.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(ILandroid/util/SparseArray;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;->f$0:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;->f$0:Landroid/util/SparseArray;

    .line 4
    .line 5
    check-cast p1, Landroid/app/ProcessMemoryState;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 11
    .line 12
    iget p1, p1, Landroid/app/ProcessMemoryState;->pid:I

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    sget v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 19
    .line 20
    iget p1, p1, Landroid/app/ProcessMemoryState;->pid:I

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
