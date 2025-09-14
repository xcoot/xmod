.class public final Lcom/android/server/hdmi/HdmiControlService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onChange$com$android$server$hdmi$HdmiControlService$5(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 4
    .line 5
    const-string/jumbo v0, "system_audio_control"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 32
    .line 33
    .line 34
    iget-object v1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v1

    .line 37
    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    .line 38
    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p0

    .line 59
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    const-string p0, "HdmiControlService"

    .line 76
    .line 77
    const-string p1, "Audio System device has not registered yet. Can\'t turn system audio mode on."

    .line 78
    .line 79
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 93
    .line 94
    monitor-enter p1

    .line 95
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mSystemAudioControlFeatureEnabled:Z

    .line 96
    .line 97
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    const-class p1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    const-string p1, "HdmiCecLocalDeviceAudioSystem"

    .line 109
    .line 110
    const-string v0, "SystemAudioInitiationActionFromAvr is in progress. Restarting."

    .line 111
    .line 112
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    const-class p1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    new-instance p1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 121
    .line 122
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :catchall_1
    move-exception p0

    .line 130
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    throw p0

    .line 132
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final onChange(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mreportFeatures(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mreportFeatures(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string/jumbo v1, "enableWakeupByOtp: %b"

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 56
    .line 57
    invoke-interface {p1, p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->enableWakeupByOtp(Z)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void

    .line 61
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string/jumbo v0, "volume_control_enabled"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiCecVolumeControlEnabledInternal(I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$2;->onChange$com$android$server$hdmi$HdmiControlService$5(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 85
    .line 86
    const-string/jumbo v0, "routing_control"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const/4 v0, 0x1

    .line 94
    if-ne p1, v0, :cond_1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    .line 98
    :goto_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-nez p1, :cond_2

    .line 113
    .line 114
    const-string p0, "HdmiControlService"

    .line 115
    .line 116
    const-string p1, "Switch device has not registered yet. Can\'t turn routing on."

    .line 117
    .line 118
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 132
    .line 133
    monitor-enter p1

    .line 134
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->mRoutingControlFeatureEnabled:Z

    .line 135
    .line 136
    monitor-exit p1

    .line 137
    goto :goto_1

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    throw p0

    .line 141
    :cond_3
    :goto_1
    return-void

    .line 142
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 143
    .line 144
    const/4 p1, 0x0

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 152
    .line 153
    monitor-enter v0

    .line 154
    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 155
    .line 156
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    .line 157
    .line 158
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_4

    .line 163
    .line 164
    monitor-exit v0

    .line 165
    goto :goto_2

    .line 166
    :catchall_1
    move-exception p0

    .line 167
    goto :goto_3

    .line 168
    :cond_4
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 169
    .line 170
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecSettingChangeListenerRecords:Landroid/util/ArrayMap;

    .line 171
    .line 172
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 177
    .line 178
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$33$$ExternalSyntheticLambda0;

    .line 179
    .line 180
    invoke-direct {v2, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$33$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiControlService$2;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 184
    .line 185
    .line 186
    monitor-exit v0

    .line 187
    :goto_2
    return-void

    .line 188
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    throw p0

    .line 190
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 191
    .line 192
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 193
    .line 194
    const-string/jumbo v0, "soundbar_mode"

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    const/4 v0, 0x0

    .line 202
    const/4 v1, 0x1

    .line 203
    if-ne p1, v1, :cond_5

    .line 204
    .line 205
    move p1, v1

    .line 206
    goto :goto_4

    .line 207
    :cond_5
    move p1, v0

    .line 208
    :goto_4
    if-eqz p1, :cond_6

    .line 209
    .line 210
    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mSoundbarModeFeatureFlagEnabled:Z

    .line 211
    .line 212
    if-eqz p1, :cond_6

    .line 213
    .line 214
    move v0, v1

    .line 215
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setSoundbarMode(I)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    const-string/jumbo v0, "earc_enabled"

    .line 226
    .line 227
    .line 228
    if-eqz p1, :cond_9

    .line 229
    .line 230
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 231
    .line 232
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    const/4 v0, 0x0

    .line 237
    const/4 v1, 0x1

    .line 238
    if-ne p1, v1, :cond_7

    .line 239
    .line 240
    move p1, v1

    .line 241
    goto :goto_5

    .line 242
    :cond_7
    move p1, v0

    .line 243
    :goto_5
    if-eqz p1, :cond_8

    .line 244
    .line 245
    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mEarcTxFeatureFlagEnabled:Z

    .line 246
    .line 247
    if-eqz p1, :cond_8

    .line 248
    .line 249
    move v0, v1

    .line 250
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabled(I)V

    .line 251
    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_9
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 255
    .line 256
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabled(I)V

    .line 261
    .line 262
    .line 263
    :goto_6
    return-void

    .line 264
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 265
    .line 266
    const/4 p1, 0x0

    .line 267
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mreportFeatures(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 268
    .line 269
    .line 270
    return-void

    .line 271
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 272
    .line 273
    const/4 p1, 0x0

    .line 274
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mreportFeatures(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 279
    .line 280
    const/4 p1, 0x0

    .line 281
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mreportFeatures(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 286
    .line 287
    const/4 p1, 0x0

    .line 288
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mreportFeatures(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :pswitch_d
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 293
    .line 294
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecConfig:Lcom/android/server/hdmi/HdmiCecConfig;

    .line 295
    .line 296
    const-string/jumbo v0, "hdmi_cec_enabled"

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$2;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 304
    .line 305
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 306
    .line 307
    .line 308
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 309
    .line 310
    monitor-enter v0

    .line 311
    :try_start_2
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    .line 312
    .line 313
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 314
    const/4 v0, 0x0

    .line 315
    const/4 v1, 0x1

    .line 316
    if-ne p1, v1, :cond_a

    .line 317
    .line 318
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 319
    .line 320
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableCec(Z)V

    .line 321
    .line 322
    .line 323
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 324
    .line 325
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableSystemCecControl(Z)V

    .line 326
    .line 327
    .line 328
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 329
    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    const-string/jumbo v0, "volume_control_enabled"

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiCecVolumeControlEnabledInternal(I)V

    .line 348
    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiCecVolumeControlEnabledInternal(I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(IZ)V

    .line 355
    .line 356
    .line 357
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$30;

    .line 358
    .line 359
    const/4 v1, 0x0

    .line 360
    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$30;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceHdmiControlStatusChange(I)V

    .line 367
    .line 368
    .line 369
    :goto_7
    return-void

    .line 370
    :catchall_2
    move-exception p0

    .line 371
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 372
    throw p0

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
