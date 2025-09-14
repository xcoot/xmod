.class public final synthetic Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz p1, :cond_1

    .line 8
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 19
    move-result p1

    .line 20
    const/16 v0, 0x72

    .line 22
    const/16 v2, 0xf

    .line 24
    invoke-static {p1, v2, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda2;

    .line 30
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;ZI)V

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 36
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 42
    const/4 p1, 0x0

    .line 43
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 49
    :goto_0
    return-void
.end method

.method public onSendCompleted(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 3
    if-eqz p1, :cond_1

    .line 5
    iget p1, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendRequestActiveSourceRetryCount:I

    .line 7
    const/4 v0, 0x5

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ge p1, v0, :cond_0

    .line 11
    add-int/2addr p1, v1

    .line 12
    iput p1, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendRequestActiveSourceRetryCount:I

    .line 14
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 17
    move-result p1

    .line 18
    const/16 v0, 0xf

    .line 20
    const/16 v1, 0x85

    .line 22
    invoke-static {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;

    .line 28
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;)V

    .line 31
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 39
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 45
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    :goto_0
    return-void
.end method
