.class public final Lcom/android/server/am/Pageboost$LRUPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLock:Ljava/lang/Object;

.field public mRecentPrefetchList:Ljava/lang/Object;


# virtual methods
.method public appFilter(Lcom/android/server/am/Pageboost$PageboostAppList;)Lcom/android/server/am/Pageboost$PageboostAppList;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 3
    invoke-direct {v0}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v2, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    sget-object v3, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 16
    if-eqz v3, :cond_4

    .line 18
    iget-object v3, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 20
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 21
    :try_start_1
    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 23
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v4

    .line 27
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 33
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 39
    iget-object v5, v5, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_4

    .line 47
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    sget-object v1, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 50
    iget-object v1, v1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 52
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 53
    :try_start_3
    sget-object v3, Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 55
    iget-object v3, v3, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 57
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v3

    .line 61
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_3

    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 73
    iget-object v5, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 75
    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    :try_start_4
    iget-object v6, p1, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 78
    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    .line 81
    move-result v6

    .line 82
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 83
    if-eqz v6, :cond_1

    .line 85
    :try_start_5
    iget-object v5, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 87
    const/4 v6, 0x1

    .line 88
    invoke-static {v5, v6}, Lcom/android/server/am/Pageboost;->-$$Nest$smgetPidFromPackageName(Ljava/lang/String;Z)I

    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_2

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    const/4 p1, 0x0

    .line 96
    invoke-virtual {v0, v4, p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 99
    goto :goto_2

    .line 100
    :catchall_1
    move-exception p0

    .line 101
    goto :goto_3

    .line 102
    :catchall_2
    move-exception p0

    .line 103
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 104
    :try_start_7
    throw p0

    .line 105
    :cond_3
    :goto_2
    monitor-exit v1

    .line 106
    goto :goto_5

    .line 107
    :goto_3
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 108
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 109
    :catchall_3
    move-exception p0

    .line 110
    goto :goto_6

    .line 111
    :goto_4
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 112
    :try_start_a
    throw p0

    .line 113
    :cond_4
    :goto_5
    iput-object v0, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Ljava/lang/Object;

    .line 115
    monitor-exit v2

    .line 116
    return-object v0

    .line 117
    :goto_6
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 118
    throw p0
.end method

.method public mlockAllFiles()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/LinkedList;

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_3

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 24
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 27
    move-result v2

    .line 28
    const-string v3, "Pageboost"

    .line 30
    if-nez v2, :cond_2

    .line 32
    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 34
    const-string/jumbo v2, "skip pinning: "

    .line 37
    const-string v4, " does not exist"

    .line 39
    invoke-static {v2, v1, v4, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const v2, 0x7fffffff

    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static {v2, v1, v4}, Lcom/android/server/PinnerService;->pinFileInternal(ILjava/lang/String;Z)Lcom/android/server/PinnerService$PinnedFile;

    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_1

    .line 53
    iget-object v4, p0, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    .line 55
    check-cast v4, Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 62
    const-string/jumbo v2, "successfully pinned "

    .line 65
    invoke-static {v2, v1, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    return-void
.end method
