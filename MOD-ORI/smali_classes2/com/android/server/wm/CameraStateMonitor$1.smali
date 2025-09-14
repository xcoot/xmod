.class public final Lcom/android/server/wm/CameraStateMonitor$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/CameraStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/CameraStateMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCameraClosed(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

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
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    .line 12
    .line 13
    invoke-static {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->-$$Nest$mnotifyCameraClosedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/CameraStateMonitor;->mWmService:Lcom/android/server/wm/WindowManagerService;

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
    iget-object p0, p0, Lcom/android/server/wm/CameraStateMonitor$1;->this$0:Lcom/android/server/wm/CameraStateMonitor;

    .line 12
    .line 13
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor;->-$$Nest$mnotifyCameraOpenedWithDelay(Lcom/android/server/wm/CameraStateMonitor;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 24
    .line 25
    .line 26
    throw p0
.end method
