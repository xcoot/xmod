.class public final Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mVpnPkgs:Landroid/util/ArrayMap;


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->mVpnPkgs:Landroid/util/ArrayMap;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 24
    monitor-exit p2

    .line 25
    const/4 p0, 0x6

    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    monitor-exit p2

    .line 30
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method
