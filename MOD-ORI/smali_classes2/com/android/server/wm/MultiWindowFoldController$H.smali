.class public final Lcom/android/server/wm/MultiWindowFoldController$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiWindowFoldController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiWindowFoldController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowFoldController$H;->this$0:Lcom/android/server/wm/MultiWindowFoldController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowFoldController$H;->this$0:Lcom/android/server/wm/MultiWindowFoldController;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/wm/MultiWindowFoldController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowFoldController$H;->this$0:Lcom/android/server/wm/MultiWindowFoldController;

    .line 16
    .line 17
    iget v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mFoldingState:I

    .line 18
    .line 19
    if-ne v1, v0, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 38
    .line 39
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 40
    .line 41
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    invoke-virtual {v2, v9}, Lcom/android/server/wm/KeyguardController;->isKeyguardShowing(I)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 v2, 0x0

    .line 72
    :goto_0
    if-eq v2, v0, :cond_2

    .line 73
    .line 74
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 75
    .line 76
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    const-string v4, "MultiWindowFoldController:wakeup"

    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    const/4 v8, 0x0

    .line 86
    move v6, v9

    .line 87
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnDisplay(Ljava/lang/String;IIZZ)Z

    .line 88
    .line 89
    .line 90
    :cond_2
    const-string/jumbo v0, "start_home_by_wakeup"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v9, v0}, Lcom/android/server/wm/MultiWindowFoldController;->setFoldingState(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 104
    .line 105
    .line 106
    throw p0
.end method
