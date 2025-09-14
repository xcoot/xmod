.class public final Lcom/android/server/chimera/genie/GenieMemoryManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final DEFAULT_GOOGLE_MODEL_SIZE:I

.field public static final DEFAULT_SAMSUNG_MODEL_SIZE:I


# instance fields
.field public mContext:Landroid/content/Context;

.field public mGenieConfigurations:Lcom/android/server/chimera/genie/GenieConfigurations;

.field public mHasReclaimed:Z

.field public mLastReclaimTime:J

.field public mLock:Ljava/lang/Object;

.field public mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

.field public mName:Ljava/lang/String;

.field public mRbinManager:Lcom/android/server/chimera/genie/RbinManager;

.field public mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

.field public mSessionStatus:I

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public mTimeOutThread:Lcom/android/server/ServiceThread;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAIVersionGoogleModelSize:Ljava/util/Map;

    .line 3
    sget v1, Lcom/android/server/chimera/genie/GenieConfigurations;->sAIVersion:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 17
    const-string v2, "No models are used on this phone"

    .line 19
    const-string v3, "GenieConfigurations"

    .line 21
    if-nez v0, :cond_0

    .line 23
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    const/4 v4, 0x0

    .line 27
    if-nez v0, :cond_1

    .line 29
    move v0, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v0

    .line 35
    :goto_0
    sput v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->DEFAULT_GOOGLE_MODEL_SIZE:I

    .line 37
    sget-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAIVersionSepModelSize:Ljava/util/Map;

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v1

    .line 43
    check-cast v0, Ljava/util/HashMap;

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/Integer;

    .line 51
    if-nez v0, :cond_2

    .line 53
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_2
    if-nez v0, :cond_3

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 62
    move-result v4

    .line 63
    :goto_1
    sput v4, Lcom/android/server/chimera/genie/GenieMemoryManager;->DEFAULT_SAMSUNG_MODEL_SIZE:I

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 67
    const-string v1, "[MM-dd HH:mm:ss.SSS]"

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 72
    move-result-object v2

    .line 73
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 76
    sput-object v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 78
    return-void
.end method


