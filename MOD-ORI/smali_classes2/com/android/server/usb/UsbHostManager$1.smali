.class public final Lcom/android/server/usb/UsbHostManager$1;
.super Landroid/os/UEventObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbHostManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/usb/UsbHostManager$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$1;->this$0:Lcom/android/server/usb/UsbHostManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 14

    .line 1
    iget v0, p0, Lcom/android/server/usb/UsbHostManager$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->sFormat:Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v1, "onUEvent(USB Control): "

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "UsbHostManager"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-string v0, "TYPE"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "STATE"

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string/jumbo v2, "usbaudio"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_6

    .line 48
    .line 49
    const-string v0, "PATH"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string v0, "CARDNUM"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v0, "ADD"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const-string v11, "USB-Audio - Samsung USB C Earphone"

    .line 68
    .line 69
    const-string/jumbo v2, "usb_audio_automatic_routing_disabled"

    .line 70
    .line 71
    .line 72
    const-string/jumbo v3, "no AudioService"

    .line 73
    .line 74
    .line 75
    const-string v4, "UsbAlsaManager"

    .line 76
    .line 77
    const-string v6, " cardNum="

    .line 78
    .line 79
    const/4 v12, 0x1

    .line 80
    const/4 v13, 0x0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager$1;->this$0:Lcom/android/server/usb/UsbHostManager;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 86
    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string/jumbo v1, "usbDeviceAddedBundle(): deviceAddress="

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 119
    .line 120
    if-nez v0, :cond_0

    .line 121
    .line 122
    invoke-static {v4, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    goto/16 :goto_0

    .line 126
    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v0, v2, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_1

    .line 138
    .line 139
    const-string p0, "Disable USB audio routing is ON at usbDeviceAddedBundle"

    .line 140
    .line 141
    invoke-static {v4, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_1
    new-instance v0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 147
    .line 148
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 149
    .line 150
    const/4 v9, 0x1

    .line 151
    const/4 v10, 0x0

    .line 152
    const/4 v6, 0x1

    .line 153
    const/4 v7, 0x1

    .line 154
    const/4 v8, 0x1

    .line 155
    move-object v2, v0

    .line 156
    move v4, p1

    .line 157
    invoke-direct/range {v2 .. v10}, Lcom/android/server/usb/UsbAlsaDevice;-><init>(Landroid/media/IAudioService;ILjava/lang/String;ZZZZZ)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 161
    .line 162
    iput-boolean v13, p0, Lcom/android/server/usb/UsbAlsaManager;->isBundleRemovedDone:Z

    .line 163
    .line 164
    monitor-enter v0

    .line 165
    :try_start_0
    iput-object v11, v0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .line 167
    monitor-exit v0

    .line 168
    invoke-virtual {v0, v12}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionStateByBundle(Z)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :catchall_0
    move-exception p0

    .line 174
    monitor-exit v0

    .line 175
    throw p0

    .line 176
    :cond_2
    const-string v0, "REMOVE"

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_6

    .line 183
    .line 184
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager$1;->this$0:Lcom/android/server/usb/UsbHostManager;

    .line 185
    .line 186
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 187
    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string/jumbo v1, "usbDeviceRemovedBundle(): deviceAddress="

    .line 198
    .line 199
    .line 200
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 220
    .line 221
    if-nez v0, :cond_3

    .line 222
    .line 223
    invoke-static {v4, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 228
    .line 229
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0, v2, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_4

    .line 238
    .line 239
    const-string p0, "Disable USB audio routing is ON at usbDeviceRemovedBundle"

    .line 240
    .line 241
    invoke-static {v4, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    goto :goto_0

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 246
    .line 247
    if-nez v0, :cond_5

    .line 248
    .line 249
    const-string p0, "No Selected Bundel Device at usbDeviceRemovedBundle"

    .line 250
    .line 251
    invoke-static {v4, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    goto :goto_0

    .line 255
    :cond_5
    new-instance v0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 256
    .line 257
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 258
    .line 259
    const/4 v9, 0x1

    .line 260
    const/4 v10, 0x0

    .line 261
    const/4 v6, 0x1

    .line 262
    const/4 v7, 0x1

    .line 263
    const/4 v8, 0x1

    .line 264
    move-object v2, v0

    .line 265
    move v4, p1

    .line 266
    invoke-direct/range {v2 .. v10}, Lcom/android/server/usb/UsbAlsaDevice;-><init>(Landroid/media/IAudioService;ILjava/lang/String;ZZZZZ)V

    .line 267
    .line 268
    .line 269
    const/4 p1, 0x0

    .line 270
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 271
    .line 272
    iput-boolean v12, p0, Lcom/android/server/usb/UsbAlsaManager;->isBundleRemovedDone:Z

    .line 273
    .line 274
    monitor-enter v0

    .line 275
    :try_start_1
    iput-object v11, v0, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    .line 277
    monitor-exit v0

    .line 278
    invoke-virtual {v0, v13}, Lcom/android/server/usb/UsbAlsaDevice;->updateWiredDeviceConnectionStateByBundle(Z)V

    .line 279
    .line 280
    .line 281
    goto :goto_0

    .line 282
    :catchall_1
    move-exception p0

    .line 283
    monitor-exit v0

    .line 284
    throw p0

    .line 285
    :cond_6
    :goto_0
    return-void

    .line 286
    :pswitch_0
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->sFormat:Ljava/text/SimpleDateFormat;

    .line 287
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string/jumbo v1, "onUEvent(Host Path): "

    .line 291
    .line 292
    .line 293
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    const-string v1, "UsbHostManager"

    .line 304
    .line 305
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    const-string v0, "ACTION"

    .line 309
    .line 310
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    const-string v1, "STATE"

    .line 315
    .line 316
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    const-string v1, "change"

    .line 321
    .line 322
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_9

    .line 327
    .line 328
    if-eqz p1, :cond_9

    .line 329
    .line 330
    const-string v0, "Connect"

    .line 331
    .line 332
    const-string v1, "com.samsung.UsbOtgCableConnection"

    .line 333
    .line 334
    const-string v2, "REMOVE"

    .line 335
    .line 336
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-nez v2, :cond_8

    .line 341
    .line 342
    const-string v2, "ADD"

    .line 343
    .line 344
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    if-nez p1, :cond_7

    .line 349
    .line 350
    goto :goto_1

    .line 351
    :cond_7
    new-instance p1, Landroid/content/Intent;

    .line 352
    .line 353
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string v1, "On"

    .line 357
    .line 358
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    .line 360
    .line 361
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager$1;->this$0:Lcom/android/server/usb/UsbHostManager;

    .line 362
    .line 363
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 364
    .line 365
    invoke-static {p0, p1, v0}, Lcom/android/server/usb/UsbHostManager;->-$$Nest$mbroadcastWithPendingQueue(Lcom/android/server/usb/UsbHostManager;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 366
    .line 367
    .line 368
    goto :goto_1

    .line 369
    :cond_8
    new-instance p1, Landroid/content/Intent;

    .line 370
    .line 371
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    const-string v1, "Off"

    .line 375
    .line 376
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    .line 378
    .line 379
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager$1;->this$0:Lcom/android/server/usb/UsbHostManager;

    .line 380
    .line 381
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 382
    .line 383
    invoke-static {p0, p1, v0}, Lcom/android/server/usb/UsbHostManager;->-$$Nest$mbroadcastWithPendingQueue(Lcom/android/server/usb/UsbHostManager;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 384
    .line 385
    .line 386
    :cond_9
    :goto_1
    return-void

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
