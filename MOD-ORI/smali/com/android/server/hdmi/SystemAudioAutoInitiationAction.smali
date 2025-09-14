.class public final Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final RETRIES_ON_TIMEOUT:I = 0x1


# instance fields
.field public final mAvrAddress:I

.field public mRetriesOnTimeOut:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mRetriesOnTimeOut:I

    .line 6
    .line 7
    iput p2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final handleSystemAudioModeStatusTimeout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 5
    .line 6
    const-class v2, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-class v2, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    move v1, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v3

    .line 27
    :goto_0
    if-nez v1, :cond_1

    .line 28
    .line 29
    new-array v0, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    const-string v1, "Cannot change system audio mode in auto initiation action."

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    .line 41
    .line 42
    move-object v2, v0

    .line 43
    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    const/4 v5, 0x0

    .line 50
    iget v6, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    .line 51
    .line 52
    invoke-direct {v1, v2, v6, v5, v3}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

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
    const/4 p1, 0x1

    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mRetriesOnTimeOut:I

    .line 11
    .line 12
    if-lez v1, :cond_2

    .line 13
    .line 14
    sub-int/2addr v1, p1

    .line 15
    iput v1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mRetriesOnTimeOut:I

    .line 16
    .line 17
    const/16 p1, 0x7d0

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/16 v0, 0x7d

    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    .line 29
    .line 30
    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->handleSystemAudioModeStatusTimeout()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_3

    .line 6
    .line 7
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 8
    .line 9
    iget v3, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    .line 10
    .line 11
    if-eq v3, v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    const/16 v0, 0x7e

    .line 15
    .line 16
    iget v4, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 17
    .line 18
    if-ne v4, v0, :cond_3

    .line 19
    .line 20
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 25
    .line 26
    move-object v4, v0

    .line 27
    check-cast v4, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 28
    .line 29
    const-class v5, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_2

    .line 36
    .line 37
    const-class v5, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    move-object v1, v0

    .line 46
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eq p1, v4, :cond_1

    .line 53
    .line 54
    new-instance p1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-direct {p1, v1, v3, v5, v4}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode$1(Z)V

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    .line 72
    .line 73
    const-string v0, "Cannot change system audio mode in auto initiation action."

    .line 74
    .line 75
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 79
    .line 80
    .line 81
    :goto_1
    return v2

    .line 82
    :cond_3
    :goto_2
    return v1
.end method

.method public final start()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    .line 4
    const/16 v1, 0x7d0

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x7d

    .line 14
    .line 15
    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->mAvrAddress:I

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
