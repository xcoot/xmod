.class public final Lcom/android/server/input/WirelessKeyboardMouseShare$4;
.super Landroid/bluetooth/BluetoothHidDevice$Callback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 3
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice$Callback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3

    .line 1
    const-string v0, "WirelessKeyboardMouseShare"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "onAppStatusChanged: pluggedDevice="

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 14
    move-object p1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, " registered="

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 40
    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 42
    monitor-enter p1

    .line 43
    if-eqz p2, :cond_1

    .line 45
    :try_start_0
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 47
    iget-object p2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 49
    const/4 v0, 0x5

    .line 50
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 62
    iput-object v2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 64
    iget-object v0, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-virtual {p2, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->setToLocalTablet(Z)Z

    .line 70
    move-result p2

    .line 71
    const/4 v1, 0x0

    .line 72
    const/4 v2, 0x6

    .line 73
    invoke-virtual {v0, v2, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 80
    :goto_1
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 85
    monitor-exit p1

    .line 86
    return-void

    .line 87
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method

.method public final onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 10

    .line 1
    const-string v0, "WirelessKeyboardMouseShare"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "onConnectionStateChanged: device="

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 14
    move-object v3, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v3, " state="

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 40
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 42
    monitor-enter v0

    .line 43
    if-nez p1, :cond_1

    .line 45
    :try_start_0
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto/16 :goto_9

    .line 50
    :cond_1
    const/4 v1, 0x1

    .line 51
    const/4 v3, 0x2

    .line 52
    const/4 v4, 0x0

    .line 53
    if-ne p2, v3, :cond_6

    .line 55
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 57
    iget v6, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    .line 59
    const/4 v7, 0x4

    .line 60
    if-ne v6, v7, :cond_4

    .line 62
    iget-object v6, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 64
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    move v8, v1

    .line 66
    :goto_1
    if-ge v8, v7, :cond_3

    .line 68
    :try_start_1
    iget-object v9, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 70
    aget-object v9, v9, v8

    .line 72
    if-nez v9, :cond_2

    .line 74
    monitor-exit v6

    .line 75
    move v7, v8

    .line 76
    goto :goto_2

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    :goto_2
    :try_start_2
    iput v7, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    goto :goto_4

    .line 86
    :goto_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    :try_start_4
    throw p0

    .line 88
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 90
    iget v6, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    .line 92
    invoke-static {v5, p1, v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$maddPairedDevicesListLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;I)I

    .line 95
    move-result v5

    .line 96
    if-nez v5, :cond_7

    .line 98
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 100
    invoke-virtual {p2, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    .line 103
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 106
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 108
    invoke-virtual {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 111
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 113
    iget-object p2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 115
    invoke-virtual {p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->existBluetoothDeviceLocked(Landroid/bluetooth/BluetoothDevice;)Z

    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_5

    .line 121
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 123
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 128
    :cond_5
    monitor-exit v0

    .line 129
    return-void

    .line 130
    :cond_6
    move v5, v4

    .line 131
    :cond_7
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 133
    iput p2, v6, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    .line 135
    const/4 v7, 0x6

    .line 136
    const/16 v8, 0xb

    .line 138
    if-ne p2, v3, :cond_a

    .line 140
    iget-object v2, v6, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 142
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 149
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 151
    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 153
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v2

    .line 157
    if-nez v2, :cond_8

    .line 159
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 161
    iput-object p1, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 163
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 166
    move-result-object v6

    .line 167
    iput-object v6, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLastestConnectedName:Ljava/lang/String;

    .line 169
    const-string v2, "WirelessKeyboardMouseShare"

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    const-string/jumbo v9, "mPluggedDevice is "

    .line 179
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 185
    move-result-object v9

    .line 186
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v6

    .line 193
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_8
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 198
    iput-object p1, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 200
    iput-boolean v4, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 202
    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 204
    invoke-virtual {v2, v7, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 211
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 213
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 216
    if-ne v5, v3, :cond_9

    .line 218
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 220
    iput-boolean v1, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    .line 222
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    .line 225
    :cond_9
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 227
    iput-boolean v4, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 229
    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 231
    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_10

    .line 237
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 239
    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 241
    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    goto :goto_6

    .line 245
    :cond_a
    if-nez p2, :cond_f

    .line 247
    iget-boolean v5, v6, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 249
    if-eq v5, v1, :cond_b

    .line 251
    iget-object v5, v6, Lcom/android/server/input/WirelessKeyboardMouseShare;->mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    .line 253
    invoke-virtual {v5, v4}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->clear(Z)V

    .line 256
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 258
    iget-object v5, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    .line 260
    invoke-virtual {v5, v4}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->clear(Z)V

    .line 263
    :cond_b
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 265
    iget-boolean v6, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mDisconnectWithoutUnregister:Z

    .line 267
    if-nez v6, :cond_e

    .line 269
    iget-object v5, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 271
    if-eqz v5, :cond_c

    .line 273
    invoke-virtual {v5, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 276
    move-result v5

    .line 277
    if-eqz v5, :cond_c

    .line 279
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 281
    invoke-virtual {v5}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()V

    .line 284
    goto :goto_5

    .line 285
    :cond_c
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 287
    iget-object v5, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 289
    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    .line 292
    move-result v5

    .line 293
    if-eqz v5, :cond_d

    .line 295
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 297
    iget-object v5, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 299
    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    :cond_d
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 304
    iput-boolean v1, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 306
    iget-object v5, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 308
    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 311
    move-result-object v5

    .line 312
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 314
    iget-object v6, v6, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 316
    const-wide/16 v8, 0x1388

    .line 318
    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 321
    :cond_e
    :goto_5
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 323
    iput-boolean v4, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mDisconnectWithoutUnregister:Z

    .line 325
    iput-boolean v1, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 327
    iput-object v2, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 329
    iget-object v2, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 331
    invoke-virtual {v2, v7, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 338
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 340
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 343
    :cond_f
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 345
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    :cond_10
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 349
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->IFW_WIRELESS_KEYBOARD_SA_LOGGING:Z

    .line 351
    if-eqz v0, :cond_13

    .line 353
    if-ne p2, v3, :cond_13

    .line 355
    move p2, v1

    .line 356
    :goto_7
    const/4 v0, 0x3

    .line 357
    if-gt p2, v0, :cond_13

    .line 359
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 361
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 363
    aget-object v0, v0, p2

    .line 365
    if-eqz v0, :cond_12

    .line 367
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_12

    .line 373
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 375
    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    .line 377
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 380
    move-result-object v0

    .line 381
    check-cast p1, Ljava/util/HashMap;

    .line 383
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    move-result-object p1

    .line 387
    if-eqz p1, :cond_11

    .line 389
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 391
    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    .line 393
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    move-result-object v0

    .line 397
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 399
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    .line 401
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    move-result-object p2

    .line 405
    check-cast p0, Ljava/util/HashMap;

    .line 407
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    move-result-object p0

    .line 411
    check-cast p0, Ljava/lang/Integer;

    .line 413
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 416
    move-result p0

    .line 417
    add-int/2addr p0, v1

    .line 418
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 421
    move-result-object p0

    .line 422
    check-cast p1, Ljava/util/HashMap;

    .line 424
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    goto :goto_8

    .line 428
    :cond_11
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 430
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    .line 432
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    move-result-object p1

    .line 436
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    move-result-object p2

    .line 440
    check-cast p0, Ljava/util/HashMap;

    .line 442
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    goto :goto_8

    .line 446
    :cond_12
    add-int/lit8 p2, p2, 0x1

    .line 448
    goto :goto_7

    .line 449
    :cond_13
    :goto_8
    return-void

    .line 450
    :goto_9
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 451
    throw p0
.end method

.method public final onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p2, v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 7
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 9
    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const-string p4, "WirelessKeyboardMouseShare"

    .line 19
    const/4 v2, 0x2

    .line 20
    if-ne p2, v2, :cond_4

    .line 22
    if-eq p3, v1, :cond_1

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v0, "onGetReport(), output report for invalid id = "

    .line 29
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    invoke-static {p4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 44
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 46
    invoke-virtual {p0, p1, v2}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 52
    iget-object p2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mOutputReportCache:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    .line 60
    if-nez p2, :cond_3

    .line 62
    const/16 p2, 0x8

    .line 64
    new-array v0, p2, [B

    .line 66
    const-string/jumbo v1, "get_report id for keyboard"

    .line 69
    invoke-static {p4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 p4, 0x0

    .line 73
    move v1, p4

    .line 74
    :goto_0
    if-ge v1, p2, :cond_2

    .line 76
    aput-byte p4, v0, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 83
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 85
    invoke-virtual {p0, p1, v2, p3, v0}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 91
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 93
    iget-object p2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;->data:[B

    .line 95
    invoke-virtual {p0, p1, v2, p3, p2}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v1, "onGetReport(), unsupported report type = "

    .line 104
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    invoke-static {p4, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 119
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 121
    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 124
    :goto_1
    return-void
.end method

.method public final onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V
    .locals 0

    .line 1
    const-string/jumbo p0, "intr data: reportId="

    .line 4
    const-string p1, " data="

    .line 6
    invoke-static {p2, p0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object p0

    .line 10
    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    const-string p1, "WirelessKeyboardMouseShare"

    .line 23
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public final onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V
    .locals 1

    .line 1
    const-string/jumbo p1, "protocol set to "

    .line 4
    const-string v0, "WirelessKeyboardMouseShare"

    .line 6
    invoke-static {p2, p1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    return-void
.end method

.method public final onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V
    .locals 3

    .line 1
    const-string v0, "WirelessKeyboardMouseShare"

    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq p2, v1, :cond_0

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo p4, "onSetReport(), unsupported report type = "

    .line 11
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 26
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 28
    const/4 p2, 0x3

    .line 29
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p2, 0x1

    .line 34
    const/4 v2, 0x0

    .line 35
    if-eq p3, p2, :cond_2

    .line 37
    if-ne p3, v1, :cond_1

    .line 39
    const-string/jumbo p2, "onSetReport(), mouse report id, sending successful handshake for set report"

    .line 42
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 47
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 49
    invoke-virtual {p0, p1, v2}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 52
    return-void

    .line 53
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 55
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 57
    invoke-virtual {p0, p1, v1}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 63
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 65
    const/4 p1, 0x4

    .line 66
    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p0, p1, p3, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 77
    :goto_0
    return-void
.end method

.method public final onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 3
    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 11
    const-string p0, "WirelessKeyboardMouseShare"

    .line 13
    const-string/jumbo v0, "onVirtualCableUnplug mPluggedDevice is null"

    .line 16
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    monitor-exit p1

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method
