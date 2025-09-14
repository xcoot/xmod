.class public final Lcom/android/server/hdmi/ArcTerminationActionFromAvr;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


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
    const/4 p1, 0x1

    .line 7
    if-eq v0, p1, :cond_1

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 12
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 18
    const-string/jumbo v0, "handleTerminateArcTimeout"

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 29
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
    if-eq v0, v2, :cond_0

    .line 7
    return v1

    .line 8
    :cond_0
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 10
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 12
    const/4 v4, 0x2

    .line 13
    if-eqz v0, :cond_2

    .line 15
    const/16 p1, 0xc2

    .line 17
    if-eq v0, p1, :cond_1

    .line 19
    return v1

    .line 20
    :cond_1
    iput v4, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 22
    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 24
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->processArcTermination()V

    .line 27
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 30
    return v2

    .line 31
    :cond_2
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 33
    aget-byte p1, p1, v1

    .line 35
    and-int/lit16 p1, p1, 0xff

    .line 37
    const/16 v0, 0xc5

    .line 39
    if-ne p1, v0, :cond_3

    .line 41
    iput v4, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 43
    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 45
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->processArcTermination()V

    .line 48
    const/4 p1, 0x3

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 52
    return v2

    .line 53
    :cond_3
    return v1
.end method

.method public final start()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 4
    const/16 v1, 0x3e8

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 12
    move-result v0

    .line 13
    const/16 v1, 0xc5

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/android/server/hdmi/ArcTerminationActionFromAvr$$ExternalSyntheticLambda0;

    .line 22
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/ArcTerminationActionFromAvr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/ArcTerminationActionFromAvr;)V

    .line 25
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 30
    return-void
.end method
