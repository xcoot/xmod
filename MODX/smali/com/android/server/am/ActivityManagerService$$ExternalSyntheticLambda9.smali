.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Lcom/android/server/am/ActivityManagerService$12;

    .line 10
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 12
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 20
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v1

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZ)V

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 40
    throw p0

    .line 41
    :pswitch_0
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 43
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    const-wide/16 v0, 0x20

    .line 50
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_0

    .line 56
    const-string/jumbo v2, "showSystemReadyErrorDialogs"

    .line 59
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 62
    :cond_0
    invoke-static {}, Landroid/os/Build;->isBuildConsistent()Z

    .line 65
    move-result v2

    .line 66
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 68
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 70
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 73
    monitor-enter v3

    .line 74
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 77
    move-result-object v4

    .line 78
    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->hasSystemUidErrors()Z

    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_1

    .line 84
    const-string v4, "ActivityTaskManager"

    .line 86
    const-string v5, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    .line 88
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 93
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 95
    new-instance v5, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda0;

    .line 97
    const/4 v6, 0x2

    .line 98
    invoke-direct {v5, p0, v6}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;I)V

    .line 101
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    goto :goto_0

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    goto :goto_1

    .line 107
    :catch_0
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 109
    :try_start_3
    const-string v2, "ActivityTaskManager"

    .line 111
    const-string v4, "Build fingerprint is not consistent, warning user"

    .line 113
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 118
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 120
    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda0;

    .line 122
    const/4 v5, 0x3

    .line 123
    invoke-direct {v4, p0, v5}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;I)V

    .line 126
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    :cond_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 133
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 136
    return-void

    .line 137
    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 141
    throw p0

    .line 142
    :pswitch_1
    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    .line 144
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->onOverlayChanged()V

    .line 147
    return-void

    .line 148
    :pswitch_2
    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    .line 150
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 153
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
