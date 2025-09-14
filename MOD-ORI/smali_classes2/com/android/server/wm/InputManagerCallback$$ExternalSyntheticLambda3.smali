.class public final synthetic Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DragDropController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DragDropController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/DragDropController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/DragDropController;

    .line 2
    .line 3
    check-cast p1, Landroid/os/IBinder;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    check-cast p3, Ljava/lang/Float;

    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string p0, "WindowManager"

    .line 22
    .line 23
    const-string p1, "Drag state is closed."

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 32
    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 34
    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragState;->reportDropWindowLock(Landroid/os/IBinder;FF)Z

    .line 40
    .line 41
    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 50
    .line 51
    .line 52
    throw p0
.end method
