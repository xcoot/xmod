.class public final Lcom/android/server/hdmi/RequestActiveSourceAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mSendRetryCount:I


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 7

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
    const/16 p1, 0x85

    .line 7
    .line 8
    const/16 v1, 0xf

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/16 v3, 0x7d0

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x2

    .line 17
    if-eq v0, v2, :cond_3

    .line 18
    .line 19
    if-eq v0, v6, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget v0, p0, Lcom/android/server/hdmi/RequestActiveSourceAction;->mSendRetryCount:I

    .line 23
    .line 24
    add-int/lit8 v6, v0, 0x1

    .line 25
    .line 26
    iput v6, p0, Lcom/android/server/hdmi/RequestActiveSourceAction;->mSendRetryCount:I

    .line 27
    .line 28
    if-ge v0, v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v4, p1, v5}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 39
    .line 40
    .line 41
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 42
    .line 43
    invoke-virtual {p0, p1, v3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :cond_3
    iput v6, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v4, p1, v5}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 62
    .line 63
    .line 64
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 65
    .line 66
    invoke-virtual {p0, p1, v3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2

    .line 1
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 2
    .line 3
    const/16 v0, 0x82

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return v1
.end method

.method public final start()V
    .locals 2

    .line 1
    const-string v0, "RequestActiveSourceAction"

    .line 2
    .line 3
    const-string v1, "RequestActiveSourceAction started."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 10
    .line 11
    const/16 v1, 0xfa0

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
