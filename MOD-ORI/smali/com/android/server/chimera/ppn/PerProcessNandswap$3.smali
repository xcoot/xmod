.class public final Lcom/android/server/chimera/ppn/PerProcessNandswap$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;

    .line 4
    .line 5
    iget-wide p0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->writeback:J

    .line 6
    .line 7
    iget-wide v0, p2, Lcom/android/server/chimera/ppn/PerProcessNandswap$MemoryItem;->writeback:J

    .line 8
    .line 9
    cmp-long p0, p0, v0

    .line 10
    .line 11
    if-gez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-lez p0, :cond_1

    .line 16
    .line 17
    const/4 p0, -0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method
