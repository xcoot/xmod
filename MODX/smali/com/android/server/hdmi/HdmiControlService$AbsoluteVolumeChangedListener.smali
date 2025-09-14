.class Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;


# instance fields
.field public final mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field public final mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 8
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 10
    return-void
.end method


# virtual methods
.method public final onAudioDeviceVolumeAdjusted(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
    .locals 1

    .line 1
    const/16 p1, -0x64

    .line 3
    const/4 p2, 0x2

    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p3, p1, :cond_5

    .line 7
    const/4 p1, -0x1

    .line 8
    if-eq p3, p1, :cond_4

    .line 10
    if-eqz p3, :cond_1

    .line 12
    if-eq p3, v0, :cond_0

    .line 14
    const/16 p1, 0x64

    .line 16
    if-eq p3, p1, :cond_5

    .line 18
    const/16 p1, 0x65

    .line 20
    if-eq p3, p1, :cond_5

    .line 22
    return-void

    .line 23
    :cond_0
    const/16 p1, 0x18

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 28
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_3

    .line 34
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 36
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 43
    const-class p1, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 48
    move-result-object p0

    .line 49
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object p0

    .line 53
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    .line 65
    iget p3, p1, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 67
    if-ne p3, p2, :cond_2

    .line 69
    invoke-virtual {p1}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->sendGiveAudioStatus()V

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    return-void

    .line 74
    :cond_4
    const/16 p1, 0x19

    .line 76
    goto :goto_1

    .line 77
    :cond_5
    const/16 p1, 0xa4

    .line 79
    :goto_1
    const/4 p3, 0x0

    .line 80
    if-eqz p4, :cond_8

    .line 82
    if-eq p4, v0, :cond_7

    .line 84
    if-eq p4, p2, :cond_6

    .line 86
    return-void

    .line 87
    :cond_6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 89
    invoke-virtual {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    .line 92
    goto :goto_2

    .line 93
    :cond_7
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    .line 98
    goto :goto_2

    .line 99
    :cond_8
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 101
    invoke-virtual {p2, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    .line 104
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 106
    invoke-virtual {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    .line 109
    :goto_2
    return-void
.end method

.method public final onAudioDeviceVolumeChanged(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mLocalDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 13
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioVolumeLevelSupport()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_1

    .line 24
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 26
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 34
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 37
    move-result-object v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 41
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 44
    move-result-object v0

    .line 45
    :goto_0
    invoke-virtual {p2}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    .line 48
    move-result p2

    .line 49
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->updateAvbVolume(I)V

    .line 52
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 54
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 56
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 59
    move-result p0

    .line 60
    const/16 v0, 0x71

    .line 62
    invoke-static {p1, p0, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 65
    move-result-object p0

    .line 66
    const/4 p1, 0x0

    .line 67
    invoke-virtual {p2, p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 70
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 73
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;->mSystemAudioDevice:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 75
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 78
    move-result v1

    .line 79
    invoke-virtual {p2}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    .line 82
    move-result v2

    .line 83
    invoke-static {p1, v1, v2}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 86
    move-result-object v1

    .line 87
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;

    .line 89
    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;Landroid/media/VolumeInfo;I)V

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 95
    return-void
.end method
