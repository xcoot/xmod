.class public final synthetic Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowProcessController;

.field public final synthetic f$1:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/wm/WindowProcessController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/wm/Task;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/wm/WindowProcessController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    const-string/jumbo v2, "rapid-activity-launch"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 21
    .line 22
    .line 23
    iget-object p0, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 28
    .line 29
    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 30
    .line 31
    const-string/jumbo v2, "rapidActivityLaunch"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1, v0, v2}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 41
    .line 42
    .line 43
    throw p0
.end method
