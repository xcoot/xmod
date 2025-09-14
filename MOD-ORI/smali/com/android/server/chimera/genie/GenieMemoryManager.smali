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

    .line 2
    .line 3
    sget v1, Lcom/android/server/chimera/genie/GenieConfigurations;->sAIVersion:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 16
    .line 17
    const-string v2, "No models are used on this phone"

    .line 18
    .line 19
    const-string v3, "GenieConfigurations"

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v4, 0x0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    move v0, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :goto_0
    sput v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->DEFAULT_GOOGLE_MODEL_SIZE:I

    .line 36
    .line 37
    sget-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAIVersionSepModelSize:Ljava/util/Map;

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v0, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Ljava/lang/Integer;

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_2
    if-nez v0, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    :goto_1
    sput v4, Lcom/android/server/chimera/genie/GenieMemoryManager;->DEFAULT_SAMSUNG_MODEL_SIZE:I

    .line 64
    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 66
    .line 67
    const-string v1, "[MM-dd HH:mm:ss.SSS]"

    .line 68
    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lcom/android/server/chimera/genie/GenieMemoryManager;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final prepareMemory(Lcom/samsung/android/chimera/genie/MemRequest;Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->startReclaimerHandlerCheck()Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "GenieMemoryManager"

    .line 8
    .line 9
    const-string v1, "ReclaimerHandler not initialized!!!!! Retry start"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->startReclaimerHandlerCheck()Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string p0, "GenieMemoryManager"

    .line 22
    .line 23
    const-string p1, "ReclaimerHandler not initialized!!!!! Return"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mRbinManager:Lcom/android/server/chimera/genie/RbinManager;

    .line 30
    .line 31
    iget-boolean v1, v0, Lcom/android/server/chimera/genie/RbinManager;->mFeatureEnabled:Z

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    iget-object v1, v0, Lcom/android/server/chimera/genie/RbinManager;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    iget v3, v0, Lcom/android/server/chimera/genie/RbinManager;->mCount:I

    .line 41
    .line 42
    add-int/2addr v3, v2

    .line 43
    iput v3, v0, Lcom/android/server/chimera/genie/RbinManager;->mCount:I

    .line 44
    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 46
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    .line 47
    .line 48
    new-instance v1, Ljava/io/FileWriter;

    .line 49
    .line 50
    const-string v3, "/sys/kernel/rbin/refill_mode"

    .line 51
    .line 52
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 53
    .line 54
    invoke-direct {v1, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    .line 60
    const/16 v1, 0x31

    .line 61
    .line 62
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    .line 68
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 69
    .line 70
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

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_1
    move-exception v0

    .line 80
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 84
    :goto_1
    const-string v1, "RbinManager"

    .line 85
    .line 86
    const-string v3, "Error writing to the file "

    .line 87
    .line 88
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    const/4 v3, 0x3

    .line 101
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const-wide/16 v4, 0x1388

    .line 106
    .line 107
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 108
    .line 109
    .line 110
    :cond_2
    const-string v1, "Invalid Memory Request; No reclaimer triggered "

    .line 111
    .line 112
    const-string v3, "AI package is null for "

    .line 113
    .line 114
    const-string v4, "LRU Access:"

    .line 115
    .line 116
    const-string v5, "Adding to LRU: "

    .line 117
    .line 118
    const-string v6, "AIPackage:"

    .line 119
    .line 120
    const-string v7, "PrepareMemory Calling Package "

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/chimera/genie/MemRequest;->getSize()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    int-to-long v8, p1

    .line 127
    iget-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLock:Ljava/lang/Object;

    .line 128
    .line 129
    monitor-enter p1

    .line 130
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    if-eqz p2, :cond_3

    .line 135
    .line 136
    iput-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :catchall_2
    move-exception p0

    .line 140
    goto/16 :goto_8

    .line 141
    .line 142
    :cond_3
    iget-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p2, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    const/4 v11, 0x0

    .line 153
    aget-object p2, p2, v11

    .line 154
    .line 155
    iput-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 156
    .line 157
    :goto_3
    const-string p2, "GenieMemoryManager"

    .line 158
    .line 159
    new-instance v11, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v7, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-static {p2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    sget-object p2, Lcom/android/server/chimera/genie/GenieConfigurations;->sGenAIPackageMap:Ljava/util/Map;

    .line 177
    .line 178
    iget-object v7, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 179
    .line 180
    check-cast p2, Ljava/util/HashMap;

    .line 181
    .line 182
    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    check-cast p2, Ljava/lang/String;

    .line 187
    .line 188
    if-eqz p2, :cond_5

    .line 189
    .line 190
    const-string v3, "GenieMemoryManager"

    .line 191
    .line 192
    invoke-virtual {v6, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lcom/android/server/chimera/genie/GenieLRUList;->getInstance()Lcom/android/server/chimera/genie/GenieLRUList;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v3, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    if-nez v3, :cond_4

    .line 208
    .line 209
    const-string v3, "GenieMemoryManager"

    .line 210
    .line 211
    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    invoke-static {}, Lcom/android/server/chimera/genie/GenieLRUList;->getInstance()Lcom/android/server/chimera/genie/GenieLRUList;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    iget-object v4, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v3, p2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_4
    const-string v3, "GenieMemoryManager"

    .line 229
    .line 230
    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_5
    const-string p2, "GenieMemoryManager"

    .line 239
    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v3, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    :goto_4
    const-wide/16 v3, 0x0

    .line 258
    .line 259
    cmp-long p2, v8, v3

    .line 260
    .line 261
    if-gtz p2, :cond_6

    .line 262
    .line 263
    const-string p2, "GenieMemoryManager"

    .line 264
    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    monitor-exit p1

    .line 281
    :goto_5
    move-wide v8, v3

    .line 282
    goto/16 :goto_7

    .line 283
    .line 284
    :cond_6
    const-wide/32 v5, 0x80000

    .line 285
    .line 286
    .line 287
    add-long/2addr v8, v5

    .line 288
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 289
    .line 290
    .line 291
    move-result-wide v5

    .line 292
    iget-wide v11, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLastReclaimTime:J

    .line 293
    .line 294
    sub-long/2addr v5, v11

    .line 295
    const-wide/32 v11, 0xea60

    .line 296
    .line 297
    .line 298
    cmp-long p2, v5, v11

    .line 299
    .line 300
    if-gez p2, :cond_7

    .line 301
    .line 302
    const-string p2, "GenieMemoryManager"

    .line 303
    .line 304
    const-string v1, "Too early to start another reclaim"

    .line 305
    .line 306
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    monitor-exit p1

    .line 310
    goto :goto_5

    .line 311
    :cond_7
    iget p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSessionStatus:I

    .line 312
    .line 313
    if-ne p2, v2, :cond_8

    .line 314
    .line 315
    const-string p2, "GenieMemoryManager"

    .line 316
    .line 317
    const-string v1, "Session already running"

    .line 318
    .line 319
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    monitor-exit p1

    .line 323
    goto :goto_5

    .line 324
    :cond_8
    iget-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mGenieConfigurations:Lcom/android/server/chimera/genie/GenieConfigurations;

    .line 325
    .line 326
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    const/16 p2, 0x3e8

    .line 332
    .line 333
    if-eq v10, p2, :cond_a

    .line 334
    .line 335
    sget-object p2, Lcom/android/server/chimera/genie/GenieConfigurations;->sAllowedPackages:Ljava/util/List;

    .line 336
    .line 337
    check-cast p2, Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result p2

    .line 343
    if-nez p2, :cond_a

    .line 344
    .line 345
    sget-object p2, Lcom/android/server/chimera/genie/GenieConfigurations;->sAllowedBroadcastActions:Ljava/util/List;

    .line 346
    .line 347
    check-cast p2, Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result p2

    .line 353
    if-eqz p2, :cond_9

    .line 354
    .line 355
    goto :goto_6

    .line 356
    :cond_9
    const-string p2, "GenieMemoryManager"

    .line 357
    .line 358
    const-string v1, "Contact Memory Team for permissions to access these APIs"

    .line 359
    .line 360
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    monitor-exit p1

    .line 364
    goto :goto_5

    .line 365
    :cond_a
    :goto_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    sget-object v1, Lcom/android/server/chimera/genie/GenieMemoryManager;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 370
    .line 371
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string p2, " Package: "

    .line 388
    .line 389
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    const-string p2, " Uid : "

    .line 398
    .line 399
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string p2, " ReclaimRequest : "

    .line 406
    .line 407
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    const-string p2, " kB"

    .line 414
    .line 415
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p2

    .line 422
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    iput v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSessionStatus:I

    .line 426
    .line 427
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 428
    const-string p1, "GenieMemoryManager"

    .line 429
    .line 430
    new-instance p2, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string/jumbo v1, "prepareMemoryInternalLocked exit: "

    .line 433
    .line 434
    .line 435
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p2

    .line 445
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    :goto_7
    cmp-long p1, v8, v3

    .line 449
    .line 450
    if-gtz p1, :cond_b

    .line 451
    .line 452
    const-string p0, "GenieMemoryManager"

    .line 453
    .line 454
    const-string p1, "Request to PrepareMemory is denied"

    .line 455
    .line 456
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .line 458
    .line 459
    return-void

    .line 460
    :cond_b
    iget-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 461
    .line 462
    if-eqz p1, :cond_c

    .line 463
    .line 464
    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    new-instance p2, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;

    .line 469
    .line 470
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 471
    .line 472
    .line 473
    iput-wide v8, p2, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;->mMemToBeReclaimed:J

    .line 474
    .line 475
    iput-object v0, p2, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimMessage;->mDump:Ljava/util/ArrayList;

    .line 476
    .line 477
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 478
    .line 479
    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 480
    .line 481
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 482
    .line 483
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

    .line 2
    .line 3
    const-string/jumbo v1, "setGenieSessionEnd"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSessionStatus:I

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string p0, "GenieMemoryManager"

    .line 17
    .line 18
    const-string v1, "No session running now "

    .line 19
    .line 20
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
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

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mName:Ljava/lang/String;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mSessionStatus:I

    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mHasReclaimed:Z

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isQuickSwapEnable()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    iget-object v2, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mQuickSwap:Lcom/android/server/chimera/ppn/QuickSwap;

    .line 58
    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v2, v2, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestResult:Ljava/lang/String;

    .line 63
    .line 64
    const-string v3, "PO=comp"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
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

    .line 73
    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    iput-wide v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLastReclaimTime:J

    .line 79
    .line 80
    iput-boolean v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mHasReclaimed:Z

    .line 81
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

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mTimeOutThread:Lcom/android/server/ServiceThread;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/ServiceThread;

    .line 9
    .line 10
    const-string v2, "Queued-Genie-Looper"

    .line 11
    .line 12
    const/16 v3, 0xa

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mTimeOutThread:Lcom/android/server/ServiceThread;

    .line 19
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

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mTimeOutThread:Lcom/android/server/ServiceThread;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 34
    .line 35
    .line 36
    const-string v1, "GenieMemoryManager"

    .line 37
    .line 38
    const-string/jumbo v2, "mTimeOutThread started"

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 46
    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    const-string v1, "GenieMemoryManager"

    .line 52
    .line 53
    const-string v2, "ReclaimerHandler created"

    .line 54
    .line 55
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;-><init>(Lcom/android/server/chimera/genie/GenieMemoryManager;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 64
    .line 65
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 67
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

    .line 2
    .line 3
    const-string/jumbo v1, "startUnloadTimerLocked pkg: "

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    const-string/jumbo v3, "com.samsung.android.offline.languagemodel"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    const-string v0, "GenieMemoryManager"

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", timeout in ms:"

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    sget v1, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_MODEL_TIMEOUT:I

    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    const/4 v3, 0x4

    .line 50
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager;->mReclaimerHandler:Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler;

    .line 54
    .line 55
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    int-to-long v0, v1

    .line 60
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 61
    .line 62
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

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
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
