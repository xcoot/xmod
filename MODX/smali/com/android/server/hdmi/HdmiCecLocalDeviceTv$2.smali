.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 3
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 3
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 11
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 21
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 23
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 30
    move-result p1

    .line 31
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 33
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 40
    move-result v1

    .line 41
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 44
    move-result-object p1

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 49
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 51
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 58
    move-result v0

    .line 59
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 68
    move-result p0

    .line 69
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 72
    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 74
    invoke-direct {v1, v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>(II)V

    .line 77
    const-string p0, "RequestActiveSourceAction#finishWithCallback()"

    .line 79
    invoke-virtual {p1, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method
