.class public final synthetic Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 2
    .line 3
    sget-object p0, Lcom/android/server/chimera/ppn/QuickSwap;->QUICKSWAP_BLOCKLIST:Ljava/util/List;

    .line 4
    .line 5
    iget p0, p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
