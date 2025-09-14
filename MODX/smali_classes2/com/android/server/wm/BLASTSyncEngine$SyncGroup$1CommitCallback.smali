.class public final Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public ran:Z

.field public final synthetic this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

.field public final synthetic val$merged:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic val$mergedTxId:J

.field public final synthetic val$syncId:I

.field public final synthetic val$syncName:Ljava/lang/String;

.field public final synthetic val$wcAwaitingCommit:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Landroid/util/ArraySet;ILjava/lang/String;JLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$wcAwaitingCommit:Landroid/util/ArraySet;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$syncId:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$syncName:Ljava/lang/String;

    .line 11
    .line 12
    iput-wide p5, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$mergedTxId:J

    .line 13
    .line 14
    iput-object p7, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$merged:Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->ran:Z

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final onCommitted(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 19
    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->ran:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 v1, 0x1

    .line 34
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->ran:Z

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$wcAwaitingCommit:Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->onSyncTransactionCommitted(Landroid/view/SurfaceControl$Transaction;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$wcAwaitingCommit:Landroid/util/ArraySet;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 64
    .line 65
    .line 66
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method public final run()V
    .locals 6

    .line 1
    const-string/jumbo v0, "onTransactionCommitTimeout"

    .line 2
    .line 3
    .line 4
    const-wide/16 v1, 0x20

    .line 5
    .line 6
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "BLASTSyncEngine"

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v4, "WM sent Transaction (#"

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$syncId:I

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v4, ", "

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$syncName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, ", tx="

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$mergedTxId:J

    .line 39
    .line 40
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v4, ") to organizer, but never received commit callback. Application ANR likely to follow."

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 65
    .line 66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 67
    .line 68
    .line 69
    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    .line 73
    .line 74
    invoke-interface {v1}, Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;->onTransactionCommitTimeout()V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->val$merged:Landroid/view/SurfaceControl$Transaction;

    .line 78
    .line 79
    iget-wide v2, v1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    .line 80
    .line 81
    const-wide/16 v4, 0x0

    .line 82
    .line 83
    cmp-long v2, v2, v4

    .line 84
    .line 85
    if-eqz v2, :cond_0

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->this$1:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 93
    .line 94
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 101
    .line 102
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;->onCommitted(Landroid/view/SurfaceControl$Transaction;)V

    .line 103
    .line 104
    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 113
    .line 114
    .line 115
    throw p0
.end method
