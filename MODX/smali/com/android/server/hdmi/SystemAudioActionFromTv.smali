.class public final Lcom/android/server/hdmi/SystemAudioActionFromTv;
.super Lcom/android/server/hdmi/SystemAudioAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/SystemAudioAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 7
    move-result p1

    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 15
    const-string p1, "SystemAudioActionFromTv"

    .line 17
    const-string p2, "Device type mismatch, stop the action."

    .line 19
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 5
    invoke-virtual {v1, v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 8
    const-class v0, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    .line 10
    invoke-virtual {v1, v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/server/hdmi/SystemAudioAction;->sendSystemAudioModeRequest()V

    .line 16
    return-void
.end method
