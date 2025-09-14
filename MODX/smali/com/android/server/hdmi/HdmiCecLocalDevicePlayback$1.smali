.class public final Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
.implements Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDeviceDiscoveryDone(Ljava/util/List;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 21
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 23
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 25
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 31
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p0

    .line 41
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 53
    iget-object v0, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 55
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 57
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const-class p0, Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 67
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_2

    .line 77
    new-instance p0, Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 79
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 82
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 85
    :cond_2
    return-void
.end method

.method public onSendCompleted(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    const-string p1, "AVR did not respond to <Give System Audio Mode Status>"

    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 14
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 19
    :cond_0
    return-void
.end method
