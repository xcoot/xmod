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

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string/jumbo v2, "registerApp()="

    .line 6
    .line 7
    .line 8
    const-string v3, "Get Report for Invalid report id = "

    .line 9
    .line 10
    const-string/jumbo v4, "retry connect "

    .line 11
    .line 12
    .line 13
    const-string/jumbo v5, "retry count : "

    .line 14
    .line 15
    .line 16
    const-string/jumbo v6, "will connect "

    .line 17
    .line 18
    .line 19
    iget v7, v1, Landroid/os/Message;->what:I

    .line 20
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

    .line 26
    .line 27
    .line 28
    goto/16 :goto_a

    .line 29
    .line 30
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    const-string v2, "WirelessKeyboardMouseShare"

    .line 36
    .line 37
    const-string/jumbo v3, "unregister by MESSAGE_NEED_HOST_ROLE message"

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 52
    .line 53
    iget-boolean v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()V

    .line 58
    .line 59
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

    .line 65
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

    .line 69
    .line 70
    iget-object v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v1

    .line 73
    :try_start_1
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 74
    .line 75
    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 76
    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_1

    .line 84
    .line 85
    const-string v2, "WirelessKeyboardMouseShare"

    .line 86
    .line 87
    const-string/jumbo v3, "startHIDDeviceByKey need to turn on bt."

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 94
    .line 95
    iput-boolean v11, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    .line 96
    .line 97
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 100
    .line 101
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

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_2

    .line 113
    .line 114
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_2

    .line 121
    .line 122
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 123
    .line 124
    iput-boolean v11, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 127
    .line 128
    .line 129
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    .line 132
    .line 133
    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 136
    :cond_2
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_3

    .line 143
    .line 144
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-ge v2, v9, :cond_3

    .line 151
    .line 152
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 153
    .line 154
    iput-boolean v11, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    .line 155
    .line 156
    :cond_3
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()V

    .line 159
    .line 160
    .line 161
    monitor-exit v1

    .line 162
    goto/16 :goto_a

    .line 163
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

    .line 167
    .line 168
    iget-object v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 169
    .line 170
    monitor-enter v1

    .line 171
    :try_start_2
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 172
    .line 173
    iget-object v3, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 174
    .line 175
    if-nez v3, :cond_6

    .line 176
    .line 177
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-nez v2, :cond_4

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_4
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 185
    .line 186
    iget-object v3, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 187
    .line 188
    if-eqz v3, :cond_5

    .line 189
    .line 190
    iget-object v3, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 191
    .line 192
    if-eqz v3, :cond_5

    .line 193
    .line 194
    iget v3, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 195
    .line 196
    if-ge v3, v9, :cond_5

    .line 197
    .line 198
    const-string v2, "WirelessKeyboardMouseShare"

    .line 199
    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 206
    .line 207
    iget-object v4, v4, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 208
    .line 209
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v4, " "

    .line 217
    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 222
    .line 223
    iget v4, v4, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 224
    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 236
    .line 237
    iget-object v3, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 238
    .line 239
    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 240
    .line 241
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothHidDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 242
    .line 243
    .line 244
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 245
    .line 246
    iput v10, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 247
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

    .line 252
    .line 253
    if-le v2, v8, :cond_8

    .line 254
    .line 255
    const-string v2, "WirelessKeyboardMouseShare"

    .line 256
    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 263
    .line 264
    iget v4, v4, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 265
    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 277
    .line 278
    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()V

    .line 279
    .line 280
    .line 281
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 282
    .line 283
    iput v10, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 284
    .line 285
    goto :goto_4

    .line 286
    :cond_6
    :goto_3
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 287
    .line 288
    iget v3, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 289
    .line 290
    add-int/2addr v3, v11

    .line 291
    iput v3, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 292
    .line 293
    const-string v2, "WirelessKeyboardMouseShare"

    .line 294
    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 301
    .line 302
    iget v4, v4, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 303
    .line 304
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 315
    .line 316
    iget v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 317
    .line 318
    if-ge v2, v9, :cond_7

    .line 319
    .line 320
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 321
    .line 322
    invoke-virtual {v0, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_7
    iput v10, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 327
    .line 328
    :cond_8
    :goto_4
    monitor-exit v1

    .line 329
    goto/16 :goto_a

    .line 330
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

    .line 334
    .line 335
    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendReadyToConnectIntent()V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_a

    .line 339
    .line 340
    :pswitch_4
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 341
    .line 342
    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendWirelessKeyboardShareStatus()V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_a

    .line 346
    .line 347
    :pswitch_5
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 348
    .line 349
    if-ne v1, v11, :cond_9

    .line 350
    .line 351
    move v10, v11

    .line 352
    :cond_9
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 353
    .line 354
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 355
    .line 356
    invoke-virtual {v0, v10}, Lcom/android/server/input/InputManagerService;->switchWirelessKeyboardShare(Z)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_a

    .line 360
    .line 361
    :pswitch_6
    const-string v0, "WirelessKeyboardMouseShare"

    .line 362
    .line 363
    const-string v1, "MESSAGE_NEED_TO_INITIALIZING"

    .line 364
    .line 365
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    goto/16 :goto_a

    .line 369
    .line 370
    :pswitch_7
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 371
    .line 372
    int-to-byte v1, v1

    .line 373
    const-string v2, "WirelessKeyboardMouseShare"

    .line 374
    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string v4, "MESSAGE_SET_REPORT_RECEIVED for id = "

    .line 378
    .line 379
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    const-string v1, "WirelessKeyboardMouseShare"

    .line 393
    .line 394
    const-string/jumbo v2, "onSetReport(), sending successful handshake for set report"

    .line 395
    .line 396
    .line 397
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 401
    .line 402
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 403
    .line 404
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 405
    .line 406
    invoke-virtual {v1, v0, v10}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 407
    .line 408
    .line 409
    goto/16 :goto_a

    .line 410
    .line 411
    :pswitch_8
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 412
    .line 413
    int-to-byte v1, v1

    .line 414
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 415
    .line 416
    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    .line 417
    .line 418
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    check-cast v2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    .line 423
    .line 424
    iget-object v4, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 425
    .line 426
    iget-object v4, v4, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 427
    .line 428
    monitor-enter v4

    .line 429
    if-eqz v2, :cond_a

    .line 430
    .line 431
    :try_start_3
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 432
    .line 433
    iget-object v3, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 434
    .line 435
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 436
    .line 437
    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;->data:[B

    .line 438
    .line 439
    invoke-virtual {v3, v0, v11, v1, v2}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    .line 440
    .line 441
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

    .line 446
    .line 447
    const/16 v2, 0x8

    .line 448
    .line 449
    new-array v3, v2, [B

    .line 450
    .line 451
    const-string v5, "WirelessKeyboardMouseShare"

    .line 452
    .line 453
    const-string/jumbo v6, "get_report id for keyboard"

    .line 454
    .line 455
    .line 456
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .line 458
    .line 459
    move v5, v10

    .line 460
    :goto_6
    if-ge v5, v2, :cond_b

    .line 461
    .line 462
    aput-byte v10, v3, v5

    .line 463
    .line 464
    add-int/lit8 v5, v5, 0x1

    .line 465
    .line 466
    goto :goto_6

    .line 467
    :cond_b
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 468
    .line 469
    invoke-static {v2, v1, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    .line 470
    .line 471
    .line 472
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 473
    .line 474
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 475
    .line 476
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 477
    .line 478
    invoke-virtual {v2, v0, v11, v1, v3}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    .line 479
    .line 480
    .line 481
    goto :goto_8

    .line 482
    :cond_c
    if-ne v1, v8, :cond_e

    .line 483
    .line 484
    const/4 v2, 0x4

    .line 485
    new-array v3, v2, [B

    .line 486
    .line 487
    const-string v5, "WirelessKeyboardMouseShare"

    .line 488
    .line 489
    const-string/jumbo v6, "get_report id for mouse"

    .line 490
    .line 491
    .line 492
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    move v5, v10

    .line 496
    :goto_7
    if-ge v5, v2, :cond_d

    .line 497
    .line 498
    aput-byte v10, v3, v5

    .line 499
    .line 500
    add-int/lit8 v5, v5, 0x1

    .line 501
    .line 502
    goto :goto_7

    .line 503
    :cond_d
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 504
    .line 505
    invoke-static {v2, v1, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    .line 506
    .line 507
    .line 508
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 509
    .line 510
    iget-object v2, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 511
    .line 512
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 513
    .line 514
    invoke-virtual {v2, v0, v11, v1, v3}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    .line 515
    .line 516
    .line 517
    goto :goto_8

    .line 518
    :cond_e
    const-string v2, "WirelessKeyboardMouseShare"

    .line 519
    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    .line 521
    .line 522
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 536
    .line 537
    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 538
    .line 539
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 540
    .line 541
    invoke-virtual {v1, v0, v8}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    .line 542
    .line 543
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

    .line 549
    .line 550
    iget-object v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    .line 551
    .line 552
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 553
    .line 554
    .line 555
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 556
    .line 557
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mOutputReportCache:Landroid/util/SparseArray;

    .line 558
    .line 559
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 560
    .line 561
    .line 562
    goto :goto_a

    .line 563
    :pswitch_a
    new-instance v1, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    .line 564
    .line 565
    const-string v4, "Samsung HID Device"

    .line 566
    .line 567
    const-string v5, "Samsung HID Keyboard/Mouse"

    .line 568
    .line 569
    const-string v6, "Samsung"

    .line 570
    .line 571
    sget-object v8, Lcom/android/server/input/HidConsts;->DESCRIPTOR:[B

    .line 572
    .line 573
    const/16 v7, -0x40

    .line 574
    .line 575
    move-object v3, v1

    .line 576
    invoke-direct/range {v3 .. v8}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V

    .line 577
    .line 578
    .line 579
    new-instance v5, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 580
    .line 581
    const/4 v12, 0x2

    .line 582
    const/16 v13, 0xc8

    .line 583
    .line 584
    const/4 v10, 0x2

    .line 585
    const/16 v11, 0xc8

    .line 586
    .line 587
    const/16 v14, 0x2710

    .line 588
    .line 589
    const/16 v15, 0x2710

    .line 590
    .line 591
    move-object v9, v5

    .line 592
    invoke-direct/range {v9 .. v15}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    .line 593
    .line 594
    .line 595
    new-instance v6, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 596
    .line 597
    const/16 v19, 0x9

    .line 598
    .line 599
    const/16 v20, 0x384

    .line 600
    .line 601
    const/16 v17, 0x2

    .line 602
    .line 603
    const/16 v18, 0x384

    .line 604
    .line 605
    const/16 v21, 0x2710

    .line 606
    .line 607
    const/16 v22, 0x2710

    .line 608
    .line 609
    move-object/from16 v16, v6

    .line 610
    .line 611
    invoke-direct/range {v16 .. v22}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    .line 612
    .line 613
    .line 614
    :try_start_4
    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 615
    .line 616
    iget-object v3, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 617
    .line 618
    iget-object v7, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mExecutor:Lcom/android/server/input/WirelessKeyboardMouseShare$1;

    .line 619
    .line 620
    iget-object v8, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mCallback:Lcom/android/server/input/WirelessKeyboardMouseShare$4;

    .line 621
    .line 622
    move-object v4, v1

    .line 623
    invoke-virtual/range {v3 .. v8}, Landroid/bluetooth/BluetoothHidDevice;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;)Z

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    const-string v1, "WirelessKeyboardMouseShare"

    .line 628
    .line 629
    new-instance v3, Ljava/lang/StringBuilder;

    .line 630
    .line 631
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 642
    .line 643
    .line 644
    goto :goto_a

    .line 645
    :catch_0
    const-string v0, "WirelessKeyboardMouseShare"

    .line 646
    .line 647
    const-string v1, "Can\'t registerApp"

    .line 648
    .line 649
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .line 651
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
