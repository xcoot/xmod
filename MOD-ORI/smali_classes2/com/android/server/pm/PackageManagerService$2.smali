.class public final Lcom/android/server/pm/PackageManagerService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/16 v2, 0xe

    .line 6
    .line 7
    if-eq p0, v2, :cond_1

    .line 8
    .line 9
    const/16 v2, 0x1e

    .line 10
    .line 11
    if-eq p0, v2, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lcom/android/server/pm/PackageManagerService;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 27
    .line 28
    monitor-enter p1

    .line 29
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 35
    .line 36
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_3

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 53
    .line 54
    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda5;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, [Ljava/lang/Integer;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;

    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 68
    .line 69
    .line 70
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    array-length p1, v3

    .line 91
    :goto_0
    if-ge v1, p1, :cond_3

    .line 92
    .line 93
    aget-object v2, v3, v1

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {p0, v2, v4, v5, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictions(IJZ)V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    :goto_1
    return v0

    .line 106
    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 107
    :try_start_6
    throw p0

    .line 108
    :goto_3
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 109
    throw p0
.end method
