.class public final Lcom/android/server/hdmi/HdmiControlService$BinderService$12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$maxIndex:I

.field public final synthetic val$newIndex:I

.field public final synthetic val$oldIndex:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 6
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$oldIndex:I

    .line 8
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$newIndex:I

    .line 10
    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$maxIndex:I

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 3
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string p0, "HdmiControlService"

    .line 13
    const-string v0, "Local tv device not available"

    .line 15
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$oldIndex:I

    .line 21
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$newIndex:I

    .line 23
    sub-int/2addr v2, v1

    .line 24
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;->val$maxIndex:I

    .line 26
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 29
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 32
    move-result-object v3

    .line 33
    if-nez v3, :cond_1

    .line 35
    goto/16 :goto_3

    .line 37
    :cond_1
    if-eqz v2, :cond_8

    .line 39
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_8

    .line 45
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 47
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_2

    .line 53
    goto/16 :goto_3

    .line 55
    :cond_2
    add-int/2addr v1, v2

    .line 56
    mul-int/lit8 v1, v1, 0x64

    .line 58
    div-int/2addr v1, p0

    .line 59
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 61
    monitor-enter v3

    .line 62
    :try_start_0
    iget v4, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    .line 64
    if-ne v1, v4, :cond_3

    .line 66
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 68
    mul-int/2addr v4, p0

    .line 69
    div-int/lit8 v4, v4, 0x64

    .line 71
    invoke-virtual {v0, v4}, Lcom/android/server/hdmi/HdmiControlService;->setAudioStatus(I)V

    .line 74
    monitor-exit v3

    .line 75
    goto/16 :goto_3

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto/16 :goto_2

    .line 80
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    const-class p0, Lcom/android/server/hdmi/VolumeControlAction;

    .line 83
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 86
    move-result-object p0

    .line 87
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 90
    move-result v1

    .line 91
    const/4 v3, 0x1

    .line 92
    const/4 v4, 0x0

    .line 93
    if-eqz v1, :cond_5

    .line 95
    new-instance p0, Lcom/android/server/hdmi/VolumeControlAction;

    .line 97
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 104
    move-result v1

    .line 105
    if-lez v2, :cond_4

    .line 107
    goto :goto_0

    .line 108
    :cond_4
    move v3, v4

    .line 109
    :goto_0
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/hdmi/VolumeControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;IZ)V

    .line 112
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object p0

    .line 120
    check-cast p0, Lcom/android/server/hdmi/VolumeControlAction;

    .line 122
    if-lez v2, :cond_6

    .line 124
    move v0, v3

    .line 125
    goto :goto_1

    .line 126
    :cond_6
    move v0, v4

    .line 127
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    .line 129
    if-eq v1, v0, :cond_7

    .line 131
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 134
    move-result-object v1

    .line 135
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 138
    move-result-object v2

    .line 139
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 142
    move-result-object v1

    .line 143
    const-string v2, "Volume Key Status Changed[old:%b new:%b]"

    .line 145
    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 151
    move-result v1

    .line 152
    const/16 v2, 0x45

    .line 154
    iget v5, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    .line 156
    invoke-static {v1, v5, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 163
    iput-boolean v4, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    .line 165
    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    .line 170
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 172
    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 174
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 177
    const/16 v0, 0x12c

    .line 179
    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 182
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 185
    move-result-wide v0

    .line 186
    iput-wide v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastKeyUpdateTime:J

    .line 188
    goto :goto_3

    .line 189
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    throw p0

    .line 191
    :cond_8
    :goto_3
    return-void
.end method
