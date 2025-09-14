.class public final Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

.field public final mDeathListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

.field public final mHandler:Landroid/os/Handler;

.field public final mLastNotifiedStatus:Ljava/util/WeakHashMap;

.field public final mPid:I


# direct methods
.method public constructor <init>(Landroid/hardware/devicestate/IDeviceStateManagerCallback;ILcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    .line 11
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    .line 13
    iput p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    .line 15
    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mDeathListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    .line 17
    iput-object p4, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    .line 19
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mDeathListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    .line 3
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 5
    iget-object v1, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 10
    iget v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    .line 12
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 15
    iget-object v2, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 17
    iget p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    .line 19
    iget-object v3, v2, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_0

    .line 24
    iget v3, v3, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    .line 26
    if-ne v3, p0, :cond_0

    .line 28
    invoke-virtual {v2, v4}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentBaseStateRequestLocked(I)V

    .line 31
    :cond_0
    iget-object v3, v2, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 33
    if-eqz v3, :cond_3

    .line 35
    iget v5, v3, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    .line 37
    if-ne v5, p0, :cond_3

    .line 39
    iget-object p0, v3, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 41
    const/4 v3, 0x5

    .line 42
    invoke-virtual {p0, v3}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 48
    invoke-virtual {v2, v4}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-boolean p0, v2, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequestsAllowed:Z

    .line 54
    if-eqz p0, :cond_2

    .line 56
    const/4 p0, 0x1

    .line 57
    iput-boolean p0, v2, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v2, v4}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    .line 63
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->shouldCancelOverrideRequestWhenRequesterNotOnTop()Z

    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_4

    .line 69
    iget-object p0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 71
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lcom/android/server/devicestate/OverrideRequest;

    .line 77
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 79
    invoke-virtual {v0, p0}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    :goto_1
    monitor-exit v1

    .line 86
    return-void

    .line 87
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method

.method public final notifyRequestActiveAsync(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne v0, v1, :cond_1

    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Ljava/lang/Object;I)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
.end method

.method public final notifyRequestCanceledAsync(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result v0

    .line 16
    if-ne v0, v1, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    .line 30
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Ljava/lang/Object;I)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method
