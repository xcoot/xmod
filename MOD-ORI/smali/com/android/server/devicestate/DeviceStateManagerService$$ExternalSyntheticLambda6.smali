.class public final synthetic Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyPolicyIfNeeded()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyPolicyIfNeeded()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 24
    .line 25
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicestate/OverrideRequestController;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0

    .line 41
    :pswitch_2
    const-string v0, "Committing state: "

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v1

    .line 46
    :try_start_1
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    .line 53
    .line 54
    const-string v3, "DeviceStateManagerService"

    .line 55
    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    xor-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    const/16 v4, 0x15e

    .line 84
    .line 85
    invoke-static {v4, v0, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZ)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v3, ":"

    .line 101
    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v3, "DeviceStateChanged"

    .line 117
    .line 118
    const-wide/32 v4, 0x80000

    .line 119
    .line 120
    .line 121
    invoke-static {v4, v5, v3, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mSystemPropertySetter:Lcom/android/server/devicestate/DeviceStateManagerService$SystemPropertySetter;

    .line 125
    .line 126
    invoke-interface {v3, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$SystemPropertySetter;->setDebugTracingDeviceStateProperty(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 134
    .line 135
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 148
    .line 149
    const/4 v3, 0x0

    .line 150
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/android/server/devicestate/OverrideRequest;

    .line 155
    .line 156
    if-eqz v0, :cond_0

    .line 157
    .line 158
    iget-object v3, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 159
    .line 160
    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-ne v3, v2, :cond_0

    .line 169
    .line 170
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 171
    .line 172
    iget v3, v0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 179
    .line 180
    if-eqz v2, :cond_0

    .line 181
    .line 182
    iget-object v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 183
    .line 184
    invoke-virtual {v2, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Landroid/os/IBinder;)V

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :catchall_1
    move-exception p0

    .line 189
    goto :goto_1

    .line 190
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 191
    .line 192
    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    .line 193
    .line 194
    const/4 v3, 0x2

    .line 195
    invoke-direct {v2, p0, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    .line 200
    .line 201
    monitor-exit v1

    .line 202
    return-void

    .line 203
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    throw p0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
