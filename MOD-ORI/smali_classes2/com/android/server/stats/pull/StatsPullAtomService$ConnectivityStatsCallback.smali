.class public final Lcom/android/server/stats/pull/StatsPullAtomService$ConnectivityStatsCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x1

    .line 6
    const/16 v0, 0x62

    .line 7
    .line 8
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x2

    .line 6
    const/16 v0, 0x62

    .line 7
    .line 8
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
