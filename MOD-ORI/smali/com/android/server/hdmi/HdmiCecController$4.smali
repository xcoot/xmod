.class public final Lcom/android/server/hdmi/HdmiCecController$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$assignedAddress:I

.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$21;

.field public final synthetic val$deviceType:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$21;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$callback:Lcom/android/server/hdmi/HdmiControlService$21;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$deviceType:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$assignedAddress:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$callback:Lcom/android/server/hdmi/HdmiControlService$21;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$deviceType:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$assignedAddress:I

    .line 6
    .line 7
    const/16 v2, 0xf

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne p0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string p0, "HdmiControlService"

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v4, "Failed to allocate address:[device_type:"

    .line 20
    .line 21
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v4, "]"

    .line 28
    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_0
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    const-string/jumbo v5, "device_name"

    .line 57
    .line 58
    .line 59
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-static {v7, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move-object v6, v5

    .line 81
    :goto_0
    invoke-static {}, Landroid/hardware/hdmi/HdmiDeviceInfo;->cecDeviceBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setLogicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    iget-object v7, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 90
    .line 91
    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    invoke-virtual {v5, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPhysicalAddress(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    iget-object v7, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 100
    .line 101
    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    iget-object v8, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 106
    .line 107
    invoke-virtual {v8, v7}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    invoke-virtual {v5, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setPortId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {v5, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceType(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {v5, v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setVendorId(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2, v6}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2, v3}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDevicePowerStatus(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2, v4}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setCecVersion(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    iget-object v4, v0, Lcom/android/server/hdmi/HdmiControlService$21;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 144
    .line 145
    iget-object v5, v4, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 146
    .line 147
    monitor-enter v5

    .line 148
    :try_start_0
    iput-object v2, v4, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 149
    .line 150
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 151
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 152
    .line 153
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 154
    .line 155
    iget-object v4, v0, Lcom/android/server/hdmi/HdmiControlService$21;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 156
    .line 157
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 158
    .line 159
    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 163
    .line 164
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 165
    .line 166
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService$21;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 176
    .line 177
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 180
    .line 181
    .line 182
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-eqz v2, :cond_2

    .line 187
    .line 188
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 189
    .line 190
    invoke-interface {v1, p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeAddLogicalAddress(I)I

    .line 191
    .line 192
    .line 193
    :cond_2
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$21;->val$allocatedDevices:Ljava/util/ArrayList;

    .line 194
    .line 195
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$21;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 196
    .line 197
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :goto_1
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$21;->val$allocatingDevices:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$21;->val$finished:[I

    .line 207
    .line 208
    aget v2, v1, v3

    .line 209
    .line 210
    const/4 v4, 0x1

    .line 211
    add-int/2addr v2, v4

    .line 212
    aput v2, v1, v3

    .line 213
    .line 214
    if-ne p0, v2, :cond_13

    .line 215
    .line 216
    iget p0, v0, Lcom/android/server/hdmi/HdmiControlService$21;->val$initiatedBy:I

    .line 217
    .line 218
    const/4 v1, 0x4

    .line 219
    if-eq p0, v1, :cond_b

    .line 220
    .line 221
    const/4 v2, 0x5

    .line 222
    if-eq p0, v2, :cond_b

    .line 223
    .line 224
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 225
    .line 226
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 227
    .line 228
    iget v2, v2, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 229
    .line 230
    const/4 v5, 0x2

    .line 231
    if-ne v2, v5, :cond_3

    .line 232
    .line 233
    move v6, v4

    .line 234
    goto :goto_2

    .line 235
    :cond_3
    move v6, v3

    .line 236
    :goto_2
    iget-object v7, v1, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 237
    .line 238
    const/4 v8, 0x3

    .line 239
    if-eqz v6, :cond_4

    .line 240
    .line 241
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    .line 242
    .line 243
    const/4 v6, 0x2

    .line 244
    invoke-direct {v2, v1, v6}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_4
    if-ne v2, v8, :cond_5

    .line 252
    .line 253
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;

    .line 254
    .line 255
    const/4 v6, 0x3

    .line 256
    invoke-direct {v2, v1, v6}, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    .line 261
    .line 262
    :cond_5
    :goto_3
    iput-boolean v3, v1, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 263
    .line 264
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_6

    .line 269
    .line 270
    iget-object v2, v1, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 271
    .line 272
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 281
    .line 282
    .line 283
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    const-string/jumbo v9, "enableWakeupByOtp: %b"

    .line 292
    .line 293
    .line 294
    invoke-static {v9, v7}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 298
    .line 299
    invoke-interface {v2, v6}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->enableWakeupByOtp(Z)V

    .line 300
    .line 301
    .line 302
    :cond_6
    const/4 v2, -0x1

    .line 303
    if-eqz p0, :cond_9

    .line 304
    .line 305
    if-eq p0, v4, :cond_8

    .line 306
    .line 307
    if-eq p0, v5, :cond_7

    .line 308
    .line 309
    if-eq p0, v8, :cond_a

    .line 310
    .line 311
    move v5, v2

    .line 312
    goto :goto_5

    .line 313
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    check-cast v6, Ljava/util/ArrayList;

    .line 318
    .line 319
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    if-eqz v7, :cond_a

    .line 328
    .line 329
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    check-cast v7, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 334
    .line 335
    invoke-virtual {v7, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onInitializeCecComplete(I)V

    .line 336
    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_8
    move v5, v3

    .line 340
    goto :goto_5

    .line 341
    :cond_9
    move v5, v4

    .line 342
    :cond_a
    :goto_5
    if-eq v5, v2, :cond_c

    .line 343
    .line 344
    invoke-virtual {v1, v5, v4}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(IZ)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v4}, Lcom/android/server/hdmi/HdmiControlService;->announceHdmiControlStatusChange(I)V

    .line 348
    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_b
    if-ne p0, v1, :cond_c

    .line 352
    .line 353
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 354
    .line 355
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 356
    .line 357
    if-nez v1, :cond_c

    .line 358
    .line 359
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 360
    .line 361
    monitor-enter p0

    .line 362
    :try_start_1
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 363
    .line 364
    iget v2, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:I

    .line 365
    .line 366
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->announceHdmiControlStatusChange(I)V

    .line 367
    .line 368
    .line 369
    monitor-exit p0

    .line 370
    goto :goto_6

    .line 371
    :catchall_0
    move-exception v0

    .line 372
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    throw v0

    .line 374
    :cond_c
    :goto_6
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 375
    .line 376
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 377
    .line 378
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$21;->val$allocatedDevices:Ljava/util/ArrayList;

    .line 379
    .line 380
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    .line 382
    .line 383
    new-instance v2, Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .line 387
    .line 388
    :goto_7
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 389
    .line 390
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    if-ge v3, v5, :cond_e

    .line 395
    .line 396
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 397
    .line 398
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 403
    .line 404
    .line 405
    move-result-object v6

    .line 406
    new-instance v7, Lcom/android/server/hdmi/HdmiCecNetwork$$ExternalSyntheticLambda0;

    .line 407
    .line 408
    invoke-direct {v7, v5}, Lcom/android/server/hdmi/HdmiCecNetwork$$ExternalSyntheticLambda0;-><init>(I)V

    .line 409
    .line 410
    .line 411
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    if-eqz v6, :cond_d

    .line 416
    .line 417
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 425
    .line 426
    goto :goto_7

    .line 427
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    if-eqz v2, :cond_f

    .line 436
    .line 437
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    check-cast v2, Ljava/lang/Integer;

    .line 442
    .line 443
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 444
    .line 445
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 450
    .line 451
    .line 452
    goto :goto_8

    .line 453
    :cond_f
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 454
    .line 455
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 456
    .line 457
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService$21;->val$allocatedDevices:Ljava/util/ArrayList;

    .line 458
    .line 459
    iget v2, v0, Lcom/android/server/hdmi/HdmiControlService$21;->val$initiatedBy:I

    .line 460
    .line 461
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->notifyAddressAllocated(Ljava/util/ArrayList;I)V

    .line 462
    .line 463
    .line 464
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 465
    .line 466
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 467
    .line 468
    const/4 v2, 0x0

    .line 469
    if-eqz v1, :cond_10

    .line 470
    .line 471
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 472
    .line 473
    .line 474
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 475
    .line 476
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mDisplayStatusCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 477
    .line 478
    :cond_10
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 479
    .line 480
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 481
    .line 482
    if-eqz v1, :cond_11

    .line 483
    .line 484
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 485
    .line 486
    .line 487
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 488
    .line 489
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mOtpCallbackPendingAddressAllocation:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 490
    .line 491
    :cond_11
    iget-object p0, v0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 492
    .line 493
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/CecMessageBuffer;

    .line 494
    .line 495
    iget-object v0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 496
    .line 497
    check-cast v0, Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    if-eqz v1, :cond_12

    .line 508
    .line 509
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 514
    .line 515
    new-instance v2, Lcom/android/server/hdmi/CecMessageBuffer$1;

    .line 516
    .line 517
    invoke-direct {v2, p0, v1}, Lcom/android/server/hdmi/CecMessageBuffer$1;-><init>(Lcom/android/server/hdmi/CecMessageBuffer;Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 518
    .line 519
    .line 520
    iget-object v1, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 521
    .line 522
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 523
    .line 524
    .line 525
    goto :goto_9

    .line 526
    :cond_12
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 527
    .line 528
    check-cast p0, Ljava/util/ArrayList;

    .line 529
    .line 530
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 531
    .line 532
    .line 533
    :cond_13
    return-void

    .line 534
    :catchall_1
    move-exception p0

    .line 535
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 536
    throw p0
.end method
