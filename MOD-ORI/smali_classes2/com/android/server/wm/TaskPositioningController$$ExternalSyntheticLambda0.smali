.class public final synthetic Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskPositioningController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowState;

.field public final synthetic f$2:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:F

.field public final synthetic f$6:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskPositioningController;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskPositioningController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/DisplayContent;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$5:F

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$6:F

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/TaskPositioningController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget v3, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$5:F

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda0;->f$6:F

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Void;

    .line 12
    .line 13
    iget-object p1, v0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 18
    .line 19
    .line 20
    monitor-enter p1

    .line 21
    :try_start_0
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    if-eq v2, v1, :cond_0

    .line 26
    .line 27
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 28
    .line 29
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 30
    .line 31
    if-ne v4, v5, :cond_0

    .line 32
    .line 33
    move-object v1, v2

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v4, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 48
    .line 49
    iget-object v4, v4, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 50
    .line 51
    invoke-virtual {v4}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v2, v1, v4}, Lcom/android/server/input/InputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    const-string p0, "WindowManager"

    .line 62
    .line 63
    const-string/jumbo v1, "startPositioningLocked: Unable to transfer touch focus"

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioningController;->cleanUpTaskPositioner()V

    .line 70
    .line 71
    .line 72
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 80
    .line 81
    invoke-virtual {v0, v3, p0}, Lcom/android/server/wm/TaskPositioner;->startDrag(FF)V

    .line 82
    .line 83
    .line 84
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 85
    .line 86
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-object p0

    .line 91
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 93
    .line 94
    .line 95
    throw p0
.end method
