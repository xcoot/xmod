.class public final Lcom/android/server/wm/InputMonitor$UpdateInputWindows;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v1, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsPending:Z

    .line 15
    .line 16
    iput-boolean v2, v1, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 17
    .line 18
    iget-boolean v2, v1, Lcom/android/server/wm/InputMonitor;->mDisplayRemoved:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor$UpdateInputWindows;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputForAllWindowsConsumer:Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    .line 40
    .line 41
    invoke-static {p0, v1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->-$$Nest$mupdateInputWindows(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V

    .line 42
    .line 43
    .line 44
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 51
    .line 52
    .line 53
    throw p0
.end method
