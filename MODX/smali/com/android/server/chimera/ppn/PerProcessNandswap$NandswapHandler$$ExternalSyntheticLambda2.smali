.class public final synthetic Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 3
    check-cast p2, Landroid/util/Pair;

    .line 5
    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p0

    .line 13
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v0

    .line 21
    sub-int/2addr p0, v0

    .line 22
    if-nez p0, :cond_0

    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 28
    check-cast p0, Ljava/lang/Integer;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 33
    move-result p0

    .line 34
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 36
    check-cast p1, Ljava/lang/Integer;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result p1

    .line 42
    sub-int/2addr p0, p1

    .line 43
    :goto_0
    return p0
.end method
