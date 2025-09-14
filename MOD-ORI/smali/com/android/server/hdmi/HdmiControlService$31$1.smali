.class public final Lcom/android/server/hdmi/HdmiControlService$31$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService$31$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$31$1;->this$1:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$31$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$31$1;->this$1:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->toggleAndFollowTvPower()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$31$1;->this$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const-string v1, "HdmiControlService"

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const-string p0, "Not an audio system device. Won\'t set system audio mode on"

    .line 31
    .line 32
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$31$1;->this$1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    const-string p0, "Audio System local device is not registered"

    .line 49
    .line 50
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$31$1;->this$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    const-string p0, "System Audio Mode is not supported."

    .line 72
    .line 73
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$31$1;->this$1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/16 v1, 0x72

    .line 96
    .line 97
    const/16 v3, 0xf

    .line 98
    .line 99
    invoke-static {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    return-void

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$31$1;->this$1:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$31;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$31;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableCec(Z)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$31$1;->this$1:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$31;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$31;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableSystemCecControl(Z)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$31$1;->this$1:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$31;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$31;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$31$1;->this$1:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p0, Lcom/android/server/hdmi/HdmiControlService$31;

    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$31;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearCecLocalDevices()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
