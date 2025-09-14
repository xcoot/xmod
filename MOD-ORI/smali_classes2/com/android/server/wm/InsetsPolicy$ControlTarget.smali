.class public final Lcom/android/server/wm/InsetsPolicy$ControlTarget;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;
.implements Ljava/lang/Runnable;


# instance fields
.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mHandler:Lcom/android/server/wm/WindowManagerService$H;

.field public final mInsetsController:Landroid/view/InsetsController;

.field public final mName:Ljava/lang/String;

.field public final mState:Landroid/view/InsetsState;

.field public final mStateController:Lcom/android/server/wm/InsetsStateController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/InsetsState;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mState:Landroid/view/InsetsState;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mHandler:Lcom/android/server/wm/WindowManagerService$H;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 24
    .line 25
    new-instance p1, Landroid/view/InsetsController;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$Host;

    .line 28
    .line 29
    invoke-direct {v0, v1, p2}, Lcom/android/server/wm/InsetsPolicy$Host;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0}, Landroid/view/InsetsController;-><init>(Landroid/view/InsetsController$Host;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mName:Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final notifyInsetsControlChanged(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mHandler:Lcom/android/server/wm/WindowManagerService$H;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mState:Landroid/view/InsetsState;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mState:Landroid/view/InsetsState;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/InsetsController;->onStateChanged(Landroid/view/InsetsState;)Z

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Landroid/view/InsetsSourceControl$Array;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1, v3}, Landroid/view/InsetsSourceControl$Array;->set([Landroid/view/InsetsSourceControl;Z)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl$Array;->get()[Landroid/view/InsetsSourceControl;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p0, v1}, Landroid/view/InsetsController;->onControlsChanged([Landroid/view/InsetsSourceControl;)V

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
