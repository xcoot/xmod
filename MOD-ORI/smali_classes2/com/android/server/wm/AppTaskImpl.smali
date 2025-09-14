.class public final Lcom/android/server/wm/AppTaskImpl;
.super Landroid/app/IAppTask$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallingUid:I

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/IAppTask$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final checkCallerOrSystemOrRoot()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x3e8

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "Caller "

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p0, " does not match caller of getAppTasks(): "

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public final finishAndRemoveTask()V
    .locals 12

    .line 1
    const-string v0, "Unable to find task ID "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    .line 24
    .line 25
    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 29
    .line 30
    iget v3, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 31
    .line 32
    const-string v6, "finish-and-remove-task"

    .line 33
    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x1

    .line 37
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IIILjava/lang/String;ZZZ)Z

    .line 38
    .line 39
    .line 40
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    :try_start_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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
    :cond_0
    :try_start_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 61
    .line 62
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    :try_start_4
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 9

    .line 1
    const-string v0, "Unable to find task ID "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 21
    .line 22
    iget v5, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x1

    .line 27
    invoke-virtual {v4, v5, v8, v6, v7}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 36
    .line 37
    invoke-virtual {p0, v4, v7, v8}, Lcom/android/server/wm/RecentTasks;->createRecentTaskInfo(Lcom/android/server/wm/Task;ZZ)Landroid/app/ActivityManager$RecentTaskInfo;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    :try_start_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 61
    .line 62
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    :goto_0
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final moveToFront(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    const-string/jumbo v13, "moveTaskToFront blocked: : "

    .line 8
    .line 9
    .line 10
    const-string v2, "Not allowed app transition for callingPackage "

    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 16
    .line 17
    .line 18
    move-result v14

    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v15

    .line 23
    iget-object v3, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v16

    .line 32
    :try_start_0
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    iget-object v3, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {v3, v15}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    const-string v0, "SPEG"

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, ":"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 85
    .line 86
    iget-object v12, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 87
    .line 88
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 89
    .line 90
    .line 91
    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    :try_start_2
    iget-object v2, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :goto_0
    move-object v7, v1

    .line 101
    goto :goto_1

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    move-object/from16 v19, v12

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_1
    const/4 v1, 0x0

    .line 107
    goto :goto_0

    .line 108
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 109
    .line 110
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 111
    .line 112
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mBalController:Lcom/android/server/wm/BackgroundActivityStartController;

    .line 113
    .line 114
    sget-object v9, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    .line 116
    const/4 v8, 0x0

    .line 117
    const/4 v10, 0x0

    .line 118
    const/4 v11, 0x0

    .line 119
    const/16 v18, 0x0

    .line 120
    .line 121
    const/4 v5, -0x1

    .line 122
    const/4 v6, -0x1

    .line 123
    move v2, v15

    .line 124
    move v3, v14

    .line 125
    move-object/from16 v4, p2

    .line 126
    .line 127
    move-object/from16 v19, v12

    .line 128
    .line 129
    move-object/from16 v12, v18

    .line 130
    .line 131
    :try_start_3
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/wm/BackgroundActivityStartController;->checkBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;Landroid/app/BackgroundStartPrivileges;Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget v2, v1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->mCode:I

    .line 136
    .line 137
    if-nez v2, :cond_2

    .line 138
    .line 139
    iget-object v2, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 140
    .line 141
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 142
    .line 143
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-nez v2, :cond_2

    .line 148
    .line 149
    const-string v0, "AppTaskImpl"

    .line 150
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 167
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 168
    .line 169
    .line 170
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :catchall_2
    move-exception v0

    .line 175
    goto :goto_2

    .line 176
    :cond_2
    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 177
    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 181
    .line 182
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 183
    .line 184
    iget v6, v0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 185
    .line 186
    const/4 v7, 0x0

    .line 187
    const/4 v8, 0x1

    .line 188
    move v4, v14

    .line 189
    move v5, v15

    .line 190
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;Z)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 191
    .line 192
    .line 193
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :goto_2
    :try_start_6
    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 198
    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 199
    .line 200
    .line 201
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 202
    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    .line 204
    .line 205
    throw v0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IAppTask$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string p1, "AppTaskImpl"

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    throw p0
.end method

.method public final setExcludeFromRecents(Z)V
    .locals 9

    .line 1
    const-string v0, "Unable to find task ID "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 11
    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 21
    .line 22
    iget v5, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x1

    .line 27
    invoke-virtual {v4, v5, v8, v6, v7}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const/high16 p1, 0x800000

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const v0, -0x800001

    .line 52
    .line 53
    .line 54
    and-int/2addr p1, v0

    .line 55
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    :goto_0
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 76
    .line 77
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    :goto_1
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 93
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method public final startActivity(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 9

    .line 1
    const-string v0, "Bad app thread "

    .line 2
    .line 3
    const-string v1, "Unable to find task ID "

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCallerOrSystemOrRoot()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    invoke-virtual {v2, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 22
    .line 23
    .line 24
    monitor-enter v3

    .line 25
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 26
    .line 27
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 28
    .line 29
    iget v5, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x1

    .line 33
    const/4 v8, 0x0

    .line 34
    invoke-virtual {v4, v5, v7, v8, v6}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 53
    .line 54
    const-string v0, "AppTaskImpl"

    .line 55
    .line 56
    invoke-virtual {p0, p4, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    iget-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 61
    .line 62
    iput-object p1, p4, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 63
    .line 64
    iput-object p2, p4, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 65
    .line 66
    iput-object p3, p4, Lcom/android/server/wm/ActivityStarter$Request;->callingFeatureId:Ljava/lang/String;

    .line 67
    .line 68
    iput-object p5, p4, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p6}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 75
    .line 76
    iput-object p1, p2, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 77
    .line 78
    iput v2, p2, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 79
    .line 80
    iput-object v4, p2, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/Task;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    return p0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget p0, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 115
    .line 116
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 129
    .line 130
    .line 131
    throw p0
.end method
