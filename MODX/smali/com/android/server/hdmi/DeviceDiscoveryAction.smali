.class public final Lcom/android/server/hdmi/DeviceDiscoveryAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

.field public final mDevices:Ljava/util/ArrayList;

.field public final mIsTvDevice:Z

.field public mProcessedDeviceCount:I

.field public mTimeoutRetry:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 14
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 16
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 18
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 20
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 23
    move-result p1

    .line 24
    iput-boolean p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    .line 26
    iput-object p2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    .line 28
    return-void
.end method


# virtual methods
.method public final checkAndProceedStage()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    .line 12
    return-void

    .line 13
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 15
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v1

    .line 21
    if-ne v0, v1, :cond_5

    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 26
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 28
    const/4 v2, 0x2

    .line 29
    const/4 v3, 0x3

    .line 30
    const-string v4, "DeviceDiscoveryAction"

    .line 32
    if-eq v1, v2, :cond_4

    .line 34
    const/4 v2, 0x4

    .line 35
    if-eq v1, v3, :cond_3

    .line 37
    const/4 v3, 0x6

    .line 38
    if-eq v1, v2, :cond_2

    .line 40
    if-eq v1, v3, :cond_1

    .line 42
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    .line 46
    return-void

    .line 47
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    const-string v2, "Start [Power Status Stage]:"

    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 59
    move-result v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 72
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 74
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 77
    return-void

    .line 78
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    const-string v3, "Start [Vendor Id Stage]:"

    .line 82
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 90
    move-result v3

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 103
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 105
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 108
    return-void

    .line 109
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    const-string v2, "Start [Osd Name Stage]:"

    .line 113
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 121
    move-result v2

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v1

    .line 129
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 134
    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 136
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 139
    return-void

    .line 140
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendQueryCommand()V

    .line 143
    return-void
.end method

