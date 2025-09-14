.class public final Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSleepTokens:Landroid/util/SparseArray;

.field public final mTag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mTag:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final acquire(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mTag:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/wm/RootWindowContainer;->createSleepToken(ILjava/lang/String;Z)Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final release(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->removeSleepToken(Lcom/android/server/wm/RootWindowContainer$SleepToken;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;->mSleepTokens:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    throw p0
.end method
