.class public final Lcom/android/server/hdmi/HdmiControlService$BinderService$11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$physicalAddress:I


# direct methods
.method public constructor <init>(IIILcom/android/server/hdmi/HdmiControlService$BinderService;[B)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->val$physicalAddress:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->val$physicalAddress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 10
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 12
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->val$physicalAddress:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HdmiControlService"

    .line 20
    if-nez v0, :cond_0

    .line 22
    const-string p0, "Local device not available"

    .line 24
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 30
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 32
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 38
    const-string p0, "audio system is not available"

    .line 40
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 46
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 48
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 51
    move-result-object v0

    .line 52
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 54
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_2

    .line 60
    const-string p0, "audio system is not in system audio mode"

    .line 62
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 68
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 70
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 73
    move-result-object p0

    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->reportAudioStatus(I)V

    .line 78
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 81
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 83
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 86
    move-result v0

    .line 87
    const-string v1, "HdmiControlService"

    .line 89
    if-nez v0, :cond_3

    .line 91
    const-string p0, "Hdmi control is disabled."

    .line 93
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 99
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 101
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    const-string v2, "Invalid port id:"

    .line 110
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->val$physicalAddress:I

    .line 115
    invoke-static {v0, p0, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 118
    :goto_1
    return-void

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 121
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 123
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_4

    .line 129
    const-string p0, "HdmiControlService"

    .line 131
    const-string v0, "TV device is not enabled."

    .line 133
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 139
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 141
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 144
    move-result-object v0

    .line 145
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->val$physicalAddress:I

    .line 147
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 150
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 152
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 155
    move-result v2

    .line 156
    const-string v3, "HdmiCecLocalDeviceTv"

    .line 158
    if-nez v2, :cond_5

    .line 160
    const-string v1, "Can not stop one touch record. CEC control is disabled."

    .line 162
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/16 v1, 0x33

    .line 167
    invoke-virtual {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 170
    goto :goto_2

    .line 171
    :cond_5
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_6

    .line 177
    const-string v1, "Invalid recorder address:"

    .line 179
    invoke-static {p0, v1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    const/16 v1, 0x31

    .line 184
    invoke-virtual {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 187
    goto :goto_2

    .line 188
    :cond_6
    const-class v2, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 190
    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 193
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 200
    move-result v0

    .line 201
    const/16 v2, 0xb

    .line 203
    invoke-static {v0, p0, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 206
    move-result-object v0

    .line 207
    const/4 v2, 0x0

    .line 208
    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    .line 213
    const-string v1, "Stop [One Touch Record]-Target:"

    .line 215
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object p0

    .line 225
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_2
    return-void

    .line 229
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 231
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 233
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mgetRemoteControlSourceAddress(Lcom/android/server/hdmi/HdmiControlService;)I

    .line 236
    move-result v0

    .line 237
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->val$physicalAddress:I

    .line 239
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    .line 242
    move-result-object v1

    .line 243
    const/16 v2, 0xf

    .line 245
    const/16 v3, 0x86

    .line 247
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 250
    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 253
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 255
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->val$physicalAddress:I

    .line 257
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 259
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 262
    move-result v1

    .line 263
    const/4 v2, -0x1

    .line 264
    if-eq v1, v2, :cond_8

    .line 266
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 268
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 270
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mgetSwitchDevice(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 273
    move-result-object v1

    .line 274
    if-eqz v1, :cond_7

    .line 276
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 278
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 280
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mgetSwitchDevice(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 287
    goto :goto_3

    .line 288
    :cond_7
    const-string v1, "HdmiControlService"

    .line 290
    const-string v2, "Can\'t get the correct local device to handle routing."

    .line 292
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 297
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 299
    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 303
    return-void

    .line 304
    nop

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
