.class public final Lcom/android/server/am/AppProfiler$ProfileData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mProfileApp:Ljava/lang/String;

.field public mProfileProc:Lcom/android/server/am/ProcessRecord;

.field public mProfilerInfo:Landroid/app/ProfilerInfo;

.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 11
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 13
    return-void
.end method


# virtual methods
.method public final setProfileApp(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 13
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 15
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 23
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    throw p0

    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method public final setProfileProc(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    if-nez p1, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 17
    :goto_0
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 19
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 21
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 29
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    throw p0

    .line 42
    :cond_1
    :goto_1
    return-void
.end method

.method public final setProfilerInfo(Landroid/app/ProfilerInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 13
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 15
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 23
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    throw p0

    .line 36
    :cond_0
    :goto_0
    return-void
.end method
