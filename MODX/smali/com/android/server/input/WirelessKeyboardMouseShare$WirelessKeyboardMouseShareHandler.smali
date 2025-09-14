.class public final Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string/jumbo v2, "registerApp()="

    .line 8
    const-string v3, "Get Report for Invalid report id = "

    .line 10
    const-string/jumbo v4, "retry connect "

    .line 13
    const-string/jumbo v5, "retry count : "

    .line 16
    const-string/jumbo v6, "will connect "

    .line 19
    iget v7, v1, Landroid/os/Message;->what:I

    .line 21
    const/4 v8, 0x2

    .line 22
    const/4 v9, 0x3

    .line 23
    const/4 v10, 0x0

    .line 24
    const/4 v11, 0x1

    .line 25
    packed-switch v7, :pswitch_data_0

    .line 28
    goto/16 :goto_a

    .line 30
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 32
    iget-object v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    const-string v2, "WirelessKeyboardMouseShare"

    .line 37
    const-string/jumbo v3, "unregister by MESSAGE_NEED_HOST_ROLE message"

    .line 40
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 45
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 51
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 53
    iget-boolean v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 55
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()V

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    :goto_0
    monitor-exit v1

    .line 64
    goto/16 :goto_a

    .line 66
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v0

    .line 68
    :pswitch_1
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 70
    iget-object v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 72
    monitor-enter v1

    .line 73
    :try_start_1
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 75
    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 77
    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_1

    .line 85
    const-string v2, "WirelessKeyboardMouseShare"

    .line 87
    const-string/jumbo v3, "startHIDDeviceByKey need to turn on bt."

    .line 90
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 95
    iput-boolean v11, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    .line 97
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 99
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 102
    monitor-exit v1

    .line 103
    return-void

    .line 104
    :catchall_1
    move-exception v0

    .line 105
    goto :goto_2

    .line 106
    :cond_1
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 108
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_2

    .line 114
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 116
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_2

    .line 122
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 124
    iput-boolean v11, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 126
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 129
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 131
    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 136
    :cond_2
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 138
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_3

    .line 144
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 146
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    .line 149
    move-result v2

    .line 150
    if-ge v2, v9, :cond_3

    .line 152
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 154
    iput-boolean v11, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    .line 156
    :cond_3
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 158
    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()V

    .line 161
    monitor-exit v1

    .line 162
    goto/16 :goto_a

    .line 164
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    throw v0

    .line 166
    :pswitch_2
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 168
    iget-object v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 170
    monitor-enter v1

    .line 171
    :try_start_2
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 173
    iget-object v3, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 175
    if-nez v3, :cond_6

    .line 177
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    .line 180
    move-result v2

    .line 181
    if-nez v2, :cond_4

    .line 183
    goto :goto_3

    .line 184
    :cond_4
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 186
    iget-object v3, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 188
    if-eqz v3, :cond_5

    .line 190
    iget-object v3, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 192
    if-eqz v3, :cond_5

    .line 194
    iget v3, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 196
    if-ge v3, v9, :cond_5

    .line 198
    const-string v2, "WirelessKeyboardMouseShare"

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    .line 202
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 207
    iget-object v4, v4, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 209
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v4, " "

    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 223
    iget v4, v4, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v3

    .line 232
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 237
    iget-object v3, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 239
    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 241
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothHidDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 244
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 246
    iput v10, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 248
    goto :goto_4

    .line 249
    :catchall_2
    move-exception v0

    .line 250
    goto :goto_5

    .line 251
    :cond_5
    iget v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 253
    if-le v2, v8, :cond_8

    .line 255
    const-string v2, "WirelessKeyboardMouseShare"

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    .line 259
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 264
    iget v4, v4, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object v3

    .line 273
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 278
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()V

    .line 281
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 283
    iput v10, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 285
    goto :goto_4

    .line 286
    :cond_6
    :goto_3
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 288
    iget v3, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 290
    add-int/2addr v3, v11

    .line 291
    iput v3, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 293
    const-string v2, "WirelessKeyboardMouseShare"

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    .line 297
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 302
    iget v4, v4, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 304
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    move-result-object v3

    .line 311
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 316
    iget v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 318
    if-ge v2, v9, :cond_7

    .line 320
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 322
    invoke-virtual {v0, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 325
    goto :goto_4

    .line 326
    :cond_7
    iput v10, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 328
    :cond_8
    :goto_4
    monitor-exit v1

    .line 329
    goto/16 :goto_a

    .line 331
    :goto_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 332
    throw v0

    .line 333
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 335
    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendReadyToConnectIntent()V

    .line 338
    goto/16 :goto_a

    .line 340
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 342
    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendWirelessKeyboardShareStatus()V

    .line 345
    goto/16 :goto_a

    .line 347
    :pswitch_5
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 349
    if-ne v1, v11, :cond_9

    .line 351
    move v10, v11

    .line 352
    :cond_9
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 354
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 356
    invoke-virtual {v0, v10}, Lcom/android/server/input/InputManagerService;->switchWirelessKeyboardShare(Z)V

    .line 359
    goto/16 :goto_a

    .line 361
    :pswitch_6
    const-string v0, "WirelessKeyboardMouseShare"

    .line 363
    const-string v1, "MESSAGE_NEED_TO_INITIALIZING"

    .line 365
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    goto/16 :goto_a

    .line 370
    :pswitch_7
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 372
    int-to-byte v1, v1

    .line 373
    const-string v2, "WirelessKeyboardMouseShare"

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    .line 377
    const-string v4, "MESSAGE_SET_REPORT_RECEIVED for id = "

    .line 379
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    move-result-object v1

    .line 389
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v1, "WirelessKeyboardMouseShare"

    .line 394
    const-string/jumbo v2, "onSetReport(), sending successful handshake for set report"

    .line 397
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 402
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 404
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 406
    invoke-virtual {v1, v0, v10}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 409
    goto/16 :goto_a

    .line 411
    :pswitch_8
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 413
    int-to-byte v1, v1

    .line 414
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 416
    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    .line 418
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 421
    move-result-object v2

    .line 422
    check-cast v2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    .line 424
    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 426
    iget-object v4, v4, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 428
    monitor-enter v4

    .line 429
    if-eqz v2, :cond_a

    .line 431
    :try_start_3
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 433
    iget-object v3, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 435
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 437
    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;->data:[B

    .line 439
    invoke-virtual {v3, v0, v11, v1, v2}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    .line 442
    goto :goto_8

    .line 443
    :catchall_3
    move-exception v0

    .line 444
    goto :goto_9

    .line 445
    :cond_a
    if-ne v1, v11, :cond_c

    .line 447
    const/16 v2, 0x8

    .line 449
    new-array v3, v2, [B

    .line 451
    const-string v5, "WirelessKeyboardMouseShare"

    .line 453
    const-string/jumbo v6, "get_report id for keyboard"

    .line 456
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    move v5, v10

    .line 460
    :goto_6
    if-ge v5, v2, :cond_b

    .line 462
    aput-byte v10, v3, v5

    .line 464
    add-int/lit8 v5, v5, 0x1

    .line 466
    goto :goto_6

    .line 467
    :cond_b
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 469
    invoke-static {v2, v1, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    .line 472
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 474
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 476
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 478
    invoke-virtual {v2, v0, v11, v1, v3}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    .line 481
    goto :goto_8

    .line 482
    :cond_c
    if-ne v1, v8, :cond_e

    .line 484
    const/4 v2, 0x4

    .line 485
    new-array v3, v2, [B

    .line 487
    const-string v5, "WirelessKeyboardMouseShare"

    .line 489
    const-string/jumbo v6, "get_report id for mouse"

    .line 492
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    move v5, v10

    .line 496
    :goto_7
    if-ge v5, v2, :cond_d

    .line 498
    aput-byte v10, v3, v5

    .line 500
    add-int/lit8 v5, v5, 0x1

    .line 502
    goto :goto_7

    .line 503
    :cond_d
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 505
    invoke-static {v2, v1, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    .line 508
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 510
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 512
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 514
    invoke-virtual {v2, v0, v11, v1, v3}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    .line 517
    goto :goto_8

    .line 518
    :cond_e
    const-string v2, "WirelessKeyboardMouseShare"

    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    .line 522
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    move-result-object v1

    .line 532
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 537
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 539
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 541
    invoke-virtual {v1, v0, v8}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 544
    :goto_8
    monitor-exit v4

    .line 545
    goto :goto_a

    .line 546
    :goto_9
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 547
    throw v0

    .line 548
    :pswitch_9
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 550
    iget-object v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    .line 552
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 555
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 557
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mOutputReportCache:Landroid/util/SparseArray;

    .line 559
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 562
    goto :goto_a

    .line 563
    :pswitch_a
    new-instance v1, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    .line 565
    const-string v4, "Samsung HID Device"

    .line 567
    const-string v5, "Samsung HID Keyboard/Mouse"

    .line 569
    const-string v6, "Samsung"

    .line 571
    sget-object v8, Lcom/android/server/input/HidConsts;->DESCRIPTOR:[B

    .line 573
    const/16 v7, -0x40

    .line 575
    move-object v3, v1

    .line 576
    invoke-direct/range {v3 .. v8}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V

    .line 579
    new-instance v5, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 581
    const/4 v12, 0x2

    .line 582
    const/16 v13, 0xc8

    .line 584
    const/4 v10, 0x2

    .line 585
    const/16 v11, 0xc8

    .line 587
    const/16 v14, 0x2710

    .line 589
    const/16 v15, 0x2710

    .line 591
    move-object v9, v5

    .line 592
    invoke-direct/range {v9 .. v15}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    .line 595
    new-instance v6, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 597
    const/16 v19, 0x9

    .line 599
    const/16 v20, 0x384

    .line 601
    const/16 v17, 0x2

    .line 603
    const/16 v18, 0x384

    .line 605
    const/16 v21, 0x2710

    .line 607
    const/16 v22, 0x2710

    .line 609
    move-object/from16 v16, v6

    .line 611
    invoke-direct/range {v16 .. v22}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    .line 614
    :try_start_4
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 616
    iget-object v3, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 618
    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mExecutor:Lcom/android/server/input/WirelessKeyboardMouseShare$1;

    .line 620
    iget-object v8, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mCallback:Lcom/android/server/input/WirelessKeyboardMouseShare$4;

    .line 622
    move-object v4, v1

    .line 623
    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/BluetoothHidDevice;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;)Z

    .line 626
    move-result v0

    .line 627
    const-string v1, "WirelessKeyboardMouseShare"

    .line 629
    new-instance v3, Ljava/lang/StringBuilder;

    .line 631
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 640
    move-result-object v0

    .line 641
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 644
    goto :goto_a

    .line 645
    :catch_0
    const-string v0, "WirelessKeyboardMouseShare"

    .line 647
    const-string v1, "Can\'t registerApp"

    .line 649
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_a
    return-void

    .line 653
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
