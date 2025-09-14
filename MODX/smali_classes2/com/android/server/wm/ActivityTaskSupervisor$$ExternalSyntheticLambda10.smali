.class public final synthetic Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final synthetic f$1:Landroid/content/pm/ActivityInfo;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/app/ProfilerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;->f$1:Landroid/content/pm/ActivityInfo;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;->f$3:Landroid/app/ProfilerInfo;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;->f$1:Landroid/content/pm/ActivityInfo;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;->f$2:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda10;->f$3:Landroid/app/ProfilerInfo;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 15
    .line 16
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 17
    .line 18
    invoke-virtual {v4, v1, v2, p0, v3}, Landroid/app/ActivityManagerInternal;->setDebugFlagsForStartingActivity(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    const-string v1, "ActivityTaskManager"

    .line 24
    .line 25
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    iget-object p0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 31
    .line 32
    monitor-enter p0

    .line 33
    :try_start_1
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    :goto_0
    return-void

    .line 42
    :catchall_1
    move-exception v0

    .line 43
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    throw v0
.end method
