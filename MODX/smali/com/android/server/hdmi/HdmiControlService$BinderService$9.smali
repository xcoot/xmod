.class public final Lcom/android/server/hdmi/HdmiControlService$BinderService$9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$logicalAddress:I

.field public final synthetic val$powerStatus:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 5
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$logicalAddress:I

    .line 7
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$powerStatus:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 10
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 17
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 19
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 21
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$powerStatus:I

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 31
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 33
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 36
    move-result-object v0

    .line 37
    :cond_0
    if-nez v0, :cond_1

    .line 39
    const-string p0, "HdmiControlService"

    .line 41
    const-string v0, "Local device not available"

    .line 43
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$logicalAddress:I

    .line 49
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendStandby(I)V

    .line 52
    :goto_0
    return-void

    .line 53
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "Device "

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$logicalAddress:I

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, " power status is "

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$powerStatus:I

    .line 72
    const-string v2, " before power on command sent out"

    .line 74
    const-string v3, "HdmiControlService"

    .line 76
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 81
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 83
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mgetSwitchDevice(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 91
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 93
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mgetSwitchDevice(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 96
    move-result-object v0

    .line 97
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$logicalAddress:I

    .line 99
    const/16 v1, 0x6d

    .line 101
    invoke-virtual {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const-string p0, "Can\'t get the correct local device to handle routing."

    .line 107
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_1
    return-void

    .line 111
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "Device "

    .line 115
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$logicalAddress:I

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, " power status is "

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$powerStatus:I

    .line 130
    const-string v2, " before standby command sent out"

    .line 132
    const-string v3, "HdmiControlService"

    .line 134
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 139
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 141
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mgetRemoteControlSourceAddress(Lcom/android/server/hdmi/HdmiControlService;)I

    .line 144
    move-result v1

    .line 145
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$logicalAddress:I

    .line 147
    const/16 v2, 0x36

    .line 149
    invoke-static {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 152
    move-result-object p0

    .line 153
    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 157
    return-void

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
