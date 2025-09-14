.class public final Lcom/android/server/power/stats/BatteryStatsImpl$UsageComparator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Landroid/os/SemSimpleNetworkStats;

    .line 2
    .line 3
    check-cast p2, Landroid/os/SemSimpleNetworkStats;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p2}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    cmp-long p0, v0, v2

    .line 14
    .line 15
    if-lez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, -0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    .line 20
    .line 21
    .line 22
    move-result-wide p0

    .line 23
    invoke-virtual {p2}, Landroid/os/SemSimpleNetworkStats;->getTxRxBytes()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    cmp-long p0, p0, v0

    .line 28
    .line 29
    if-gez p0, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method
