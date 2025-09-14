.class public final Lcom/android/server/hdmi/OneTouchPlayAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final STATE_CHECK_STANDBY_PROCESS_STARTED:I = 0x2

.field static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1


# instance fields
.field public final mIsCec20:Z

.field public mPowerStatusCounter:I

.field public mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

.field public final mTargetAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    .line 7
    iput p2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 9
    iput-boolean p4, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mIsCec20:Z

    .line 11
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_2

    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p1, v0, :cond_1

    .line 12
    return-void

    .line 13
    :cond_1
    const-string p1, "OneTouchPlayAction"

    .line 15
    const-string v0, "Action was not removed, start the action."

    .line 17
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->startAction()V

    .line 23
    return-void

    .line 24
    :cond_2
    iget p1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    .line 26
    add-int/lit8 v1, p1, 0x1

    .line 28
    iput v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    .line 30
    const/16 v1, 0xa

    .line 32
    if-ge p1, v1, :cond_3

    .line 34
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 37
    move-result p1

    .line 38
    const/16 v0, 0x8f

    .line 40
    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 42
    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 49
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 51
    const/16 v0, 0x7d0

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 60
    :goto_0
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_2

    .line 7
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 9
    iget v3, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 11
    if-eq v3, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v0, 0x90

    .line 16
    iget v4, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 18
    if-ne v4, v0, :cond_2

    .line 20
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 22
    aget-byte p1, p1, v1

    .line 24
    if-nez p1, :cond_1

    .line 26
    iget-object p1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 28
    invoke-virtual {p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 31
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 34
    :cond_1
    return v2

    .line 35
    :cond_2
    :goto_0
    return v1
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 5
    iput-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 7
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 9
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 11
    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 13
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    const-string v0, "OneTouchPlayAction"

    .line 21
    const-string v1, "PowerManager is not interactive. Delay the action to check if standby started!"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v0, 0x2

    .line 27
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 29
    const/16 v1, 0x7d0

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->startAction()V

    .line 38
    :goto_0
    return-void
.end method

.method public final startAction()V
    .locals 12

    .line 1
    const-string v0, "OneTouchPlayAction"

    .line 3
    const-string v1, "Start action."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 11
    move-result v0

    .line 12
    const/16 v1, 0xd

    .line 14
    iget v2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 16
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 26
    const/4 v0, -0x1

    .line 27
    iget-boolean v4, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mIsCec20:Z

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x1

    .line 31
    if-eqz v4, :cond_1

    .line 33
    iget-object v7, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 35
    iget-object v7, v7, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 37
    iget-object v7, v7, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 39
    invoke-virtual {v7, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 42
    move-result-object v7

    .line 43
    if-eqz v7, :cond_0

    .line 45
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    .line 48
    move-result v7

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v7, v0

    .line 51
    :goto_0
    if-nez v7, :cond_1

    .line 53
    move v7, v6

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v7, v5

    .line 56
    :goto_1
    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 58
    iget-object v8, v8, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 60
    iget-object v9, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 62
    invoke-virtual {v9}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 69
    move-result v10

    .line 70
    const-string v11, "OneTouchPlayAction#broadcastActiveSource()"

    .line 72
    invoke-virtual {v8, v2, v10, v11}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSourceFromOneDeviceType(IILjava/lang/String;)V

    .line 75
    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 77
    iget-object v8, v8, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 79
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 82
    move-result-object v8

    .line 83
    if-eqz v8, :cond_2

    .line 85
    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 87
    iget-object v8, v8, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 89
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 92
    move-result-object v8

    .line 93
    iput-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 95
    :cond_2
    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 97
    invoke-virtual {v8, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    .line 100
    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 102
    invoke-virtual {v8, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    .line 105
    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 107
    iget-object v8, v8, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 109
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    .line 112
    move-result v10

    .line 113
    if-eqz v10, :cond_3

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 119
    move-result-object v8

    .line 120
    const-string/jumbo v10, "power_control_mode"

    .line 123
    invoke-virtual {v8, v10}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object v8

    .line 127
    const-string/jumbo v10, "to_tv_and_audio_system"

    .line 130
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v10

    .line 134
    if-nez v10, :cond_4

    .line 136
    const-string/jumbo v10, "broadcast"

    .line 139
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_5

    .line 145
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 148
    move-result v8

    .line 149
    invoke-virtual {v9}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v9}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 156
    move-result v9

    .line 157
    invoke-static {v9}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    .line 160
    move-result-object v9

    .line 161
    const/4 v10, 0x5

    .line 162
    const/16 v11, 0x70

    .line 164
    invoke-static {v8, v10, v11, v9}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 167
    move-result-object v8

    .line 168
    invoke-virtual {v1, v8, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 171
    :cond_5
    :goto_2
    const/16 v1, 0x8f

    .line 173
    if-nez v4, :cond_6

    .line 175
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 178
    move-result v0

    .line 179
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 186
    goto :goto_4

    .line 187
    :cond_6
    iget-object v3, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 189
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 191
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 193
    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 196
    move-result-object v3

    .line 197
    if-eqz v3, :cond_7

    .line 199
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    .line 202
    move-result v3

    .line 203
    goto :goto_3

    .line 204
    :cond_7
    move v3, v0

    .line 205
    :goto_3
    if-ne v3, v0, :cond_8

    .line 207
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 210
    move-result v0

    .line 211
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 218
    goto :goto_4

    .line 219
    :cond_8
    if-nez v3, :cond_a

    .line 221
    if-nez v7, :cond_9

    .line 223
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 225
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 228
    :cond_9
    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 231
    return-void

    .line 232
    :cond_a
    :goto_4
    iput v6, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 234
    const/16 v0, 0x7d0

    .line 236
    invoke-virtual {p0, v6, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 239
    return-void
.end method
