.class public final Lcom/android/server/hdmi/RequestArcTerminationAction;
.super Lcom/android/server/hdmi/RequestArcAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_3

    .line 7
    const-string v0, "RequestArcTerminationAction"

    .line 9
    iget v3, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    .line 11
    invoke-static {p1, v3, v0}, Lcom/android/server/hdmi/HdmiUtils;->checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 20
    if-eqz v0, :cond_2

    .line 22
    const/16 p1, 0xc5

    .line 24
    if-eq v0, p1, :cond_1

    .line 26
    return v1

    .line 27
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 30
    return v1

    .line 31
    :cond_2
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 33
    aget-byte p1, p1, v1

    .line 35
    and-int/lit16 p1, p1, 0xff

    .line 37
    const/16 v0, 0xc4

    .line 39
    if-ne p1, v0, :cond_3

    .line 41
    new-instance p1, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 43
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 45
    invoke-direct {p1, v0, v3, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 48
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 51
    const/4 p1, 0x3

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 55
    return v2

    .line 56
    :cond_3
    :goto_0
    return v1
.end method

.method public final start()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 4
    const/16 v1, 0x7d0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 12
    move-result v0

    .line 13
    const/16 v1, 0xc4

    .line 15
    iget v2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    .line 17
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/android/server/hdmi/RequestArcTerminationAction$1;

    .line 23
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/RequestArcTerminationAction$1;-><init>(Lcom/android/server/hdmi/RequestArcTerminationAction;)V

    .line 26
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 31
    return-void
.end method
