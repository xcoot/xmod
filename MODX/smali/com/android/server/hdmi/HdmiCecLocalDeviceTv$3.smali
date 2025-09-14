.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 6
    return-void
.end method


# virtual methods
.method public final onDeviceDiscoveryDone(Ljava/util/List;)V
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
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

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
    iget-object p0, v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 31
    invoke-virtual {p0}, Lcom/android/server/hdmi/SelectRequestBuffer;->process()V

    .line 34
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 37
    sget-object p0, Lcom/android/server/hdmi/SelectRequestBuffer;->EMPTY_BUFFER:Lcom/android/server/hdmi/SelectRequestBuffer$1;

    .line 39
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 42
    iput-object p0, v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 44
    const-class p0, Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 46
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_1

    .line 56
    new-instance p0, Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 58
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 61
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 64
    :cond_1
    const-class p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;

    .line 66
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 69
    move-result-object p0

    .line 70
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_2

    .line 76
    new-instance p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;

    .line 78
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 81
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 84
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 87
    move-result-object p0

    .line 88
    if-eqz p0, :cond_3

    .line 90
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const/4 p0, 0x0

    .line 95
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode$1(Z)V

    .line 98
    :goto_1
    return-void
.end method
