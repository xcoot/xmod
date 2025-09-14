.class public final Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mTask:Lcom/android/server/wm/Task;

.field public final mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field public final synthetic this$0:Lcom/android/server/wm/StartingSurfaceController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/StartingSurfaceController;Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTask:Lcom/android/server/wm/Task;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final remove(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->this$0:Lcom/android/server/wm/StartingSurfaceController;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wm/StartingSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTask:Lcom/android/server/wm/Task;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 22
    .line 23
    invoke-virtual {v1, v2, p0, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->removeStartingWindow(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;ZZ)V

    .line 24
    .line 25
    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    throw p0
.end method
