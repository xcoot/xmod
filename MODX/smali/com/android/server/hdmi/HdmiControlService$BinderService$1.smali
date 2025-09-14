.class public final Lcom/android/server/hdmi/HdmiControlService$BinderService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$callback:Ljava/lang/Object;

.field public final synthetic val$deviceId:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I[B)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

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
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 26
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 28
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 31
    move-result-object v0

    .line 32
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    .line 34
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Ljava/lang/Object;

    .line 36
    check-cast p0, [B

    .line 38
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startOneTouchRecord(I[B)I

    .line 41
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Ljava/lang/Object;

    .line 44
    check-cast v0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 46
    const-string v1, "HdmiControlService"

    .line 48
    if-nez v0, :cond_1

    .line 50
    const-string p0, "Callback cannot be null"

    .line 52
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 58
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 60
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_2

    .line 66
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    .line 68
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Ljava/lang/Object;

    .line 70
    check-cast p0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 72
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 78
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 80
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_3

    .line 86
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    .line 88
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Ljava/lang/Object;

    .line 90
    check-cast p0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 92
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 98
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 100
    iget-boolean v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 102
    if-nez v2, :cond_4

    .line 104
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 106
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    .line 108
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Ljava/lang/Object;

    .line 110
    check-cast p0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 112
    new-instance v3, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;

    .line 114
    const/4 v4, 0x0

    .line 115
    invoke-direct {v3, v0, v2, p0, v4}, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;-><init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 118
    iput-object v3, v1, Lcom/android/server/hdmi/SelectRequestBuffer;->mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;

    .line 120
    goto :goto_1

    .line 121
    :cond_4
    const-string v0, "Local device not available"

    .line 123
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 128
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 130
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Ljava/lang/Object;

    .line 132
    check-cast p0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    const/4 v0, 0x2

    .line 138
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 141
    :goto_1
    return-void

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Ljava/lang/Object;

    .line 144
    check-cast v0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 146
    const-string v1, "HdmiControlService"

    .line 148
    if-nez v0, :cond_5

    .line 150
    const-string p0, "Callback cannot be null"

    .line 152
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    goto/16 :goto_3

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 159
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 161
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 164
    move-result-object v0

    .line 165
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 167
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 169
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 172
    move-result-object v2

    .line 173
    if-nez v0, :cond_8

    .line 175
    if-nez v2, :cond_8

    .line 177
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 179
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 181
    iget-boolean v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 183
    if-nez v2, :cond_6

    .line 185
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 187
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    .line 189
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Ljava/lang/Object;

    .line 191
    check-cast p0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 193
    new-instance v3, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;

    .line 195
    const/4 v4, 0x1

    .line 196
    invoke-direct {v3, v0, v2, p0, v4}, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;-><init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 199
    iput-object v3, v1, Lcom/android/server/hdmi/SelectRequestBuffer;->mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;

    .line 201
    goto/16 :goto_3

    .line 203
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_7

    .line 209
    const-string p0, "Local tv device not available"

    .line 211
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    goto/16 :goto_3

    .line 216
    :cond_7
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 218
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 220
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Ljava/lang/Object;

    .line 222
    check-cast p0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    const/4 v0, 0x2

    .line 228
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 231
    goto/16 :goto_3

    .line 233
    :cond_8
    if-eqz v0, :cond_9

    .line 235
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 237
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 239
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 241
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    .line 246
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Ljava/lang/Object;

    .line 248
    check-cast p0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 250
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 253
    goto/16 :goto_3

    .line 255
    :cond_9
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$deviceId:I

    .line 257
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;->val$callback:Ljava/lang/Object;

    .line 259
    check-cast p0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 261
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 264
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    .line 271
    move-result v1

    .line 272
    iget-object v3, v2, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 274
    if-ne v0, v1, :cond_a

    .line 276
    invoke-virtual {v3, p0}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 279
    goto :goto_3

    .line 280
    :cond_a
    iget-object v1, v3, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 282
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 284
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 287
    move-result-object v0

    .line 288
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 290
    if-nez v0, :cond_b

    .line 292
    const/4 v0, 0x3

    .line 293
    invoke-virtual {v2, v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 296
    goto :goto_3

    .line 297
    :cond_b
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 300
    move-result v1

    .line 301
    invoke-virtual {v2, v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isAlreadyActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;ILandroid/hardware/hdmi/IHdmiControlCallback;)Z

    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_c

    .line 307
    goto :goto_3

    .line 308
    :cond_c
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 311
    move-result v1

    .line 312
    const/4 v3, 0x6

    .line 313
    if-nez v1, :cond_d

    .line 315
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 318
    move-result v1

    .line 319
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 322
    move-result v0

    .line 323
    const-string v4, "HdmiCecLocalDevicePlayback#deviceSelect()"

    .line 325
    invoke-virtual {v2, v1, v0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(IILjava/lang/String;)V

    .line 328
    invoke-virtual {v2, v3, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 331
    goto :goto_3

    .line 332
    :cond_d
    const-class v1, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;

    .line 334
    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 337
    new-instance v1, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;

    .line 339
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 342
    move-result-object v4

    .line 343
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    .line 346
    move-result v4

    .line 347
    if-lt v4, v3, :cond_e

    .line 349
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    .line 352
    move-result v4

    .line 353
    if-lt v4, v3, :cond_e

    .line 355
    const/4 v3, 0x1

    .line 356
    goto :goto_2

    .line 357
    :cond_e
    const/4 v3, 0x0

    .line 358
    :goto_2
    invoke-direct {v1, v2, v0, p0, v3}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V

    .line 361
    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 364
    :goto_3
    return-void

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
