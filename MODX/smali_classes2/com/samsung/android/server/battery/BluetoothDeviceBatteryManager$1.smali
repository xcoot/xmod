.class public final Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    const-string p1, "BluetoothDeviceBatteryManager"

    .line 2
    .line 3
    const-string/jumbo v0, "transport: "

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "state: "

    .line 7
    .line 8
    .line 9
    const-string v2, "# changeType: "

    .line 10
    .line 11
    const-string v3, "action: "

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const-string v3, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const-string v5, "bluetoothDevice is null"

    .line 39
    .line 40
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    :try_start_1
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 49
    .line 50
    if-nez p2, :cond_0

    .line 51
    .line 52
    invoke-static {p1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catch_0
    move-exception p0

    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$smprintDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 63
    .line 64
    invoke-static {p0, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$mhandleBatteryLevelChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_1
    const-string v3, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_a

    .line 76
    .line 77
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 82
    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    invoke-static {p1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$smprintDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V

    .line 90
    .line 91
    .line 92
    const-string v1, "com.samsung.bluetooth.device.extra.META_DATA"

    .line 93
    .line 94
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iget-object v1, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const-string v1, "BluetoothDeviceBatteryManager"

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    if-eqz p2, :cond_8

    .line 107
    .line 108
    array-length v4, p2

    .line 109
    const/4 v5, 0x4

    .line 110
    if-ge v4, v5, :cond_3

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    aget-byte v4, p2, v3

    .line 114
    .line 115
    and-int/lit16 v4, v4, 0xff

    .line 116
    .line 117
    const/4 v5, 0x1

    .line 118
    aget-byte v6, p2, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    .line 120
    and-int/lit16 v6, v6, 0xff

    .line 121
    .line 122
    shl-int/lit8 v6, v6, 0x8

    .line 123
    .line 124
    or-int/2addr v4, v6

    .line 125
    const v6, 0xffff

    .line 126
    .line 127
    .line 128
    and-int/2addr v4, v6

    .line 129
    const/16 v7, 0x100

    .line 130
    .line 131
    const/4 v8, 0x3

    .line 132
    if-eq v4, v7, :cond_4

    .line 133
    .line 134
    move v4, v3

    .line 135
    move v7, v4

    .line 136
    move v9, v7

    .line 137
    :goto_0
    :try_start_2
    array-length v10, p2

    .line 138
    if-ge v4, v10, :cond_5

    .line 139
    .line 140
    aget-byte v10, p2, v4

    .line 141
    .line 142
    and-int/lit16 v10, v10, 0xff

    .line 143
    .line 144
    add-int/lit8 v11, v4, 0x1

    .line 145
    .line 146
    aget-byte v11, p2, v11

    .line 147
    .line 148
    and-int/lit16 v11, v11, 0xff

    .line 149
    .line 150
    shl-int/lit8 v11, v11, 0x8

    .line 151
    .line 152
    or-int/2addr v10, v11

    .line 153
    and-int/2addr v10, v6

    .line 154
    add-int/lit8 v11, v4, 0x2

    .line 155
    .line 156
    aget-byte v11, p2, v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    .line 158
    and-int/lit16 v11, v11, 0xff

    .line 159
    .line 160
    add-int/2addr v11, v8

    .line 161
    add-int/2addr v4, v11

    .line 162
    packed-switch v10, :pswitch_data_0

    .line 163
    .line 164
    .line 165
    packed-switch v10, :pswitch_data_1

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :pswitch_0
    move v9, v5

    .line 170
    goto :goto_0

    .line 171
    :pswitch_1
    move v7, v5

    .line 172
    goto :goto_0

    .line 173
    :catch_1
    move-exception p2

    .line 174
    :try_start_3
    const-string v4, "getChangeType exception: "

    .line 175
    .line 176
    invoke-static {p2, v4, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_4
    move v7, v3

    .line 181
    move v9, v7

    .line 182
    :cond_5
    :goto_1
    if-eqz v7, :cond_6

    .line 183
    .line 184
    if-eqz v9, :cond_6

    .line 185
    .line 186
    move v3, v8

    .line 187
    goto :goto_3

    .line 188
    :cond_6
    if-eqz v7, :cond_7

    .line 189
    .line 190
    move v3, v5

    .line 191
    goto :goto_3

    .line 192
    :cond_7
    if-eqz v9, :cond_9

    .line 193
    .line 194
    const/4 v3, 0x2

    .line 195
    goto :goto_3

    .line 196
    :cond_8
    :goto_2
    const-string/jumbo p2, "parseSupportedFeatures :: DataPacket is too short."

    .line 197
    .line 198
    .line 199
    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    :cond_9
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    if-eqz v3, :cond_15

    .line 218
    .line 219
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 220
    .line 221
    invoke-static {p0, v0, v3}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$mhandleMetaDataChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;I)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_6

    .line 225
    .line 226
    :cond_a
    const-string v2, "com.samsung.bluetooth.device.action.SMEP_CONNECTION_STATE_CHANGED"

    .line 227
    .line 228
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    const/4 v3, 0x3

    .line 233
    if-eqz v2, :cond_d

    .line 234
    .line 235
    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 236
    .line 237
    const/4 v2, -0x1

    .line 238
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    const/4 v2, 0x2

    .line 243
    if-ne v0, v2, :cond_c

    .line 244
    .line 245
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 250
    .line 251
    if-nez p2, :cond_b

    .line 252
    .line 253
    invoke-static {p1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 258
    .line 259
    invoke-static {p0, p2, v3}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$mhandleMetaDataChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;I)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_6

    .line 263
    .line 264
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    goto/16 :goto_6

    .line 280
    .line 281
    :cond_d
    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED"

    .line 282
    .line 283
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_f

    .line 288
    .line 289
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 294
    .line 295
    if-nez p2, :cond_e

    .line 296
    .line 297
    invoke-static {p1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 302
    .line 303
    invoke-static {p0, p2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$mhandleDeviceNameChanged(Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_6

    .line 307
    .line 308
    :cond_f
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 309
    .line 310
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_11

    .line 315
    .line 316
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    .line 321
    .line 322
    if-nez p0, :cond_10

    .line 323
    .line 324
    invoke-static {p1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :cond_10
    invoke-static {p0}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$smprintDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_6

    .line 332
    .line 333
    :cond_11
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 334
    .line 335
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_15

    .line 340
    .line 341
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 346
    .line 347
    if-nez v1, :cond_12

    .line 348
    .line 349
    invoke-static {p1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :cond_12
    invoke-static {v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->-$$Nest$smprintDeviceInfo(Landroid/bluetooth/BluetoothDevice;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    iget-object v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 361
    .line 362
    iget-object v2, v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 363
    .line 364
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->containsBatteryInfo(Ljava/lang/String;)Z

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    if-eqz v2, :cond_15

    .line 369
    .line 370
    iget-object v2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 371
    .line 372
    iget-object v2, v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 373
    .line 374
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-virtual {v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    const/4 v5, 0x5

    .line 383
    if-eq v4, v5, :cond_14

    .line 384
    .line 385
    invoke-virtual {v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    const/16 v5, 0xc

    .line 390
    .line 391
    if-ne v4, v5, :cond_13

    .line 392
    .line 393
    goto :goto_4

    .line 394
    :cond_13
    invoke-virtual {v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceType()I

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-ne v2, v3, :cond_15

    .line 399
    .line 400
    const-string v2, "android.bluetooth.device.extra.TRANSPORT"

    .line 401
    .line 402
    const/high16 v3, -0x80000000

    .line 403
    .line 404
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 405
    .line 406
    .line 407
    move-result p2

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    const/4 v0, 0x1

    .line 424
    if-ne p2, v0, :cond_15

    .line 425
    .line 426
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 427
    .line 428
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 429
    .line 430
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->removeBatteryInfo(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_14
    :goto_4
    const-string p2, "Remove spen battery info"

    .line 435
    .line 436
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 440
    .line 441
    iget-object p0, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;->mBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    .line 442
    .line 443
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->removeBatteryInfo(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 444
    .line 445
    .line 446
    goto :goto_6

    .line 447
    :goto_5
    const-string p2, "exception occurred : "

    .line 448
    .line 449
    invoke-static {p0, p2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    :cond_15
    :goto_6
    return-void

    .line 453
    :pswitch_data_0
    .packed-switch 0x208
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    :pswitch_data_1
    .packed-switch 0x228
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
