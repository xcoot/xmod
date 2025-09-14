.class public final Lcom/android/server/inputmethod/ImeTrackerService;
.super Lcom/android/internal/inputmethod/IImeTracker$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/inputmethod/ImeTrackerService$History;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Landroid/os/Handler;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v0, p1, v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final finishTrackingPendingImeVisibilityRequests(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->finishTrackingPendingImeVisibilityRequests_enforcePermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->clear()V

    .line 12
    .line 13
    .line 14
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    const/4 p0, 0x0

    .line 16
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :catchall_1
    move-exception p0

    .line 23
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 25
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 26
    .line 27
    .line 28
    :goto_1
    return-void
.end method

.method public final hasPendingImeVisibilityRequests()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/IImeTracker$Stub;->hasPendingImeVisibilityRequests_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    xor-int/lit8 p0, p0, 0x1

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {p0, p1, v1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final onDispatched(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-static {p0, p1, v1, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final onHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final onProgress(Landroid/os/IBinder;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput p2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final onShown(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    new-instance v1, Landroid/os/Binder;

    .line 3
    .line 4
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v2, Landroid/view/inputmethod/ImeTracker$Token;

    .line 8
    .line 9
    move-object v6, p1

    .line 10
    invoke-direct {v2, v1, p1}, Landroid/view/inputmethod/ImeTracker$Token;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v10, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    .line 14
    .line 15
    move-object v3, v10

    .line 16
    move v4, p2

    .line 17
    move v5, p3

    .line 18
    move v7, p4

    .line 19
    move/from16 v8, p5

    .line 20
    .line 21
    move/from16 v9, p6

    .line 22
    .line 23
    invoke-direct/range {v3 .. v9}, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;-><init>(IILjava/lang/String;IIZ)V

    .line 24
    .line 25
    .line 26
    iget-object v3, v0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v3

    .line 29
    :try_start_0
    iget-object v4, v0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 30
    .line 31
    iget-object v4, v4, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    .line 32
    .line 33
    invoke-virtual {v4, v1, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/android/server/inputmethod/ImeTrackerService;->mHandler:Landroid/os/Handler;

    .line 37
    .line 38
    new-instance v4, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-direct {v4, p0, v2}, Lcom/android/server/inputmethod/ImeTrackerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/ImeTrackerService;Landroid/view/inputmethod/ImeTracker$Token;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v5, 0x2710

    .line 44
    .line 45
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    .line 47
    .line 48
    monitor-exit v3

    .line 49
    return-object v2

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v0
.end method
