.class public final Lcom/android/server/wm/RootWindowContainer$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/RootWindowContainer;

.field public val$enterPipThrowable:Ljava/lang/Object;

.field public val$rootTask:Lcom/android/server/wm/ConfigurationContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RootWindowContainer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$2;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/Task;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer$2;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$rootTask:Lcom/android/server/wm/ConfigurationContainer;

    iput-object p3, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$enterPipThrowable:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

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
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    invoke-direct {v2, v3, p0}, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .line 33
    .line 34
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 44
    .line 45
    .line 46
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception v1

    .line 54
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 55
    .line 56
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()V

    .line 64
    .line 65
    .line 66
    throw v1

    .line 67
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :pswitch_0
    const-string v0, "Enter PiP was aborted via a scheduled timeouttask_state_before="

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 79
    .line 80
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 81
    .line 82
    .line 83
    monitor-enter v1

    .line 84
    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 85
    .line 86
    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 87
    .line 88
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_0

    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 95
    .line 96
    iget-object v2, v0, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    .line 101
    .line 102
    new-instance v3, Lcom/android/server/wm/RootWindowContainer$2$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/RootWindowContainer$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RootWindowContainer$2;Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 111
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :catchall_2
    move-exception p0

    .line 116
    goto :goto_2

    .line 117
    :cond_0
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 118
    .line 119
    const/4 v3, 0x0

    .line 120
    iput-object v3, v2, Lcom/android/server/wm/RootWindowContainer;->mMaybeAbortPipEnterRunnable:Ljava/lang/Runnable;

    .line 121
    .line 122
    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$rootTask:Lcom/android/server/wm/ConfigurationContainer;

    .line 128
    .line 129
    check-cast v2, Lcom/android/server/wm/Task;

    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$rootTask:Lcom/android/server/wm/ConfigurationContainer;

    .line 136
    .line 137
    check-cast v3, Lcom/android/server/wm/Task;

    .line 138
    .line 139
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    if-eqz v2, :cond_1

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_1

    .line 150
    .line 151
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$rootTask:Lcom/android/server/wm/ConfigurationContainer;

    .line 152
    .line 153
    check-cast v4, Lcom/android/server/wm/Task;

    .line 154
    .line 155
    invoke-virtual {v4, v2}, Lcom/android/server/wm/Task;->abortPipEnter(Lcom/android/server/wm/ActivityRecord;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_1

    .line 160
    .line 161
    const-string v2, "WindowManager"

    .line 162
    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string/jumbo v0, "task_state_after="

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$rootTask:Lcom/android/server/wm/ConfigurationContainer;

    .line 178
    .line 179
    check-cast v0, Lcom/android/server/wm/Task;

    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer$2;->val$enterPipThrowable:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v3, Ljava/lang/Throwable;

    .line 195
    .line 196
    invoke-static {v2, v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .line 198
    .line 199
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$2;->this$0:Lcom/android/server/wm/RootWindowContainer;

    .line 200
    .line 201
    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 204
    .line 205
    .line 206
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 207
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 208
    .line 209
    .line 210
    :goto_1
    return-void

    .line 211
    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 212
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 213
    .line 214
    .line 215
    throw p0

    .line 216
    nop

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
