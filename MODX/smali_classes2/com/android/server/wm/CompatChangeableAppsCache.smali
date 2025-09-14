.class public final Lcom/android/server/wm/CompatChangeableAppsCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppsArray:Landroid/util/SparseArray;


# virtual methods
.method public final query(Lcom/android/internal/util/ToBooleanFunction;I)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/CompatChangeableAppsCache;->mAppsArray:Landroid/util/SparseArray;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    const/4 p0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/samsung/android/core/CompatChangeableApps;

    .line 17
    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lcom/samsung/android/core/CompatChangeableApps;

    .line 22
    .line 23
    invoke-direct {v0, p2, v1}, Lcom/samsung/android/core/CompatChangeableApps;-><init>(IZ)V

    .line 24
    .line 25
    .line 26
    monitor-enter p0

    .line 27
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/CompatChangeableAppsCache;->mAppsArray:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    :cond_1
    move-object p0, v0

    .line 34
    goto :goto_0

    .line 35
    :catchall_1
    move-exception p1

    .line 36
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    throw p1

    .line 38
    :goto_0
    if-eqz p0, :cond_2

    .line 39
    .line 40
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v1, 0x0

    .line 48
    :goto_1
    return v1

    .line 49
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    throw p1
.end method
