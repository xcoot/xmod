.class public final Lcom/android/server/hdmi/HdmiControlService$BinderService$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$deviceType:I

.field public final synthetic val$isPressed:Z

.field public final synthetic val$keyCode:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IIZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$keyCode:I

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$deviceType:I

    iput-boolean p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$isPressed:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$keyCode:I

    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$isPressed:Z

    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$deviceType:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 11
    .line 12
    const-string v2, "HdmiControlService"

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string p0, "CEC controller not available to send volume key event."

    .line 17
    .line 18
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 23
    .line 24
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$keyCode:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "Local device "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$keyCode:I

    .line 40
    .line 41
    const-string v1, " not available to send volume key event."

    .line 42
    .line 43
    invoke-static {v0, p0, v1, v2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$deviceType:I

    .line 48
    .line 49
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$isPressed:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendVolumeKeyEvent(IZ)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 67
    .line 68
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 69
    .line 70
    if-eqz v1, :cond_8

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 73
    .line 74
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$deviceType:I

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    const-string p0, "HdmiControlService"

    .line 83
    .line 84
    const-string v0, "Local device not available to send key event."

    .line 85
    .line 86
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_2
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$keyCode:I

    .line 91
    .line 92
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$isPressed:Z

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const/4 v3, 0x0

    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    move v2, v3

    .line 107
    :goto_1
    const-string v4, "HdmiCecLocalDevice"

    .line 108
    .line 109
    if-nez v2, :cond_4

    .line 110
    .line 111
    const-string p0, "Unsupported key: "

    .line 112
    .line 113
    invoke-static {v1, p0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_4
    const-class v2, Lcom/android/server/hdmi/SendKeyAction;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findKeyReceiverAddress()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    const/4 v6, -0x1

    .line 128
    if-eq v5, v6, :cond_7

    .line 129
    .line 130
    iget-object v6, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 131
    .line 132
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-ne v5, v6, :cond_5

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-nez v4, :cond_6

    .line 144
    .line 145
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lcom/android/server/hdmi/SendKeyAction;

    .line 150
    .line 151
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/SendKeyAction;->processKeyEvent(IZ)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_6
    if-eqz p0, :cond_8

    .line 156
    .line 157
    new-instance p0, Lcom/android/server/hdmi/SendKeyAction;

    .line 158
    .line 159
    invoke-direct {p0, v0, v5, v1}, Lcom/android/server/hdmi/SendKeyAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v2, "Discard key event: "

    .line 169
    .line 170
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", pressed:"

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string p0, ", receiverAddr="

    .line 185
    .line 186
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v5, v4}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_8
    :goto_3
    return-void

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
