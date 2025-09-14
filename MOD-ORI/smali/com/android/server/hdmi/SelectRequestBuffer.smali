.class public Lcom/android/server/hdmi/SelectRequestBuffer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EMPTY_BUFFER:Lcom/android/server/hdmi/SelectRequestBuffer$1;


# instance fields
.field public mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/hdmi/SelectRequestBuffer;->EMPTY_BUFFER:Lcom/android/server/hdmi/SelectRequestBuffer$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer;->mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v1, v0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->isLocalDeviceReady()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v2, "calling delayed deviceSelect id:"

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v2, v0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mId:I

    .line 25
    .line 26
    const-string v3, "SelectRequestBuffer"

    .line 27
    .line 28
    invoke-static {v1, v2, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v0, v0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 38
    .line 39
    invoke-virtual {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->isLocalDeviceReady()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string/jumbo v2, "calling delayed portSelect id:"

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget v2, v0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mId:I

    .line 58
    .line 59
    const-string v3, "SelectRequestBuffer"

    .line 60
    .line 61
    invoke-static {v1, v2, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_0

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 73
    .line 74
    invoke-virtual {v3, v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 85
    .line 86
    invoke-virtual {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer;->mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;

    .line 91
    .line 92
    :cond_2
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
