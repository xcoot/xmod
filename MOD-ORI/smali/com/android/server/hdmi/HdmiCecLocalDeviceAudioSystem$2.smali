.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
.implements Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

.field public final synthetic val$callback:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->val$callback:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/16 v1, 0x72

    .line 18
    .line 19
    const/16 v2, 0xf

    .line 20
    .line 21
    invoke-static {p1, v2, v1, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/4 p1, 0x0

    .line 26
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 27
    .line 28
    invoke-virtual {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->val$callback:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 42
    .line 43
    const/4 v0, 0x4

    .line 44
    invoke-virtual {p1, v0, p0}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(ILcom/android/server/hdmi/HdmiCecMessage;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public onSendCompleted(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->val$callback:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
