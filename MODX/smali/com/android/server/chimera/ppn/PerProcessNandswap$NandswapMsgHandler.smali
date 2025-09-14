.class public final Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final LAUNCHER_APP_PKGNAME:[Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field public final recentEntryProcessNames:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 3
    iget-object p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    const-string/jumbo p1, "com.sec.android.app.launcher"

    .line 15
    filled-new-array {p1}, [Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->LAUNCHER_APP_PKGNAME:[Ljava/lang/String;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    .line 28
    const-class p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final changePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v1, "changePPRState: "

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " pid:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, " ppnState:"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    iget-object p0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnStateLock:Ljava/lang/Object;

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iput p2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 52
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p1
.end method

.method public final checkCanDoPPRForCachedApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 3
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    iget p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 17
    const/4 p1, 0x1

    .line 18
    if-nez p0, :cond_0

    .line 20
    return p1

    .line 21
    :cond_0
    iget v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 23
    if-nez v0, :cond_2

    .line 25
    iget-wide v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    .line 27
    const-wide/16 v2, 0x0

    .line 29
    cmp-long v0, v0, v2

    .line 31
    if-nez v0, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 37
    move-result-wide v0

    .line 38
    iget-wide v2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    .line 40
    sub-long/2addr v0, v2

    .line 41
    const-wide/32 v2, 0xea60

    .line 44
    cmp-long p0, v0, v2

    .line 46
    if-lez p0, :cond_2

    .line 48
    :goto_0
    return p1

    .line 49
    :cond_2
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 3
    const-string/jumbo v1, "default: "

    .line 6
    const-string/jumbo v2, "change_ppr_state_msg: "

    .line 9
    const-string/jumbo v3, "madvise_prefetch for "

    .line 12
    const-string v4, "app_reentry_msg: "

    .line 14
    const-string v5, "app_died_msg: "

    .line 16
    const-string/jumbo v6, "try_to_nandswap_by_bg_event_msg: "

    .line 19
    const-string/jumbo v7, "try_to_nandswap_by_freeze_event_msg: "

    .line 22
    :try_start_0
    iget-boolean v8, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 24
    if-eqz v8, :cond_20

    .line 26
    sget v8, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 28
    if-gtz v8, :cond_0

    .line 30
    goto/16 :goto_5

    .line 32
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    const/4 v9, 0x1

    .line 35
    const-string v10, " pid:"

    .line 37
    iget-object v11, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 39
    if-eq v8, v9, :cond_1e

    .line 41
    const/4 v2, 0x4

    .line 42
    const/4 v12, 0x2

    .line 43
    const/4 v13, 0x0

    .line 44
    if-eq v8, v12, :cond_17

    .line 46
    const/4 v3, 0x3

    .line 47
    if-eq v8, v3, :cond_13

    .line 49
    if-eq v8, v2, :cond_9

    .line 51
    const/4 v0, 0x6

    .line 52
    const-string v2, " pid: "

    .line 54
    if-eq v8, v0, :cond_5

    .line 56
    const/4 v0, 0x7

    .line 57
    if-eq v8, v0, :cond_1

    .line 59
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    iget p1, p1, Landroid/os/Message;->what:I

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {v11, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    goto/16 :goto_7

    .line 78
    :catch_0
    move-exception p0

    .line 79
    goto/16 :goto_6

    .line 81
    :cond_1
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnFreezeEnabled()Z

    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_2

    .line 87
    return-void

    .line 88
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    check-cast p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 92
    if-nez p1, :cond_3

    .line 94
    return-void

    .line 95
    :cond_3
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapByFreezeEvent(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;)V

    .line 129
    goto/16 :goto_7

    .line 131
    :cond_5
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_6

    .line 137
    return-void

    .line 138
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    check-cast p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 142
    if-nez p1, :cond_7

    .line 144
    return-void

    .line 145
    :cond_7
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_8

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapByBgEvent(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;)V

    .line 179
    goto/16 :goto_7

    .line 181
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 183
    check-cast p1, Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->LAUNCHER_APP_PKGNAME:[Ljava/lang/String;

    .line 187
    array-length v1, v0

    .line 188
    move v2, v13

    .line 189
    :goto_0
    if-ge v2, v1, :cond_b

    .line 191
    aget-object v3, v0, v2

    .line 193
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_a

    .line 199
    move v9, v13

    .line 200
    goto :goto_1

    .line 201
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 203
    goto :goto_0

    .line 204
    :cond_b
    :goto_1
    if-nez v9, :cond_d

    .line 206
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 209
    move-result p0

    .line 210
    if-eqz p0, :cond_c

    .line 212
    new-instance p0, Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const-string v0, "app_entry_msg: reject launcher app "

    .line 219
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object p0

    .line 229
    invoke-static {v11, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_c
    return-void

    .line 233
    :cond_d
    move v0, v13

    .line 234
    :goto_2
    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    .line 236
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 239
    move-result v1

    .line 240
    if-ge v0, v1, :cond_f

    .line 242
    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    .line 244
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Ljava/lang/String;

    .line 250
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_e

    .line 256
    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 261
    move v9, v13

    .line 262
    goto :goto_3

    .line 263
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 265
    goto :goto_2

    .line 266
    :cond_f
    :goto_3
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    .line 268
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    if-nez v9, :cond_11

    .line 273
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 276
    move-result p0

    .line 277
    if-eqz p0, :cond_10

    .line 279
    new-instance p0, Ljava/lang/StringBuilder;

    .line 281
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    const-string v0, "app_entry_msg: reject recent app "

    .line 286
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    move-result-object p0

    .line 296
    invoke-static {v11, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_10
    return-void

    .line 300
    :cond_11
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    .line 302
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 305
    move-result v0

    .line 306
    if-le v0, v12, :cond_12

    .line 308
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    .line 310
    invoke-virtual {p0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 313
    :cond_12
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 316
    move-result p0

    .line 317
    if-eqz p0, :cond_21

    .line 319
    new-instance p0, Ljava/lang/StringBuilder;

    .line 321
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    const-string v0, "app_entry_msg: "

    .line 326
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    move-result-object p0

    .line 336
    invoke-static {v11, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    goto/16 :goto_7

    .line 341
    :cond_13
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 343
    iget-object p1, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 345
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    move-result-object p1

    .line 353
    check-cast p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 355
    if-nez p1, :cond_14

    .line 357
    return-void

    .line 358
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isKeyAppEnable()Z

    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_15

    .line 364
    iget-object v1, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    .line 366
    iget-object v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 368
    check-cast v1, Ljava/util/HashMap;

    .line 370
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_15
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 376
    move-result v1

    .line 377
    if-eqz v1, :cond_16

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    .line 381
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    iget-object v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iget p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 394
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    move-result-object p1

    .line 401
    invoke-static {v11, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_16
    iget-object p1, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 406
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    move-result-object p0

    .line 410
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    goto/16 :goto_7

    .line 415
    :cond_17
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 417
    iget-object v1, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 419
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    move-result-object v5

    .line 423
    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    move-result-object v1

    .line 427
    check-cast v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 429
    if-nez v1, :cond_18

    .line 431
    return-void

    .line 432
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isKeyAppEnable()Z

    .line 435
    move-result v5

    .line 436
    if-eqz v5, :cond_19

    .line 438
    sget-object v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->STATUS_ALREADY_PPN:Ljava/lang/Integer;

    .line 440
    iget-object v6, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    .line 442
    iget-object v7, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 444
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 446
    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    move-result-object v6

    .line 450
    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 453
    move-result v5

    .line 454
    if-eqz v5, :cond_19

    .line 456
    iget-object v5, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 458
    invoke-static {v0, v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z

    .line 461
    move-result v5

    .line 462
    if-nez v5, :cond_19

    .line 464
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    .line 466
    iget-object v5, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 468
    sget-object v6, Lcom/android/server/chimera/ppn/PerProcessNandswap;->STATUS_KEY_APP:Ljava/lang/Integer;

    .line 470
    check-cast v0, Ljava/util/HashMap;

    .line 472
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_19
    iget v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 477
    if-eq v0, v9, :cond_1a

    .line 479
    if-eq v0, v12, :cond_1a

    .line 481
    if-ne v0, v2, :cond_21

    .line 483
    :cond_1a
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 486
    move-result v0

    .line 487
    if-eqz v0, :cond_1b

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    .line 491
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    iget-object v2, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 496
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    move-result-object v0

    .line 509
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_1b
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPrefetchActionEnabled()Z

    .line 515
    move-result v0

    .line 516
    if-eqz v0, :cond_1d

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    .line 520
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    iget-object v2, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 525
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    move-result-object v0

    .line 532
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    sget-boolean v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    .line 537
    if-eqz v0, :cond_1c

    .line 539
    invoke-static {p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smprefetchProcessFast(I)V

    .line 542
    goto :goto_4

    .line 543
    :cond_1c
    invoke-static {p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smprefetchProcess(I)V

    .line 546
    :cond_1d
    :goto_4
    invoke-virtual {p0, v1, v13}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    .line 549
    goto :goto_7

    .line 550
    :cond_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 552
    check-cast v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 554
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 556
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 558
    iget-object v3, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 560
    iget v4, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 562
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 565
    move-result v5

    .line 566
    if-eqz v5, :cond_1f

    .line 568
    new-instance v5, Ljava/lang/StringBuilder;

    .line 570
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 582
    const-string v2, " ppnState:"

    .line 584
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 590
    const-string v2, " action:"

    .line 592
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 601
    move-result-object p1

    .line 602
    invoke-static {v11, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_1f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 608
    goto :goto_7

    .line 609
    :cond_20
    :goto_5
    return-void

    .line 610
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 613
    :cond_21
    :goto_7
    return-void
.end method

.method public final tryToNandswapByBgEvent(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "try_to_nandswap_by_bg_event not accepted "

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->checkCanDoPPRForCachedApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;)Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapProcess(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;Z)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 18
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 24
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v0, " pid: "

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public final tryToNandswapByFreezeEvent(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "try_to_nandswap_by_freeze_event not accepted "

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->checkCanDoPPRForCachedApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;)Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapProcess(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;Z)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 18
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 24
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v0, " pid: "

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public final tryToNandswapProcess(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;Z)Z
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "Nandswap check_ppr (pid:"

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, " / name: "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 21
    const-string v3, ")"

    .line 23
    invoke-static {v1, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 29
    iget-boolean v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 31
    iget-object v4, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v3, :cond_f

    .line 36
    sget v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 38
    if-gtz v3, :cond_0

    .line 40
    goto/16 :goto_5

    .line 42
    :cond_0
    iget-object v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 44
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    .line 47
    move-result v3

    .line 48
    int-to-long v6, v3

    .line 49
    const-wide/16 v8, 0x14

    .line 51
    cmp-long v3, v6, v8

    .line 53
    if-ltz v3, :cond_1

    .line 55
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_10

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 63
    const-string v0, "Nandswap check_ppr:  deny reason: pending app count "

    .line 65
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    iget-object v0, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 70
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 73
    move-result v0

    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    goto/16 :goto_6

    .line 86
    :cond_1
    iget-object v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 91
    move-result v3

    .line 92
    int-to-long v6, v3

    .line 93
    cmp-long v3, v6, v8

    .line 95
    if-ltz v3, :cond_2

    .line 97
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_10

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    const-string v0, "Nandswap check_ppr:  deny reason: delayed app count "

    .line 107
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object v0, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 115
    move-result v0

    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p2

    .line 123
    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    goto/16 :goto_6

    .line 128
    :cond_2
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    .line 130
    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 133
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 136
    invoke-static {v2}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    .line 139
    move-result v3

    .line 140
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getMinSwapFreePercentage()I

    .line 143
    move-result v6

    .line 144
    if-ge v3, v6, :cond_3

    .line 146
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_10

    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    .line 154
    const-string v0, "Nandswap check_ppr:  deny reason: swap space not enough - free "

    .line 156
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    .line 162
    move-result-wide v0

    .line 163
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    const-string v0, " KB over "

    .line 168
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    .line 174
    move-result-wide v0

    .line 175
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    const-string v0, " KB"

    .line 180
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object p2

    .line 187
    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    goto/16 :goto_6

    .line 192
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 194
    const-string v3, "Nandswap check_ppr_app: pid "

    .line 196
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    iget v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v3, " / name "

    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v2

    .line 218
    sget-object v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->NANDSWAP_EXCEPTION_PKGNAMES:[Ljava/lang/String;

    .line 220
    array-length v4, v3

    .line 221
    move v6, v5

    .line 222
    :goto_0
    if-ge v6, v4, :cond_6

    .line 224
    aget-object v7, v3, v6

    .line 226
    iget-object v8, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 228
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v7

    .line 232
    if-eqz v7, :cond_5

    .line 234
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 237
    move-result p2

    .line 238
    if-eqz p2, :cond_4

    .line 240
    const-string p2, " deny reason: exception app"

    .line 242
    invoke-static {v2, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    move-result-object p2

    .line 246
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 248
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_4
    invoke-virtual {p0, p1, v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    .line 254
    return v5

    .line 255
    :cond_5
    add-int/2addr v6, v0

    .line 256
    goto :goto_0

    .line 257
    :cond_6
    iget-object v2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 259
    iget-object v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 261
    invoke-virtual {v2}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isKeyAppEnable()Z

    .line 264
    move-result v4

    .line 265
    if-nez v4, :cond_7

    .line 267
    goto :goto_1

    .line 268
    :cond_7
    iget-object v4, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    .line 270
    check-cast v4, Ljava/util/LinkedHashMap;

    .line 272
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    move-result-object v3

    .line 276
    sget-object v4, Lcom/android/server/chimera/ppn/PerProcessNandswap;->STATUS_KEY_APP:Ljava/lang/Integer;

    .line 278
    invoke-virtual {v4, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 281
    move-result v3

    .line 282
    if-nez v3, :cond_8

    .line 284
    goto :goto_1

    .line 285
    :cond_8
    iget-object v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 287
    invoke-virtual {v3}, Lcom/android/server/chimera/SystemRepository;->getAvailableMemory()J

    .line 290
    move-result-wide v3

    .line 291
    iget-object v2, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 293
    iget-wide v6, v2, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 295
    cmp-long v2, v3, v6

    .line 297
    if-lez v2, :cond_a

    .line 299
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 302
    move-result p2

    .line 303
    if-eqz p2, :cond_9

    .line 305
    iget-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    .line 309
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, " deny by key app"

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    move-result-object v0

    .line 324
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_9
    invoke-virtual {p0, p1, v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    .line 330
    return v5

    .line 331
    :cond_a
    :goto_1
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 334
    move-result v2

    .line 335
    if-eqz v2, :cond_b

    .line 337
    iget-object v2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    .line 341
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v1, " accept"

    .line 349
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    move-result-object v1

    .line 356
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_b
    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 361
    iget-object v1, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 363
    iget v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 365
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    move-result-object v1

    .line 373
    check-cast v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 375
    if-nez v1, :cond_c

    .line 377
    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 379
    iget-object v1, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 381
    iget v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 383
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    goto :goto_2

    .line 391
    :cond_c
    move-object p1, v1

    .line 392
    :goto_2
    iget-object v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnStateLock:Ljava/lang/Object;

    .line 394
    monitor-enter v1

    .line 395
    :try_start_0
    iput v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 397
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 401
    move-result-wide v1

    .line 402
    iput-wide v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pendingNandswapTime:J

    .line 404
    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 406
    iget-object v1, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 408
    const/4 v2, 0x2

    .line 409
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 412
    move-result-object v1

    .line 413
    const/16 v2, 0x9

    .line 415
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 417
    if-eqz p2, :cond_d

    .line 419
    iget-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    .line 423
    const-string/jumbo v3, "startNandswapProcess Frozen-ppn "

    .line 426
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    iget-object v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 431
    invoke-static {v2, v3, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/16 p2, 0x10

    .line 436
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 438
    goto :goto_3

    .line 439
    :cond_d
    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 441
    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 443
    iget-object v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 445
    iget v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->uid:I

    .line 447
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    invoke-static {v3, v2}, Lcom/android/server/am/FreecessController;->freezeTargetProcess(ILjava/lang/String;)Z

    .line 453
    move-result v2

    .line 454
    if-nez v2, :cond_e

    .line 456
    iget-boolean p2, p2, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 458
    if-eqz p2, :cond_e

    .line 460
    iget-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    .line 464
    const-string/jumbo v3, "startNandswapProcess to-delay Cached-ppn "

    .line 467
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    iget-object v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 472
    invoke-static {v2, v3, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-wide v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pendingNandswapTime:J

    .line 477
    sget-object p2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 479
    sget p2, Lcom/android/server/am/FreecessHandler;->mScreenOnQuickFreezeCheckDelay:I

    .line 481
    const/16 v4, 0x1770

    .line 483
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 486
    move-result p2

    .line 487
    int-to-long v5, p2

    .line 488
    add-long/2addr v2, v5

    .line 489
    iput-wide v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pendingNandswapTime:J

    .line 491
    sget p2, Lcom/android/server/am/FreecessHandler;->mScreenOnQuickFreezeCheckDelay:I

    .line 493
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 496
    move-result p2

    .line 497
    int-to-long v2, p2

    .line 498
    goto :goto_4

    .line 499
    :cond_e
    :goto_3
    const-wide/16 v2, 0x0

    .line 501
    :goto_4
    iget-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 503
    iget-object p2, p2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 505
    monitor-enter p2

    .line 506
    :try_start_1
    iget-object v4, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 508
    iget-object v4, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 510
    invoke-virtual {v4, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 513
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 516
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 518
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 521
    return v0

    .line 522
    :catchall_0
    move-exception p0

    .line 523
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 524
    throw p0

    .line 525
    :catchall_1
    move-exception p0

    .line 526
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 527
    throw p0

    .line 528
    :cond_f
    :goto_5
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 531
    move-result p2

    .line 532
    if-eqz p2, :cond_10

    .line 534
    const-string p2, "Nandswap check_ppr:  deny reason: disabled"

    .line 536
    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_10
    :goto_6
    invoke-virtual {p0, p1, v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    .line 542
    return v5
.end method
