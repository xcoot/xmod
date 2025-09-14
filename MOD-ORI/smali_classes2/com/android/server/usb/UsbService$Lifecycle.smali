.class public final Lcom/android/server/usb/UsbService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mOnActivityManagerPhaseFinished:Ljava/util/concurrent/CompletableFuture;

.field public final mOnStartFinished:Ljava/util/concurrent/CompletableFuture;

.field public mUsbService:Lcom/android/server/usb/UsbService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnStartFinished:Ljava/util/concurrent/CompletableFuture;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnActivityManagerPhaseFinished:Ljava/util/concurrent/CompletableFuture;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 9

    .line 1
    const/16 v0, 0x226

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "UsbService"

    .line 6
    .line 7
    const-string v0, "UsbService -> SystemService.PHASE_ACTIVITY_MANAGER_READY"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    new-instance p1, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-direct {p1, p0, v0}, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbService$Lifecycle;I)V

    .line 16
    .line 17
    .line 18
    const-string p0, "UsbService$Lifecycle#onBootPhase"

    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 21
    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_0
    const/16 v0, 0x3e8

    .line 26
    .line 27
    if-ne p1, v0, :cond_14

    .line 28
    .line 29
    const-string p1, "UsbService"

    .line 30
    .line 31
    const-string v0, "UsbService -> SystemService.PHASE_BOOT_COMPLETED"

    .line 32
    .line 33
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnActivityManagerPhaseFinished:Ljava/util/concurrent/CompletableFuture;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/usb/UsbService;->mUsbUI:Lcom/android/server/usb/UsbUI;

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    const-string v1, "UsbUI"

    .line 49
    .line 50
    const-string v2, "boot completed"

    .line 51
    .line 52
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iput-boolean v0, p1, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    .line 56
    .line 57
    const-string v1, ""

    .line 58
    .line 59
    iget-object v2, p1, Lcom/android/server/usb/UsbUI;->mUsbBlkPendingIntent:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    iget-object v1, p1, Lcom/android/server/usb/UsbUI;->mUsbBlkPendingIntent:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/android/server/usb/UsbUI;->sendingUsbRestrictionStateIntent(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object v1, p1, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    const-string/jumbo v2, "usb"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroid/hardware/usb/UsbManager;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    const/4 v4, 0x0

    .line 112
    :goto_0
    if-ge v4, v3, :cond_2

    .line 113
    .line 114
    invoke-virtual {v2, v4}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    const-string v8, "add"

    .line 131
    .line 132
    invoke-virtual {p1, v6, v7, v5, v8}, Lcom/android/server/usb/UsbUI;->notifyUsbInterface(IIILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    add-int/lit8 v4, v4, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_3
    iget-object p1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 139
    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    const-string v1, "UsbHostManager"

    .line 143
    .line 144
    const-string v2, "boot completed"

    .line 145
    .line 146
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    iput-boolean v0, p1, Lcom/android/server/usb/UsbHostManager;->mBootCompleted:Z

    .line 150
    .line 151
    :cond_4
    iget-object p1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 152
    .line 153
    if-eqz p1, :cond_5

    .line 154
    .line 155
    const-string v1, "UsbDeviceManager"

    .line 156
    .line 157
    const-string v2, "boot completed"

    .line 158
    .line 159
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    iget-object p1, p1, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 163
    .line 164
    const/4 v1, 0x4

    .line 165
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    .line 167
    .line 168
    :cond_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->enableUsbDataSignalStaking()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_6

    .line 173
    .line 174
    new-instance p1, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;

    .line 175
    .line 176
    invoke-direct {p1, p0}, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;-><init>(Lcom/android/server/usb/UsbService;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 182
    .line 183
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 188
    .line 189
    .line 190
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    .line 191
    .line 192
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 193
    .line 194
    invoke-direct {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 195
    .line 196
    .line 197
    new-instance v1, Lcom/android/server/usb/UsbService$StrongAuthTracker;

    .line 198
    .line 199
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbService$StrongAuthTracker;-><init>(Lcom/android/server/usb/UsbService;Landroid/content/Context;Landroid/os/Looper;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    .line 216
    .line 217
    if-eqz p0, :cond_14

    .line 218
    .line 219
    const-string p1, "UsbHostRestrictor"

    .line 220
    .line 221
    const-string v1, "initSetUsbBlock STARTED"

    .line 222
    .line 223
    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    sget-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mConHistFile:Ljava/io/File;

    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    if-eqz p1, :cond_7

    .line 233
    .line 234
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->readFileToString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeVpidHistorytoFile(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_7
    const-string p1, "UsbHostRestrictor"

    .line 243
    .line 244
    const-string v1, "There is no connection record"

    .line 245
    .line 246
    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    :goto_1
    sget-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    .line 250
    .line 251
    monitor-enter p1

    .line 252
    :try_start_0
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->mSecureKeyguardShowing:Z

    .line 253
    .line 254
    if-eqz v1, :cond_b

    .line 255
    .line 256
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isAdbOnlyMode()Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-nez v1, :cond_a

    .line 261
    .line 262
    sget v1, Lcom/android/server/usb/UsbHostRestrictor;->mSettingBlockUsbLock:I

    .line 263
    .line 264
    if-nez v1, :cond_8

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :cond_8
    const-string v1, "UsbHostRestrictor"

    .line 268
    .line 269
    const-string v2, "initSetUsbBlock LOCK_SCREEN_BLOCK : ON"

    .line 270
    .line 271
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    sget v1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 275
    .line 276
    const/4 v2, 0x2

    .line 277
    if-ne v1, v2, :cond_9

    .line 278
    .line 279
    const-string v1, "UsbHostRestrictor"

    .line 280
    .line 281
    const-string v2, "initSetUsbBlock USB already restricted"

    .line 282
    .line 283
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    goto :goto_3

    .line 287
    :catchall_0
    move-exception p0

    .line 288
    goto/16 :goto_4

    .line 289
    .line 290
    :cond_9
    const-string v1, "2"

    .line 291
    .line 292
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeScrLckBlkSysNodetoFile(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    sput v0, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 296
    .line 297
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->mIsDeviceConnected:Z

    .line 298
    .line 299
    if-nez v1, :cond_b

    .line 300
    .line 301
    sget-boolean v1, Lcom/android/server/usb/UsbHostRestrictor;->mIsHostConnected:Z

    .line 302
    .line 303
    if-nez v1, :cond_b

    .line 304
    .line 305
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->startLockTimer()V

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_a
    :goto_2
    const-string v1, "UsbHostRestrictor"

    .line 310
    .line 311
    const-string v2, "initSetUsbBlock LOCK_SCREEN_BLOCK : OFF"

    .line 312
    .line 313
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    const-string v1, "1"

    .line 317
    .line 318
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbHostRestrictor;->writeScrLckBlkSysNodetoFile(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const/4 v1, 0x3

    .line 322
    sput v1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 323
    .line 324
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    .line 325
    .line 326
    .line 327
    :cond_b
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    const-string/jumbo p1, "sys.config.usbSIMblock"

    .line 329
    .line 330
    .line 331
    const-string/jumbo v1, "true"

    .line 332
    .line 333
    .line 334
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    const-string/jumbo v1, "true"

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getSalesCode()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    const-string/jumbo v2, "null"

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-nez v2, :cond_c

    .line 357
    .line 358
    if-nez v1, :cond_d

    .line 359
    .line 360
    :cond_c
    const-string v1, "UsbHostRestrictor"

    .line 361
    .line 362
    const-string v2, "checkUsbBlockingCondition : salesCode is null"

    .line 363
    .line 364
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    const-string v1, "OXA"

    .line 368
    .line 369
    :cond_d
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 370
    .line 371
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-nez v2, :cond_11

    .line 384
    .line 385
    const-string v2, "UsbHostRestrictor"

    .line 386
    .line 387
    const-string v3, "SIM was never inserted"

    .line 388
    .line 389
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    if-ne p1, v0, :cond_f

    .line 393
    .line 394
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 395
    .line 396
    .line 397
    move-result p1

    .line 398
    if-nez p1, :cond_f

    .line 399
    .line 400
    const-string p1, "CHM"

    .line 401
    .line 402
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    if-nez p1, :cond_e

    .line 407
    .line 408
    const-string p1, "CBK"

    .line 409
    .line 410
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result p1

    .line 414
    if-eqz p1, :cond_f

    .line 415
    .line 416
    :cond_e
    const-string p1, "UsbHostRestrictor"

    .line 417
    .line 418
    const-string v1, "NEED to BLOCK by NO SIM"

    .line 419
    .line 420
    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    sput-boolean v0, Lcom/android/server/usb/UsbHostRestrictor;->isSIMBlock:Z

    .line 424
    .line 425
    :cond_f
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_10

    .line 434
    .line 435
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    goto :goto_5

    .line 439
    :cond_10
    const-string p0, "UsbHostRestrictor"

    .line 440
    .line 441
    const-string p1, "Can NOT Write Disable Sys Node 1"

    .line 442
    .line 443
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    goto :goto_5

    .line 447
    :cond_11
    if-lez v2, :cond_13

    .line 448
    .line 449
    const-string p1, "UsbHostRestrictor"

    .line 450
    .line 451
    const-string v0, "SIM has been already inserted"

    .line 452
    .line 453
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-eqz v0, :cond_12

    .line 465
    .line 466
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    goto :goto_5

    .line 470
    :cond_12
    const-string p0, "UsbHostRestrictor"

    .line 471
    .line 472
    const-string p1, "Can NOT Write Disable Sys Node 2"

    .line 473
    .line 474
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    goto :goto_5

    .line 478
    :cond_13
    if-gez v2, :cond_14

    .line 479
    .line 480
    const-string p0, "UsbHostRestrictor"

    .line 481
    .line 482
    const-string p1, "SIM COUNT value is abnormal"

    .line 483
    .line 484
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    goto :goto_5

    .line 488
    :goto_4
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    throw p0

    .line 490
    :cond_14
    :goto_5
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbService$Lifecycle;I)V

    .line 5
    .line 6
    .line 7
    const-string p0, "UsbService$Lifecycle#onStart"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByUser:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-ltz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->mPackageMonitor:Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v2, 0x0

    .line 73
    :goto_0
    if-ge v2, v0, :cond_1

    .line 74
    .line 75
    iget-object v3, p0, Lcom/android/server/usb/UsbSettingsManager;->mSettingsByProfileGroup:Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 82
    .line 83
    invoke-virtual {v3, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeUser(Landroid/os/UserHandle;)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    :goto_1
    monitor-exit v1

    .line 90
    return-void

    .line 91
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p0

    .line 93
    :catchall_1
    move-exception p0

    .line 94
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    throw p0
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    invoke-direct {v0, p0, p2}, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/usb/UsbService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v1, "UsbHostManager"

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v3, "onUnlockUser: userHandle="

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget v1, v0, Lcom/android/server/usb/UsbHostManager;->mCurrentUnlockedUser:I

    .line 32
    .line 33
    iput p1, v0, Lcom/android/server/usb/UsbHostManager;->mCurrentUnlockedUser:I

    .line 34
    .line 35
    iget-boolean p1, v0, Lcom/android/server/usb/UsbHostManager;->mBootCompleted:Z

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/16 p1, -0x2710

    .line 40
    .line 41
    if-ne v1, p1, :cond_1

    .line 42
    .line 43
    iget-object p1, v0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter p1

    .line 46
    :try_start_0
    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/util/Map$Entry;

    .line 67
    .line 68
    const-string v3, "UsbHostManager"

    .line 69
    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v5, "dealWithPendingDevices: deviceName="

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 105
    .line 106
    invoke-virtual {v3, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_1

    .line 112
    :cond_0
    monitor-exit p1

    .line 113
    goto :goto_2

    .line 114
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw p0

    .line 116
    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 117
    .line 118
    if-eqz p0, :cond_2

    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->onKeyguardStateChanged(Z)V

    .line 122
    .line 123
    .line 124
    :cond_2
    return-void
.end method
