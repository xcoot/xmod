.class public final Lcom/android/server/usb/UsbHostRestrictor$4;
.super Landroid/os/UEventObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

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
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    const-string v1, "ACTION"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "PRODUCT"

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v2, "add"

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x1

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    const-string v1, "UsbHostRestrictor"

    .line 32
    .line 33
    const-string/jumbo v2, "uevent add"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    sput-boolean v4, Lcom/android/server/usb/UsbHostRestrictor;->mIsHostConnected:Z

    .line 40
    .line 41
    sget v1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 42
    .line 43
    if-ne v1, v4, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/server/usb/UsbHostRestrictor;->isFinishLockTimer()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_4

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_0
    if-eqz v1, :cond_2

    .line 66
    .line 67
    const/4 v2, 0x3

    .line 68
    if-ne v1, v2, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const-string p0, "UsbHostRestrictor"

    .line 72
    .line 73
    const-string/jumbo p1, "skip update vid:pid reason - SCREEN LOCK"

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    .line 81
    .line 82
    const-string v1, "/"

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    const-string v1, "/"

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    aget-object v1, p1, v3

    .line 97
    .line 98
    aget-object p1, p1, v4

    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 101
    .line 102
    invoke-static {v2, v1, p1}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mupdateVidPidList(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->readFileToString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeVpidHistorytoFile(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    const-string/jumbo p1, "remove"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 133
    .line 134
    iget-object p1, p1, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    const-string/jumbo v1, "usb"

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Landroid/hardware/usb/UsbManager;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_4

    .line 154
    .line 155
    const-string p1, "UsbHostRestrictor"

    .line 156
    .line 157
    const-string v1, "USB DeviceList Empty"

    .line 158
    .line 159
    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    sput-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->mIsHostConnected:Z

    .line 163
    .line 164
    sget p1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 165
    .line 166
    if-ne p1, v4, :cond_4

    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 169
    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->startLockTimer()V

    .line 174
    .line 175
    .line 176
    :cond_4
    :goto_1
    monitor-exit v0

    .line 177
    return-void

    .line 178
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    throw p0

    .line 180
    :pswitch_0
    const-string/jumbo v0, "unknown state "

    .line 181
    .line 182
    .line 183
    sget-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    .line 184
    .line 185
    monitor-enter v1

    .line 186
    :try_start_1
    const-string v2, "USB_STATE"

    .line 187
    .line 188
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    const-string v2, "DISCONNECTED"

    .line 193
    .line 194
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    const/4 v3, 0x1

    .line 199
    if-eqz v2, :cond_5

    .line 200
    .line 201
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 202
    .line 203
    iget-object p1, p1, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 204
    .line 205
    const-string/jumbo v0, "usb"

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Landroid/hardware/usb/UsbManager;

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_7

    .line 223
    .line 224
    const-string p1, "UsbHostRestrictor"

    .line 225
    .line 226
    const-string v0, "USB DeviceList Empty"

    .line 227
    .line 228
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    const/4 p1, 0x0

    .line 232
    sput-boolean p1, Lcom/android/server/usb/UsbHostRestrictor;->mIsDeviceConnected:Z

    .line 233
    .line 234
    sget p1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 235
    .line 236
    if-ne p1, v3, :cond_7

    .line 237
    .line 238
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 239
    .line 240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->startLockTimer()V

    .line 244
    .line 245
    .line 246
    goto :goto_3

    .line 247
    :catchall_1
    move-exception p0

    .line 248
    goto :goto_5

    .line 249
    :cond_5
    const-string v2, "CONNECTED"

    .line 250
    .line 251
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_6

    .line 256
    .line 257
    sput-boolean v3, Lcom/android/server/usb/UsbHostRestrictor;->mIsDeviceConnected:Z

    .line 258
    .line 259
    sget p1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 260
    .line 261
    if-ne p1, v3, :cond_7

    .line 262
    .line 263
    iget-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/android/server/usb/UsbHostRestrictor;->isFinishLockTimer()Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-nez p1, :cond_7

    .line 270
    .line 271
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 272
    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_6
    const-string p0, "CONFIGURED"

    .line 281
    .line 282
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result p0

    .line 286
    if-eqz p0, :cond_8

    .line 287
    .line 288
    :cond_7
    :goto_3
    monitor-exit v1

    .line 289
    goto :goto_4

    .line 290
    :cond_8
    const-string p0, "UsbHostRestrictor"

    .line 291
    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    monitor-exit v1

    .line 308
    :goto_4
    return-void

    .line 309
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    throw p0

    .line 311
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    const-string v1, "USB HOST UEVENT : event="

    .line 314
    .line 315
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    const-string v1, "UsbHostRestrictor"

    .line 330
    .line 331
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    const-string v0, "ACTION"

    .line 335
    .line 336
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    const-string v2, "DEVPATH"

    .line 341
    .line 342
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    const-string v3, "STATE"

    .line 347
    .line 348
    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    const-string v4, "change"

    .line 353
    .line 354
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_e

    .line 359
    .line 360
    if-eqz v3, :cond_e

    .line 361
    .line 362
    const-string v0, "/devices/virtual/host_notify"

    .line 363
    .line 364
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-eqz v0, :cond_e

    .line 369
    .line 370
    :try_start_2
    const-string v0, "BLOCK"

    .line 371
    .line 372
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-eqz v0, :cond_e

    .line 377
    .line 378
    iget-object v0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 379
    .line 380
    iget-object v0, v0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 381
    .line 382
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    const-string/jumbo v2, "user_setup_complete"

    .line 387
    .line 388
    .line 389
    const/4 v3, 0x1

    .line 390
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-eq v0, v3, :cond_9

    .line 395
    .line 396
    const-string p0, "UEventObserver SETUP WIZARD SCREEN. So skip about showing USB BLOCK Popup"

    .line 397
    .line 398
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    goto/16 :goto_8

    .line 402
    .line 403
    :cond_9
    sget-object v0, Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    const/4 v4, 0x3

    .line 410
    const/4 v5, 0x2

    .line 411
    sparse-switch v2, :sswitch_data_0

    .line 412
    .line 413
    .line 414
    goto :goto_6

    .line 415
    :sswitch_0
    const-string v2, "ON_ALL_SCREEN"

    .line 416
    .line 417
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-eqz v0, :cond_a

    .line 422
    .line 423
    move v0, v3

    .line 424
    goto :goto_7

    .line 425
    :sswitch_1
    const-string v2, "ON_ALL_SIM"

    .line 426
    .line 427
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_a

    .line 432
    .line 433
    move v0, v5

    .line 434
    goto :goto_7

    .line 435
    :sswitch_2
    const-string v2, "ON_ALL_BOTH"

    .line 436
    .line 437
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-eqz v0, :cond_a

    .line 442
    .line 443
    const/4 v0, 0x0

    .line 444
    goto :goto_7

    .line 445
    :sswitch_3
    const-string v2, "ON_HOST_MDM"

    .line 446
    .line 447
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-eqz v0, :cond_a

    .line 452
    .line 453
    move v0, v4

    .line 454
    goto :goto_7

    .line 455
    :cond_a
    :goto_6
    const/4 v0, -0x1

    .line 456
    :goto_7
    if-eqz v0, :cond_d

    .line 457
    .line 458
    if-eq v0, v3, :cond_e

    .line 459
    .line 460
    if-eq v0, v5, :cond_c

    .line 461
    .line 462
    if-eq v0, v4, :cond_b

    .line 463
    .line 464
    const-string p0, "USB HOST is BLOCKED by UNKNOWN. Do Nothing!"

    .line 465
    .line 466
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .line 468
    .line 469
    goto :goto_8

    .line 470
    :cond_b
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 471
    .line 472
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    .line 474
    .line 475
    const-string/jumbo v0, "showMDMToast"

    .line 476
    .line 477
    .line 478
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 482
    .line 483
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 484
    .line 485
    .line 486
    move-result-object p0

    .line 487
    if-eqz p0, :cond_e

    .line 488
    .line 489
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 490
    .line 491
    .line 492
    move-result-object p0

    .line 493
    if-eqz p0, :cond_e

    .line 494
    .line 495
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    .line 496
    .line 497
    .line 498
    goto :goto_8

    .line 499
    :cond_c
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 500
    .line 501
    invoke-static {p0}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mshowAlertDialog(Lcom/android/server/usb/UsbHostRestrictor;)V

    .line 502
    .line 503
    .line 504
    goto :goto_8

    .line 505
    :cond_d
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 506
    .line 507
    invoke-static {p0}, Lcom/android/server/usb/UsbHostRestrictor;->-$$Nest$mshowAlertDialog(Lcom/android/server/usb/UsbHostRestrictor;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 508
    .line 509
    .line 510
    goto :goto_8

    .line 511
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    const-string v0, "Could not parse state or devPath from event "

    .line 514
    .line 515
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object p0

    .line 525
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .line 527
    .line 528
    :cond_e
    :goto_8
    return-void

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    :sswitch_data_0
    .sparse-switch
        -0x7cd7fb21 -> :sswitch_3
        0x1e909df -> :sswitch_2
        0x10942699 -> :sswitch_1
        0x48266b4a -> :sswitch_0
    .end sparse-switch
.end method
