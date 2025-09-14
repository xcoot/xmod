.class public final Lcom/android/server/hdmi/ActiveSourceAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDestination:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 4
    iput p2, p0, Lcom/android/server/hdmi/ActiveSourceAction;->mDestination:I

    .line 6
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final start()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 8
    move-result v2

    .line 9
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 11
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 18
    move-result v4

    .line 19
    invoke-static {v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 22
    move-result-object v5

    .line 23
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 25
    const/4 v7, 0x0

    .line 26
    invoke-virtual {v6, v5, v7}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 29
    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 31
    iget v5, v3, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    .line 33
    const/4 v8, 0x4

    .line 34
    if-ne v5, v8, :cond_0

    .line 36
    int-to-byte v5, v0

    .line 37
    new-array v8, v1, [B

    .line 39
    aput-byte v5, v8, v0

    .line 41
    const/16 v0, 0x8e

    .line 43
    iget v5, p0, Lcom/android/server/hdmi/ActiveSourceAction;->mDestination:I

    .line 45
    invoke-static {v2, v5, v0, v8}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v6, v0, v7}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 52
    :cond_0
    const-string v0, "ActiveSourceAction"

    .line 54
    invoke-virtual {v3, v2, v4, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(IILjava/lang/String;)V

    .line 57
    const/4 v0, 0x2

    .line 58
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 63
    return-void
.end method
