.class public final Lcom/android/server/wm/ClientLifecycleManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final mPendingTransactions:Landroid/util/ArrayMap;

.field public mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    .line 10
    .line 11
    return-void
.end method

.method public static scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 5

    .line 1
    const-string v0, "Failed to deliver transaction for "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->getClient()Landroid/app/IApplicationThread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->schedule()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    instance-of v0, v1, Landroid/os/Binder;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->recycle()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v2

    .line 21
    :try_start_1
    const-string v3, "ClientLifecycleManager"

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, "\ntransaction="

    .line 32
    .line 33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_0
    instance-of v1, v1, Landroid/os/Binder;

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->recycle()V

    .line 52
    .line 53
    .line 54
    :cond_1
    throw v0
.end method


# virtual methods
.method public final dispatchPendingTransaction(Landroid/app/IApplicationThread;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/window/flags/Flags;->bundleClientTransactionFlag()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/app/servertransaction/ClientTransaction;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    :try_start_0
    invoke-static {p0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const-string p1, "ClientLifecycleManager"

    .line 28
    .line 29
    const-string v0, "Failed to deliver pending transaction"

    .line 30
    .line 31
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchPendingTransactions()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/window/flags/Flags;->bundleClientTransactionFlag()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    const-wide/16 v0, 0x20

    .line 17
    .line 18
    const-string v2, "clientTransactionsDispatched"

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_0
    if-ge v3, v2, :cond_1

    .line 31
    .line 32
    iget-object v4, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroid/app/servertransaction/ClientTransaction;

    .line 39
    .line 40
    :try_start_0
    invoke-static {v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v4

    .line 45
    const-string v5, "ClientLifecycleManager"

    .line 46
    .line 47
    const-string v6, "Failed to deliver pending transaction"

    .line 48
    .line 49
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_2
    return-void
.end method

.method public final scheduleTransactionAndLifecycleItems(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;Landroid/app/servertransaction/ActivityLifecycleItem;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/window/flags/Flags;->bundleClientTransactionFlag()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/servertransaction/ClientTransaction;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object p1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1, p2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p3}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 35
    .line 36
    .line 37
    if-nez p4, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/wm/ClientLifecycleManager;->shouldDispatchPendingTransactionsImmediately()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/app/servertransaction/ClientTransaction;->getClient()Landroid/app/IApplicationThread;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-static {p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0, p2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p3}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    return-void
.end method

.method public final scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/window/flags/Flags;->bundleClientTransactionFlag()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/servertransaction/ClientTransaction;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object p1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1, p2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/wm/ClientLifecycleManager;->shouldDispatchPendingTransactionsImmediately()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/app/servertransaction/ClientTransaction;->getClient()Landroid/app/IApplicationThread;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-static {p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0, p2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_1
    return-void
.end method

.method public final shouldDispatchPendingTransactionsImmediately()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 10
    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    iget-boolean p0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 19
    .line 20
    if-nez p0, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 24
    :goto_1
    return v0
.end method
