.class public final Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter p2

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->removeRecordForPackage(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    throw p0
.end method
