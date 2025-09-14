.class public final Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p1, Landroid/os/Message;->what:I

    .line 5
    const/16 v3, 0x16

    .line 7
    const/16 v4, 0x64

    .line 9
    if-eq v2, v3, :cond_1b

    .line 11
    const/16 v5, 0x17

    .line 13
    if-eq v2, v5, :cond_1a

    .line 15
    const/16 v5, 0x2a

    .line 17
    if-eq v2, v5, :cond_18

    .line 19
    const/16 v5, 0x2b

    .line 21
    if-eq v2, v5, :cond_16

    .line 23
    const/4 v5, 0x7

    .line 24
    const/4 v6, 0x2

    .line 25
    packed-switch v2, :pswitch_data_0

    .line 28
    const/4 v3, 0x3

    .line 29
    packed-switch v2, :pswitch_data_1

    .line 32
    packed-switch v2, :pswitch_data_2

    .line 35
    packed-switch v2, :pswitch_data_3

    .line 38
    packed-switch v2, :pswitch_data_4

    .line 41
    const/16 v0, 0xac6

    .line 43
    if-le v2, v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 47
    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$mhandleCustomMessage(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/Message;)V

    .line 50
    goto/16 :goto_1b

    .line 52
    :cond_0
    const-string v0, "AS.AudioDeviceBroker"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    const-string v2, "Invalid message "

    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    iget v2, p1, Landroid/os/Message;->what:I

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    goto/16 :goto_1b

    .line 75
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 77
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 79
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    check-cast v3, Lcom/android/server/audio/AdiDeviceState;

    .line 83
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 85
    if-ne v5, v1, :cond_1

    .line 87
    move v0, v1

    .line 88
    :cond_1
    invoke-virtual {v2, v3, v0}, Lcom/android/server/audio/AudioService;->onUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    .line 91
    goto/16 :goto_1b

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 95
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 97
    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 100
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 102
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 105
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 107
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    check-cast v3, Lcom/android/server/audio/AdiDeviceState;

    .line 111
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V

    .line 114
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    goto/16 :goto_1b

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    goto :goto_0

    .line 120
    :catchall_1
    move-exception p0

    .line 121
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    :try_start_4
    throw p0

    .line 123
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    throw p0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 127
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 129
    monitor-enter v2

    .line 130
    :try_start_5
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 132
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 134
    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 135
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 137
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 139
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 141
    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onUpdateLeAudioGroupAddresses(I)V

    .line 144
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 145
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 146
    goto/16 :goto_1b

    .line 148
    :catchall_2
    move-exception p0

    .line 149
    goto :goto_1

    .line 150
    :catchall_3
    move-exception p0

    .line 151
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 152
    :try_start_9
    throw p0

    .line 153
    :goto_1
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 154
    throw p0

    .line 155
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 157
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 159
    monitor-enter v2

    .line 160
    :try_start_a
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 162
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 164
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 166
    if-ne v6, v1, :cond_2

    .line 168
    move v0, v1

    .line 169
    :cond_2
    invoke-virtual {v3, v5}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 172
    move-result-object v1

    .line 173
    if-nez v1, :cond_3

    .line 175
    goto :goto_2

    .line 176
    :cond_3
    invoke-virtual {v3, v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRouteClientState(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;Z)V

    .line 179
    :goto_2
    monitor-exit v2

    .line 180
    goto/16 :goto_1b

    .line 182
    :catchall_4
    move-exception p0

    .line 183
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 184
    throw p0

    .line 185
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 187
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 189
    monitor-enter v0

    .line 190
    :try_start_b
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 192
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 194
    monitor-enter v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 195
    :try_start_c
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 197
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    check-cast v3, Landroid/content/Intent;

    .line 201
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monReceiveBtEvent(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Intent;)V

    .line 204
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 205
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 206
    goto/16 :goto_1b

    .line 208
    :catchall_5
    move-exception p0

    .line 209
    goto :goto_3

    .line 210
    :catchall_6
    move-exception p0

    .line 211
    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 212
    :try_start_f
    throw p0

    .line 213
    :goto_3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 214
    throw p0

    .line 215
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 217
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->onPersistAudioDeviceSettings()V

    .line 220
    goto/16 :goto_1b

    .line 222
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 224
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 226
    monitor-enter v0

    .line 227
    :try_start_10
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 229
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 231
    monitor-enter v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 232
    :try_start_11
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 234
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 238
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->onCheckCommunicationDeviceRemoval(Landroid/media/AudioDeviceAttributes;)V

    .line 241
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 242
    :try_start_12
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 243
    goto/16 :goto_1b

    .line 245
    :catchall_7
    move-exception p0

    .line 246
    goto :goto_4

    .line 247
    :catchall_8
    move-exception p0

    .line 248
    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 249
    :try_start_14
    throw p0

    .line 250
    :goto_4
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 251
    throw p0

    .line 252
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 256
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->notifyActiveDeviceChangeApplied(Landroid/bluetooth/BluetoothDevice;)I

    .line 263
    goto/16 :goto_1b

    .line 265
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 267
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 269
    monitor-enter v0

    .line 270
    :try_start_15
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 272
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 274
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 276
    check-cast v2, Ljava/lang/String;

    .line 278
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 280
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 282
    invoke-virtual {v1, v3, v5, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeLeAudioDeviceUnavailableNow(IILjava/lang/String;)V

    .line 285
    monitor-exit v0

    .line 286
    goto/16 :goto_1b

    .line 288
    :catchall_9
    move-exception p0

    .line 289
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 290
    throw p0

    .line 291
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 293
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 295
    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 297
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 299
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 301
    iget-object v3, v2, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 303
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    move-result-object v5

    .line 307
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    move-result-object v3

    .line 311
    check-cast v3, Ljava/util/List;

    .line 313
    if-eqz v3, :cond_1c

    .line 315
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 318
    iget-object v1, v2, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 320
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    move-result-object v5

    .line 324
    invoke-virtual {v1, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {v2, v0, v3}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchNonDefaultDevice(ILjava/util/List;)V

    .line 330
    goto/16 :goto_1b

    .line 332
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 334
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 336
    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 338
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 340
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 342
    iget-object v3, v2, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 344
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    move-result-object v5

    .line 348
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    move-result-object v3

    .line 352
    check-cast v3, Ljava/util/List;

    .line 354
    if-nez v3, :cond_4

    .line 356
    new-instance v3, Ljava/util/ArrayList;

    .line 358
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 361
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 364
    move-result v5

    .line 365
    if-nez v5, :cond_5

    .line 367
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_5
    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 372
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 375
    move-result-object v6

    .line 376
    invoke-virtual {v5, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-virtual {v2, v0, v3}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchNonDefaultDevice(ILjava/util/List;)V

    .line 382
    iget-object v3, v2, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 384
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 387
    move-result-object v5

    .line 388
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    move-result-object v3

    .line 392
    check-cast v3, Ljava/util/List;

    .line 394
    if-eqz v3, :cond_1c

    .line 396
    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 399
    iget-object v1, v2, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 401
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    move-result-object v5

    .line 405
    invoke-virtual {v1, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-virtual {v2, v0, v3}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILjava/util/List;)V

    .line 411
    goto/16 :goto_1b

    .line 413
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 415
    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;

    .line 417
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 419
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 421
    monitor-enter v1

    .line 422
    :try_start_16
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 424
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 426
    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mIndex:I

    .line 428
    iget v6, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mMaxIndex:I

    .line 430
    iget v7, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mStreamType:I

    .line 432
    invoke-virtual {v2, v5, v6, v7}, Lcom/android/server/audio/BtHelper;->setLeAudioVolume(III)V

    .line 435
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 437
    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->isDualModeActive()Z

    .line 440
    move-result v2

    .line 441
    if-eqz v2, :cond_6

    .line 443
    iget v2, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mStreamType:I

    .line 445
    if-ne v2, v3, :cond_6

    .line 447
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 449
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 451
    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mIndex:I

    .line 453
    invoke-virtual {v2, v0}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndex(I)V

    .line 456
    goto :goto_5

    .line 457
    :catchall_a
    move-exception p0

    .line 458
    goto :goto_6

    .line 459
    :cond_6
    :goto_5
    monitor-exit v1

    .line 460
    goto/16 :goto_1b

    .line 462
    :goto_6
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 463
    throw p0

    .line 464
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 466
    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 468
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 470
    if-nez v2, :cond_7

    .line 472
    goto/16 :goto_1b

    .line 474
    :cond_7
    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 476
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    .line 480
    const-string/jumbo v7, "msg: MSG_L_BT_ACTIVE_DEVICE_CHANGE_EXT "

    .line 483
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    move-result-object v5

    .line 493
    invoke-direct {v3, v5}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 496
    const-string v5, "AS.AudioDeviceBroker"

    .line 498
    invoke-virtual {v3, v0, v5}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 501
    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 504
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 506
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 508
    monitor-enter v0

    .line 509
    :try_start_17
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 511
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 513
    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)V

    .line 516
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 517
    iget v0, v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 519
    const/16 v2, 0x1a

    .line 521
    if-ne v0, v2, :cond_1c

    .line 523
    iget v0, v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 525
    if-ne v0, v6, :cond_1c

    .line 527
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler$$ExternalSyntheticLambda0;

    .line 529
    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;)V

    .line 532
    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 535
    goto/16 :goto_1b

    .line 537
    :catchall_b
    move-exception p0

    .line 538
    :try_start_18
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 539
    throw p0

    .line 540
    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 542
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 544
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 546
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    .line 548
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 551
    move-result-object v3

    .line 552
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    new-instance v2, Ljava/util/ArrayList;

    .line 557
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 560
    invoke-virtual {v1, v0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchDevicesRoleForCapturePreset(ILjava/util/List;)V

    .line 563
    goto/16 :goto_1b

    .line 565
    :pswitch_e
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 567
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 569
    check-cast v1, Ljava/util/List;

    .line 571
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 573
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 575
    iget-object v3, v2, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    .line 577
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 580
    move-result-object v5

    .line 581
    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    invoke-virtual {v2, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchDevicesRoleForCapturePreset(ILjava/util/List;)V

    .line 587
    goto/16 :goto_1b

    .line 589
    :pswitch_f
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 591
    sget-object v2, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    .line 593
    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    .line 596
    goto/16 :goto_1b

    .line 598
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 600
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 602
    monitor-enter v0

    .line 603
    :try_start_19
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 605
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 607
    monitor-enter v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 608
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 610
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 612
    check-cast v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    .line 614
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 617
    if-nez v2, :cond_8

    .line 619
    goto :goto_7

    .line 620
    :cond_8
    const-string v3, "AS.AudioDeviceBroker"

    .line 622
    const-string v6, "Communication client died"

    .line 624
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v6, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    .line 629
    iget v7, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mUid:I

    .line 631
    iget-boolean v10, v2, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mIsPrivileged:Z

    .line 633
    const/4 v8, 0x0

    .line 634
    const/4 v9, -0x1

    .line 635
    const-string/jumbo v11, "onCommunicationRouteClientDied"

    .line 638
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;ILandroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V

    .line 641
    :goto_7
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    .line 642
    :try_start_1b
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    .line 643
    goto/16 :goto_1b

    .line 645
    :catchall_c
    move-exception p0

    .line 646
    goto :goto_8

    .line 647
    :catchall_d
    move-exception p0

    .line 648
    :try_start_1c
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    .line 649
    :try_start_1d
    throw p0

    .line 650
    :goto_8
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    .line 651
    throw p0

    .line 652
    :pswitch_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 654
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 656
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 658
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 660
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 663
    move-result-object v3

    .line 664
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    new-instance v2, Ljava/util/ArrayList;

    .line 669
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 672
    invoke-virtual {v1, v0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILjava/util/List;)V

    .line 675
    goto/16 :goto_1b

    .line 677
    :pswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 679
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 681
    check-cast v1, Ljava/util/List;

    .line 683
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 685
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 687
    iget-object v3, v2, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    .line 689
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 692
    move-result-object v5

    .line 693
    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iget-object v3, v2, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 698
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 701
    move-result-object v5

    .line 702
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    move-result-object v3

    .line 706
    check-cast v3, Ljava/util/List;

    .line 708
    if-eqz v3, :cond_a

    .line 710
    invoke-interface {v3, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 713
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 716
    move-result v5

    .line 717
    if-eqz v5, :cond_9

    .line 719
    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 721
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 724
    move-result-object v6

    .line 725
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    goto :goto_9

    .line 729
    :cond_9
    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    .line 731
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 734
    move-result-object v6

    .line 735
    invoke-virtual {v5, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    :goto_9
    invoke-virtual {v2, v0, v3}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchNonDefaultDevice(ILjava/util/List;)V

    .line 741
    :cond_a
    invoke-virtual {v2, v0, v1}, Lcom/android/server/audio/AudioDeviceInventory;->dispatchPreferredDevice(ILjava/util/List;)V

    .line 744
    goto/16 :goto_1b

    .line 746
    :pswitch_13
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 748
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 750
    monitor-enter v2

    .line 751
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 753
    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 755
    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    .line 756
    :try_start_1f
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 758
    invoke-virtual {v6, v5}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    .line 761
    move-result v5

    .line 762
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 764
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 766
    check-cast v7, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 768
    iput-object v7, v6, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 770
    iget-object v6, v6, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    .line 772
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 775
    move-result v6

    .line 776
    const/4 v7, 0x0

    .line 777
    if-nez v6, :cond_b

    .line 779
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 781
    iput-object v7, v6, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

    .line 783
    goto :goto_a

    .line 784
    :catchall_e
    move-exception p0

    .line 785
    goto :goto_b

    .line 786
    :cond_b
    :goto_a
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 788
    iget-object v8, v6, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    .line 790
    iget v9, v8, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    .line 792
    iget v10, v6, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoUid:I

    .line 794
    if-eq v9, v10, :cond_c

    .line 796
    iput v0, v6, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoUid:I

    .line 798
    iput v0, v6, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    .line 800
    iput-object v7, v6, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    .line 802
    :cond_c
    iget v0, v8, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mMode:I

    .line 804
    if-eq v0, v1, :cond_d

    .line 806
    const-string/jumbo v0, "setNewModeOwner"

    .line 809
    invoke-static {v6, v5, v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;ZLjava/lang/String;)V

    .line 812
    :cond_d
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    .line 813
    :try_start_20
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    .line 814
    goto/16 :goto_1b

    .line 816
    :catchall_f
    move-exception p0

    .line 817
    goto :goto_c

    .line 818
    :goto_b
    :try_start_21
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_e

    .line 819
    :try_start_22
    throw p0

    .line 820
    :goto_c
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    .line 821
    throw p0

    .line 822
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 824
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 826
    monitor-enter v2

    .line 827
    :try_start_23
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 829
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 831
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 833
    invoke-virtual {v0, v1}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndex(I)V

    .line 836
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 838
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDualModeActive()Z

    .line 841
    move-result v0

    .line 842
    if-eqz v0, :cond_e

    .line 844
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 846
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 848
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 850
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 852
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 854
    aget-object v0, v0, v3

    .line 856
    iget v0, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    .line 858
    invoke-virtual {v1, v5, v0, v3}, Lcom/android/server/audio/BtHelper;->setLeAudioVolume(III)V

    .line 861
    goto :goto_d

    .line 862
    :catchall_10
    move-exception p0

    .line 863
    goto :goto_e

    .line 864
    :cond_e
    :goto_d
    monitor-exit v2

    .line 865
    goto/16 :goto_1b

    .line 867
    :goto_e
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    .line 868
    throw p0

    .line 869
    :pswitch_15
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 871
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 873
    monitor-enter v2

    .line 874
    :try_start_24
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 876
    iget-object v5, v3, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 878
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 880
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 882
    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 884
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    const/high16 v8, 0x8000000

    .line 889
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 892
    move-result-object v8

    .line 893
    filled-new-array {v8}, [Ljava/lang/Integer;

    .line 896
    move-result-object v8

    .line 897
    invoke-static {v8}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 900
    move-result-object v8

    .line 901
    invoke-virtual {v3, v8}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 904
    move-result-object v3

    .line 905
    if-eqz v3, :cond_f

    .line 907
    move v0, v1

    .line 908
    :cond_f
    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/audio/BtHelper;->setHearingAidVolume(IIZ)V

    .line 911
    monitor-exit v2

    .line 912
    goto/16 :goto_1b

    .line 914
    :catchall_11
    move-exception p0

    .line 915
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    .line 916
    throw p0

    .line 917
    :pswitch_16
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 919
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 921
    monitor-enter v0

    .line 922
    :try_start_25
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 924
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 926
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onReportNewRoutes()V

    .line 929
    monitor-exit v0

    .line 930
    goto/16 :goto_1b

    .line 932
    :catchall_12
    move-exception p0

    .line 933
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    .line 934
    throw p0

    .line 935
    :pswitch_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 937
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 939
    invoke-static {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monSendBecomingNoisyIntent(Lcom/android/server/audio/AudioDeviceBroker;I)V

    .line 942
    goto/16 :goto_1b

    .line 944
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 946
    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 948
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 950
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 952
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 954
    iget v3, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 956
    iget-boolean v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    .line 958
    const-string v6, "MSG_L_BLUETOOTH_DEVICE_CONFIG_CHANGE"

    .line 960
    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/server/audio/BtHelper;->getCodecWithFallback(Landroid/bluetooth/BluetoothDevice;IZLjava/lang/String;)Landroid/util/Pair;

    .line 963
    move-result-object v1

    .line 964
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 966
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 968
    monitor-enter v2

    .line 969
    :try_start_26
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 971
    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 973
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 975
    check-cast v5, Ljava/lang/Integer;

    .line 977
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 980
    move-result v5

    .line 981
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 983
    check-cast v1, Ljava/lang/Boolean;

    .line 985
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 988
    move-result v1

    .line 989
    invoke-virtual {v3, v0, v5, v1}, Lcom/android/server/audio/AudioDeviceInventory;->onBluetoothDeviceConfigChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;IZ)I

    .line 992
    move-result v0

    .line 993
    add-int/2addr v4, v0

    .line 994
    monitor-exit v2

    .line 995
    goto/16 :goto_1b

    .line 997
    :catchall_13
    move-exception p0

    .line 998
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_13

    .line 999
    throw p0

    .line 1000
    :pswitch_19
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1002
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 1004
    monitor-enter v0

    .line 1005
    :try_start_27
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1007
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 1009
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1011
    check-cast v2, Ljava/lang/String;

    .line 1013
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1015
    invoke-virtual {v1, v3, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeA2dpDeviceUnavailableNow(ILjava/lang/String;)V

    .line 1018
    monitor-exit v0

    .line 1019
    goto/16 :goto_1b

    .line 1021
    :catchall_14
    move-exception p0

    .line 1022
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_14

    .line 1023
    throw p0

    .line 1024
    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1026
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 1028
    monitor-enter v2

    .line 1029
    :try_start_28
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1031
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 1033
    monitor-enter v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_15

    .line 1034
    :try_start_29
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1036
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 1038
    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    .line 1041
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_16

    .line 1042
    :try_start_2a
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_15

    .line 1043
    goto/16 :goto_1b

    .line 1045
    :catchall_15
    move-exception p0

    .line 1046
    goto :goto_f

    .line 1047
    :catchall_16
    move-exception p0

    .line 1048
    :try_start_2b
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    .line 1049
    :try_start_2c
    throw p0

    .line 1050
    :goto_f
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_15

    .line 1051
    throw p0

    .line 1052
    :pswitch_1b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1054
    check-cast v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    .line 1056
    iget v7, v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    .line 1058
    if-ne v7, v6, :cond_10

    .line 1060
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1062
    iget-object v6, v6, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 1064
    iget v7, v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 1066
    invoke-virtual {v6, v7}, Lcom/android/server/audio/BtHelper;->isProfilePoxyConnected(I)Z

    .line 1069
    move-result v6

    .line 1070
    if-nez v6, :cond_10

    .line 1072
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    .line 1074
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 1076
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1078
    const-string/jumbo v6, "msg: MSG_L_SET_BT_ACTIVE_DEVICE received with null profile proxy: "

    .line 1081
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1090
    move-result-object v2

    .line 1091
    invoke-direct {v3, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1094
    const-string v2, "AS.AudioDeviceBroker"

    .line 1096
    invoke-virtual {v3, v0, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 1099
    invoke-virtual {v1, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1102
    goto/16 :goto_1b

    .line 1104
    :cond_10
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1106
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 1108
    iget-object v6, v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1110
    iget v7, v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 1112
    iget-boolean v8, v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    .line 1114
    const-string v9, "MSG_L_SET_BT_ACTIVE_DEVICE"

    .line 1116
    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/server/audio/BtHelper;->getCodecWithFallback(Landroid/bluetooth/BluetoothDevice;IZLjava/lang/String;)Landroid/util/Pair;

    .line 1119
    move-result-object v0

    .line 1120
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1122
    iget-object v6, v6, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 1124
    monitor-enter v6

    .line 1125
    :try_start_2d
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1127
    iget-object v7, v7, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 1129
    monitor-enter v7
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    .line 1130
    :try_start_2e
    iget-object v8, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1132
    iget-object v8, v8, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 1134
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1136
    check-cast v0, Ljava/lang/Integer;

    .line 1138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1141
    move-result v0

    .line 1142
    iget v9, v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 1144
    if-ne v9, v3, :cond_12

    .line 1146
    iget-boolean v9, v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    .line 1148
    if-eqz v9, :cond_11

    .line 1150
    goto :goto_10

    .line 1151
    :cond_11
    const/4 v9, -0x1

    .line 1152
    goto :goto_11

    .line 1153
    :catchall_17
    move-exception p0

    .line 1154
    goto :goto_12

    .line 1155
    :cond_12
    :goto_10
    iget-object v9, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1157
    iget-object v9, v9, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 1159
    invoke-virtual {v9}, Lcom/android/server/audio/AudioService;->getBluetoothContextualVolumeStream()I

    .line 1162
    move-result v9

    .line 1163
    :goto_11
    invoke-virtual {v8, v2, v0, v9}, Lcom/android/server/audio/AudioDeviceInventory;->onSetBtActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;II)V

    .line 1166
    iget v0, v2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    .line 1168
    if-eq v0, v3, :cond_13

    .line 1170
    const/16 v2, 0x15

    .line 1172
    if-eq v0, v2, :cond_13

    .line 1174
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1176
    iget-boolean v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mScoManagedByAudio:Z

    .line 1178
    if-eqz v2, :cond_14

    .line 1180
    if-ne v0, v1, :cond_14

    .line 1182
    :cond_13
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1184
    invoke-virtual {v0, v5}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceRequestedForCommunication(I)Z

    .line 1187
    move-result v1

    .line 1188
    const-string/jumbo v2, "setBluetoothActiveDevice"

    .line 1191
    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;ZLjava/lang/String;)V

    .line 1194
    :cond_14
    monitor-exit v7
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_17

    .line 1195
    :try_start_2f
    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_18

    .line 1196
    goto/16 :goto_1b

    .line 1198
    :catchall_18
    move-exception p0

    .line 1199
    goto :goto_13

    .line 1200
    :goto_12
    :try_start_30
    monitor-exit v7
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_17

    .line 1201
    :try_start_31
    throw p0

    .line 1202
    :goto_13
    monitor-exit v6
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_18

    .line 1203
    throw p0

    .line 1204
    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1206
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 1208
    monitor-enter v2

    .line 1209
    :try_start_32
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1211
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 1213
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceInventory;->onToggleHdmi()V

    .line 1216
    monitor-exit v2

    .line 1217
    goto/16 :goto_1b

    .line 1219
    :catchall_19
    move-exception p0

    .line 1220
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_19

    .line 1221
    throw p0

    .line 1222
    :pswitch_1d
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1224
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1226
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1229
    move-result v2

    .line 1230
    if-eqz v2, :cond_15

    .line 1232
    goto :goto_14

    .line 1233
    :cond_15
    const/16 v0, 0xa

    .line 1235
    :goto_14
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1237
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1239
    check-cast v3, Ljava/lang/String;

    .line 1241
    invoke-virtual {v2, v1, v0, v3, v1}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;Z)V

    .line 1244
    goto/16 :goto_1b

    .line 1246
    :pswitch_1e
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1248
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1250
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 1252
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1254
    check-cast v5, Ljava/lang/String;

    .line 1256
    sget-object v6, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    .line 1258
    invoke-virtual {v1, v2, v3, v5, v0}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;Z)V

    .line 1261
    goto/16 :goto_1b

    .line 1263
    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1265
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 1267
    monitor-enter v0

    .line 1268
    :try_start_33
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1270
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 1272
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1274
    invoke-virtual {v1, v2}, Lcom/android/server/audio/BtHelper;->onBroadcastScoConnectionState(I)V

    .line 1277
    monitor-exit v0

    .line 1278
    goto/16 :goto_1b

    .line 1280
    :catchall_1a
    move-exception p0

    .line 1281
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1a

    .line 1282
    throw p0

    .line 1283
    :pswitch_20
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1285
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 1287
    monitor-enter v0

    .line 1288
    :try_start_34
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1290
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 1292
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1294
    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    .line 1296
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    .line 1299
    monitor-exit v0

    .line 1300
    goto/16 :goto_1b

    .line 1302
    :catchall_1b
    move-exception p0

    .line 1303
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1b

    .line 1304
    throw p0

    .line 1305
    :pswitch_21
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1307
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 1309
    monitor-enter v2

    .line 1310
    :try_start_35
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1312
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 1314
    monitor-enter v0
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1c

    .line 1315
    :try_start_36
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1317
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->initRoutingStrategyIds()V

    .line 1320
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1322
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    .line 1325
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1327
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 1329
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceInventory;->onRestoreDevices()V

    .line 1332
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1334
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    .line 1336
    monitor-enter v1
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1d

    .line 1337
    :try_start_37
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1339
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->reapplyAudioHalBluetoothState()V

    .line 1342
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1e

    .line 1343
    :try_start_38
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1345
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 1347
    invoke-virtual {v1}, Lcom/android/server/audio/BtHelper;->onAudioServerDiedRestoreA2dp()V

    .line 1350
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1352
    const-string v3, "MSG_RESTORE_DEVICES"

    .line 1354
    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    .line 1357
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1d

    .line 1358
    :try_start_39
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1c

    .line 1359
    goto/16 :goto_1b

    .line 1361
    :catchall_1c
    move-exception p0

    .line 1362
    goto :goto_16

    .line 1363
    :catchall_1d
    move-exception p0

    .line 1364
    goto :goto_15

    .line 1365
    :catchall_1e
    move-exception p0

    .line 1366
    :try_start_3a
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1e

    .line 1367
    :try_start_3b
    throw p0

    .line 1368
    :goto_15
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1d

    .line 1369
    :try_start_3c
    throw p0

    .line 1370
    :goto_16
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1c

    .line 1371
    throw p0

    .line 1372
    :cond_16
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1374
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 1376
    monitor-enter v2

    .line 1377
    :try_start_3d
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1379
    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 1381
    monitor-enter v3
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1f

    .line 1382
    :try_start_3e
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1384
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 1386
    if-ne v6, v1, :cond_17

    .line 1388
    move v0, v1

    .line 1389
    :cond_17
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1391
    check-cast v1, Ljava/lang/String;

    .line 1393
    invoke-static {v5, v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monUpdateCommunicationRouteClient(Lcom/android/server/audio/AudioDeviceBroker;ZLjava/lang/String;)V

    .line 1396
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_20

    .line 1397
    :try_start_3f
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1f

    .line 1398
    goto/16 :goto_1b

    .line 1400
    :catchall_1f
    move-exception p0

    .line 1401
    goto :goto_17

    .line 1402
    :catchall_20
    move-exception p0

    .line 1403
    :try_start_40
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_20

    .line 1404
    :try_start_41
    throw p0

    .line 1405
    :goto_17
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_1f

    .line 1406
    throw p0

    .line 1407
    :cond_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1409
    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    .line 1411
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1413
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 1415
    monitor-enter v2

    .line 1416
    :try_start_42
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1418
    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 1420
    monitor-enter v3
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_22

    .line 1421
    :try_start_43
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1423
    invoke-virtual {v5, v0}, Lcom/android/server/audio/AudioDeviceBroker;->onSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V

    .line 1426
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_23

    .line 1427
    :try_start_44
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_22

    .line 1428
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1430
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    .line 1432
    monitor-enter v0

    .line 1433
    :try_start_45
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1435
    iget v3, v2, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    .line 1437
    if-lez v3, :cond_19

    .line 1439
    sub-int/2addr v3, v1

    .line 1440
    iput v3, v2, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    .line 1442
    goto :goto_18

    .line 1443
    :cond_19
    const-string v1, "AS.AudioDeviceBroker"

    .line 1445
    const-string/jumbo v2, "mCommunicationDeviceUpdateCount already 0 in MSG_L_SET_COMMUNICATION_DEVICE_FOR_CLIENT"

    .line 1448
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :goto_18
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1453
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    .line 1455
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1458
    monitor-exit v0

    .line 1459
    goto :goto_1b

    .line 1460
    :catchall_21
    move-exception p0

    .line 1461
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_21

    .line 1462
    throw p0

    .line 1463
    :catchall_22
    move-exception p0

    .line 1464
    goto :goto_19

    .line 1465
    :catchall_23
    move-exception p0

    .line 1466
    :try_start_46
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_23

    .line 1467
    :try_start_47
    throw p0

    .line 1468
    :goto_19
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_22

    .line 1469
    throw p0

    .line 1470
    :cond_1a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1472
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 1474
    monitor-enter v0

    .line 1475
    :try_start_48
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1477
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 1479
    monitor-enter v1
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_24

    .line 1480
    :try_start_49
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1482
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 1484
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1486
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1488
    check-cast v5, Landroid/bluetooth/BluetoothProfile;

    .line 1490
    invoke-virtual {v2, v3, v5}, Lcom/android/server/audio/BtHelper;->onBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1493
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_25

    .line 1494
    :try_start_4a
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_24

    .line 1495
    goto :goto_1b

    .line 1496
    :catchall_24
    move-exception p0

    .line 1497
    goto :goto_1a

    .line 1498
    :catchall_25
    move-exception p0

    .line 1499
    :try_start_4b
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_25

    .line 1500
    :try_start_4c
    throw p0

    .line 1501
    :goto_1a
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_24

    .line 1502
    throw p0

    .line 1503
    :cond_1b
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1505
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 1507
    monitor-enter v0

    .line 1508
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1510
    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 1512
    monitor-enter v1
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_26

    .line 1513
    :try_start_4e
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1515
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 1517
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1519
    invoke-virtual {v2, v3}, Lcom/android/server/audio/BtHelper;->onBtProfileDisconnected(I)V

    .line 1522
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1524
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 1526
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 1528
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioDeviceInventory;->onBtProfileDisconnected(I)V

    .line 1531
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_27

    .line 1532
    :try_start_4f
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_26

    .line 1533
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1535
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->resetBtScoOnByApp()V

    .line 1538
    :cond_1c
    :goto_1b
    invoke-static {}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$sfgetMESSAGES_MUTE_MUSIC()Ljava/util/Set;

    .line 1541
    move-result-object v0

    .line 1542
    iget v1, p1, Landroid/os/Message;->what:I

    .line 1544
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1547
    move-result-object v1

    .line 1548
    check-cast v0, Ljava/util/HashSet;

    .line 1550
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1553
    move-result v0

    .line 1554
    if-eqz v0, :cond_1d

    .line 1556
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1558
    invoke-static {v0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$msendMsg(Lcom/android/server/audio/AudioDeviceBroker;I)V

    .line 1561
    :cond_1d
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_SAR_RCV_CONTROL:Ljava/util/Set;

    .line 1563
    iget v1, p1, Landroid/os/Message;->what:I

    .line 1565
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1568
    move-result-object v1

    .line 1569
    check-cast v0, Ljava/util/HashSet;

    .line 1571
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1574
    move-result v0

    .line 1575
    if-eqz v0, :cond_1e

    .line 1577
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1579
    const/4 v6, 0x0

    .line 1580
    const/16 v7, 0x1f4

    .line 1582
    const/16 v2, 0xacb

    .line 1584
    const/4 v3, 0x0

    .line 1585
    const/4 v4, 0x0

    .line 1586
    const/4 v5, 0x0

    .line 1587
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 1590
    :cond_1e
    iget p1, p1, Landroid/os/Message;->what:I

    .line 1592
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    .line 1595
    move-result p1

    .line 1596
    if-eqz p1, :cond_1f

    .line 1598
    :try_start_50
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1600
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1602
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_0

    .line 1605
    goto :goto_1c

    .line 1606
    :catch_0
    move-exception p0

    .line 1607
    const-string p1, "AS.AudioDeviceBroker"

    .line 1609
    const-string v0, "Exception releasing wakelock"

    .line 1611
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1614
    :cond_1f
    :goto_1c
    return-void

    .line 1615
    :catchall_26
    move-exception p0

    .line 1616
    goto :goto_1d

    .line 1617
    :catchall_27
    move-exception p0

    .line 1618
    :try_start_51
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_27

    .line 1619
    :try_start_52
    throw p0

    .line 1620
    :goto_1d
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_26

    .line 1621
    throw p0

    .line 1622
    nop

    .line 1623
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    .line 1641
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 1661
    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_16
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 1679
    :pswitch_data_3
    .packed-switch 0x2d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 1693
    :pswitch_data_4
    .packed-switch 0x34
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1d
    .end packed-switch
.end method
