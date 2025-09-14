.class public final synthetic Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->this$0:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/TaskFragmentOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/TaskFragmentOrganizerController$TaskFragmentOrganizerState;->mTemporaryActivityTokens:Ljava/util/Map;

    .line 14
    .line 15
    check-cast v0, Ljava/util/WeakHashMap;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    throw p0
.end method
