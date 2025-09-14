.class public final Lcom/android/server/devicestate/DeviceStateManagerService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 3
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 8
    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->shouldCancelOverrideRequestWhenRequesterNotOnTop()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 20
    iget-object v1, v1, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 22
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/devicestate/OverrideRequest;

    .line 28
    iget v2, v1, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    .line 30
    if-ne p1, v2, :cond_3

    .line 32
    iget p1, v1, Lcom/android/server/devicestate/OverrideRequest;->mUid:I

    .line 34
    if-eq p2, p1, :cond_1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-nez p3, :cond_2

    .line 39
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 41
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 46
    :cond_2
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :cond_3
    :goto_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessDied(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
