.class public final Lcom/android/server/wm/RootWindowContainer$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/RootWindowContainer$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    .line 12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 13
    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTaskLayersChanged:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 46
    .line 47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 48
    .line 49
    .line 50
    monitor-enter v0

    .line 51
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 59
    .line 60
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;

    .line 61
    .line 62
    const/4 v3, 0x3

    .line 63
    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    .line 68
    .line 69
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 79
    .line 80
    .line 81
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    goto :goto_2

    .line 88
    :catchall_2
    move-exception v1

    .line 89
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 90
    .line 91
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 94
    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$1;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 103
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
