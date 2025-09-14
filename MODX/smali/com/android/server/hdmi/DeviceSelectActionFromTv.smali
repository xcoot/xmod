.class public final Lcom/android/server/hdmi/DeviceSelectActionFromTv;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final STATE_WAIT_FOR_DEVICE_POWER_ON:I = 0x3

.field static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1


# instance fields
.field public final mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final mIsCec20:Z

.field public mPowerStatusCounter:I

.field public final mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    .line 7
    iput-object p2, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 12
    move-result p1

    .line 13
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 16
    move-result p2

    .line 17
    const/16 p3, 0x8f

    .line 19
    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 25
    iput-boolean p4, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mIsCec20:Z

    .line 27
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    const-string p0, "DeviceSelect"

    .line 7
    const-string p1, "Timer in a wrong state. Ignored."

    .line 9
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    if-eq v0, p1, :cond_2

    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_1

    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    .line 25
    add-int/2addr v0, p1

    .line 26
    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    .line 28
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 30
    new-instance v1, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;

    .line 32
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;-><init>(Lcom/android/server/hdmi/DeviceSelectActionFromTv;)V

    .line 35
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 38
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 40
    const/16 v0, 0x7d0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 48
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 50
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 52
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 58
    const/4 p1, 0x6

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 62
    return-void

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice$1()V

    .line 66
    :goto_0
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5

    .line 1
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 5
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    return v2

    .line 13
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq v0, v1, :cond_1

    .line 18
    return v2

    .line 19
    :cond_1
    const/16 v0, 0x90

    .line 21
    iget v3, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 23
    if-ne v3, v0, :cond_a

    .line 25
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 27
    aget-byte p1, p1, v2

    .line 29
    if-eqz p1, :cond_9

    .line 31
    const/16 v0, 0x1388

    .line 33
    const/4 v3, 0x3

    .line 34
    if-eq p1, v1, :cond_6

    .line 36
    const/4 v4, 0x2

    .line 37
    if-eq p1, v4, :cond_4

    .line 39
    if-eq p1, v3, :cond_2

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    .line 44
    const/4 v2, 0x4

    .line 45
    if-ge p1, v2, :cond_3

    .line 47
    iput v4, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 49
    invoke-virtual {p0, v4, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice$1()V

    .line 56
    :goto_0
    move v2, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    .line 60
    const/16 v2, 0x14

    .line 62
    if-ge p1, v2, :cond_5

    .line 64
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 66
    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 69
    goto :goto_0

    .line 70
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice$1()V

    .line 73
    goto :goto_0

    .line 74
    :cond_6
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mPowerStatusCounter:I

    .line 76
    if-nez p1, :cond_8

    .line 78
    iget-boolean p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mIsCec20:Z

    .line 80
    if-nez p1, :cond_7

    .line 82
    iget-object p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 84
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 87
    move-result p1

    .line 88
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 90
    const/16 v4, 0x40

    .line 92
    invoke-virtual {v2, p1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    .line 95
    iget-object p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 97
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 100
    move-result p1

    .line 101
    const/16 v4, 0x6d

    .line 103
    invoke-virtual {v2, p1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    .line 106
    :cond_7
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 108
    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 111
    goto :goto_0

    .line 112
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice$1()V

    .line 115
    goto :goto_0

    .line 116
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->selectDevice$1()V

    .line 119
    goto :goto_0

    .line 120
    :cond_a
    :goto_1
    return v2
.end method

.method public final selectDevice$1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mIsCec20:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->sendSetStreamPath$1()V

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 12
    return-void
.end method

.method public final sendSetStreamPath$1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 5
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 7
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 14
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 16
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 23
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 29
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    .line 36
    move-result-object v1

    .line 37
    const/16 v2, 0xf

    .line 39
    const/16 v3, 0x86

    .line 41
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 51
    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->sendSetStreamPath$1()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 6
    iget-boolean v1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mIsCec20:Z

    .line 8
    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;

    .line 12
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;-><init>(Lcom/android/server/hdmi/DeviceSelectActionFromTv;)V

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 21
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 23
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 25
    iget-object v2, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 27
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 34
    move-result-object v1

    .line 35
    const/4 v2, -0x1

    .line 36
    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    .line 41
    move-result v1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v1, v2

    .line 44
    :goto_0
    if-ne v1, v2, :cond_2

    .line 46
    new-instance v1, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;

    .line 48
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;-><init>(Lcom/android/server/hdmi/DeviceSelectActionFromTv;)V

    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    if-nez v1, :cond_3

    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 61
    return-void

    .line 62
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 65
    const/16 v1, 0x7d0

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 70
    return-void
.end method
