.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;->$r8$classId:I

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 9
    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    .line 12
    move v0, v1

    .line 13
    :cond_0
    return v0

    .line 14
    :pswitch_0
    sget p0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 15
    .line 16
    const/16 p0, 0x3a

    .line 17
    .line 18
    if-ne p1, p0, :cond_1

    .line 19
    .line 20
    move v0, v1

    .line 21
    :cond_1
    return v0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
