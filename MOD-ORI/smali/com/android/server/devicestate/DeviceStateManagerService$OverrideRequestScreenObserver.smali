.class public final Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAwakeStateChanged(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_CONTROL_FOLDING_SENSOR:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->shouldCancelOverrideRequestWhenRequesterNotOnTop()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/android/server/devicestate/OverrideRequest;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    .line 45
    .line 46
    invoke-static {p0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    throw p0
.end method

.method public final onKeyguardStateChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->shouldCancelOverrideRequestWhenRequesterNotOnTop()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/devicestate/OverrideRequest;

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method
