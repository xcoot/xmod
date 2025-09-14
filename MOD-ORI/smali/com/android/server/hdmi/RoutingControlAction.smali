.class public final Lcom/android/server/hdmi/RoutingControlAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final STATE_WAIT_FOR_ROUTING_INFORMATION:I = 0x1


# instance fields
.field public mCurrentRoutingPath:I

.field public final mNotifyInputChange:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    const-string v1, "CEC"

    .line 4
    .line 5
    if-ne v0, p1, :cond_2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const-string p0, "Invalid timeoutState ("

    .line 14
    .line 15
    const-string v0, ")."

    .line 16
    .line 17
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 22
    .line 23
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 44
    .line 45
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/16 v1, 0xf

    .line 50
    .line 51
    const/16 v2, 0x86

    .line 52
    .line 53
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 59
    .line 60
    invoke-virtual {v1, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    :goto_0
    const-string p0, "Timer in a wrong state. Ignored."

    .line 69
    .line 70
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x81

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    iput p1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 30
    .line 31
    const-class v0, Lcom/android/server/hdmi/RoutingControlAction;

    .line 32
    .line 33
    invoke-virtual {p1, v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 37
    .line 38
    const/16 v0, 0x3e8

    .line 39
    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 41
    .line 42
    .line 43
    return v2

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public final start()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    .line 4
    const/16 v1, 0x3e8

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
