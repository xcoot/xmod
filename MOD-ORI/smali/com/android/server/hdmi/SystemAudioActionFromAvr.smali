.class public final Lcom/android/server/hdmi/SystemAudioActionFromAvr;
.super Lcom/android/server/hdmi/SystemAudioAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final start()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-class v2, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 6
    .line 7
    invoke-virtual {v3, v2, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 8
    .line 9
    .line 10
    const-class v2, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    .line 11
    .line 12
    invoke-virtual {v3, v2, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    .line 16
    .line 17
    move-object v4, v3

    .line 18
    check-cast v4, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-ne v2, v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, v4, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/16 v3, 0x72

    .line 44
    .line 45
    int-to-byte v3, v3

    .line 46
    const/4 v5, 0x4

    .line 47
    int-to-byte v5, v5

    .line 48
    const/4 v6, 0x2

    .line 49
    new-array v6, v6, [B

    .line 50
    .line 51
    aput-byte v3, v6, v1

    .line 52
    .line 53
    aput-byte v5, v6, v0

    .line 54
    .line 55
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    .line 56
    .line 57
    invoke-static {v2, v0, v1, v6}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 62
    .line 63
    invoke-virtual {v2, v0, v4}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 64
    .line 65
    .line 66
    iput-boolean v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequest()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-class v2, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    .line 73
    .line 74
    invoke-virtual {v3, v2, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 75
    .line 76
    .line 77
    iget-boolean v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-void
.end method
