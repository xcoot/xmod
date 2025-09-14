.class public final Lcom/android/server/hdmi/HdmiControlService$BinderService$13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$mute:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 4
    .line 5
    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$mute:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->$r8$classId:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$mute:Z

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iget-object p0, v1, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 31
    .line 32
    const/4 v4, 0x5

    .line 33
    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->sendStandby(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    if-nez p0, :cond_1

    .line 57
    .line 58
    iget-object p0, v1, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 59
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    .line 65
    .line 66
    const/16 v0, 0x8

    .line 67
    .line 68
    const-string v4, "android.server.hdmi:WAKE"

    .line 69
    .line 70
    invoke-virtual {p0, v2, v3, v0, v4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-eqz p0, :cond_1

    .line 78
    .line 79
    new-instance p0, Lcom/android/server/hdmi/HdmiControlService$29;

    .line 80
    .line 81
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    const-string p0, "HdmiControlService"

    .line 99
    .line 100
    const-string v0, "Local tv device not available to change arc mode."

    .line 101
    .line 102
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$mute:Z

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    return-void

    .line 113
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 114
    .line 115
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    if-nez v1, :cond_3

    .line 122
    .line 123
    const-string p0, "HdmiControlService"

    .line 124
    .line 125
    const-string v0, "Local tv device not available"

    .line 126
    .line 127
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_3
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;->val$mute:Z

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    if-eqz v2, :cond_7

    .line 141
    .line 142
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 143
    .line 144
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-nez v2, :cond_4

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_4
    const-string v2, "[A]:Change mute:%b"

    .line 152
    .line 153
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 165
    .line 166
    monitor-enter v2

    .line 167
    :try_start_0
    iget-boolean v3, v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    .line 168
    .line 169
    if-ne v3, p0, :cond_5

    .line 170
    .line 171
    const-string p0, "No need to change mute."

    .line 172
    .line 173
    new-array v0, v0, [Ljava/lang/Object;

    .line 174
    .line 175
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    monitor-exit v2

    .line 179
    goto :goto_3

    .line 180
    :catchall_0
    move-exception p0

    .line 181
    goto :goto_2

    .line 182
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-nez p0, :cond_6

    .line 188
    .line 189
    const-string p0, "[A]:System audio is not activated."

    .line 190
    .line 191
    new-array v0, v0, [Ljava/lang/Object;

    .line 192
    .line 193
    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_6
    const-class p0, Lcom/android/server/hdmi/VolumeControlAction;

    .line 198
    .line 199
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    sget-object v0, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 211
    .line 212
    const/16 v0, 0x43

    .line 213
    .line 214
    invoke-virtual {v1, p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    throw p0

    .line 220
    :cond_7
    :goto_3
    return-void

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
