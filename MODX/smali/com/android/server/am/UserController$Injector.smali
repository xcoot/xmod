.class Lcom/android/server/am/UserController$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mUserManager:Lcom/android/server/pm/UserManagerService;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

.field public final mUserSwitchingDialogLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialogLock:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 13
    return-void
.end method


# virtual methods
.method public final broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;IIII)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    const-string/jumbo v1, "broadcastIntent-"

    .line 5
    const-string v2, "android.intent.extra.user_handle"

    .line 7
    const/16 v3, -0x2710

    .line 9
    move-object v5, p1

    .line 10
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    move-result v2

    .line 14
    if-ne v2, v3, :cond_0

    .line 16
    move/from16 v2, p8

    .line 18
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    const/16 v3, 0x7581

    .line 32
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 35
    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 37
    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 40
    iget-object v3, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 42
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 45
    monitor-enter v3

    .line 46
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    move/from16 v1, p8

    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v6, "-"

    .line 58
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 75
    iget-object v4, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 77
    const/4 v9, 0x0

    .line 78
    move-object v5, p1

    .line 79
    move-object/from16 v6, p2

    .line 81
    move-object/from16 v7, p3

    .line 83
    move-object/from16 v8, p4

    .line 85
    move/from16 v10, p5

    .line 87
    move/from16 v11, p6

    .line 89
    move/from16 v12, p7

    .line 91
    move/from16 v13, p8

    .line 93
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;Landroid/os/Bundle;ZIIII)I

    .line 96
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 99
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 109
    throw v0
.end method

.method public final clearAllLockedTasks()V
    .locals 2

    .line 1
    const-string/jumbo v0, "startUser"

    .line 4
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 8
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 10
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 20
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/server/wm/LockTaskController;->clearLockedTasks(Ljava/lang/String;)V

    .line 25
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    throw p0
.end method

.method public final dismissUserSwitchingDialog(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialogLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1, p1}, Lcom/android/server/am/UserSwitchingDialog;->dismiss(Ljava/lang/Runnable;)V

    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 22
    :cond_1
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final getUserManager()Lcom/android/server/pm/UserManagerService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string/jumbo v0, "user"

    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/pm/UserManagerService;

    .line 18
    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 22
    return-object p0
.end method

.method public final getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 13
    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 17
    return-object p0
.end method

.method public final onUserStarting(I)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 5
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/server/SystemServiceManager;->newTargetUser(I)Lcom/android/server/SystemService$TargetUser;

    .line 12
    move-result-object v4

    .line 13
    iget-object p0, v0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 15
    monitor-enter p0

    .line 16
    if-nez p1, :cond_0

    .line 18
    :try_start_0
    iget-object v2, v0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 26
    const-string p1, "SystemServiceManager"

    .line 28
    const-string v0, "Skipping starting system user twice"

    .line 30
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    monitor-exit p0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v2, v0, Lcom/android/server/SystemServiceManager;->mTargetUsers:Landroid/util/SparseArray;

    .line 39
    invoke-virtual {v2, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    const/16 p0, 0x7582

    .line 45
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 48
    const-string v2, "Start"

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SystemServiceManager;->onUser(Lcom/android/server/utils/TimingsTraceAndSlog;Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V

    .line 55
    :goto_0
    return-void

    .line 56
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p1
.end method

.method public final setPerformancePowerMode(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Setting power mode MODE_FIXED_PERFORMANCE to "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "ActivityManager"

    .line 17
    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 22
    if-nez v0, :cond_0

    .line 24
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 26
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 32
    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 36
    const/4 v0, 0x3

    .line 37
    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 40
    return-void
.end method

.method public final updateUserConfiguration()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 5
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    new-instance v1, Landroid/content/res/Configuration;

    .line 17
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 26
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 28
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 30
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 36
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    move-result-object v3

    .line 42
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 44
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {v4}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    .line 49
    move-result v4

    .line 50
    invoke-static {v3, v1, v2, v4}, Landroid/provider/Settings$System;->adjustConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;IZ)V

    .line 53
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;ZZI)Z

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 69
    throw p0
.end method
