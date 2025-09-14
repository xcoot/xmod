.class public final Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;
.super Landroid/hardware/devicestate/DeviceStateManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 3
    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerInternal;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final displayEnabled()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 8
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, v1, Lcom/android/server/devicestate/DeviceStateManagerService;->mDisplayEnabled:Z

    .line 11
    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_CONTROL_FOLDING_SENSOR:Z

    .line 17
    if-nez v0, :cond_0

    .line 19
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 21
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 23
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-direct {v1, p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 35
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    .line 37
    invoke-static {v0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 40
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 42
    iget-boolean p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDisplayEnabled:Z

    .line 44
    const/4 p0, 0x0

    .line 45
    throw p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p0
.end method

.method public final getSupportedStateIdentifiers()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    .line 11
    move-result-object p0

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final requestTentModeIfNeeded()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    .line 5
    invoke-static {p0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 8
    const/4 p0, 0x0

    .line 9
    throw p0
.end method

.method public final setTableModeEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    .line 5
    invoke-static {p0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 8
    const/4 p0, 0x0

    .line 9
    throw p0
.end method

.method public final updateFoldingSensorState(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    .line 5
    invoke-static {p0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 8
    const/4 p0, 0x0

    .line 9
    throw p0
.end method
