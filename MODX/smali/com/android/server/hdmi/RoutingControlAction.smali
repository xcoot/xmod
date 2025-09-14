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

    .line 4
    iput p2, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 6
    if-nez p3, :cond_0

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

    .line 13
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    const-string v1, "CEC"

    .line 5
    if-ne v0, p1, :cond_2

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    if-eq p1, v0, :cond_1

    .line 13
    const-string p0, "Invalid timeoutState ("

    .line 15
    const-string v0, ")."

    .line 17
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 23
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 25
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 32
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 34
    iget-boolean v1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mNotifyInputChange:Z

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    .line 39
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 42
    move-result p1

    .line 43
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 45
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    .line 48
    move-result-object v0

    .line 49
    const/16 v1, 0xf

    .line 51
    const/16 v2, 0x86

    .line 53
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 56
    move-result-object p1

    .line 57
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 60
    invoke-virtual {v1, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 63
    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 67
    return-void

    .line 68
    :cond_2
    :goto_0
    const-string p0, "Timer in a wrong state. Ignored."

    .line 70
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_1

    .line 8
    const/16 v1, 0x81

    .line 10
    if-ne v0, v1, :cond_1

    .line 12
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 14
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    .line 17
    move-result p1

    .line 18
    iget v0, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 20
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 26
    return v2

    .line 27
    :cond_0
    iput p1, p0, Lcom/android/server/hdmi/RoutingControlAction;->mCurrentRoutingPath:I

    .line 29
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 31
    const-class v0, Lcom/android/server/hdmi/RoutingControlAction;

    .line 33
    invoke-virtual {p1, v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 36
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 38
    const/16 v0, 0x3e8

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

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

    .line 4
    const/16 v1, 0x3e8

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 9
    return-void
.end method
