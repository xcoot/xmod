.class public final Lcom/android/server/wm/DragDropController$3;
.super Landroid/window/IUnhandledDragCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DragDropController;

.field public final synthetic val$traceCookie:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragDropController;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/DragDropController$3;->this$0:Lcom/android/server/wm/DragDropController;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/wm/DragDropController$3;->val$traceCookie:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/window/IUnhandledDragCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final notifyUnhandledDropComplete(Z)V
    .locals 3

    .line 1
    const-string v0, "WindowManager"

    .line 2
    .line 3
    const-string v1, "Unhandled listener finished handling DROP"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$3;->this$0:Lcom/android/server/wm/DragDropController;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 15
    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$3;->this$0:Lcom/android/server/wm/DragDropController;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DragDropController;->onUnhandledDropCallback(Z)V

    .line 21
    .line 22
    .line 23
    const-string p1, "DragDropController#notifyUnhandledDrop"

    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/wm/DragDropController$3;->val$traceCookie:I

    .line 26
    .line 27
    const-wide/16 v1, 0x20

    .line 28
    .line 29
    invoke-static {v1, v2, p1, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 40
    .line 41
    .line 42
    throw p0
.end method