# virtual methods
.method public final prepareMemory(Lcom/samsung/android/chimera/genie/MemRequest;Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->startReclaimerHandlerCheck()Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string v0, "GenieMemoryManager"

    .line 9
    const-string v1, "ReclaimerHandler not initialized!!!!! Retry start"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->startReclaimerHandlerCheck()Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 17
    iget-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 19
    if-nez v0, :cond_0

    .line 21
    const-string p0, "GenieMemoryManager"

    .line 23
    const-string p1, "ReclaimerHandler not initialized!!!!! Return"

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mRbinManager:Lcom/android/server/chimera/genie/RbinManager;

    .line 31
    iget-boolean v1, v0, Lcom/android/server/chimera/genie/RbinManager;->mFeatureEnabled:Z

    .line 33
    const/4 v2, 0x1

    .line 34
    if-nez v1, :cond_1

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    iget-object v1, v0, Lcom/android/server/chimera/genie/RbinManager;->mLock:Ljava/lang/Object;

    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    iget v3, v0, Lcom/android/server/chimera/genie/RbinManager;->mCount:I

    .line 42
    add-int/2addr v3, v2

    .line 43
    iput v3, v0, Lcom/android/server/chimera/genie/RbinManager;->mCount:I

    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 46
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    .line 48
    new-instance v1, Ljava/io/FileWriter;

    .line 50
    const-string v3, "/sys/kernel/rbin/refill_mode"

    .line 52
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 54
    invoke-direct {v1, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 57
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    const/16 v1, 0x31

    .line 62
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 65
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 71
    goto :goto_2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v1

    .line 75
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    goto :goto_0

    .line 79
    :catchall_1
    move-exception v0

    .line 80
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 84
    :goto_1
    const-string v1, "RbinManager"

    .line 86
    const-string v3, "Error writing to the file "

    .line 88
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    .line 93
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 98
    if-eqz v1, :cond_2

    .line 100
    const/4 v3, 0x3

    .line 101
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 104
    move-result-object v3

    .line 105
    const-wide/16 v4, 0x1388

    .line 107
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 110
    :cond_2
    const-string v1, "Invalid Memory Request; No reclaimer triggered "

    .line 112
    const-string v3, "AI package is null for "

    .line 114
    const-string v4, "LRU Access:"

    .line 116
    const-string v5, "Adding to LRU: "

    .line 118
    const-string v6, "AIPackage:"

    .line 120
    const-string v7, "PrepareMemory Calling Package "

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/chimera/genie/MemRequest;->getSize()I

    .line 125
    move-result p1

    .line 126
    int-to-long v8, p1

    .line 127
    iget-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLock:Ljava/lang/Object;

    .line 129
    monitor-enter p1

    .line 130
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 133
    move-result v10

    .line 134
    if-eqz p2, :cond_3

    .line 136
    iput-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 138
    goto :goto_3

    .line 139
    :catchall_2
    move-exception p0

    .line 140
    goto/16 :goto_8

    .line 142
    :cond_3
    iget-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p2, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 151
    move-result-object p2

    .line 152
    const/4 v11, 0x0

    .line 153
    aget-object p2, p2, v11

    .line 155
    iput-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 157
    :goto_3
    const-string p2, "GenieMemoryManager"

    .line 159
    new-instance v11, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v7, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 166
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v7

    .line 173
    invoke-static {p2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object p2, Lcom/android/server/chimera/genie/GenieConfigurations;->sGenAIPackageMap:Ljava/util/Map;

    .line 178
    iget-object v7, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 180
    check-cast p2, Ljava/util/HashMap;

    .line 182
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-result-object p2

    .line 186
    check-cast p2, Ljava/lang/String;

    .line 188
    if-eqz p2, :cond_5

    .line 190
    const-string v3, "GenieMemoryManager"

    .line 192
    invoke-virtual {v6, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    move-result-object v6

    .line 196
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/android/server/chimera/genie/GenieLRUList;->getInstance()Lcom/android/server/chimera/genie/GenieLRUList;

    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    move-result-object v3

    .line 207
    if-nez v3, :cond_4

    .line 209
    const-string v3, "GenieMemoryManager"

    .line 211
    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    move-result-object v4

    .line 215
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Lcom/android/server/chimera/genie/GenieLRUList;->getInstance()Lcom/android/server/chimera/genie/GenieLRUList;

    .line 221
    move-result-object v3

    .line 222
    iget-object v4, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 224
    invoke-virtual {v3, p2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    goto :goto_4

    .line 228
    :cond_4
    const-string v3, "GenieMemoryManager"

    .line 230
    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    move-result-object p2

    .line 234
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    goto :goto_4

    .line 238
    :cond_5
    const-string p2, "GenieMemoryManager"

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    .line 242
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    iget-object v3, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 247
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v3

    .line 254
    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_4
    const-wide/16 v3, 0x0

    .line 259
    cmp-long p2, v8, v3

    .line 261
    if-gtz p2, :cond_6

    .line 263
    const-string p2, "GenieMemoryManager"

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    .line 267
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object v1

    .line 277
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    monitor-exit p1

    .line 281
    :goto_5
    move-wide v8, v3

    .line 282
    goto/16 :goto_7

    .line 284
    :cond_6
    const-wide/32 v5, 0x80000

    .line 287
    add-long/2addr v8, v5

    .line 288
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 291
    move-result-wide v5

    .line 292
    iget-wide v11, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLastReclaimTime:J

    .line 294
    sub-long/2addr v5, v11

    .line 295
    const-wide/32 v11, 0xea60

    .line 298
    cmp-long p2, v5, v11

    .line 300
    if-gez p2, :cond_7

    .line 302
    const-string p2, "GenieMemoryManager"

    .line 304
    const-string v1, "Too early to start another reclaim"

    .line 306
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-exit p1

    .line 310
    goto :goto_5

    .line 311
    :cond_7
    iget p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSessionStatus:I

    .line 313
    if-ne p2, v2, :cond_8

    .line 315
    const-string p2, "GenieMemoryManager"

    .line 317
    const-string v1, "Session already running"

    .line 319
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    monitor-exit p1

    .line 323
    goto :goto_5

    .line 324
    :cond_8
    iget-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mGenieConfigurations:Lcom/android/server/chimera/genie/GenieConfigurations;

    .line 326
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 328
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    const/16 p2, 0x3e8

    .line 333
    if-eq v10, p2, :cond_a

    .line 335
    sget-object p2, Lcom/android/server/chimera/genie/GenieConfigurations;->sAllowedPackages:Ljava/util/List;

    .line 337
    check-cast p2, Ljava/util/ArrayList;

    .line 339
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 342
    move-result p2

    .line 343
    if-nez p2, :cond_a

    .line 345
    sget-object p2, Lcom/android/server/chimera/genie/GenieConfigurations;->sAllowedBroadcastActions:Ljava/util/List;

    .line 347
    check-cast p2, Ljava/util/ArrayList;

    .line 349
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 352
    move-result p2

    .line 353
    if-eqz p2, :cond_9

    .line 355
    goto :goto_6

    .line 356
    :cond_9
    const-string p2, "GenieMemoryManager"

    .line 358
    const-string v1, "Contact Memory Team for permissions to access these APIs"

    .line 360
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    monitor-exit p1

    .line 364
    goto :goto_5

    .line 365
    :cond_a
    :goto_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 368
    move-result-object p2

    .line 369
    sget-object v1, Lcom/android/server/chimera/genie/GenieMemoryManager;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 371
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 374
    move-result-object p2

    .line 375
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 378
    move-result-object p2

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    .line 381
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string p2, " Package: "

    .line 389
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iget-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 394
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string p2, " Uid : "

    .line 399
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    const-string p2, " ReclaimRequest : "

    .line 407
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 413
    const-string p2, " kB"

    .line 415
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    move-result-object p2

    .line 422
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    iput v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSessionStatus:I

    .line 427
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 428
    const-string p1, "GenieMemoryManager"

    .line 430
    new-instance p2, Ljava/lang/StringBuilder;

    .line 432
    const-string/jumbo v1, "prepareMemoryInternalLocked exit: "

    .line 435
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    move-result-object p2

    .line 445
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_7
    cmp-long p1, v8, v3

    .line 450
    if-gtz p1, :cond_b

    .line 452
    const-string p0, "GenieMemoryManager"

    .line 454
    const-string p1, "Request to PrepareMemory is denied"

    .line 456
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void

    .line 460
    :cond_b
    iget-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 462
    if-eqz p1, :cond_c

    .line 464
    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 467
    move-result-object p1

    .line 468
    new-instance p2, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;

    .line 470
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-wide v8, p2, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;->mMemToBeReclaimed:J

    .line 475
    iput-object v0, p2, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;->mDump:Ljava/util/ArrayList;

    .line 477
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 479
    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 481
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 484
    :cond_c
    return-void

    .line 485
    :goto_8
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 486
    throw p0

    .line 487
    :catchall_3
    move-exception p0

    .line 488
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 489
    throw p0
.end method

.method public final setGenieSessionEnd()V
    .locals 4

    .line 1
    const-string v0, "GenieMemoryManager"

    .line 3
    const-string/jumbo v1, "setGenieSessionEnd"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSessionStatus:I

    .line 14
    if-nez v1, :cond_0

    .line 16
    const-string p0, "GenieMemoryManager"

    .line 18
    const-string v1, "No session running now "

    .line 20
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    monitor-exit v0

    .line 24
    goto :goto_2

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 35
    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSessionStatus:I

    .line 38
    iget-boolean v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mHasReclaimed:Z

    .line 40
    if-eqz v2, :cond_3

    .line 42
    iget-object v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isQuickSwapEnable()Z

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 57
    iget-object v2, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/ppn/QuickSwap;

    .line 59
    if-nez v2, :cond_1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v2, v2, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestResult:Ljava/lang/String;

    .line 64
    const-string v3, "PO=comp"

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    move-result v2

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    move v2, v1

    .line 72
    :goto_1
    if-eqz v2, :cond_3

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 77
    move-result-wide v2

    .line 78
    iput-wide v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLastReclaimTime:J

    .line 80
    iput-boolean v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mHasReclaimed:Z

    .line 82
    :cond_3
    monitor-exit v0

    .line 83
    :goto_2
    return-void

    .line 84
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final startReclaimerHandlerCheck()Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mTimeOutThread:Lcom/android/server/ServiceThread;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/ServiceThread;

    .line 10
    const-string v2, "Queued-Genie-Looper"

    .line 12
    const/16 v3, 0xa

    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 18
    iput-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mTimeOutThread:Lcom/android/server/ServiceThread;

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mTimeOutThread:Lcom/android/server/ServiceThread;

    .line 25
    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mTimeOutThread:Lcom/android/server/ServiceThread;

    .line 33
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 36
    const-string v1, "GenieMemoryManager"

    .line 38
    const-string/jumbo v2, "mTimeOutThread started"

    .line 41
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 49
    if-nez v1, :cond_2

    .line 51
    const-string v1, "GenieMemoryManager"

    .line 53
    const-string v2, "ReclaimerHandler created"

    .line 55
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 60
    invoke-direct {v1, p0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;-><init>(Lcom/android/server/chimera/genie/GenieMemoryManager;)V

    .line 63
    iput-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 65
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 68
    return-object p0

    .line 69
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p0
.end method

.method public final startUnloadTimerLocked(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "Not supported "

    .line 3
    const-string/jumbo v1, "startUnloadTimerLocked pkg: "

    .line 6
    iget-object v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.offline.languagemodel"

    .line 12
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 18
    const-string v0, "GenieMemoryManager"

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, ", timeout in ms:"

    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    sget v1, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_MODEL_TIMEOUT:I

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 47
    if-eqz v0, :cond_0

    .line 49
    const/4 v3, 0x4

    .line 50
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 55
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 58
    move-result-object p1

    .line 59
    int-to-long v0, v1

    .line 60
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    monitor-exit v2

    .line 67
    return-void

    .line 68
    :cond_1
    const-string p0, "GenieMemoryManager"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    monitor-exit v2

    .line 86
    return-void

    .line 87
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method
