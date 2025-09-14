.class public final Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mLatestProtectedPackages:Landroid/util/ArrayMap;

.field public mProtectedAppSizeForGame:I


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 7

    .line 1
    const/4 p2, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 4
    return p2

    .line 5
    :cond_0
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 7
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 14
    const/16 v1, 0xb

    .line 16
    const/16 v2, 0xf

    .line 18
    if-eqz v0, :cond_2

    .line 20
    if-eq p3, v1, :cond_1

    .line 22
    if-ne p3, v2, :cond_2

    .line 24
    :cond_1
    return p2

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/util/ArrayList;

    .line 40
    if-eqz p1, :cond_9

    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 45
    move-result v3

    .line 46
    if-lez v3, :cond_9

    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v3

    .line 52
    add-int/lit8 v4, v3, -0x1

    .line 54
    const/16 v5, 0x9

    .line 56
    const/4 v6, 0x2

    .line 57
    if-eq p3, v5, :cond_5

    .line 59
    if-eq p3, v1, :cond_4

    .line 61
    if-eq p3, v2, :cond_3

    .line 63
    const/16 v1, 0x12

    .line 65
    if-eq p3, v1, :cond_5

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    if-le v3, v6, :cond_6

    .line 70
    :goto_0
    sub-int/2addr v3, v6

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    if-le v3, v6, :cond_6

    .line 74
    goto :goto_0

    .line 75
    :cond_5
    iget p0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mProtectedAppSizeForGame:I

    .line 77
    if-le v3, p0, :cond_6

    .line 79
    sub-int/2addr v3, p0

    .line 80
    goto :goto_2

    .line 81
    :cond_6
    :goto_1
    move v3, p2

    .line 82
    :goto_2
    if-ne p3, v2, :cond_7

    .line 84
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->getScreenOnState()Z

    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_9

    .line 90
    goto :goto_3

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_4

    .line 93
    :cond_7
    :goto_3
    if-lt v4, v3, :cond_9

    .line 95
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_8

    .line 105
    monitor-exit v0

    .line 106
    return v6

    .line 107
    :cond_8
    add-int/lit8 v4, v4, -0x1

    .line 109
    goto :goto_3

    .line 110
    :cond_9
    monitor-exit v0

    .line 111
    return p2

    .line 112
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setLatestProtectedPkg(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    .line 3
    if-eqz v0, :cond_3

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/util/ArrayList;

    .line 18
    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x6

    .line 40
    if-ne v2, v3, :cond_1

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 56
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    monitor-exit v0

    .line 72
    goto :goto_2

    .line 73
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_3
    :goto_2
    return-void
.end method
