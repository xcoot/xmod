.class public final synthetic Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 3
    check-cast p2, Landroid/util/Pair;

    .line 5
    sget-object p0, Lcom/android/server/chimera/ppn/QuickSwap;->QUICKSWAP_BLOCKLIST:Ljava/util/List;

    .line 7
    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 9
    check-cast p0, Ljava/lang/Long;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 14
    move-result-wide v0

    .line 15
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 17
    check-cast p0, Ljava/lang/Long;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 22
    move-result-wide v2

    .line 23
    sub-long/2addr v0, v2

    .line 24
    const-wide/16 v2, 0x0

    .line 26
    cmp-long p0, v0, v2

    .line 28
    if-nez p0, :cond_1

    .line 30
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 32
    check-cast p0, Ljava/lang/Integer;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result p0

    .line 38
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    check-cast p1, Ljava/lang/Integer;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result p1

    .line 46
    if-le p0, p1, :cond_0

    .line 48
    const/4 p0, -0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p0, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 54
    check-cast p0, Ljava/lang/Long;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 59
    move-result-wide v0

    .line 60
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 62
    check-cast p0, Ljava/lang/Long;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 67
    move-result-wide p0

    .line 68
    sub-long/2addr v0, p0

    .line 69
    long-to-int p0, v0

    .line 70
    :goto_0
    return p0
.end method
