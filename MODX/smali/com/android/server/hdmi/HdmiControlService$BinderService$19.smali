.class public final Lcom/android/server/hdmi/HdmiControlService$BinderService$19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$recordSource:[B

.field public final synthetic val$recorderAddress:I

.field public final synthetic val$sourceType:I


# direct methods
.method public synthetic constructor <init>(IIILcom/android/server/hdmi/HdmiControlService$BinderService;[B)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->$r8$classId:I

    .line 3
    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 5
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$recorderAddress:I

    .line 7
    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$sourceType:I

    .line 9
    iput-object p5, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$recordSource:[B

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 10
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string p0, "HdmiControlService"

    .line 18
    const-string v0, "TV device is not enabled."

    .line 20
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    goto/16 :goto_2

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 27
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 29
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 32
    move-result-object v0

    .line 33
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$recorderAddress:I

    .line 35
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$sourceType:I

    .line 37
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$recordSource:[B

    .line 39
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 42
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 44
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 47
    move-result v4

    .line 48
    const-string v5, "HdmiCecLocalDeviceTv"

    .line 50
    if-nez v4, :cond_1

    .line 52
    const-string p0, "Can not start one touch record. CEC control is disabled."

    .line 54
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/16 p0, 0xa2

    .line 59
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 62
    goto/16 :goto_2

    .line 64
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_2

    .line 70
    const-string p0, "Invalid recorder address:"

    .line 72
    invoke-static {v1, p0, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    const/16 p0, 0xa0

    .line 77
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 80
    goto/16 :goto_2

    .line 82
    :cond_2
    const/4 v4, 0x1

    .line 83
    if-eqz p0, :cond_3

    .line 85
    invoke-static {v2, p0}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSource(I[B)Z

    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_3

    .line 91
    move v6, v4

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const/4 v6, 0x0

    .line 94
    :goto_0
    const/16 v7, 0xa1

    .line 96
    if-nez v6, :cond_4

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    const-string v3, "Invalid record source."

    .line 102
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 116
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v0, v1, v7}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    if-eq v2, v4, :cond_7

    .line 125
    const/4 v4, 0x2

    .line 126
    if-eq v2, v4, :cond_6

    .line 128
    const/4 v4, 0x3

    .line 129
    if-eq v2, v4, :cond_5

    .line 131
    const-string p0, "Invalid source type:"

    .line 133
    invoke-static {v1, p0, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, v1, v7}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    .line 139
    goto :goto_2

    .line 140
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 147
    move-result v2

    .line 148
    invoke-static {v2, v1, v7, p0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 151
    move-result-object p0

    .line 152
    goto :goto_1

    .line 153
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 160
    move-result v2

    .line 161
    const/16 v4, 0x33

    .line 163
    invoke-static {v2, v1, v4, p0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 166
    move-result-object p0

    .line 167
    goto :goto_1

    .line 168
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 175
    move-result v2

    .line 176
    const/16 v4, 0x99

    .line 178
    invoke-static {v2, v1, v4, p0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 181
    move-result-object p0

    .line 182
    :goto_1
    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;

    .line 184
    invoke-direct {v2, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;I)V

    .line 187
    invoke-virtual {v3, p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 190
    :goto_2
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 193
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 195
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 198
    move-result v0

    .line 199
    if-nez v0, :cond_8

    .line 201
    const-string p0, "HdmiControlService"

    .line 203
    const-string v0, "TV device is not enabled."

    .line 205
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    goto/16 :goto_3

    .line 210
    :cond_8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 212
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 214
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 217
    move-result-object v0

    .line 218
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$recorderAddress:I

    .line 220
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$sourceType:I

    .line 222
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;->val$recordSource:[B

    .line 224
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 227
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 229
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 232
    move-result v3

    .line 233
    const-string v4, "HdmiCecLocalDeviceTv"

    .line 235
    if-nez v3, :cond_9

    .line 237
    const-string p0, "Can not start one touch record. CEC control is disabled."

    .line 239
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 p0, 0x3

    .line 243
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 246
    goto :goto_3

    .line 247
    :cond_9
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    .line 250
    move-result v3

    .line 251
    if-nez v3, :cond_a

    .line 253
    const-string p0, "Invalid recorder address:"

    .line 255
    invoke-static {v1, p0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 p0, 0x1

    .line 259
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 262
    goto :goto_3

    .line 263
    :cond_a
    if-eqz p0, :cond_b

    .line 265
    invoke-static {v2, p0}, Landroid/hardware/hdmi/HdmiTimerRecordSources;->checkTimerRecordSource(I[B)Z

    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_b

    .line 271
    new-instance v3, Lcom/android/server/hdmi/TimerRecordingAction;

    .line 273
    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/server/hdmi/TimerRecordingAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;II[B)V

    .line 276
    invoke-virtual {v0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    .line 281
    const-string v3, "Start [Timer Recording]-Target:"

    .line 283
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    const-string v3, ", SourceType:"

    .line 288
    const-string v5, ", RecordSource:"

    .line 290
    invoke-static {v1, v2, v3, v5, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 293
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    move-result-object p0

    .line 304
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    goto :goto_3

    .line 308
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 310
    const-string v3, "Invalid record source."

    .line 312
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 318
    move-result-object p0

    .line 319
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object p0

    .line 326
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 p0, 0x2

    .line 330
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 333
    :goto_3
    return-void

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
