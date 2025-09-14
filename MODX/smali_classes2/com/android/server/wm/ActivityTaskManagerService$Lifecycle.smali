.class public final Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    const-string v0, "activity_task"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 9
    .line 10
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

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
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

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
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->onUserUnlocked(I)V

    .line 18
    .line 19
    .line 20
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SUPPORT_SMARTMANAGER_CN:Z

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string p1, "ActivityTaskManagerServiceExt"

    .line 32
    .line 33
    const-string v1, "SmRcc onUserUnlocked loadData"

    .line 34
    .line 35
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/android/internal/app/SmRccPolicy;->getInstance(Landroid/content/Context;)Lcom/android/internal/app/SmRccPolicy;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mSmRccPolicy:Lcom/android/internal/app/SmRccPolicy;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/internal/app/SmRccPolicy;->loadData()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    .line 60
    .line 61
    throw p0
.end method
