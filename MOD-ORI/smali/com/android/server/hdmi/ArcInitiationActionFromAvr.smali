.class public final Lcom/android/server/hdmi/ArcInitiationActionFromAvr;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


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
    const/4 p1, 0x1

    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    const-string/jumbo v1, "handleInitiateArcTimeout"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    const/16 p1, 0xc1

    .line 15
    .line 16
    if-eq v0, p1, :cond_2

    .line 17
    .line 18
    const/16 p1, 0xc2

    .line 19
    .line 20
    if-eq v0, p1, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    const/4 p1, 0x2

    .line 33
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_3
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 40
    .line 41
    aget-byte p1, p1, v1

    .line 42
    .line 43
    and-int/lit16 p1, p1, 0xff

    .line 44
    .line 45
    const/16 v0, 0xc0

    .line 46
    .line 47
    if-ne p1, v0, :cond_4

    .line 48
    .line 49
    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :cond_4
    return v1
.end method

.method public final start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 7
    .line 8
    .line 9
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 10
    .line 11
    const/16 v0, 0x3e8

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0xc0

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/android/server/hdmi/ArcInitiationActionFromAvr$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/ArcInitiationActionFromAvr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/ArcInitiationActionFromAvr;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
