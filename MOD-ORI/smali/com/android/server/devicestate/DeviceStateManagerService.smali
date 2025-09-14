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

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStateProviderListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    .line 17
    .line 18
    iget p1, p1, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->mCurrentBaseState:I

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->setBaseState(I)V

    .line 21
    .line 22
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

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " has no registered callback."

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
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

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 19
    .line 20
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicestate/OverrideRequestController;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 29
    .line 30
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

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " has no registered callback."

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
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

    .line 2
    .line 3
    .line 4
    const-string v0, "Registered processes: size="

    .line 5
    .line 6
    const-string v1, "  mOverrideState="

    .line 7
    .line 8
    const-string v2, "  mBaseState="

    .line 9
    .line 10
    const-string v3, "  mPendingState="

    .line 11
    .line 12
    const-string v4, "  mCommittedState="

    .line 13
    .line 14
    const-string v5, "DEVICE STATE MANAGER (dumpsys device_state)"

    .line 15
    .line 16
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v5

    .line 22
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 28
    .line 29
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 45
    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getOverrideState()Ljava/util/Optional;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 99
    .line 100
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    :goto_0
    if-ge v0, v1, :cond_0

    .line 118
    .line 119
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 120
    .line 121
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 126
    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v4, "  "

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v4, ": mPid="

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget v2, v2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    .line 146
    .line 147
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 158
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

    .line 163
    .line 164
    invoke-virtual {v0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    .line 171
    .line 172
    check-cast p0, Lcom/android/server/policy/DeviceStatePolicyImpl;

    .line 173
    .line 174
    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/DeviceStatePolicyImpl;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 176
    .line 177
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 13
    .line 14
    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-direct {v1, p2, p1, v2, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;-><init>(Landroid/hardware/devicestate/IDeviceStateManagerCallback;ILcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-interface {p2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->asBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    :try_start_2
    iget-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    .line 46
    .line 47
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

    .line 54
    .line 55
    iget-object p1, v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    .line 56
    .line 57
    new-instance p2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-direct {p2, v1, p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
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

    .line 70
    .line 71
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 76
    .line 77
    const-string p1, "The calling process has already registered an IDeviceStateManagerCallback."

    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
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

    .line 4
    .line 5
    const-string v1, "Request has already been made for the supplied token: "

    .line 6
    .line 7
    const-string v4, "Process "

    .line 8
    .line 9
    const-string v5, "Requested state: "

    .line 10
    .line 11
    iget-object v8, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v8

    .line 14
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    if-eqz v7, :cond_3

    .line 23
    .line 24
    iget-object v5, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v5, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 31
    .line 32
    if-eqz v5, :cond_2

    .line 33
    .line 34
    iget-object v4, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 35
    .line 36
    const/4 v9, 0x1

    .line 37
    invoke-virtual {v4, v9, v2}, Lcom/android/server/devicestate/OverrideRequestController;->hasRequest(ILandroid/os/IBinder;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_1

    .line 42
    .line 43
    new-instance v10, Lcom/android/server/devicestate/OverrideRequest;

    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    move-object v5, v1

    .line 50
    check-cast v5, Landroid/hardware/devicestate/DeviceState;

    .line 51
    .line 52
    const/4 v7, 0x1

    .line 53
    move-object v1, v10

    .line 54
    move-object/from16 v2, p5

    .line 55
    .line 56
    move v3, p3

    .line 57
    move v4, p4

    .line 58
    move v6, p2

    .line 59
    invoke-direct/range {v1 .. v7}, Lcom/android/server/devicestate/OverrideRequest;-><init>(Landroid/os/IBinder;IILandroid/hardware/devicestate/DeviceState;II)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 65
    .line 66
    iput-object v10, v0, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 67
    .line 68
    iget-object v2, v0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-virtual {v2, v10, v9, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V

    .line 72
    .line 73
    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    invoke-virtual {v0, v1, v3}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;I)V

    .line 77
    .line 78
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

    .line 84
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, " has no registered callback."

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    move v2, p1

    .line 132
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v2, " is not supported."

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
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

    .line 5
    .line 6
    const-string v2, "Requested state: "

    .line 7
    .line 8
    const-string v5, "Request has already been made for the supplied token: "

    .line 9
    .line 10
    const-string v6, "Process "

    .line 11
    .line 12
    iget-object v9, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v9

    .line 15
    :try_start_0
    iget-object v7, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v7, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    check-cast v7, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 22
    .line 23
    if-eqz v7, :cond_5

    .line 24
    .line 25
    iget-object v6, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 26
    .line 27
    const/4 v10, 0x0

    .line 28
    invoke-virtual {v6, v10, v3}, Lcom/android/server/devicestate/OverrideRequestController;->hasRequest(ILandroid/os/IBinder;)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-nez v6, :cond_4

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_3

    .line 43
    .line 44
    new-instance v11, Lcom/android/server/devicestate/OverrideRequest;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    move-object v6, v2

    .line 51
    check-cast v6, Landroid/hardware/devicestate/DeviceState;

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    move-object v2, v11

    .line 55
    move-object/from16 v3, p5

    .line 56
    .line 57
    move v4, p3

    .line 58
    move/from16 v5, p4

    .line 59
    .line 60
    move v7, p2

    .line 61
    invoke-direct/range {v2 .. v8}, Lcom/android/server/devicestate/OverrideRequest;-><init>(Landroid/os/IBinder;IILandroid/hardware/devicestate/DeviceState;II)V

    .line 62
    .line 63
    .line 64
    if-nez p6, :cond_1

    .line 65
    .line 66
    iget-object v2, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayState:Landroid/hardware/devicestate/DeviceState;

    .line 67
    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eq v1, v2, :cond_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iput-object v11, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 78
    .line 79
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 80
    .line 81
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 104
    .line 105
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    :try_start_1
    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->showRearDisplayDialog(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
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

    .line 116
    .line 117
    iget-object v1, v0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 118
    .line 119
    iput-object v11, v0, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 120
    .line 121
    iget-object v2, v0, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    .line 122
    .line 123
    const/4 v3, 0x1

    .line 124
    invoke-virtual {v2, v11, v3, v10}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V

    .line 125
    .line 126
    .line 127
    if-eqz v1, :cond_2

    .line 128
    .line 129
    invoke-virtual {v0, v1, v10}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;I)V

    .line 130
    .line 131
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

    .line 135
    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, " is not supported."

    .line 145
    .line 146
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0

    .line 175
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 176
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v2, " has no registered callback."

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
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

    .line 2
    .line 3
    new-instance v1, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const-string v3, "INVALID"

    .line 7
    .line 8
    invoke-direct {v1, v2, v3}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 19
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

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move v2, v0

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 22
    .line 23
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 24
    .line 25
    if-ne v4, p0, :cond_0

    .line 26
    .line 27
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 28
    .line 29
    if-ne v4, p1, :cond_0

    .line 30
    .line 31
    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    const/16 v4, 0x64

    .line 34
    .line 35
    if-gt v3, v4, :cond_0

    .line 36
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

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_1
    const-string p1, "DeviceStateManagerService"

    .line 45
    .line 46
    const-string v1, "am.getRunningAppProcesses() failed"

    .line 47
    .line 48
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    return v0
.end method


# virtual methods
.method public getBinderService()Landroid/hardware/devicestate/IDeviceStateManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStatesLocked()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 6
    .line 7
    sget-object v2, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    .line 22
    .line 23
    new-instance v3, Landroid/hardware/devicestate/DeviceStateInfo;

    .line 24
    .line 25
    new-instance v4, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState$Configuration;->getSystemProperties()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v5, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v5, v6, p0}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v0}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->setSystemProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, v2}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->setPhysicalProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    new-instance v2, Landroid/hardware/devicestate/DeviceState;

    .line 79
    .line 80
    invoke-direct {v2, p0}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-direct {v3, v4, v1, v2}, Landroid/hardware/devicestate/DeviceStateInfo;-><init>(Ljava/util/ArrayList;Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;)V

    .line 84
    .line 85
    .line 86
    return-object v3
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOverrideState()Ljava/util/Optional;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/devicestate/OverrideRequest;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    .line 27
    .line 28
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

    .line 35
    .line 36
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 5
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

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    .line 8
    .line 9
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getSupportedStateIdentifiersLocked()[I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroid/hardware/devicestate/DeviceState;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    aput v3, v1, v2

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
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

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string p0, "DeviceStateManagerService"

    .line 13
    .line 14
    const-string v1, "Cannot notify device state info change when pending state is present."

    .line 15
    .line 16
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
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

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_5

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    move v3, v2

    .line 57
    :goto_0
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ge v3, v4, :cond_3

    .line 64
    .line 65
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 72
    .line 73
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ge v2, v3, :cond_4

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 94
    .line 95
    iget-object v4, v3, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    .line 96
    .line 97
    new-instance v5, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    const/4 v6, 0x2

    .line 100
    invoke-direct {v5, v3, p0, v6}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    .line 105
    .line 106
    add-int/lit8 v2, v2, 0x1

    .line 107
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

    .line 112
    .line 113
    const-string v1, "Cannot notify device state info change before the initial state has been committed."

    .line 114
    .line 115
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
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

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Throwable;

    .line 10
    .line 11
    const-string v1, "Attempting to notify DeviceStatePolicy with service lock held"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 17
    .line 18
    .line 19
    const-string v1, "DeviceStateManagerService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
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

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 47
    .line 48
    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    .line 51
    .line 52
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-direct {v1, p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 56
    .line 57
    .line 58
    check-cast v0, Lcom/android/server/policy/DeviceStatePolicyImpl;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;->run()V

    .line 64
    .line 65
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

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    const-class v0, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->readStatesAvailableForRequestFromApps()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const v3, 0x1070103

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x0

    .line 46
    :goto_0
    array-length v4, v2

    .line 47
    if-ge v3, v4, :cond_0

    .line 48
    .line 49
    aget v4, v2, v3

    .line 50
    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mFoldedDeviceStates:Ljava/util/Set;

    .line 62
    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestScreenObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 69
    .line 70
    .line 71
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 82
    .line 83
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 11
    .line 12
    iget v1, v1, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestCanceledAsync(Landroid/os/IBinder;)V

    .line 25
    .line 26
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

    .line 31
    .line 32
    iget-object v2, p1, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 33
    .line 34
    iput-object v1, p1, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 35
    .line 36
    iget-object v3, p1, Lcom/android/server/devicestate/OverrideRequestController;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V

    .line 41
    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, v2, v5}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequestLocked(Lcom/android/server/devicestate/OverrideRequest;I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mRearDisplayPendingOverrideRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 50
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

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x10700cb

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 13
    .line 14
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

    .line 20
    .line 21
    aget-object v3, v0, v2

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string/jumbo v5, "integer"

    .line 32
    .line 33
    .line 34
    const-string v6, "android"

    .line 35
    .line 36
    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    move v4, v1

    .line 53
    :goto_1
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-ge v4, v5, :cond_1

    .line 60
    .line 61
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Landroid/hardware/devicestate/DeviceState;

    .line 68
    .line 69
    invoke-virtual {v5}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-ne v3, v5, :cond_0

    .line 74
    .line 75
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatesAvailableForAppRequests:Ljava/util/Set;

    .line 76
    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v4, Ljava/util/HashSet;

    .line 82
    .line 83
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    const-string v4, "Invalid device state was found in the configuration file. State id: "

    .line 91
    .line 92
    const-string v5, "DeviceStateManagerService"

    .line 93
    .line 94
    invoke-static {v3, v4, v5}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 98
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/util/Optional;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_6

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
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

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 52
    .line 53
    new-instance v4, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda7;

    .line 54
    .line 55
    invoke-direct {v4, p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0, v3}, Lcom/android/server/devicestate/DeviceStateManagerService;->onStateRequestOverlayDismissedInternal(Z)V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 76
    .line 77
    const/4 v2, 0x4

    .line 78
    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 90
    .line 91
    iget-object v2, v1, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 92
    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    iget-object v2, v2, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eq p1, v2, :cond_3

    .line 102
    .line 103
    invoke-virtual {v1, v3}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentBaseStateRequestLocked(I)V

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object p1, v1, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    .line 107
    .line 108
    if-nez p1, :cond_4

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    iget p1, p1, Lcom/android/server/devicestate/OverrideRequest;->mFlags:I

    .line 112
    .line 113
    and-int/lit8 p1, p1, 0x1

    .line 114
    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    invoke-virtual {v1, v3}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 127
    .line 128
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    .line 129
    .line 130
    const/4 v2, 0x2

    .line 131
    invoke-direct {v1, p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    .line 136
    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 139
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    const-string p1, "Base state is not supported"

    .line 142
    .line 143
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
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

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/devicestate/OverrideRequest;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroid/hardware/devicestate/DeviceState;

    .line 32
    .line 33
    const/4 v0, 0x5

    .line 34
    invoke-virtual {p0, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public final updatePendingStateLocked()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/devicestate/OverrideRequest;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x0

    .line 82
    :goto_0
    if-nez v0, :cond_3

    .line 83
    .line 84
    return v1

    .line 85
    :cond_3
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    return v1

    .line 106
    :cond_4
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 111
    .line 112
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    .line 114
    .line 115
    return v0
.end method
