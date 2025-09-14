.class public final Lcom/android/server/PackageWatchdog$BootThreshold;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBootTriggerCount:I

.field public final mTriggerWindow:J

.field public final synthetic this$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public constructor <init>(Lcom/android/server/PackageWatchdog;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->this$0:Lcom/android/server/PackageWatchdog;

    .line 6
    iput p2, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mBootTriggerCount:I

    .line 8
    iput-wide p3, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mTriggerWindow:J

    .line 10
    return-void
.end method

.method public static saveMitigationCountToMetadata()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 3
    new-instance v1, Ljava/io/FileWriter;

    .line 5
    const-string v2, "/metadata/watchdog/mitigation_count.txt"

    .line 7
    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    invoke-static {}, Landroid/sysprop/CrashRecoveryProperties;->bootMitigationCount()Ljava/util/Optional;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 42
    goto :goto_2

    .line 43
    :catch_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    goto :goto_0

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 54
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 55
    :goto_1
    const-string v1, "Could not save metadata to file: "

    .line 57
    const-string v2, "PackageWatchdog"

    .line 59
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_2
    return-void
.end method


# virtual methods
.method public final incrementAndTest()Z
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const-string v3, "PackageWatchdog"

    .line 12
    const-string v4, "/metadata/watchdog/mitigation_count.txt"

    .line 14
    iget-object v5, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->this$0:Lcom/android/server/PackageWatchdog;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Ljava/io/File;

    .line 20
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_2

    .line 29
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 31
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 34
    new-instance v0, Ljava/io/ObjectInputStream;

    .line 36
    invoke-direct {v0, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Ljava/util/HashMap;

    .line 45
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    .line 48
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 51
    move v0, v1

    .line 52
    :goto_0
    iget-object v4, v5, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 54
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 57
    move-result v4

    .line 58
    if-ge v0, v4, :cond_2

    .line 60
    iget-object v4, v5, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 62
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 68
    iget-object v7, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    .line 70
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_0

    .line 76
    iget-object v7, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    .line 78
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v7

    .line 82
    check-cast v7, Ljava/lang/Integer;

    .line 84
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 87
    move-result v7

    .line 88
    iput v7, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->mMitigationCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    goto :goto_2

    .line 93
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 95
    goto :goto_0

    .line 96
    :goto_2
    const-string v4, "Could not read observer metadata file: "

    .line 98
    invoke-static {v0, v4, v3}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    goto :goto_5

    .line 102
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 104
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_2

    .line 113
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    .line 115
    new-instance v7, Ljava/io/FileReader;

    .line 117
    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 126
    move-result-object v4

    .line 127
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    move-result v4

    .line 131
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v4

    .line 135
    invoke-static {v4}, Landroid/sysprop/CrashRecoveryProperties;->bootMitigationCount(Ljava/lang/Integer;)V

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 144
    goto :goto_5

    .line 145
    :catch_1
    move-exception v0

    .line 146
    goto :goto_4

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 151
    goto :goto_3

    .line 152
    :catchall_1
    move-exception v4

    .line 153
    :try_start_5
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 156
    :goto_3
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 157
    :goto_4
    const-string v4, "Could not read metadata file: "

    .line 159
    invoke-static {v0, v4, v3}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_2
    :goto_5
    iget-object v0, v5, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 164
    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 167
    move-result-wide v6

    .line 168
    invoke-static {}, Landroid/sysprop/CrashRecoveryProperties;->rescueBootStart()Ljava/util/Optional;

    .line 171
    move-result-object v0

    .line 172
    const-wide/16 v8, 0x0

    .line 174
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    move-result-object v4

    .line 178
    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Ljava/lang/Long;

    .line 184
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 187
    move-result-wide v10

    .line 188
    sub-long v10, v6, v10

    .line 190
    cmp-long v0, v10, v8

    .line 192
    if-gez v0, :cond_7

    .line 194
    const-string v0, "Window was less than zero. Resetting start to current time."

    .line 196
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, v5, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 201
    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 204
    move-result-wide v3

    .line 205
    cmp-long v0, v6, v8

    .line 207
    if-gez v0, :cond_3

    .line 209
    move-wide v3, v8

    .line 210
    goto :goto_6

    .line 211
    :cond_3
    cmp-long v10, v6, v3

    .line 213
    if-lez v10, :cond_4

    .line 215
    goto :goto_6

    .line 216
    :cond_4
    move-wide v3, v6

    .line 217
    :goto_6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 220
    move-result-object v3

    .line 221
    invoke-static {v3}, Landroid/sysprop/CrashRecoveryProperties;->rescueBootStart(Ljava/lang/Long;)V

    .line 224
    iget-object v3, v5, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 226
    invoke-interface {v3}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 229
    move-result-wide v3

    .line 230
    if-gez v0, :cond_5

    .line 232
    move-wide v3, v8

    .line 233
    goto :goto_7

    .line 234
    :cond_5
    cmp-long v0, v6, v3

    .line 236
    if-lez v0, :cond_6

    .line 238
    goto :goto_7

    .line 239
    :cond_6
    move-wide v3, v6

    .line 240
    :goto_7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 243
    move-result-object v0

    .line 244
    invoke-static {v0}, Landroid/sysprop/CrashRecoveryProperties;->bootMitigationStart(Ljava/lang/Long;)V

    .line 247
    :cond_7
    invoke-static {}, Landroid/sysprop/CrashRecoveryProperties;->bootMitigationStart()Ljava/util/Optional;

    .line 250
    move-result-object v0

    .line 251
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Ljava/lang/Long;

    .line 261
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 264
    move-result-wide v3

    .line 265
    sub-long v3, v6, v3

    .line 267
    sget-wide v10, Lcom/android/server/PackageWatchdog;->DEFAULT_DEESCALATION_WINDOW_MS:J

    .line 269
    cmp-long v0, v3, v10

    .line 271
    if-lez v0, :cond_c

    .line 273
    iget-object v0, v5, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 275
    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 278
    move-result-wide v3

    .line 279
    cmp-long v0, v6, v8

    .line 281
    if-gez v0, :cond_8

    .line 283
    move-wide v3, v8

    .line 284
    goto :goto_8

    .line 285
    :cond_8
    cmp-long v0, v6, v3

    .line 287
    if-lez v0, :cond_9

    .line 289
    goto :goto_8

    .line 290
    :cond_9
    move-wide v3, v6

    .line 291
    :goto_8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 294
    move-result-object v0

    .line 295
    invoke-static {v0}, Landroid/sysprop/CrashRecoveryProperties;->bootMitigationStart(Ljava/lang/Long;)V

    .line 298
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 301
    move-result v0

    .line 302
    if-eqz v0, :cond_b

    .line 304
    move v0, v1

    .line 305
    :goto_9
    iget-object v3, v5, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 307
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 310
    move-result v3

    .line 311
    if-ge v0, v3, :cond_a

    .line 313
    iget-object v3, v5, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 315
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 318
    move-result-object v3

    .line 319
    check-cast v3, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 321
    iput v1, v3, Lcom/android/server/PackageWatchdog$ObserverInternal;->mMitigationCount:I

    .line 323
    add-int/lit8 v0, v0, 0x1

    .line 325
    goto :goto_9

    .line 326
    :cond_a
    invoke-virtual {v5}, Lcom/android/server/PackageWatchdog;->saveAllObserversBootMitigationCountToMetadata()V

    .line 329
    goto :goto_a

    .line 330
    :cond_b
    invoke-static {v2}, Landroid/sysprop/CrashRecoveryProperties;->bootMitigationCount(Ljava/lang/Integer;)V

    .line 333
    :cond_c
    :goto_a
    invoke-static {}, Landroid/sysprop/CrashRecoveryProperties;->rescueBootStart()Ljava/util/Optional;

    .line 336
    move-result-object v0

    .line 337
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 340
    move-result-object v3

    .line 341
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    move-result-object v0

    .line 345
    check-cast v0, Ljava/lang/Long;

    .line 347
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 350
    move-result-wide v3

    .line 351
    sub-long v3, v6, v3

    .line 353
    iget-wide v10, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mTriggerWindow:J

    .line 355
    cmp-long v0, v3, v10

    .line 357
    const/4 v10, 0x1

    .line 358
    if-ltz v0, :cond_f

    .line 360
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    move-result-object p0

    .line 364
    invoke-static {p0}, Landroid/sysprop/CrashRecoveryProperties;->rescueBootCount(Ljava/lang/Integer;)V

    .line 367
    iget-object p0, v5, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 369
    invoke-interface {p0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    .line 372
    move-result-wide v2

    .line 373
    cmp-long p0, v6, v8

    .line 375
    if-gez p0, :cond_d

    .line 377
    move-wide v6, v8

    .line 378
    goto :goto_b

    .line 379
    :cond_d
    cmp-long p0, v6, v2

    .line 381
    if-lez p0, :cond_e

    .line 383
    move-wide v6, v2

    .line 384
    :cond_e
    :goto_b
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 387
    move-result-object p0

    .line 388
    invoke-static {p0}, Landroid/sysprop/CrashRecoveryProperties;->rescueBootStart(Ljava/lang/Long;)V

    .line 391
    return v1

    .line 392
    :cond_f
    invoke-static {}, Landroid/sysprop/CrashRecoveryProperties;->rescueBootCount()Ljava/util/Optional;

    .line 395
    move-result-object v0

    .line 396
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    move-result-object v0

    .line 400
    check-cast v0, Ljava/lang/Integer;

    .line 402
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 405
    move-result v0

    .line 406
    add-int/2addr v0, v10

    .line 407
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    move-result-object v6

    .line 411
    invoke-static {v6}, Landroid/sysprop/CrashRecoveryProperties;->rescueBootCount(Ljava/lang/Integer;)V

    .line 414
    const-string/jumbo v6, "sys.rescue_boot_count"

    .line 417
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 420
    move-result-object v7

    .line 421
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    move-result-object v6

    .line 428
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 431
    move-result-object v3

    .line 432
    filled-new-array {v2, v6, v3}, [Ljava/lang/Object;

    .line 435
    move-result-object v2

    .line 436
    const/16 v3, 0xb54

    .line 438
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 441
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 444
    move-result v2

    .line 445
    iget p0, p0, Lcom/android/server/PackageWatchdog$BootThreshold;->mBootTriggerCount:I

    .line 447
    if-eqz v2, :cond_13

    .line 449
    if-ge v0, p0, :cond_11

    .line 451
    iget-object p0, v5, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 453
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 456
    move-result-object p0

    .line 457
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 460
    move-result-object p0

    .line 461
    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 464
    move-result v2

    .line 465
    if-eqz v2, :cond_12

    .line 467
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 470
    move-result-object v2

    .line 471
    check-cast v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 473
    iget v2, v2, Lcom/android/server/PackageWatchdog$ObserverInternal;->mMitigationCount:I

    .line 475
    if-lez v2, :cond_10

    .line 477
    if-le v0, v10, :cond_12

    .line 479
    :cond_11
    move v1, v10

    .line 480
    :cond_12
    return v1

    .line 481
    :cond_13
    if-lt v0, p0, :cond_14

    .line 483
    move v1, v10

    .line 484
    :cond_14
    return v1
.end method
