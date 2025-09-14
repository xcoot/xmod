.class public final Lcom/android/server/wm/DisplayWindowListenerController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayListeners:Landroid/os/RemoteCallbackList;

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final registerListener(Landroid/view/IDisplayWindowListener;)[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 12
    .line 13
    .line 14
    new-instance p1, Landroid/util/IntArray;

    .line 15
    .line 16
    invoke-direct {p1}, Landroid/util/IntArray;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/wm/DisplayWindowListenerController$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v1, p1}, Lcom/android/server/wm/DisplayWindowListenerController$$ExternalSyntheticLambda0;-><init>(Landroid/util/IntArray;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 45
    .line 46
    .line 47
    throw p0
.end method
