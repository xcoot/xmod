.class public abstract Lcom/android/server/hdmi/RequestArcAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAvrAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILcom/android/server/hdmi/HdmiControlService$35;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 7
    move-result p1

    .line 8
    const/4 p3, 0x0

    .line 9
    invoke-static {p1, p3}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)Z

    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    const/4 p1, 0x5

    .line 16
    invoke-static {p2, p1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)Z

    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 22
    :cond_0
    const-string p1, "RequestArcAction"

    .line 24
    const-string p3, "Device type mismatch, stop the action."

    .line 26
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 33
    :cond_1
    iput p2, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    .line 35
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    if-ne v0, p1, :cond_1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    new-array v1, p1, [Ljava/lang/Object;

    .line 12
    const-string v2, "[T] RequestArcAction."

    .line 14
    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v1, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 19
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 21
    iget v3, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    .line 23
    invoke-direct {v1, v2, v3, p1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 26
    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 32
    :cond_1
    :goto_0
    return-void
.end method
