.class public final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActualDockState:I

.field public mActualUsbpdIds:Ljava/lang/String;

.field public final mAllowTheaterModeWakeFromDock:Z

.field public final mCcicObserver:Lcom/android/server/DockObserver$3;

.field public final mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

.field public final mExtconStateConfigs:Ljava/util/List;

.field public final mExtconUEventObserver:Lcom/android/server/DockObserver$2;

.field public final mHandler:Lcom/android/server/DockObserver$1;

.field public final mKeepDreamingWhenUnplugging:Z

.field public mLastUeventDevice:I

.field public final mLock:Ljava/lang/Object;

.field public final mLogRecent:Lcom/android/server/DockObserver$LogRecent;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPreviousDockState:I

.field public mReportedDockState:I

.field public mReportedUsbpdIds:Ljava/lang/String;

.field public mSystemReady:Z

.field public mUpdatesStopped:Z

.field public mUsbpdIds:Ljava/lang/String;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 14
    iput v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 16
    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/android/server/DockObserver;->mLastUeventDevice:I

    .line 21
    new-instance v1, Lcom/android/server/DockObserver$1;

    .line 23
    invoke-direct {v1, p0}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;)V

    .line 26
    iput-object v1, p0, Lcom/android/server/DockObserver;->mHandler:Lcom/android/server/DockObserver$1;

    .line 28
    new-instance v2, Lcom/android/server/DockObserver$2;

    .line 30
    invoke-direct {v2, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    .line 33
    iput-object v2, p0, Lcom/android/server/DockObserver;->mExtconUEventObserver:Lcom/android/server/DockObserver$2;

    .line 35
    new-instance v2, Lcom/android/server/DockObserver$3;

    .line 37
    invoke-direct {v2, p0}, Lcom/android/server/DockObserver$3;-><init>(Lcom/android/server/DockObserver;)V

    .line 40
    iput-object v2, p0, Lcom/android/server/DockObserver;->mCcicObserver:Lcom/android/server/DockObserver$3;

    .line 42
    const-string/jumbo v2, "power"

    .line 45
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/os/PowerManager;

    .line 51
    iput-object v2, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 53
    const/4 v3, 0x1

    .line 54
    const-string v4, "DockObserver"

    .line 56
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 59
    move-result-object v2

    .line 60
    iput-object v2, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v2

    .line 66
    const v5, 0x1110026

    .line 69
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 72
    move-result v2

    .line 73
    iput-boolean v2, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    move-result-object v2

    .line 79
    const v5, 0x11101c4

    .line 82
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 85
    move-result v2

    .line 86
    iput-boolean v2, p0, Lcom/android/server/DockObserver;->mKeepDreamingWhenUnplugging:Z

    .line 88
    new-instance v2, Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    .line 90
    invoke-direct {v2, p0, v1}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V

    .line 93
    iput-object v2, p0, Lcom/android/server/DockObserver;->mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    .line 95
    new-instance v1, Lcom/android/server/DockObserver$LogRecent;

    .line 97
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v0, v1, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    .line 102
    iput v0, v1, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    .line 104
    const/16 v2, 0xa

    .line 106
    new-array v5, v2, [J

    .line 108
    iput-object v5, v1, Lcom/android/server/DockObserver$LogRecent;->uEventTime:[J

    .line 110
    new-array v5, v2, [I

    .line 112
    iput-object v5, v1, Lcom/android/server/DockObserver$LogRecent;->uEventType:[I

    .line 114
    new-array v5, v2, [J

    .line 116
    iput-object v5, v1, Lcom/android/server/DockObserver$LogRecent;->reportTime:[J

    .line 118
    new-array v5, v2, [I

    .line 120
    iput-object v5, v1, Lcom/android/server/DockObserver$LogRecent;->report:[I

    .line 122
    new-array v5, v2, [Ljava/lang/String;

    .line 124
    iput-object v5, v1, Lcom/android/server/DockObserver$LogRecent;->uEventUsbpdIds:[Ljava/lang/String;

    .line 126
    new-array v2, v2, [Ljava/lang/String;

    .line 128
    iput-object v2, v1, Lcom/android/server/DockObserver$LogRecent;->reportUsbpdIds:[Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    move-result-object p1

    .line 136
    const v1, 0x10700f0

    .line 139
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 145
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    array-length v2, p1

    .line 149
    move v5, v0

    .line 150
    :goto_0
    if-ge v5, v2, :cond_2

    .line 152
    aget-object v6, p1, v5

    .line 154
    const-string v7, ","

    .line 156
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 159
    move-result-object v6

    .line 160
    new-instance v7, Lcom/android/server/DockObserver$ExtconStateConfig;

    .line 162
    aget-object v8, v6, v0

    .line 164
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 167
    move-result v8

    .line 168
    invoke-direct {v7, v8}, Lcom/android/server/DockObserver$ExtconStateConfig;-><init>(I)V

    .line 171
    move v8, v3

    .line 172
    :goto_1
    array-length v9, v6

    .line 173
    if-ge v8, v9, :cond_1

    .line 175
    aget-object v9, v6, v8

    .line 177
    const-string v10, "="

    .line 179
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 182
    move-result-object v9

    .line 183
    array-length v10, v9

    .line 184
    const/4 v11, 0x2

    .line 185
    if-ne v10, v11, :cond_0

    .line 187
    iget-object v10, v7, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    .line 189
    aget-object v11, v9, v0

    .line 191
    aget-object v9, v9, v3

    .line 193
    invoke-static {v11, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 196
    move-result-object v9

    .line 197
    check-cast v10, Ljava/util/ArrayList;

    .line 199
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v8, v8, 0x1

    .line 204
    goto :goto_1

    .line 205
    :catch_0
    move-exception p1

    .line 206
    goto :goto_2

    .line 207
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    const-string v2, "Invalid key-value: "

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    aget-object v2, v6, v8

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v1

    .line 228
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 231
    throw p1

    .line 232
    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    add-int/lit8 v5, v5, 0x1

    .line 237
    goto :goto_0

    .line 238
    :goto_2
    const-string v1, "Could not parse extcon state config"

    .line 240
    invoke-static {v4, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    .line 245
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    :cond_2
    iput-object v1, p0, Lcom/android/server/DockObserver;->mExtconStateConfigs:Ljava/util/List;

    .line 250
    const-string p1, "DOCK"

    .line 252
    filled-new-array {p1}, [Ljava/lang/String;

    .line 255
    move-result-object p1

    .line 256
    invoke-static {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;

    .line 259
    move-result-object p1

    .line 260
    check-cast p1, Ljava/util/ArrayList;

    .line 262
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 265
    move-result v1

    .line 266
    const-string v2, ""

    .line 268
    const/16 v3, 0x400

    .line 270
    if-nez v1, :cond_4

    .line 272
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    move-result-object p1

    .line 276
    check-cast p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    .line 280
    const-string v5, "Found extcon info devPath: "

    .line 282
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getDevicePath()Ljava/lang/String;

    .line 288
    move-result-object v5

    .line 289
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v5, ", statePath: "

    .line 294
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget-object v5, p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    .line 299
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 302
    move-result-object v6

    .line 303
    const-string v7, "/sys/class/extcon/%s/state"

    .line 305
    invoke-static {v7, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 308
    move-result-object v6

    .line 309
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object v1

    .line 316
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 322
    move-result-object v1

    .line 323
    invoke-static {v7, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 326
    move-result-object v1

    .line 327
    new-array v6, v3, [C

    .line 329
    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    .line 331
    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 334
    :try_start_2
    invoke-virtual {v7, v6, v0, v3}, Ljava/io/FileReader;->read([CII)I

    .line 337
    move-result v8

    .line 338
    new-instance v9, Ljava/lang/String;

    .line 340
    invoke-direct {v9, v6, v0, v8}, Ljava/lang/String;-><init>([CII)V

    .line 343
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 346
    move-result-object v6

    .line 347
    invoke-static {v6}, Lcom/android/server/DockObserver$ExtconStateProvider;->fromString(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;

    .line 350
    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 354
    goto :goto_5

    .line 355
    :catch_1
    move-exception v1

    .line 356
    goto :goto_4

    .line 357
    :catchall_0
    move-exception v6

    .line 358
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 361
    goto :goto_3

    .line 362
    :catchall_1
    move-exception v7

    .line 363
    :try_start_5
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 366
    :goto_3
    throw v6
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 367
    :goto_4
    invoke-static {v4, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    new-instance v6, Lcom/android/server/DockObserver$ExtconStateProvider;

    .line 372
    new-instance v1, Ljava/util/HashMap;

    .line 374
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 377
    invoke-direct {v6, v1}, Lcom/android/server/DockObserver$ExtconStateProvider;-><init>(Ljava/util/Map;)V

    .line 380
    goto :goto_5

    .line 381
    :catch_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 383
    const-string v7, "No state file found at: "

    .line 385
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    move-result-object v1

    .line 395
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v6, Lcom/android/server/DockObserver$ExtconStateProvider;

    .line 400
    new-instance v1, Ljava/util/HashMap;

    .line 402
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 405
    invoke-direct {v6, v1}, Lcom/android/server/DockObserver$ExtconStateProvider;-><init>(Ljava/util/Map;)V

    .line 408
    :goto_5
    invoke-virtual {p0, v6}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    .line 411
    iget v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 413
    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 415
    iget-object v1, p0, Lcom/android/server/DockObserver;->mExtconUEventObserver:Lcom/android/server/DockObserver$2;

    .line 417
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    invoke-virtual {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getDevicePath()Ljava/lang/String;

    .line 423
    move-result-object v6

    .line 424
    if-nez v6, :cond_3

    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    .line 428
    const-string v1, "Unable to start observing  "

    .line 430
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, " because the device path is null. This probably means the selinux policies need to be changed."

    .line 438
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    move-result-object p1

    .line 445
    const-string v1, "ExtconUEventObserver"

    .line 447
    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    goto :goto_6

    .line 451
    :cond_3
    iget-object v5, v1, Lcom/android/server/ExtconUEventObserver;->mExtconInfos:Ljava/util/Map;

    .line 453
    check-cast v5, Landroid/util/ArrayMap;

    .line 455
    invoke-virtual {v5, v6, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string p1, "DEVPATH="

    .line 460
    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 463
    move-result-object p1

    .line 464
    invoke-virtual {v1, p1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 467
    goto :goto_6

    .line 468
    :cond_4
    const-string p1, "No extcon dock device found in this kernel."

    .line 470
    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_6
    iget p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 475
    if-nez p1, :cond_5

    .line 477
    :try_start_6
    new-array p1, v3, [C

    .line 479
    new-instance v1, Ljava/io/FileReader;

    .line 481
    const-string v5, "/sys/class/sec/ccic/usbpd_ids"

    .line 483
    invoke-direct {v1, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 486
    :try_start_7
    invoke-virtual {v1, p1, v0, v3}, Ljava/io/FileReader;->read([CII)I

    .line 489
    move-result v5

    .line 490
    new-instance v6, Ljava/lang/String;

    .line 492
    invoke-direct {v6, p1, v0, v5}, Ljava/lang/String;-><init>([CII)V

    .line 495
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 498
    move-result-object p1

    .line 499
    iput-object p1, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 501
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 504
    new-array p1, v3, [C

    .line 506
    new-instance v1, Ljava/io/FileReader;

    .line 508
    const-string v5, "/sys/class/sec/ccic/usbpd_type"

    .line 510
    invoke-direct {v1, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 513
    :try_start_9
    invoke-virtual {v1, p1, v0, v3}, Ljava/io/FileReader;->read([CII)I

    .line 516
    move-result v3

    .line 517
    new-instance v5, Ljava/lang/String;

    .line 519
    invoke-direct {v5, p1, v0, v3}, Ljava/lang/String;-><init>([CII)V

    .line 522
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 525
    move-result-object p1

    .line 526
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 529
    move-result-object p1

    .line 530
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 533
    move-result p1

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 537
    iget p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 539
    iput p1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 541
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 544
    goto :goto_8

    .line 545
    :catch_3
    move-exception p1

    .line 546
    goto :goto_7

    .line 547
    :catchall_2
    move-exception p1

    .line 548
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 551
    throw p1

    .line 552
    :catchall_3
    move-exception p1

    .line 553
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 556
    throw p1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 557
    :goto_7
    invoke-static {v4, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    goto :goto_8

    .line 561
    :catch_4
    const-string p1, "This kernel does not have ccic dock station support"

    .line 563
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_5
    :goto_8
    iget-object p0, p0, Lcom/android/server/DockObserver;->mCcicObserver:Lcom/android/server/DockObserver$3;

    .line 568
    const-string p1, "DEVPATH=/devices/virtual/sec/ccic"

    .line 570
    invoke-virtual {p0, p1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 573
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x226

    .line 3
    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter p1

    .line 8
    const/4 v0, 0x1

    .line 9
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 11
    iget-object v0, p0, Lcom/android/server/DockObserver;->mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    .line 13
    invoke-virtual {v0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->updateRegistration()V

    .line 16
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 22
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 25
    iget-object p0, p0, Lcom/android/server/DockObserver;->mHandler:Lcom/android/server/DockObserver$1;

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 31
    :cond_0
    monitor-exit p1

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0

    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/DockObserver$BinderService;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;)V

    .line 6
    const-string v1, "DockObserver"

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 11
    const/16 v0, 0x1d6

    .line 13
    iget p0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 15
    invoke-static {v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 18
    return-void
.end method

.method public final setActualDockStateLocked(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 3
    iget-object v0, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/DockObserver$LogRecent;->log(IILjava/lang/String;)V

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    .line 17
    if-nez v0, :cond_1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    .line 22
    :cond_1
    return-void
.end method

.method public setDockStateFromProviderForTesting(Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public final setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/server/DockObserver$ExtconStateProvider;->mState:Ljava/util/Map;

    .line 3
    const-string v1, "DOCK"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 11
    const-string v1, "1"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/android/server/DockObserver;->mExtconStateConfigs:Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v2, :cond_4

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/DockObserver$ExtconStateConfig;

    .line 39
    iget-object v4, v2, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    .line 41
    check-cast v4, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v4

    .line 47
    move v5, v3

    .line 48
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_3

    .line 54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Landroid/util/Pair;

    .line 60
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 62
    check-cast v7, Ljava/lang/String;

    .line 64
    iget-object v8, p1, Lcom/android/server/DockObserver$ExtconStateProvider;->mState:Ljava/util/Map;

    .line 66
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Ljava/lang/String;

    .line 72
    if-eqz v5, :cond_2

    .line 74
    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 76
    check-cast v5, Ljava/lang/String;

    .line 78
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_2

    .line 84
    move v5, v3

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move v5, v1

    .line 87
    :goto_0
    if-nez v5, :cond_1

    .line 89
    :cond_3
    if-eqz v5, :cond_0

    .line 91
    iget p1, v2, Lcom/android/server/DockObserver$ExtconStateConfig;->extraStateValue:I

    .line 93
    move v1, p1

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    move v1, v3

    .line 96
    :cond_5
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 99
    return-void
.end method

.method public final setDockStateLocked(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 3
    if-eq p1, v0, :cond_3

    .line 5
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 7
    iget-object p1, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    .line 11
    iget-boolean p1, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 13
    if-eqz p1, :cond_3

    .line 15
    iget-boolean p1, p0, Lcom/android/server/DockObserver;->mKeepDreamingWhenUnplugging:Z

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 23
    if-nez p1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    move-result-object p1

    .line 33
    const-string/jumbo v1, "theater_mode_on"

    .line 36
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 47
    move-result-wide v1

    .line 48
    const-string v3, "android.server:DOCK"

    .line 50
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 53
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 55
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 58
    iget-object p0, p0, Lcom/android/server/DockObserver;->mHandler:Lcom/android/server/DockObserver$1;

    .line 60
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    :cond_3
    return-void
.end method
