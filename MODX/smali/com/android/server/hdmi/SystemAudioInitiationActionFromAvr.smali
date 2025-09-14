.class public final Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final MAX_RETRY_COUNT:I = 0x5


# instance fields
.field public mSendRequestActiveSourceRetryCount:I

.field public mSendSetSystemAudioModeRetryCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendRequestActiveSourceRetryCount:I

    .line 7
    iput p1, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendSetSystemAudioModeRetryCount:I

    .line 9
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 6

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
    goto :goto_1

    .line 10
    :cond_1
    const/4 v0, 0x0

    .line 11
    new-array v1, v0, [Ljava/lang/Object;

    .line 13
    const-string v2, "Cannot get active source."

    .line 15
    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 23
    iget-object v3, v2, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 25
    iget-boolean v4, v3, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 27
    if-eqz v4, :cond_2

    .line 29
    const-string p0, "SystemAudioInitiationActionFromAvr"

    .line 31
    const-string p1, "Device is going to sleep, avoid to wake it up."

    .line 33
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_4

    .line 43
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 50
    move-result v3

    .line 51
    const-string v4, "SystemAudioInitiationActionFromAvr#handleActiveSourceTimeout()"

    .line 53
    const/16 v5, 0xf

    .line 55
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 57
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSourceFromOneDeviceType(IILjava/lang/String;)V

    .line 60
    const/4 v2, 0x2

    .line 61
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 63
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 65
    new-instance v2, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;

    .line 67
    invoke-direct {v2, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;)V

    .line 70
    iget-object v3, v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 72
    if-nez v3, :cond_3

    .line 74
    new-instance v3, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;

    .line 76
    invoke-direct {v3, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 79
    iput v0, v3, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    .line 81
    iput-object v2, v3, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    .line 83
    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    move-result v0

    .line 91
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;->onResult(Z)V

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 98
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 101
    :goto_1
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 3
    const/16 v1, 0x82

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_0

    .line 8
    return v2

    .line 9
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 14
    return v2

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 17
    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 19
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 22
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 24
    move-object v3, v0

    .line 25
    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 27
    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 30
    const/4 p1, 0x2

    .line 31
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 33
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 35
    new-instance p1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;

    .line 37
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;)V

    .line 40
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 42
    if-nez p0, :cond_2

    .line 44
    new-instance p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;

    .line 46
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 49
    iput v2, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    .line 51
    iput-object p1, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    .line 53
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    move-result p0

    .line 61
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;->onResult(Z)V

    .line 64
    :goto_0
    return v1
.end method

.method public final start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 6
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 11
    move-result-object v1

    .line 12
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 14
    const v2, 0xffff

    .line 17
    if-ne v1, v2, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 22
    const/16 v1, 0x7d0

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 27
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 30
    move-result v0

    .line 31
    const/16 v1, 0xf

    .line 33
    const/16 v2, 0x85

    .line 35
    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;

    .line 41
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;)V

    .line 44
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x2

    .line 51
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 53
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 55
    new-instance v1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;

    .line 57
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;)V

    .line 60
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvSystemAudioModeSupport:Ljava/lang/Boolean;

    .line 62
    if-nez p0, :cond_1

    .line 64
    new-instance p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;

    .line 66
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 69
    const/4 v2, 0x0

    .line 70
    iput v2, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mSendSetSystemAudioModeRetryCount:I

    .line 72
    iput-object v1, p0, Lcom/android/server/hdmi/DetectTvSystemAudioModeSupportAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;

    .line 74
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    move-result p0

    .line 82
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;->onResult(Z)V

    .line 85
    :goto_0
    return-void
.end method
