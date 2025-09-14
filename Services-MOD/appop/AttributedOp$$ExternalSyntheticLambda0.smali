.class public final synthetic Lcom/android/server/appop/AttributedOp$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/appop/AttributedOp;

    .line 3
    check-cast p2, Landroid/os/IBinder;

    .line 5
    sget-boolean p0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    .line 7
    iget-object p0, p1, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    monitor-exit p0

    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p1, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p1, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    .line 37
    :goto_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    .line 43
    if-eqz v0, :cond_2

    .line 45
    const/4 v1, 0x1

    .line 46
    iput v1, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p2, v0, v0}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    .line 52
    monitor-exit p0

    .line 53
    :goto_1
    return-void

    .line 54
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p1
.end method
