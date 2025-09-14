.class public final Lcom/android/server/hdmi/VolumeControlAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAvrAddress:I

.field public mIsVolumeUp:Z

.field public mLastAvrMute:Z

.field public mLastAvrVolume:I

.field public mLastKeyUpdateTime:J

.field public mSentKeyPressed:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    iput-wide p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastKeyUpdateTime:J

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->clear()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v2, 0x45

    .line 14
    .line 15
    iget v3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    .line 16
    .line 17
    invoke-static {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 22
    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    .line 25
    .line 26
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    if-eq v0, v2, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 32
    .line 33
    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 34
    .line 35
    iget-boolean v4, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    .line 36
    .line 37
    invoke-virtual {v3, v0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(IZ)V

    .line 38
    .line 39
    .line 40
    iput v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final handleTimerEvent(I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iget-wide v3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastKeyUpdateTime:J

    .line 10
    .line 11
    sub-long/2addr v1, v3

    .line 12
    const-wide/16 v3, 0x12c

    .line 13
    .line 14
    cmp-long p1, v1, v3

    .line 15
    .line 16
    if-ltz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 26
    .line 27
    check-cast p1, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 30
    .line 31
    .line 32
    const/16 p1, 0x12c

    .line 33
    .line 34
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_7

    .line 6
    .line 7
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 8
    .line 9
    iget v3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    .line 10
    .line 11
    if-eq v0, v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 16
    .line 17
    iget v3, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 18
    .line 19
    if-eqz v3, :cond_6

    .line 20
    .line 21
    const/16 v4, 0x7a

    .line 22
    .line 23
    if-eq v3, v4, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    sget-object v3, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:Ljava/util/Map;

    .line 27
    .line 28
    aget-byte v0, v0, v1

    .line 29
    .line 30
    const/16 v3, 0x80

    .line 31
    .line 32
    and-int/2addr v0, v3

    .line 33
    if-ne v0, v3, :cond_2

    .line 34
    .line 35
    move v0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    move v0, v1

    .line 38
    :goto_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    move-object v4, v3

    .line 52
    check-cast v4, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 53
    .line 54
    iget-object v4, v4, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 55
    .line 56
    iget-object v4, v4, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 57
    .line 58
    check-cast v4, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 59
    .line 60
    iget-object v5, v4, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 61
    .line 62
    const/4 v6, 0x3

    .line 63
    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    iget-boolean v7, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    .line 68
    .line 69
    if-eqz v7, :cond_4

    .line 70
    .line 71
    iget-object v4, v4, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 72
    .line 73
    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-ne v5, v4, :cond_5

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    if-nez v5, :cond_5

    .line 81
    .line 82
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const-string v5, "Force volume change[mute:%b, volume=%d]"

    .line 95
    .line 96
    invoke-static {v5, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 100
    .line 101
    invoke-virtual {v3, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(IZ)V

    .line 102
    .line 103
    .line 104
    const/4 p1, -0x1

    .line 105
    iput p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    .line 106
    .line 107
    iput-boolean v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    .line 108
    .line 109
    :cond_5
    return v2

    .line 110
    :cond_6
    aget-byte p1, v0, v1

    .line 111
    .line 112
    and-int/lit16 p1, p1, 0xff

    .line 113
    .line 114
    const/16 v0, 0x44

    .line 115
    .line 116
    if-ne p1, v0, :cond_7

    .line 117
    .line 118
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 119
    .line 120
    .line 121
    move v1, v2

    .line 122
    :cond_7
    :goto_2
    return v1
.end method

.method public final sendVolumeKeyPressed()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget-boolean v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/16 v2, 0x41

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v2, 0x42

    .line 14
    .line 15
    :goto_0
    and-int/lit16 v2, v2, 0xff

    .line 16
    .line 17
    int-to-byte v2, v2

    .line 18
    new-array v3, v0, [B

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-byte v2, v3, v4

    .line 22
    .line 23
    const/16 v2, 0x44

    .line 24
    .line 25
    iget v4, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    .line 26
    .line 27
    invoke-static {v1, v4, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 33
    .line 34
    invoke-virtual {v3, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 35
    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    .line 38
    .line 39
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 8
    .line 9
    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x12c

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
