.class public final Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final STATE_WAIT_FOR_ACTIVE_SOURCE_MESSAGE_AFTER_ROUTING_CHANGE:I = 0x4

.field private static final STATE_WAIT_FOR_ACTIVE_SOURCE_MESSAGE_AFTER_SET_STREAM_PATH:I = 0x5

.field static final STATE_WAIT_FOR_DEVICE_POWER_ON:I = 0x3

.field static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1


# instance fields
.field public final mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final mIsCec20:Z

.field public mPowerStatusCounter:I

.field public final mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/16 p3, 0x8f

    .line 18
    .line 19
    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 24
    .line 25
    iput-boolean p4, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mIsCec20:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    const-string p0, "DeviceSelectActionFromPlayback"

    .line 6
    .line 7
    const-string p1, "Timer in a wrong state. Ignored."

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/16 p1, 0x7d0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq v0, v1, :cond_4

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    if-eq v0, v2, :cond_3

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    const/4 v3, 0x5

    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    if-eq v0, v3, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const/16 v2, 0xf

    .line 47
    .line 48
    const/16 v4, 0x86

    .line 49
    .line 50
    invoke-static {v0, v2, v4, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 56
    .line 57
    invoke-virtual {v2, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 58
    .line 59
    .line 60
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 61
    .line 62
    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    .line 67
    .line 68
    add-int/2addr v0, v1

    .line 69
    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 72
    .line 73
    new-instance v2, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback$1;

    .line 74
    .line 75
    invoke-direct {v2, p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback$1;-><init>(Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 79
    .line 80
    .line 81
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 82
    .line 83
    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    .line 88
    .line 89
    .line 90
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 91
    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5

    .line 1
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const/16 v0, 0x82

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iget v3, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 17
    .line 18
    if-ne v3, v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 25
    .line 26
    if-ne v0, v1, :cond_9

    .line 27
    .line 28
    const/16 v0, 0x90

    .line 29
    .line 30
    if-ne v3, v0, :cond_9

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 33
    .line 34
    aget-byte p1, p1, v2

    .line 35
    .line 36
    if-eqz p1, :cond_8

    .line 37
    .line 38
    const/16 v0, 0x1388

    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    if-eq p1, v1, :cond_6

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    if-eq p1, v4, :cond_4

    .line 45
    .line 46
    if-eq p1, v3, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    .line 50
    .line 51
    const/4 v2, 0x4

    .line 52
    if-ge p1, v2, :cond_3

    .line 53
    .line 54
    iput v4, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 55
    .line 56
    invoke-virtual {p0, v4, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    .line 61
    .line 62
    .line 63
    :goto_0
    move v2, v1

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    .line 66
    .line 67
    if-ge p1, v4, :cond_5

    .line 68
    .line 69
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 70
    .line 71
    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_6
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    .line 80
    .line 81
    if-nez p1, :cond_7

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->sendRoutingChange()V

    .line 84
    .line 85
    .line 86
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 87
    .line 88
    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_9
    :goto_1
    return v2
.end method

.method public final selectDevice()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->sendRoutingChange()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 6
    .line 7
    const/16 v1, 0x7d0

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final sendRoutingChange()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 6
    .line 7
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final start()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->sendRoutingChange()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mIsCec20:Z

    .line 7
    .line 8
    const/16 v2, 0x7d0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback$1;-><init>(Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v3, -0x1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v1, v3

    .line 46
    :goto_0
    if-ne v1, v3, :cond_2

    .line 47
    .line 48
    new-instance v1, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback$1;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback$1;-><init>(Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    if-nez v1, :cond_3

    .line 58
    .line 59
    const/4 v0, 0x4

    .line 60
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 61
    .line 62
    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 67
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 68
    .line 69
    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
