.class public final Lcom/android/server/devicestate/DeviceStateManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;


# instance fields
.field public mActiveBaseStateOverride:Ljava/util/Optional;

.field public mActiveOverride:Ljava/util/Optional;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mBaseState:Ljava/util/Optional;

.field public final mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

.field public mCommittedState:Ljava/util/Optional;

.field public final mDeviceStateNotificationController:Lcom/android/server/devicestate/DeviceStateNotificationController;

.field public final mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

.field public final mDeviceStateProviderListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

.field public final mDeviceStates:Landroid/util/SparseArray;

.field public final mDeviceStatesAvailableForAppRequests:Ljava/util/Set;

.field public mDisplayEnabled:Z

.field public mFoldedDeviceStates:Ljava/util/Set;

.field public final mHandler:Landroid/os/Handler;

.field public mIsPolicyWaitingForState:Z

.field public mIsWirelessPowerSharing:Z

.field public final mLock:Ljava/lang/Object;

.field public final mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

.field mOverrideRequestScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

.field public mPendingState:Ljava/util/Optional;

.field final mProcessObserver:Landroid/app/IProcessObserver;

.field public final mProcessRecords:Landroid/util/SparseArray;

.field public mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

.field public mRearDisplayState:Landroid/hardware/devicestate/DeviceState;

.field public final mSystemPropertySetter:Lcom/android/server/devicestate/DeviceStateManagerService$SystemPropertySetter;


