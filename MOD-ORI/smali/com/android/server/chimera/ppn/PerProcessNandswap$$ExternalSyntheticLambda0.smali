.class public final synthetic Lcom/android/server/chimera/ppn/PerProcessNandswap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 2
    .line 3
    sget-boolean p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    .line 4
    .line 5
    iget p0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 6
    .line 7
    return p0
.end method
