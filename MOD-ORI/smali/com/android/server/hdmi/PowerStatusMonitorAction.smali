.class public final Lcom/android/server/hdmi/PowerStatusMonitorAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPowerStatus:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/SparseIntArray;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus$1()V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/4 p1, 0x0

    .line 15
    move v0, p1

    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ge v0, v2, :cond_2

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, -0x1

    .line 31
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 40
    .line 41
    .line 42
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 43
    .line 44
    :goto_1
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_1

    .line 6
    .line 7
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 8
    .line 9
    const/16 v3, 0x90

    .line 10
    .line 11
    if-ne v0, v3, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    iget v3, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 16
    .line 17
    const/4 v4, -0x2

    .line 18
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v0, v4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 26
    .line 27
    aget-byte p1, p1, v1

    .line 28
    .line 29
    and-int/lit16 p1, p1, 0xff

    .line 30
    .line 31
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    .line 32
    .line 33
    .line 34
    move v1, v2

    .line 35
    :cond_1
    :goto_0
    return v1
.end method

.method public final queryPowerStatus$1()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceInfoList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 14
    .line 15
    .line 16
    check-cast v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-object v4, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 27
    .line 28
    const/4 v5, 0x6

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-lt v4, v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ge v4, v5, :cond_0

    .line 48
    .line 49
    :cond_1
    iget-object v4, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-lt v2, v5, :cond_4

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-ge v2, v5, :cond_3

    .line 90
    .line 91
    :cond_4
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    const/16 v3, 0x8f

    .line 100
    .line 101
    invoke-static {v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    new-instance v3, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;

    .line 106
    .line 107
    invoke-direct {v3, p0, v1}, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;-><init>(Lcom/android/server/hdmi/PowerStatusMonitorAction;I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 111
    .line 112
    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    const/4 v0, 0x1

    .line 117
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 118
    .line 119
    const/4 v1, 0x2

    .line 120
    const v2, 0xea60

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 124
    .line 125
    .line 126
    const/16 v1, 0x1388

    .line 127
    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final start()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updatePowerStatus(IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDevicePowerStatus(II)V

    .line 8
    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
