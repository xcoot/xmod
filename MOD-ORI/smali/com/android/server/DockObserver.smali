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

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/android/server/DockObserver;->mLastUeventDevice:I

    .line 20
    .line 21
    new-instance v1, Lcom/android/server/DockObserver$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/DockObserver;->mHandler:Lcom/android/server/DockObserver$1;

    .line 27
    .line 28
    new-instance v2, Lcom/android/server/DockObserver$2;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/android/server/DockObserver;->mExtconUEventObserver:Lcom/android/server/DockObserver$2;

    .line 34
    .line 35
    new-instance v2, Lcom/android/server/DockObserver$3;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/android/server/DockObserver$3;-><init>(Lcom/android/server/DockObserver;)V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/android/server/DockObserver;->mCcicObserver:Lcom/android/server/DockObserver$3;

    .line 41
    .line 42
    const-string/jumbo v2, "power"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/os/PowerManager;

    .line 50
    .line 51
    iput-object v2, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    const-string v4, "DockObserver"

    .line 55
    .line 56
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iput-object v2, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const v5, 0x1110026

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iput-boolean v2, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const v5, 0x11101c4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iput-boolean v2, p0, Lcom/android/server/DockObserver;->mKeepDreamingWhenUnplugging:Z

    .line 87
    .line 88
    new-instance v2, Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    .line 89
    .line 90
    invoke-direct {v2, p0, v1}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V

    .line 91
    .line 92
    .line 93
    iput-object v2, p0, Lcom/android/server/DockObserver;->mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    .line 94
    .line 95
    new-instance v1, Lcom/android/server/DockObserver$LogRecent;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    iput v0, v1, Lcom/android/server/DockObserver$LogRecent;->mCurrentUeventLogIndex:I

    .line 101
    .line 102
    iput v0, v1, Lcom/android/server/DockObserver$LogRecent;->mCurrentReportLogIndex:I

    .line 103
    .line 104
    const/16 v2, 0xa

    .line 105
    .line 106
    new-array v5, v2, [J

    .line 107
    .line 108
    iput-object v5, v1, Lcom/android/server/DockObserver$LogRecent;->uEventTime:[J

    .line 109
    .line 110
    new-array v5, v2, [I

    .line 111
    .line 112
    iput-object v5, v1, Lcom/android/server/DockObserver$LogRecent;->uEventType:[I

    .line 113
    .line 114
    new-array v5, v2, [J

    .line 115
    .line 116
    iput-object v5, v1, Lcom/android/server/DockObserver$LogRecent;->reportTime:[J

    .line 117
    .line 118
    new-array v5, v2, [I

    .line 119
    .line 120
    iput-object v5, v1, Lcom/android/server/DockObserver$LogRecent;->report:[I

    .line 121
    .line 122
    new-array v5, v2, [Ljava/lang/String;

    .line 123
    .line 124
    iput-object v5, v1, Lcom/android/server/DockObserver$LogRecent;->uEventUsbpdIds:[Ljava/lang/String;

    .line 125
    .line 126
    new-array v2, v2, [Ljava/lang/String;

    .line 127
    .line 128
    iput-object v2, v1, Lcom/android/server/DockObserver$LogRecent;->reportUsbpdIds:[Ljava/lang/String;

    .line 129
    .line 130
    iput-object v1, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const v1, 0x10700f0

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    array-length v2, p1

    .line 149
    move v5, v0

    .line 150
    :goto_0
    if-ge v5, v2, :cond_2

    .line 151
    .line 152
    aget-object v6, p1, v5

    .line 153
    .line 154
    const-string v7, ","

    .line 155
    .line 156
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    new-instance v7, Lcom/android/server/DockObserver$ExtconStateConfig;

    .line 161
    .line 162
    aget-object v8, v6, v0

    .line 163
    .line 164
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    invoke-direct {v7, v8}, Lcom/android/server/DockObserver$ExtconStateConfig;-><init>(I)V

    .line 169
    .line 170
    .line 171
    move v8, v3

    .line 172
    :goto_1
    array-length v9, v6

    .line 173
    if-ge v8, v9, :cond_1

    .line 174
    .line 175
    aget-object v9, v6, v8

    .line 176
    .line 177
    const-string v10, "="

    .line 178
    .line 179
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    array-length v10, v9

    .line 184
    const/4 v11, 0x2

    .line 185
    if-ne v10, v11, :cond_0

    .line 186
    .line 187
    iget-object v10, v7, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    .line 188
    .line 189
    aget-object v11, v9, v0

    .line 190
    .line 191
    aget-object v9, v9, v3

    .line 192
    .line 193
    invoke-static {v11, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    check-cast v10, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    add-int/lit8 v8, v8, 0x1

    .line 203
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

    .line 208
    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v2, "Invalid key-value: "

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    aget-object v2, v6, v8

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw p1

    .line 232
    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .line 234
    .line 235
    add-int/lit8 v5, v5, 0x1

    .line 236
    .line 237
    goto :goto_0

    .line 238
    :goto_2
    const-string v1, "Could not parse extcon state config"

    .line 239
    .line 240
    invoke-static {v4, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    .line 242
    .line 243
    new-instance v1, Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .line 247
    .line 248
    :cond_2
    iput-object v1, p0, Lcom/android/server/DockObserver;->mExtconStateConfigs:Ljava/util/List;

    .line 249
    .line 250
    const-string p1, "DOCK"

    .line 251
    .line 252
    filled-new-array {p1}, [Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-static {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    check-cast p1, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    const-string v2, ""

    .line 267
    .line 268
    const/16 v3, 0x400

    .line 269
    .line 270
    if-nez v1, :cond_4

    .line 271
    .line 272
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    check-cast p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 277
    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string v5, "Found extcon info devPath: "

    .line 281
    .line 282
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getDevicePath()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v5, ", statePath: "

    .line 293
    .line 294
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    iget-object v5, p1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    .line 298
    .line 299
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    const-string v7, "/sys/class/extcon/%s/state"

    .line 304
    .line 305
    invoke-static {v7, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {v7, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    new-array v6, v3, [C

    .line 328
    .line 329
    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    .line 330
    .line 331
    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    .line 333
    .line 334
    :try_start_2
    invoke-virtual {v7, v6, v0, v3}, Ljava/io/FileReader;->read([CII)I

    .line 335
    .line 336
    .line 337
    move-result v8

    .line 338
    new-instance v9, Ljava/lang/String;

    .line 339
    .line 340
    invoke-direct {v9, v6, v0, v8}, Ljava/lang/String;-><init>([CII)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    invoke-static {v6}, Lcom/android/server/DockObserver$ExtconStateProvider;->fromString(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;

    .line 348
    .line 349
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

    .line 352
    .line 353
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

    .line 359
    .line 360
    .line 361
    goto :goto_3

    .line 362
    :catchall_1
    move-exception v7

    .line 363
    :try_start_5
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 364
    .line 365
    .line 366
    :goto_3
    throw v6
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 367
    :goto_4
    invoke-static {v4, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    .line 369
    .line 370
    new-instance v6, Lcom/android/server/DockObserver$ExtconStateProvider;

    .line 371
    .line 372
    new-instance v1, Ljava/util/HashMap;

    .line 373
    .line 374
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 375
    .line 376
    .line 377
    invoke-direct {v6, v1}, Lcom/android/server/DockObserver$ExtconStateProvider;-><init>(Ljava/util/Map;)V

    .line 378
    .line 379
    .line 380
    goto :goto_5

    .line 381
    :catch_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    const-string v7, "No state file found at: "

    .line 384
    .line 385
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .line 397
    .line 398
    new-instance v6, Lcom/android/server/DockObserver$ExtconStateProvider;

    .line 399
    .line 400
    new-instance v1, Ljava/util/HashMap;

    .line 401
    .line 402
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 403
    .line 404
    .line 405
    invoke-direct {v6, v1}, Lcom/android/server/DockObserver$ExtconStateProvider;-><init>(Ljava/util/Map;)V

    .line 406
    .line 407
    .line 408
    :goto_5
    invoke-virtual {p0, v6}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    .line 409
    .line 410
    .line 411
    iget v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 412
    .line 413
    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 414
    .line 415
    iget-object v1, p0, Lcom/android/server/DockObserver;->mExtconUEventObserver:Lcom/android/server/DockObserver$2;

    .line 416
    .line 417
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    invoke-virtual {p1}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getDevicePath()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    if-nez v6, :cond_3

    .line 425
    .line 426
    new-instance p1, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    const-string v1, "Unable to start observing  "

    .line 429
    .line 430
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string v1, " because the device path is null. This probably means the selinux policies need to be changed."

    .line 437
    .line 438
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    const-string v1, "ExtconUEventObserver"

    .line 446
    .line 447
    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    goto :goto_6

    .line 451
    :cond_3
    iget-object v5, v1, Lcom/android/server/ExtconUEventObserver;->mExtconInfos:Ljava/util/Map;

    .line 452
    .line 453
    check-cast v5, Landroid/util/ArrayMap;

    .line 454
    .line 455
    invoke-virtual {v5, v6, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    const-string p1, "DEVPATH="

    .line 459
    .line 460
    invoke-virtual {p1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    invoke-virtual {v1, p1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    goto :goto_6

    .line 468
    :cond_4
    const-string p1, "No extcon dock device found in this kernel."

    .line 469
    .line 470
    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    :goto_6
    iget p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 474
    .line 475
    if-nez p1, :cond_5

    .line 476
    .line 477
    :try_start_6
    new-array p1, v3, [C

    .line 478
    .line 479
    new-instance v1, Ljava/io/FileReader;

    .line 480
    .line 481
    const-string v5, "/sys/class/sec/ccic/usbpd_ids"

    .line 482
    .line 483
    invoke-direct {v1, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 484
    .line 485
    .line 486
    :try_start_7
    invoke-virtual {v1, p1, v0, v3}, Ljava/io/FileReader;->read([CII)I

    .line 487
    .line 488
    .line 489
    move-result v5

    .line 490
    new-instance v6, Ljava/lang/String;

    .line 491
    .line 492
    invoke-direct {v6, p1, v0, v5}, Ljava/lang/String;-><init>([CII)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    iput-object p1, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 500
    .line 501
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 502
    .line 503
    .line 504
    new-array p1, v3, [C

    .line 505
    .line 506
    new-instance v1, Ljava/io/FileReader;

    .line 507
    .line 508
    const-string v5, "/sys/class/sec/ccic/usbpd_type"

    .line 509
    .line 510
    invoke-direct {v1, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 511
    .line 512
    .line 513
    :try_start_9
    invoke-virtual {v1, p1, v0, v3}, Ljava/io/FileReader;->read([CII)I

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    new-instance v5, Ljava/lang/String;

    .line 518
    .line 519
    invoke-direct {v5, p1, v0, v3}, Ljava/lang/String;-><init>([CII)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 535
    .line 536
    .line 537
    iget p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 538
    .line 539
    iput p1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 540
    .line 541
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 542
    .line 543
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

    .line 549
    .line 550
    .line 551
    throw p1

    .line 552
    :catchall_3
    move-exception p1

    .line 553
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 554
    .line 555
    .line 556
    throw p1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 557
    :goto_7
    invoke-static {v4, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    .line 559
    .line 560
    goto :goto_8

    .line 561
    :catch_4
    const-string p1, "This kernel does not have ccic dock station support"

    .line 562
    .line 563
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    :cond_5
    :goto_8
    iget-object p0, p0, Lcom/android/server/DockObserver;->mCcicObserver:Lcom/android/server/DockObserver$3;

    .line 567
    .line 568
    const-string p1, "DEVPATH=/devices/virtual/sec/ccic"

    .line 569
    .line 570
    invoke-virtual {p0, p1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x226

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    const/4 v0, 0x1

    .line 9
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/DockObserver;->mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->updateRegistration()V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/DockObserver;->mHandler:Lcom/android/server/DockObserver$1;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 29
    .line 30
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

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "DockObserver"

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x1d6

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 14
    .line 15
    invoke-static {v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final setActualDockStateLocked(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/DockObserver;->mUsbpdIds:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/DockObserver$LogRecent;->log(IILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public setDockStateFromProviderForTesting(Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    .line 5
    .line 6
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

    .line 2
    .line 3
    const-string v1, "DOCK"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "1"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_5

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/DockObserver;->mExtconStateConfigs:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/DockObserver$ExtconStateConfig;

    .line 38
    .line 39
    iget-object v4, v2, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    .line 40
    .line 41
    check-cast v4, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    move v5, v3

    .line 48
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_3

    .line 53
    .line 54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Landroid/util/Pair;

    .line 59
    .line 60
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v7, Ljava/lang/String;

    .line 63
    .line 64
    iget-object v8, p1, Lcom/android/server/DockObserver$ExtconStateProvider;->mState:Ljava/util/Map;

    .line 65
    .line 66
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    iget-object v5, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v5, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_2

    .line 83
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

    .line 88
    .line 89
    :cond_3
    if-eqz v5, :cond_0

    .line 90
    .line 91
    iget p1, v2, Lcom/android/server/DockObserver$ExtconStateConfig;->extraStateValue:I

    .line 92
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

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final setDockStateLocked(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/DockObserver;->mActualUsbpdIds:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 12
    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/android/server/DockObserver;->mKeepDreamingWhenUnplugging:Z

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string/jumbo v1, "theater_mode_on"

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    const-string v3, "android.server:DOCK"

    .line 49
    .line 50
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/DockObserver;->mHandler:Lcom/android/server/DockObserver$1;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    return-void
.end method
