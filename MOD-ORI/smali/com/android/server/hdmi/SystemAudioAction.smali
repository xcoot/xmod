.class public abstract Lcom/android/server/hdmi/SystemAudioAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAvrLogicalAddress:I

.field public mSendRetryCount:I

.field public mTargetAudioStatus:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    .line 6
    .line 7
    const/4 p1, 0x5

    .line 8
    invoke-static {p2, p1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string p1, "SystemAudioAction"

    .line 15
    .line 16
    const-string p3, "Device type mismatch, stop the action."

    .line 17
    .line 18
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput p2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    .line 26
    .line 27
    iput-boolean p4, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 2

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
    const/4 p1, 0x2

    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    return-void

    .line 10
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget v0, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    .line 15
    .line 16
    add-int/lit8 v1, v0, 0x1

    .line 17
    .line 18
    iput v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mSendRetryCount:I

    .line 19
    .line 20
    if-lt v0, p1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequest()V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 28
    new-array v0, p1, [Ljava/lang/Object;

    .line 29
    .line 30
    const-string v1, "[T]:wait for <Set System Audio Mode>."

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 40
    .line 41
    .line 42
    :goto_1
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 7

    .line 1
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    .line 5
    .line 6
    if-eq v0, v2, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    const/4 v0, 0x5

    .line 16
    const/4 v3, 0x1

    .line 17
    iget v4, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 18
    .line 19
    if-nez v4, :cond_2

    .line 20
    .line 21
    iget-object v5, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 22
    .line 23
    aget-byte v5, v5, v1

    .line 24
    .line 25
    and-int/lit16 v5, v5, 0xff

    .line 26
    .line 27
    const/16 v6, 0x70

    .line 28
    .line 29
    if-ne v5, v6, :cond_2

    .line 30
    .line 31
    const-string p1, "Failed to start system audio mode request."

    .line 32
    .line 33
    new-array v2, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {p1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 42
    .line 43
    .line 44
    return v3

    .line 45
    :cond_2
    const/16 v5, 0x72

    .line 46
    .line 47
    if-ne v4, v5, :cond_5

    .line 48
    .line 49
    const-string v4, "SystemAudioAction"

    .line 50
    .line 51
    invoke-static {p1, v2, v4}, Lcom/android/server/hdmi/HdmiUtils;->checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iget-boolean v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    .line 63
    .line 64
    if-ne p1, v2, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/SystemAudioAction;->setSystemAudioMode(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 70
    .line 71
    .line 72
    return v3

    .line 73
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, "Unexpected system audio mode request:"

    .line 76
    .line 77
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    new-array v2, v1, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-static {p1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_0
    return v1
.end method

.method public final sendSystemAudioModeRequest()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2
    .line 3
    const-class v1, Lcom/android/server/hdmi/RoutingControlAction;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/hdmi/RoutingControlAction;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/hdmi/SystemAudioAction$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioAction$1;-><init>(Lcom/android/server/hdmi/SystemAudioAction;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    .line 40
    .line 41
    :cond_0
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequestInternal()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final sendSystemAudioModeRequestInternal()V
    .locals 5

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
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v2, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 16
    .line 17
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const v2, 0xffff

    .line 37
    .line 38
    .line 39
    if-eq v1, v2, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    .line 44
    .line 45
    iget v3, p0, Lcom/android/server/hdmi/SystemAudioAction;->mAvrLogicalAddress:I

    .line 46
    .line 47
    const/16 v4, 0x70

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v3, v4, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-static {v0, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_1
    new-instance v1, Lcom/android/server/hdmi/SystemAudioAction$2;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SystemAudioAction$2;-><init>(Lcom/android/server/hdmi/SystemAudioAction;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 70
    .line 71
    invoke-virtual {v2, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x2

    .line 75
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 76
    .line 77
    iget-boolean v1, p0, Lcom/android/server/hdmi/SystemAudioAction;->mTargetAudioStatus:Z

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    const/16 v1, 0x1388

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    const/16 v1, 0x7d0

    .line 85
    .line 86
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final setSystemAudioMode(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode$1(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
