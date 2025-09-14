.class public final Lcom/android/server/hdmi/DevicePowerStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mRetriesOnTimeout:I

.field public final mTargetAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mRetriesOnTimeout:I

    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    .line 10
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_2

    .line 9
    iget p1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mRetriesOnTimeout:I

    .line 11
    if-lez p1, :cond_1

    .line 13
    sub-int/2addr p1, v0

    .line 14
    iput p1, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mRetriesOnTimeout:I

    .line 16
    invoke-virtual {p0}, Lcom/android/server/hdmi/DevicePowerStatusAction;->start()V

    .line 19
    return-void

    .line 20
    :cond_1
    const/4 p1, -0x1

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 24
    :cond_2
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_1

    .line 7
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 9
    iget v3, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    .line 11
    if-eq v3, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v0, 0x90

    .line 16
    iget v3, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 18
    if-ne v3, v0, :cond_1

    .line 20
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 22
    aget-byte p1, p1, v1

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 27
    return v2

    .line 28
    :cond_1
    :goto_0
    return v1
.end method

.method public final start()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/android/server/hdmi/DevicePowerStatusAction;->mTargetAddress:I

    .line 11
    const/4 v3, 0x6

    .line 12
    if-lt v1, v3, :cond_0

    .line 14
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 16
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    .line 25
    move-result v1

    .line 26
    if-lt v1, v3, :cond_0

    .line 28
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    .line 31
    move-result v0

    .line 32
    const/4 v1, -0x1

    .line 33
    if-eq v0, v1, :cond_0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 42
    move-result v0

    .line 43
    const/16 v1, 0x8f

    .line 45
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lcom/android/server/hdmi/DevicePowerStatusAction$$ExternalSyntheticLambda0;

    .line 51
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DevicePowerStatusAction$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/DevicePowerStatusAction;)V

    .line 54
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 56
    invoke-virtual {v2, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 59
    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 62
    const/16 v1, 0x7d0

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 67
    return-void
.end method
