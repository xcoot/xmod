.class public final Lcom/android/server/am/Pageboost$PageboostPredictor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mAppSelection:Lcom/android/server/am/Pageboost$LRUPolicy;


# direct methods
.method public static checkPredictHit(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-gtz p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    sget-object p1, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$LRUPolicy;

    .line 7
    iget-object v1, p1, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p1, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Ljava/lang/Object;

    .line 12
    check-cast v2, Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 14
    if-eqz v2, :cond_3

    .line 16
    iget-object v2, v2, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 18
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    iget-object v3, p1, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Ljava/lang/Object;

    .line 21
    check-cast v3, Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 23
    iget-object v3, v3, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 25
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v3

    .line 29
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_2

    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 41
    if-ne v4, p0, :cond_1

    .line 43
    const/4 v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    monitor-exit v2

    .line 48
    goto :goto_2

    .line 49
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :try_start_2
    throw p0

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    goto :goto_3

    .line 53
    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 54
    iput-object p0, p1, Lcom/android/server/am/Pageboost$LRUPolicy;->mRecentPrefetchList:Ljava/lang/Object;

    .line 56
    monitor-exit v1

    .line 57
    return v0

    .line 58
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    throw p0
.end method

.method public static haltPredict()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 7
    const/16 v1, 0x15

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    :cond_0
    sget-object v0, Lcom/android/server/am/Pageboost;->sHandler:Lcom/android/server/am/Pageboost$PageboostHandler;

    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    const/4 v0, 0x2

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Lcom/android/server/am/Pageboost$Vramdisk;->executeCmd(ILjava/lang/String;)V

    .line 23
    return-void
.end method

.method public static predict(Lcom/android/server/am/Pageboost$PageboostAppList;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/server/am/Pageboost$PageboostPredictor;->mAppSelection:Lcom/android/server/am/Pageboost$LRUPolicy;

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/am/Pageboost$LRUPolicy;->appFilter(Lcom/android/server/am/Pageboost$PageboostAppList;)Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, ""

    .line 9
    iget-object v1, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    .line 14
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_2

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 32
    invoke-virtual {v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->execute()Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v0, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 48
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, ","

    .line 53
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_3

    .line 63
    :cond_1
    :goto_1
    iget v5, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    .line 65
    iget v6, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    .line 67
    iget v7, v4, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    .line 69
    add-int/2addr v5, v6

    .line 70
    add-int/2addr v5, v7

    .line 71
    if-lt v5, v3, :cond_0

    .line 73
    move-object v2, v4

    .line 74
    move v3, v5

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    const-string p0, "Prefetch,"

    .line 79
    const-string v1, ",MemPrep,"

    .line 81
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    move-result-object p0

    .line 85
    if-eqz v2, :cond_3

    .line 87
    iget-object v0, v2, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    const-string/jumbo v0, "n/a"

    .line 93
    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Ljava/lang/String;)V

    .line 103
    return-void

    .line 104
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    throw p0
.end method