.method public final handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ge v0, v1, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 20
    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 28
    iget v1, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    .line 30
    iget v3, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 32
    if-eq v1, v3, :cond_1

    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    const-string v1, "Unmatched address[expected:"

    .line 38
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget v0, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v0, ", actual:"

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 53
    const-string v0, "DeviceDiscoveryAction"

    .line 55
    invoke-static {p0, p1, v0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 58
    return-void

    .line 59
    :cond_1
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 61
    if-eqz v1, :cond_2

    .line 63
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 65
    aget-byte p1, p1, v2

    .line 67
    and-int/lit16 p1, p1, 0xff

    .line 69
    iput p1, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPowerStatus:I

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 74
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 77
    return-void
.end method

.method public final handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 19
    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 27
    iget v1, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    .line 29
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 31
    const-string v3, "DeviceDiscoveryAction"

    .line 33
    if-eq v1, v2, :cond_1

    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "Unmatched address[expected:"

    .line 39
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    iget v0, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v0, ", actual:"

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 54
    invoke-static {p0, p1, v3}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 57
    return-void

    .line 58
    :cond_1
    const-string v1, ""

    .line 60
    :try_start_0
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 62
    if-eqz v2, :cond_2

    .line 64
    new-instance v2, Ljava/lang/String;

    .line 66
    iget-object v4, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 68
    const-string v5, "US-ASCII"

    .line 70
    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    move-object v1, v2

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    const-string v4, "Failed to decode display name: "

    .line 79
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    :goto_1
    iput-object v1, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDisplayName:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 101
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 104
    return-void
.end method

.method public final handleTimerEvent(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    if-eqz v0, :cond_4

    .line 5
    if-eq v0, p1, :cond_0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 p1, 0x5

    .line 9
    if-ne v0, p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPhysicalAddressStage()V

    .line 14
    return-void

    .line 15
    :cond_1
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 19
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 21
    if-ge v0, p1, :cond_2

    .line 23
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->sendQueryCommand()V

    .line 26
    return-void

    .line 27
    :cond_2
    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    const-string v0, "Timeout[State="

    .line 34
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v0, ", Processed="

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 49
    const-string v1, "DeviceDiscoveryAction"

    .line 51
    invoke-static {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 54
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 56
    const/4 v0, 0x6

    .line 57
    if-eq p1, v0, :cond_3

    .line 59
    const/4 v0, 0x3

    .line 60
    if-eq p1, v0, :cond_3

    .line 62
    iget p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 64
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 76
    :cond_4
    :goto_1
    return-void
.end method

.method public final handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 19
    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 27
    iget v1, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    .line 29
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 31
    if-eq v1, v2, :cond_1

    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "Unmatched address[expected:"

    .line 37
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    iget v0, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, ", actual:"

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 52
    const-string v0, "DeviceDiscoveryAction"

    .line 54
    invoke-static {p0, p1, v0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 57
    return-void

    .line 58
    :cond_1
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 60
    if-eqz v1, :cond_2

    .line 62
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 64
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    .line 67
    move-result p1

    .line 68
    iput p1, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mVendorId:I

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 73
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 76
    return-void
.end method

.method public final increaseProcessedDeviceCount()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mTimeoutRetry:I

    .line 10
    return-void
.end method

.method public final mayProcessMessageIfCached(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 6
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/util/SparseArray;

    .line 16
    if-nez p1, :cond_0

    .line 18
    const/4 p1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 26
    :goto_0
    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eq v0, v1, :cond_9

    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_6

    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq v0, v1, :cond_3

    .line 14
    const/4 v1, 0x6

    .line 15
    if-eq v0, v1, :cond_0

    .line 17
    return v3

    .line 18
    :cond_0
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 20
    const/16 v1, 0x90

    .line 22
    if-ne v0, v1, :cond_1

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 27
    return v2

    .line 28
    :cond_1
    if-nez v0, :cond_2

    .line 30
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 32
    aget-byte v0, v0, v3

    .line 34
    and-int/lit16 v0, v0, 0xff

    .line 36
    if-ne v0, v1, :cond_2

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 41
    return v2

    .line 42
    :cond_2
    return v3

    .line 43
    :cond_3
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 45
    const/16 v1, 0x87

    .line 47
    if-ne v0, v1, :cond_4

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 52
    return v2

    .line 53
    :cond_4
    if-nez v0, :cond_5

    .line 55
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 57
    aget-byte v0, v0, v3

    .line 59
    and-int/lit16 v0, v0, 0xff

    .line 61
    const/16 v1, 0x8c

    .line 63
    if-ne v0, v1, :cond_5

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleVendorId(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 68
    return v2

    .line 69
    :cond_5
    return v3

    .line 70
    :cond_6
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 72
    const/16 v1, 0x47

    .line 74
    if-ne v0, v1, :cond_7

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 79
    return v2

    .line 80
    :cond_7
    if-nez v0, :cond_8

    .line 82
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 84
    aget-byte v0, v0, v3

    .line 86
    and-int/lit16 v0, v0, 0xff

    .line 88
    const/16 v1, 0x46

    .line 90
    if-ne v0, v1, :cond_8

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->handleSetOsdName(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 95
    return v2

    .line 96
    :cond_8
    return v3

    .line 97
    :cond_9
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 99
    const/16 v4, 0x84

    .line 101
    if-ne v0, v4, :cond_e

    .line 103
    iget v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 105
    iget-object v4, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 110
    move-result v4

    .line 111
    if-ge v0, v4, :cond_a

    .line 113
    move v3, v2

    .line 114
    :cond_a
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 119
    iget v3, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 121
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 127
    iget v3, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    .line 129
    iget v4, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 131
    if-eq v3, v4, :cond_b

    .line 133
    const-string p0, "Unmatched address[expected:"

    .line 135
    const-string p1, ", actual:"

    .line 137
    const-string v0, "DeviceDiscoveryAction"

    .line 139
    invoke-static {v3, v4, p0, p1, v0}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    goto :goto_1

    .line 143
    :cond_b
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 145
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    .line 148
    move-result v4

    .line 149
    iput v4, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPhysicalAddress:I

    .line 151
    iget-boolean v5, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    .line 153
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 155
    if-eqz v5, :cond_c

    .line 157
    move-object v7, v6

    .line 158
    check-cast v7, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 160
    iget-object v7, v7, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 162
    iget-object v7, v7, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 164
    invoke-virtual {v7, v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 167
    move-result v4

    .line 168
    goto :goto_0

    .line 169
    :cond_c
    move-object v7, v6

    .line 170
    check-cast v7, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 172
    iget-object v7, v7, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 174
    iget-object v7, v7, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 176
    invoke-virtual {v7, v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 179
    move-result v4

    .line 180
    :goto_0
    iput v4, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPortId:I

    .line 182
    aget-byte p1, p1, v1

    .line 184
    and-int/lit16 p1, p1, 0xff

    .line 186
    iput p1, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDeviceType:I

    .line 188
    const-string v1, ""

    .line 190
    iput-object v1, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDisplayName:Ljava/lang/String;

    .line 192
    if-eqz v5, :cond_d

    .line 194
    iget-object v1, v6, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 196
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 198
    iget v0, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPhysicalAddress:I

    .line 200
    invoke-virtual {v1, v3, p1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecSwitchInfo(III)Z

    .line 203
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->increaseProcessedDeviceCount()V

    .line 206
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 209
    :goto_1
    return v2

    .line 210
    :cond_e
    return v3
.end method

.method public final sendQueryCommand()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 3
    iget v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 11
    iget v0, v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    .line 13
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 15
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 17
    const/4 v3, 0x0

    .line 18
    const/16 v4, 0xf

    .line 20
    const/4 v5, 0x2

    .line 21
    const/16 v6, 0x7d0

    .line 23
    if-eq v1, v5, :cond_a

    .line 25
    const/4 v5, 0x3

    .line 26
    if-eq v1, v5, :cond_7

    .line 28
    const/4 v5, 0x4

    .line 29
    if-eq v1, v5, :cond_4

    .line 31
    const/4 v5, 0x5

    .line 32
    if-eq v1, v5, :cond_3

    .line 34
    const/4 v5, 0x6

    .line 35
    if-eq v1, v5, :cond_0

    .line 37
    return-void

    .line 38
    :cond_0
    if-ltz v0, :cond_2

    .line 40
    if-ge v0, v4, :cond_2

    .line 42
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 44
    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 46
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 49
    const/16 v1, 0x90

    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 61
    move-result v1

    .line 62
    const/16 v4, 0x8f

    .line 64
    invoke-static {v1, v0, v4}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v2, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 71
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 73
    invoke-virtual {p0, v0, v6}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 80
    :goto_0
    return-void

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 83
    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 85
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 88
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 94
    return-void

    .line 95
    :cond_4
    if-ltz v0, :cond_6

    .line 97
    if-ge v0, v4, :cond_6

    .line 99
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 101
    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 103
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 106
    const/16 v1, 0x87

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_5

    .line 114
    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 118
    move-result v1

    .line 119
    const/16 v4, 0x8c

    .line 121
    invoke-static {v1, v0, v4}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v2, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 128
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 130
    invoke-virtual {p0, v0, v6}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 133
    goto :goto_1

    .line 134
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 137
    :goto_1
    return-void

    .line 138
    :cond_7
    if-ltz v0, :cond_9

    .line 140
    if-ge v0, v4, :cond_9

    .line 142
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 144
    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 146
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 149
    const/16 v1, 0x47

    .line 151
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_8

    .line 157
    goto :goto_2

    .line 158
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 161
    move-result v1

    .line 162
    const/16 v4, 0x46

    .line 164
    invoke-static {v1, v0, v4}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v2, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 171
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 173
    invoke-virtual {p0, v0, v6}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 176
    goto :goto_2

    .line 177
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 180
    :goto_2
    return-void

    .line 181
    :cond_a
    if-ltz v0, :cond_c

    .line 183
    if-ge v0, v4, :cond_c

    .line 185
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 187
    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 189
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 192
    const/16 v1, 0x84

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mayProcessMessageIfCached(II)Z

    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_b

    .line 200
    goto :goto_3

    .line 201
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 204
    move-result v1

    .line 205
    const/16 v4, 0x83

    .line 207
    invoke-static {v1, v0, v4}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v2, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 214
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 216
    invoke-virtual {p0, v0, v6}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 219
    goto :goto_3

    .line 220
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 223
    :goto_3
    return-void
.end method

.method public final start()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 9
    new-instance v0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;

    .line 11
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;-><init>(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    .line 14
    const-wide/16 v1, 0x0

    .line 16
    const v3, 0x20001

    .line 19
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;IJ)V

    .line 22
    return-void
.end method

.method public final startPhysicalAddressStage()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Start [Physical Address Stage]:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "DeviceDiscoveryAction"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mProcessedDeviceCount:I

    .line 29
    const/4 v0, 0x2

    .line 30
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 32
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->checkAndProceedStage()V

    .line 35
    return-void
.end method

.method public final wrapUpAndFinish()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "---------Wrap up Device Discovery:["

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "]---------"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "DeviceDiscoveryAction"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iget-object v2, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v2

    .line 42
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-static {}, Landroid/hardware/hdmi/HdmiDeviceInfo;->cecDeviceBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 60
    move-result-object v4

    .line 61
    iget v5, v3, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mLogicalAddress:I

    .line 63
    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setLogicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 66
    move-result-object v4

    .line 67
    iget v5, v3, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPhysicalAddress:I

    .line 69
    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 72
    move-result-object v4

    .line 73
    iget v5, v3, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPortId:I

    .line 75
    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 78
    move-result-object v4

    .line 79
    iget v5, v3, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mVendorId:I

    .line 81
    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 84
    move-result-object v4

    .line 85
    iget v5, v3, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDeviceType:I

    .line 87
    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 90
    move-result-object v4

    .line 91
    iget-object v5, v3, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mDisplayName:Ljava/lang/String;

    .line 93
    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 96
    move-result-object v4

    .line 97
    iget v3, v3, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;->mPowerStatus:I

    .line 99
    invoke-virtual {v4, v3}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDevicePowerStatus(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 106
    move-result-object v3

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    const-string v5, " DeviceInfo: "

    .line 111
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v4

    .line 121
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_0

    .line 128
    :cond_0
    const-string v2, "--------------------------------------------"

    .line 130
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mCallback:Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;

    .line 135
    invoke-interface {v1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;->onDeviceDiscoveryDone(Ljava/util/List;)V

    .line 138
    const/4 v0, 0x1

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 142
    iget-boolean v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mIsTvDevice:Z

    .line 144
    if-eqz v0, :cond_1

    .line 146
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 148
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 150
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 153
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    .line 160
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 162
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 165
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 170
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    move-result-object v0

    .line 174
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_1

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 186
    iget-object v2, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 188
    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 193
    const-string v3, "Processing message:"

    .line 195
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v1

    .line 205
    const/4 v2, 0x0

    .line 206
    new-array v2, v2, [Ljava/lang/Object;

    .line 208
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    goto :goto_1

    .line 212
    :cond_1
    return-void
.end method
