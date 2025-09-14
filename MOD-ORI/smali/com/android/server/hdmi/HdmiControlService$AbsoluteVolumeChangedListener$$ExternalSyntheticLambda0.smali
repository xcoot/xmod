.class public final synthetic Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

.field public final synthetic f$1:Landroid/media/VolumeInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;Landroid/media/VolumeInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;->f$1:Landroid/media/VolumeInfo;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;->f$1:Landroid/media/VolumeInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iget-object p0, v1, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, v1, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, v1, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-virtual {v0}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->updateAvbVolume(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object p1, v1, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 37
    .line 38
    iget-object v0, v1, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/16 v1, 0x71

    .line 45
    .line 46
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;->f$2:I

    .line 47
    .line 48
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method
