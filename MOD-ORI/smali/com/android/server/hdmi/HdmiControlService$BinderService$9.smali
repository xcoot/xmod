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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$logicalAddress:I

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$powerStatus:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 20
    .line 21
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$powerStatus:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_0
    if-nez v0, :cond_1

    .line 38
    .line 39
    const-string p0, "HdmiControlService"

    .line 40
    .line 41
    const-string v0, "Local device not available"

    .line 42
    .line 43
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$logicalAddress:I

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendStandby(I)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "Device "

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$logicalAddress:I

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, " power status is "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$powerStatus:I

    .line 71
    .line 72
    const-string v2, " before power on command sent out"

    .line 73
    .line 74
    const-string v3, "HdmiControlService"

    .line 75
    .line 76
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mgetSwitchDevice(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mgetSwitchDevice(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$logicalAddress:I

    .line 98
    .line 99
    const/16 v1, 0x6d

    .line 100
    .line 101
    invoke-virtual {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    const-string p0, "Can\'t get the correct local device to handle routing."

    .line 106
    .line 107
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :goto_1
    return-void

    .line 111
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v1, "Device "

    .line 114
    .line 115
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$logicalAddress:I

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, " power status is "

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$powerStatus:I

    .line 129
    .line 130
    const-string v2, " before standby command sent out"

    .line 131
    .line 132
    const-string v3, "HdmiControlService"

    .line 133
    .line 134
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 138
    .line 139
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mgetRemoteControlSourceAddress(Lcom/android/server/hdmi/HdmiControlService;)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;->val$logicalAddress:I

    .line 146
    .line 147
    const/16 v2, 0x36

    .line 148
    .line 149
    invoke-static {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 155
    .line 156
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
