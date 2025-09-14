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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDeviceDiscoveryDone(Ljava/util/List;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/hdmi/SelectRequestBuffer;->process()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lcom/android/server/hdmi/SelectRequestBuffer;->EMPTY_BUFFER:Lcom/android/server/hdmi/SelectRequestBuffer$1;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 40
    .line 41
    .line 42
    iput-object p0, v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 43
    .line 44
    const-class p0, Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    new-instance p0, Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 57
    .line 58
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HotplugDetectionAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    const-class p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;

    .line 65
    .line 66
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    new-instance p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;

    .line 77
    .line 78
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-eqz p0, :cond_3

    .line 89
    .line 90
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    const/4 p0, 0x0

    .line 95
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode$1(Z)V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-void
.end method
