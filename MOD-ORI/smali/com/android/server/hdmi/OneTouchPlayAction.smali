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

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    .line 6
    .line 7
    iput p2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 8
    .line 9
    iput-boolean p4, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mIsCec20:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const-string p1, "OneTouchPlayAction"

    .line 14
    .line 15
    const-string v0, "Action was not removed, start the action."

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->startAction()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iget p1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    .line 25
    .line 26
    add-int/lit8 v1, p1, 0x1

    .line 27
    .line 28
    iput v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    .line 29
    .line 30
    const/16 v1, 0xa

    .line 31
    .line 32
    if-ge p1, v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/16 v0, 0x8f

    .line 39
    .line 40
    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 41
    .line 42
    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 47
    .line 48
    .line 49
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 50
    .line 51
    const/16 v0, 0x7d0

    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_2

    .line 6
    .line 7
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 8
    .line 9
    iget v3, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 10
    .line 11
    if-eq v3, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v0, 0x90

    .line 15
    .line 16
    iget v4, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 17
    .line 18
    if-ne v4, v0, :cond_2

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 21
    .line 22
    aget-byte p1, p1, v1

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 27
    .line 28
    invoke-virtual {p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 32
    .line 33
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

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "OneTouchPlayAction"

    .line 20
    .line 21
    const-string v1, "PowerManager is not interactive. Delay the action to check if standby started!"

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 28
    .line 29
    const/16 v1, 0x7d0

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->startAction()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final startAction()V
    .locals 12

    .line 1
    const-string v0, "OneTouchPlayAction"

    .line 2
    .line 3
    const-string v1, "Start action."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0xd

    .line 13
    .line 14
    iget v2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    .line 15
    .line 16
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v1, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, -0x1

    .line 27
    iget-boolean v4, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mIsCec20:Z

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x1

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    iget-object v7, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 34
    .line 35
    iget-object v7, v7, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 36
    .line 37
    iget-object v7, v7, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 38
    .line 39
    invoke-virtual {v7, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    .line 46
    .line 47
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

    .line 52
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

    .line 57
    .line 58
    iget-object v8, v8, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 59
    .line 60
    iget-object v9, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 61
    .line 62
    invoke-virtual {v9}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    const-string v11, "OneTouchPlayAction#broadcastActiveSource()"

    .line 71
    .line 72
    invoke-virtual {v8, v2, v10, v11}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSourceFromOneDeviceType(IILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 76
    .line 77
    iget-object v8, v8, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 78
    .line 79
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    if-eqz v8, :cond_2

    .line 84
    .line 85
    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 86
    .line 87
    iget-object v8, v8, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 88
    .line 89
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    iput-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 94
    .line 95
    :cond_2
    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 96
    .line 97
    invoke-virtual {v8, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    .line 98
    .line 99
    .line 100
    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 101
    .line 102
    invoke-virtual {v8, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    .line 103
    .line 104
    .line 105
    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 106
    .line 107
    iget-object v8, v8, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 108
    .line 109
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    if-eqz v10, :cond_3

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    const-string/jumbo v10, "power_control_mode"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v10}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    const-string/jumbo v10, "to_tv_and_audio_system"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    if-nez v10, :cond_4

    .line 135
    .line 136
    const-string/jumbo v10, "broadcast"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_5

    .line 144
    .line 145
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    invoke-virtual {v9}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v9}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 154
    .line 155
    .line 156
    move-result v9

    .line 157
    invoke-static {v9}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    const/4 v10, 0x5

    .line 162
    const/16 v11, 0x70

    .line 163
    .line 164
    invoke-static {v8, v10, v11, v9}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    invoke-virtual {v1, v8, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 169
    .line 170
    .line 171
    :cond_5
    :goto_2
    const/16 v1, 0x8f

    .line 172
    .line 173
    if-nez v4, :cond_6

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_6
    iget-object v3, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 188
    .line 189
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 190
    .line 191
    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 192
    .line 193
    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    if-eqz v3, :cond_7

    .line 198
    .line 199
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    .line 200
    .line 201
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

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_8
    if-nez v3, :cond_a

    .line 220
    .line 221
    if-nez v7, :cond_9

    .line 222
    .line 223
    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 224
    .line 225
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    .line 226
    .line 227
    .line 228
    :cond_9
    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_a
    :goto_4
    iput v6, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 233
    .line 234
    const/16 v0, 0x7d0

    .line 235
    .line 236
    invoke-virtual {p0, v6, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 237
    .line 238
    .line 239
    return-void
.end method
