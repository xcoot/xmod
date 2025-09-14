.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const-string v0, "Failed to complete One Touch Play. result="

    .line 10
    const-string v1, "HdmiCecLocalDeviceSource"

    .line 12
    invoke-static {p1, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    .line 17
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;

    .line 19
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    .line 21
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 23
    const/4 p1, 0x0

    .line 24
    const/16 v0, 0x6b

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_0
    const/4 v0, -0x1

    .line 31
    const/4 v1, 0x0

    .line 32
    const-string v2, "HdmiCecLocalDeviceSource"

    .line 34
    if-ne p1, v0, :cond_1

    .line 36
    const-string p1, "TV power toggle: TV power status unknown"

    .line 38
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    .line 43
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 45
    const/16 p1, 0x6b

    .line 47
    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-eqz p1, :cond_4

    .line 53
    const/4 v0, 0x2

    .line 54
    if-ne p1, v0, :cond_2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v0, 0x1

    .line 58
    if-eq p1, v0, :cond_3

    .line 60
    const/4 v0, 0x3

    .line 61
    if-ne p1, v0, :cond_5

    .line 63
    :cond_3
    const-string p1, "TV power toggle: turning on TV"

    .line 65
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    .line 70
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 72
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;

    .line 74
    const/4 v1, 0x1

    .line 75
    invoke-direct {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;-><init>(ILjava/lang/Object;)V

    .line 78
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    :goto_0
    const-string p1, "TV power toggle: turning off TV"

    .line 84
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    .line 89
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 91
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->sendStandby(I)V

    .line 94
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    .line 96
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 98
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 100
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 103
    :cond_5
    :goto_1
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
