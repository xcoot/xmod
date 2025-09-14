.class public final synthetic Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskPositioner;

.field public final synthetic f$1:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$2:Lcom/android/server/wm/WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskPositioner;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskPositioner;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/DisplayContent;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskPositioner;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    sget v4, Lcom/android/server/wm/WindowState;->MINIMUM_VISIBLE_WIDTH_IN_DP:I

    .line 23
    .line 24
    invoke-static {v4, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iput v4, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 29
    .line 30
    const/16 v4, 0x20

    .line 31
    .line 32
    invoke-static {v4, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Point;->set(II)V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    iput-boolean v1, v0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 55
    .line 56
    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iput-object v3, v0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    .line 61
    .line 62
    invoke-interface {v3, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    iput-object p0, v0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 70
    .line 71
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :catch_0
    :try_start_3
    iget-object p0, v0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning$1()V

    .line 83
    .line 84
    .line 85
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void

    .line 90
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 92
    .line 93
    .line 94
    throw p0
.end method
