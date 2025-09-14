.class public final synthetic Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda2;->f$1:Z

    .line 8
    iput p3, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda2;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;

    .line 3
    if-eqz p1, :cond_1

    .line 5
    iget p1, v0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendSetSystemAudioModeRetryCount:I

    .line 7
    const/4 v1, 0x5

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ge p1, v1, :cond_0

    .line 11
    add-int/2addr p1, v2

    .line 12
    iput p1, v0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;->mSendSetSystemAudioModeRetryCount:I

    .line 14
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 17
    move-result p1

    .line 18
    const/16 v1, 0x72

    .line 20
    iget v2, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda2;->f$2:I

    .line 22
    iget-boolean p0, p0, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda2;->f$1:Z

    .line 24
    invoke-static {p1, v2, v1, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 27
    move-result-object p1

    .line 28
    new-instance v1, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda2;

    .line 30
    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/hdmi/SystemAudioInitiationActionFromAvr;ZI)V

    .line 33
    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 39
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    :goto_0
    return-void
.end method
