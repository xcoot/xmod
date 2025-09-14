.class public final Lcom/android/server/hdmi/SetArcTransmissionStateAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAvrAddress:I

.field public final mEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    const/4 p1, 0x5

    .line 16
    invoke-static {p2, p1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 22
    :cond_0
    const-string p1, "SetArcTransmissionStateAction"

    .line 24
    const-string v0, "Device type mismatch, stop the action."

    .line 26
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 33
    :cond_1
    iput p2, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    .line 35
    iput-boolean p3, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mEnabled:Z

    .line 37
    return-void
.end method


# virtual methods
.method public final disableArc()V
    .locals 3

    .line 1
    const-string v0, "SetArcTransmissionStateAction"

    .line 3
    const-string v1, "Disabling ARC"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 10
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 12
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableArc()V

    .line 15
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 18
    move-result v0

    .line 19
    const/16 v1, 0xc2

    .line 21
    iget v2, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    .line 23
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 30
    return-void
.end method

.method public final handleTimerEvent(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    if-ne v0, p1, :cond_1

    .line 5
    const/4 p1, 0x1

    .line 6
    if-eq v0, p1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 12
    :cond_1
    :goto_0
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3

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
    if-nez v0, :cond_1

    .line 12
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 14
    aget-byte p1, p1, v1

    .line 16
    and-int/lit16 p1, p1, 0xff

    .line 18
    const/16 v0, 0xc1

    .line 20
    if-ne p1, v0, :cond_1

    .line 22
    const-string p1, "Feature aborted for <Report Arc Initiated>"

    .line 24
    new-array v0, v1, [Ljava/lang/Object;

    .line 26
    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->disableArc()V

    .line 32
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 35
    return v2

    .line 36
    :cond_1
    return v1
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mEnabled:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/server/hdmi/RequestSadAction;

    .line 7
    new-instance v1, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;

    .line 9
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;-><init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V

    .line 12
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/RequestSadAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->disableArc()V

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 28
    :goto_0
    return-void
.end method
