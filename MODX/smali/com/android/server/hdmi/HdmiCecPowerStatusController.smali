.class public final Lcom/android/server/hdmi/HdmiCecPowerStatusController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

.field public mPowerStatus:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 7
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 9
    return-void
.end method


# virtual methods
.method public final setPowerStatus(IZ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 8
    if-eqz p2, :cond_1

    .line 10
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 12
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 15
    move-result p2

    .line 16
    const/4 v0, 0x6

    .line 17
    if-lt p2, v0, :cond_1

    .line 19
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 21
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p2

    .line 31
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 43
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 50
    move-result v0

    .line 51
    and-int/lit16 v1, p0, 0xff

    .line 53
    int-to-byte v1, v1

    .line 54
    const/4 v2, 0x1

    .line 55
    new-array v2, v2, [B

    .line 57
    const/4 v3, 0x0

    .line 58
    aput-byte v1, v2, v3

    .line 60
    const/16 v1, 0x90

    .line 62
    const/16 v3, 0xf

    .line 64
    invoke-static {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method
