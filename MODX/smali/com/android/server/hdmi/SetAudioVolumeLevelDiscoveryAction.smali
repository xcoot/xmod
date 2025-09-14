.class public final Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mTargetAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILcom/android/server/hdmi/HdmiCecLocalDevice$3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 4
    iput p2, p0, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;->mTargetAddress:I

    .line 6
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 7
    iget v0, p0, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;->mTargetAddress:I

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    const/4 p1, 0x5

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures;->toBuilder()Landroid/hardware/hdmi/DeviceFeatures$Builder;

    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v0, v2}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setSetAudioVolumeLevelSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 56
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
    if-eqz v0, :cond_1

    .line 12
    return v1

    .line 13
    :cond_1
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 15
    array-length v3, v0

    .line 16
    const/4 v4, 0x2

    .line 17
    if-ge v3, v4, :cond_2

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    aget-byte v0, v0, v1

    .line 22
    and-int/lit16 v0, v0, 0xff

    .line 24
    const/16 v3, 0x73

    .line 26
    if-ne v0, v3, :cond_3

    .line 28
    iget v0, p0, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;->mTargetAddress:I

    .line 30
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 32
    if-ne p1, v0, :cond_3

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 37
    move v1, v2

    .line 38
    :cond_3
    :goto_0
    return v1
.end method

.method public final start()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;->mTargetAddress:I

    .line 7
    const/16 v2, 0x7f

    .line 9
    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction$$ExternalSyntheticLambda0;

    .line 15
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;)V

    .line 18
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 23
    return-void
.end method
