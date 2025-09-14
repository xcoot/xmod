.class public final Lcom/android/server/wm/TransitionController$Lock;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mTransitionWaiters:I

.field public final synthetic this$0:Lcom/android/server/wm/TransitionController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TransitionController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final runWhenIdle(Ljava/lang/Runnable;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 20
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
    goto :goto_4

    .line 29
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    iput v1, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    .line 34
    .line 35
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    const-wide/16 v2, 0x3e8

    .line 44
    .line 45
    add-long/2addr v0, v2

    .line 46
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    .line 47
    .line 48
    iget-object v4, v4, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 49
    .line 50
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 51
    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 53
    .line 54
    .line 55
    monitor-enter v4

    .line 56
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wm/TransitionController$Lock;->this$0:Lcom/android/server/wm/TransitionController;

    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    cmp-long v5, v5, v0

    .line 69
    .line 70
    if-lez v5, :cond_1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 74
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 75
    .line 76
    .line 77
    monitor-enter p0

    .line 78
    :try_start_3
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    .line 80
    .line 81
    :try_start_4
    monitor-exit p0

    .line 82
    goto :goto_0

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    goto :goto_1

    .line 85
    :catch_0
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 88
    throw p1

    .line 89
    :catchall_2
    move-exception p0

    .line 90
    goto :goto_3

    .line 91
    :cond_2
    :goto_2
    :try_start_5
    iget v0, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    .line 92
    .line 93
    add-int/lit8 v0, v0, -0x1

    .line 94
    .line 95
    iput v0, p0, Lcom/android/server/wm/TransitionController$Lock;->mTransitionWaiters:I

    .line 96
    .line 97
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 98
    .line 99
    .line 100
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 101
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :goto_3
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 106
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :goto_4
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 111
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 112
    .line 113
    .line 114
    throw p0
.end method