# direct methods
.method public static -$$Nest$mcancelBaseStateOverrideInternal(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .locals 3

    .line 1
    const-string v0, "Process "

    .line 3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 14
    if-eqz v2, :cond_0

    .line 16
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStateProviderListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    .line 18
    iget p1, p1, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->mCurrentBaseState:I

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->setBaseState(I)V

    .line 23
    monitor-exit v1

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string p1, " has no registered callback."

    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0

    .line 50
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public static -$$Nest$mcancelStateRequestInternal(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .locals 3

    .line 1
    const-string v0, "Process "

    .line 3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 14
    if-eqz v2, :cond_0

    .line 16
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 18
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 20
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;

    .line 25
    invoke-direct {v0, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicestate/OverrideRequestController;)V

    .line 28
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 31
    monitor-exit v1

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string p1, " has no registered callback."

    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0

    .line 58
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public static -$$Nest$mdumpInternal(Lcom/android/server/devicestate/DeviceStateManagerService;Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "Registered processes: size="

    .line 6
    const-string v1, "  mOverrideState="

    .line 8
    const-string v2, "  mBaseState="

    .line 10
    const-string v3, "  mPendingState="

    .line 12
    const-string v4, "  mCommittedState="

    .line 14
    const-string v5, "DEVICE STATE MANAGER (dumpsys device_state)"

    .line 16
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 21
    monitor-enter v5

    .line 22
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 29
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getOverrideState()Ljava/util/Optional;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 94
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 97
    move-result v1

    .line 98
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    .line 117
    :goto_0
    if-ge v0, v1, :cond_0

    .line 119
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 121
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    const-string v4, "  "

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v4, ": mPid="

    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v2, v2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    .line 147
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 159
    goto :goto_0

    .line 160
    :catchall_0
    move-exception p0

    .line 161
    goto :goto_1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 164
    invoke-virtual {v0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 167
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 170
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    .line 172
    check-cast p0, Lcom/android/server/policy/DeviceStatePolicyImpl;

    .line 174
    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/DeviceStatePolicyImpl;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 178
    monitor-exit v5

    .line 179
    return-void

    .line 180
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    throw p0
.end method

.method public static -$$Nest$mregisterProcess(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 12
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 14
    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    .line 16
    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    .line 19
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 21
    invoke-direct {v1, p2, p1, v2, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;-><init>(Landroid/hardware/devicestate/IDeviceStateManagerCallback;ILcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    invoke-interface {p2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->asBinder()Landroid/os/IBinder;

    .line 27
    move-result-object p2

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    iget-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 39
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    .line 48
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const/4 p0, 0x0

    .line 53
    :goto_0
    if-eqz p0, :cond_1

    .line 55
    iget-object p1, v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance p2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;

    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-direct {p2, v1, p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Ljava/lang/Object;I)V

    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_1
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :catch_0
    move-exception p0

    .line 69
    new-instance p1, Ljava/lang/RuntimeException;

    .line 71
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 74
    throw p1

    .line 75
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 77
    const-string p1, "The calling process has already registered an IDeviceStateManagerCallback."

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 82
    throw p0

    .line 83
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    throw p0
.end method

.method public static -$$Nest$mrequestBaseStateOverrideInternal(Lcom/android/server/devicestate/DeviceStateManagerService;IIIILandroid/os/IBinder;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move v3, p3

    .line 3
    move-object/from16 v2, p5

    .line 5
    const-string v1, "Request has already been made for the supplied token: "

    .line 7
    const-string v4, "Process "

    .line 9
    const-string v5, "Requested state: "

    .line 11
    iget-object v8, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v8

    .line 14
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    .line 17
    move-result-object v6

    .line 18
    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    .line 21
    move-result v7

    .line 22
    if-eqz v7, :cond_3

    .line 24
    iget-object v5, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v5, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 32
    if-eqz v5, :cond_2

    .line 34
    iget-object v4, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 36
    const/4 v9, 0x1

    .line 37
    invoke-virtual {v4, v9, v2}, Lcom/android/server/devicestate/OverrideRequestController;->hasRequest(ILandroid/os/IBinder;)Z

    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_1

    .line 43
    new-instance v10, Lcom/android/server/devicestate/OverrideRequest;

    .line 45
    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    move-object v5, v1

    .line 50
    check-cast v5, Landroid/hardware/devicestate/DeviceState;

    .line 52
    const/4 v7, 0x1

    .line 53
    move-object v1, v10

    .line 54
    move-object/from16 v2, p5

    .line 56
    move v3, p3

    .line 57
    move v4, p4

    .line 58
    move v6, p2

    .line 59
    invoke-direct/range {v1 .. v7}, Lcom/android/server/devicestate/OverrideRequest;-><init>(Landroid/os/IBinder;IILandroid/hardware/devicestate/DeviceState;II)V

    .line 62
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 64
    iget-object v1, v0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 66
    iput-object v10, v0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 68
    iget-object v2, v0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-virtual {v2, v10, v9, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V

    .line 74
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0, v1, v3}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;I)V

    .line 79
    :cond_0
    monitor-exit v8

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 100
    throw v0

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v2, " has no registered callback."

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    throw v0

    .line 124
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    move v2, p1

    .line 132
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string v2, " is not supported."

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    throw v0

    .line 148
    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    throw v0
.end method

.method public static -$$Nest$mrequestStateInternal(Lcom/android/server/devicestate/DeviceStateManagerService;IIIILandroid/os/IBinder;Z)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move v4, p3

    .line 4
    move-object/from16 v3, p5

    .line 6
    const-string v2, "Requested state: "

    .line 8
    const-string v5, "Request has already been made for the supplied token: "

    .line 10
    const-string v6, "Process "

    .line 12
    iget-object v9, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v9

    .line 15
    :try_start_0
    iget-object v7, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v7, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v7

    .line 21
    check-cast v7, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 23
    if-eqz v7, :cond_5

    .line 25
    iget-object v6, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 27
    const/4 v10, 0x0

    .line 28
    invoke-virtual {v6, v10, v3}, Lcom/android/server/devicestate/OverrideRequestController;->hasRequest(ILandroid/os/IBinder;)Z

    .line 31
    move-result v6

    .line 32
    if-nez v6, :cond_4

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_3

    .line 44
    new-instance v11, Lcom/android/server/devicestate/OverrideRequest;

    .line 46
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    move-object v6, v2

    .line 51
    check-cast v6, Landroid/hardware/devicestate/DeviceState;

    .line 53
    const/4 v8, 0x0

    .line 54
    move-object v2, v11

    .line 55
    move-object/from16 v3, p5

    .line 57
    move v4, p3

    .line 58
    move/from16 v5, p4

    .line 60
    move v7, p2

    .line 61
    invoke-direct/range {v2 .. v8}, Lcom/android/server/devicestate/OverrideRequest;-><init>(Landroid/os/IBinder;IILandroid/hardware/devicestate/DeviceState;II)V

    .line 64
    if-nez p6, :cond_1

    .line 66
    iget-object v2, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayState:Landroid/hardware/devicestate/DeviceState;

    .line 68
    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 73
    move-result v2

    .line 74
    if-eq v1, v2, :cond_0

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iput-object v11, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 79
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 81
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 87
    if-eqz v1, :cond_2

    .line 89
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 91
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    .line 97
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 100
    move-result v0

    .line 101
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 103
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 105
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    if-eqz v1, :cond_2

    .line 109
    :try_start_1
    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->showRearDisplayDialog(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    goto :goto_1

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 117
    iget-object v1, v0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 119
    iput-object v11, v0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 121
    iget-object v2, v0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    .line 123
    const/4 v3, 0x1

    .line 124
    invoke-virtual {v2, v11, v3, v10}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V

    .line 127
    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {v0, v1, v10}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;I)V

    .line 132
    :catch_0
    :cond_2
    :goto_1
    monitor-exit v9

    .line 133
    return-void

    .line 134
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, " is not supported."

    .line 146
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 153
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 156
    throw v0

    .line 157
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 171
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    throw v0

    .line 175
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    const-string v2, " has no registered callback."

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 197
    throw v0

    .line 198
    :goto_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    throw v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/hardware/devicestate/DeviceState;

    .line 3
    new-instance v1, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    .line 5
    const/4 v2, -0x1

    .line 6
    const-string v3, "INVALID"

    .line 8
    invoke-direct {v1, v2, v3}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    .line 18
    sput-object v0, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040342

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Lcom/android/server/devicestate/DeviceStatePolicy$DefaultProvider;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceStatePolicy$DefaultProvider;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v0, Lcom/android/server/policy/DeviceStatePolicyImpl;

    invoke-direct {v0, p1}, Lcom/android/server/policy/DeviceStatePolicyImpl;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;-><init>(Landroid/content/Context;Lcom/android/server/devicestate/DeviceStatePolicy;Lcom/android/server/devicestate/DeviceStateManagerService$SystemPropertySetter;)V

    return-void

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t instantiate class "

    const-string v2, " for config_deviceSpecificDeviceStatePolicyProvider: make sure it has a public zero-argument constructor and implements DeviceStatePolicy.Provider"

    .line 11
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/devicestate/DeviceStatePolicy;Lcom/android/server/devicestate/DeviceStateManagerService$SystemPropertySetter;)V
    .locals 7

    .line 18
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 21
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 22
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    .line 24
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 25
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 26
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    .line 27
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 28
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatesAvailableForAppRequests:Ljava/util/Set;

    .line 29
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$1;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 30
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;

    invoke-direct {v1, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$OverrideRequestScreenObserver;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    .line 31
    iput-boolean v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDisplayEnabled:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsWirelessPowerSharing:Z

    .line 33
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$2;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    .line 34
    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mSystemPropertySetter:Lcom/android/server/devicestate/DeviceStateManagerService$SystemPropertySetter;

    .line 35
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object p3

    .line 36
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {v2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance p3, Lcom/android/server/devicestate/OverrideRequestController;

    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-direct {p3, v0}, Lcom/android/server/devicestate/OverrideRequestController;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;)V

    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 38
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    .line 39
    new-instance p3, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    invoke-direct {p3, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStateProviderListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    .line 40
    check-cast p2, Lcom/android/server/policy/DeviceStatePolicyImpl;

    .line 41
    iget-object p2, p2, Lcom/android/server/policy/DeviceStatePolicyImpl;->mProvider:Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 42
    iget-object v0, p2, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 43
    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p2, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    if-nez v1, :cond_0

    .line 45
    iput-object p3, p2, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x1

    .line 47
    invoke-virtual {p2, p3}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged(I)V

    .line 48
    invoke-virtual {p2}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    .line 49
    new-instance p2, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    invoke-direct {p2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    .line 50
    const-class p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 51
    new-instance p2, Lcom/android/server/devicestate/DeviceStateNotificationController;

    new-instance v3, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    const/4 p3, 0x1

    invoke-direct {v3, p0, p3}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 52
    new-instance v4, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;

    invoke-direct {v4, p1}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-class p3, Landroid/app/NotificationManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/app/NotificationManager;

    move-object v0, p2

    move-object v1, p1

    .line 54
    invoke-direct/range {v0 .. v6}, Lcom/android/server/devicestate/DeviceStateNotificationController;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;Landroid/content/pm/PackageManager;Landroid/app/NotificationManager;)V

    .line 55
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStateNotificationController:Lcom/android/server/devicestate/DeviceStateNotificationController;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 56
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Provider already has a listener set."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static isForegroundApp(II)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 10
    move v2, v0

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    move-result v3

    .line 15
    if-ge v2, v3, :cond_1

    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 23
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 25
    if-ne v4, p0, :cond_0

    .line 27
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 29
    if-ne v4, p1, :cond_0

    .line 31
    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const/16 v4, 0x64

    .line 35
    if-gt v3, v4, :cond_0

    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 44
    :goto_1
    const-string p1, "DeviceStateManagerService"

    .line 46
    const-string v1, "am.getRunningAppProcesses() failed"

    .line 48
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    :cond_1
    return v0
.end method


# virtual methods
.method public getBinderService()Landroid/hardware/devicestate/IDeviceStateManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    .line 3
    return-object p0
.end method

.method public final getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStatesLocked()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 7
    sget-object v2, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    .line 15
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 17
    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    .line 23
    new-instance v3, Landroid/hardware/devicestate/DeviceStateInfo;

    .line 25
    new-instance v4, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState$Configuration;->getSystemProperties()Ljava/util/Set;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    .line 52
    move-result-object v2

    .line 53
    new-instance v5, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    .line 55
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 58
    move-result v6

    .line 59
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getName()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v5, v6, p0}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    .line 66
    invoke-virtual {v5, v0}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->setSystemProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->setPhysicalProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 77
    move-result-object p0

    .line 78
    new-instance v2, Landroid/hardware/devicestate/DeviceState;

    .line 80
    invoke-direct {v2, p0}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    .line 83
    :goto_0
    invoke-direct {v3, v4, v1, v2}, Landroid/hardware/devicestate/DeviceStateInfo;-><init>(Ljava/util/ArrayList;Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;)V

    .line 86
    return-object v3
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public final getOverrideState()Ljava/util/Optional;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 6
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 14
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/devicestate/OverrideRequest;

    .line 20
    iget-object v1, v1, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 22
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    .line 29
    move-result-object p0

    .line 30
    monitor-exit v0

    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 37
    move-result-object p0

    .line 38
    monitor-exit v0

    .line 39
    return-object p0

    .line 40
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public getPendingState()Ljava/util/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getStateLocked(I)Ljava/util/Optional;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    .line 9
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getSupportedStateIdentifiersLocked()[I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    move-result v0

    .line 7
    new-array v1, v0, [I

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroid/hardware/devicestate/DeviceState;

    .line 20
    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 23
    move-result v3

    .line 24
    aput v3, v1, v2

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v1
.end method

.method public final getSupportedStatesLocked()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_0

    .line 21
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-object v0
.end method

.method public final notifyDeviceStateInfoChangedAsync()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 6
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const-string p0, "DeviceStateManagerService"

    .line 14
    const-string v1, "Cannot notify device state info change when pending state is present."

    .line 16
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_3

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 25
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_5

    .line 31
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 33
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const/4 v2, 0x0

    .line 56
    move v3, v2

    .line 57
    :goto_0
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 59
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 62
    move-result v4

    .line 63
    if-ge v3, v4, :cond_3

    .line 65
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 67
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 73
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    .line 82
    move-result-object p0

    .line 83
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 86
    move-result v3

    .line 87
    if-ge v2, v3, :cond_4

    .line 89
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 95
    iget-object v4, v3, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v5, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;

    .line 99
    const/4 v6, 0x2

    .line 100
    invoke-direct {v5, v3, p0, v6}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Ljava/lang/Object;I)V

    .line 103
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    add-int/lit8 v2, v2, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    monitor-exit v0

    .line 110
    return-void

    .line 111
    :cond_5
    :goto_2
    const-string p0, "DeviceStateManagerService"

    .line 113
    const-string v1, "Cannot notify device state info change before the initial state has been committed."

    .line 115
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 120
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    throw p0
.end method

.method public final notifyPolicyIfNeeded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/Throwable;

    .line 11
    const-string v1, "Attempting to notify DeviceStatePolicy with service lock held"

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 19
    const-string v1, "DeviceStateManagerService"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    .line 29
    if-nez v1, :cond_1

    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    .line 38
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 40
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    .line 46
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    .line 52
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-direct {v1, p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 58
    check-cast v0, Lcom/android/server/policy/DeviceStatePolicyImpl;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;->run()V

    .line 66
    return-void

    .line 67
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p0
.end method

.method public final onStart()V
    .locals 5

    .line 1
    const-string/jumbo v0, "device_state"

    .line 4
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    const-class v0, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    .line 11
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;

    .line 13
    invoke-direct {v1, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->readStatesAvailableForRequestFromApps()V

    .line 25
    new-instance v1, Ljava/util/HashSet;

    .line 27
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v2

    .line 38
    const v3, 0x1070103

    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x0

    .line 46
    :goto_0
    array-length v4, v2

    .line 47
    if-ge v3, v4, :cond_0

    .line 49
    aget v4, v2, v3

    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mFoldedDeviceStates:Ljava/util/Set;

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 66
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 71
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 73
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 79
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 81
    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0
.end method

.method public final onStateRequestOverlayDismissedInternal(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 6
    if-eqz v1, :cond_2

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 12
    iget v1, v1, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    .line 14
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 20
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 22
    iget-object v1, v1, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 24
    invoke-virtual {p1, v1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestCanceledAsync(Landroid/os/IBinder;)V

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 32
    iget-object v2, p1, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 34
    iput-object v1, p1, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 36
    iget-object v3, p1, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    .line 38
    const/4 v4, 0x1

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V

    .line 43
    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {p1, v2, v5}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;I)V

    .line 48
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 51
    :cond_2
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final readStatesAvailableForRequestFromApps()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    const v1, 0x10700cb

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    :goto_0
    array-length v3, v0

    .line 19
    if-ge v2, v3, :cond_2

    .line 21
    aget-object v3, v0, v2

    .line 23
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v4

    .line 31
    const-string/jumbo v5, "integer"

    .line 34
    const-string v6, "android"

    .line 36
    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    move-result v3

    .line 40
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 51
    move-result v3

    .line 52
    move v4, v1

    .line 53
    :goto_1
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 55
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 58
    move-result v5

    .line 59
    if-ge v4, v5, :cond_1

    .line 61
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 63
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Landroid/hardware/devicestate/DeviceState;

    .line 69
    invoke-virtual {v5}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 72
    move-result v5

    .line 73
    if-ne v3, v5, :cond_0

    .line 75
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatesAvailableForAppRequests:Ljava/util/Set;

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v3

    .line 81
    check-cast v4, Ljava/util/HashSet;

    .line 83
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    goto :goto_2

    .line 87
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const-string v4, "Invalid device state was found in the configuration file. State id: "

    .line 92
    const-string v5, "DeviceStateManagerService"

    .line 94
    invoke-static {v3, v4, v5}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    return-void
.end method

.method public final setBaseState(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/util/Optional;->isEmpty()Z

    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_6

    .line 14
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    .line 20
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 22
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 28
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 30
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    .line 36
    invoke-virtual {v2, v1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 53
    new-instance v4, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda7;

    .line 55
    invoke-direct {v4, p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 58
    invoke-virtual {v2, v4}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p0, v3}, Lcom/android/server/devicestate/DeviceStateManagerService;->onStateRequestOverlayDismissedInternal(Z)V

    .line 71
    :cond_1
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 74
    move-result-object v2

    .line 75
    iput-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 77
    const/4 v2, 0x4

    .line 78
    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 86
    invoke-virtual {v1, v3}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 91
    iget-object v2, v1, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 93
    if-eqz v2, :cond_3

    .line 95
    iget-object v2, v2, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 97
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 100
    move-result v2

    .line 101
    if-eq p1, v2, :cond_3

    .line 103
    invoke-virtual {v1, v3}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentBaseStateRequestLocked(I)V

    .line 106
    :cond_3
    iget-object p1, v1, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 108
    if-nez p1, :cond_4

    .line 110
    goto :goto_0

    .line 111
    :cond_4
    iget p1, p1, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    .line 113
    and-int/lit8 p1, p1, 0x1

    .line 115
    if-eqz p1, :cond_5

    .line 117
    invoke-virtual {v1, v3}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    .line 120
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 123
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    .line 126
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    .line 130
    const/4 v2, 0x2

    .line 131
    invoke-direct {v1, p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 134
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 139
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 141
    const-string p1, "Base state is not supported"

    .line 143
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    throw p0

    .line 147
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    throw p0
.end method

.method public final shouldCancelOverrideRequestWhenRequesterNotOnTop()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 13
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/devicestate/OverrideRequest;

    .line 19
    iget-object v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 21
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 24
    move-result v0

    .line 25
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    .line 33
    const/4 v0, 0x5

    .line 34
    invoke-virtual {p0, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public final updatePendingStateLocked()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 13
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 21
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/devicestate/OverrideRequest;

    .line 27
    iget-object v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 29
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 46
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 54
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    .line 60
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 63
    move-result v0

    .line 64
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 66
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 74
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x0

    .line 82
    :goto_0
    if-nez v0, :cond_3

    .line 84
    return v1

    .line 85
    :cond_3
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 87
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_4

    .line 93
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 95
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_4

    .line 105
    return v1

    .line 106
    :cond_4
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 112
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    .line 115
    return v0
.end method
