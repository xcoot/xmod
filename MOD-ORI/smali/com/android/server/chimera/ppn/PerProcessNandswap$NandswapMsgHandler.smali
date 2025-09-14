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

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgThread:Lcom/android/server/ServiceThread;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo p1, "com.sec.android.app.launcher"

    .line 13
    .line 14
    .line 15
    filled-new-array {p1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->LAUNCHER_APP_PKGNAME:[Ljava/lang/String;

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    .line 27
    .line 28
    const-class p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final changePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v1, "changePPRState: "

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " pid:"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, " ppnState:"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object p0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnStateLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iput p2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 51
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

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    iget p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    return p1

    .line 21
    :cond_0
    iget v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-wide v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    iget-wide v2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    .line 39
    .line 40
    sub-long/2addr v0, v2

    .line 41
    const-wide/32 v2, 0xea60

    .line 42
    .line 43
    .line 44
    cmp-long p0, v0, v2

    .line 45
    .line 46
    if-lez p0, :cond_2

    .line 47
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

    .line 2
    .line 3
    const-string/jumbo v1, "default: "

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "change_ppr_state_msg: "

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "madvise_prefetch for "

    .line 10
    .line 11
    .line 12
    const-string v4, "app_reentry_msg: "

    .line 13
    .line 14
    const-string v5, "app_died_msg: "

    .line 15
    .line 16
    const-string/jumbo v6, "try_to_nandswap_by_bg_event_msg: "

    .line 17
    .line 18
    .line 19
    const-string/jumbo v7, "try_to_nandswap_by_freeze_event_msg: "

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-boolean v8, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 23
    .line 24
    if-eqz v8, :cond_20

    .line 25
    .line 26
    sget v8, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 27
    .line 28
    if-gtz v8, :cond_0

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    const-string v10, " pid:"

    .line 36
    .line 37
    iget-object v11, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    if-eq v8, v9, :cond_1e

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    const/4 v12, 0x2

    .line 43
    const/4 v13, 0x0

    .line 44
    if-eq v8, v12, :cond_17

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    if-eq v8, v3, :cond_13

    .line 48
    .line 49
    if-eq v8, v2, :cond_9

    .line 50
    .line 51
    const/4 v0, 0x6

    .line 52
    const-string v2, " pid: "

    .line 53
    .line 54
    if-eq v8, v0, :cond_5

    .line 55
    .line 56
    const/4 v0, 0x7

    .line 57
    if-eq v8, v0, :cond_1

    .line 58
    .line 59
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget p1, p1, Landroid/os/Message;->what:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v11, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto/16 :goto_7

    .line 77
    .line 78
    :catch_0
    move-exception p0

    .line 79
    goto/16 :goto_6

    .line 80
    .line 81
    :cond_1
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnFreezeEnabled()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_2

    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 91
    .line 92
    if-nez p1, :cond_3

    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapByFreezeEvent(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_7

    .line 130
    .line 131
    :cond_5
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isWritebackOnBGEnabled()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_6

    .line 136
    .line 137
    return-void

    .line 138
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 141
    .line 142
    if-nez p1, :cond_7

    .line 143
    .line 144
    return-void

    .line 145
    :cond_7
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_8

    .line 150
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapByBgEvent(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_7

    .line 180
    .line 181
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast p1, Ljava/lang/String;

    .line 184
    .line 185
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->LAUNCHER_APP_PKGNAME:[Ljava/lang/String;

    .line 186
    .line 187
    array-length v1, v0

    .line 188
    move v2, v13

    .line 189
    :goto_0
    if-ge v2, v1, :cond_b

    .line 190
    .line 191
    aget-object v3, v0, v2

    .line 192
    .line 193
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-eqz v3, :cond_a

    .line 198
    .line 199
    move v9, v13

    .line 200
    goto :goto_1

    .line 201
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_b
    :goto_1
    if-nez v9, :cond_d

    .line 205
    .line 206
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    if-eqz p0, :cond_c

    .line 211
    .line 212
    new-instance p0, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v0, "app_entry_msg: reject launcher app "

    .line 218
    .line 219
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-static {v11, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    :cond_c
    return-void

    .line 233
    :cond_d
    move v0, v13

    .line 234
    :goto_2
    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-ge v0, v1, :cond_f

    .line 241
    .line 242
    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    check-cast v1, Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_e

    .line 255
    .line 256
    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move v9, v13

    .line 262
    goto :goto_3

    .line 263
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_f
    :goto_3
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    if-nez v9, :cond_11

    .line 272
    .line 273
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    if-eqz p0, :cond_10

    .line 278
    .line 279
    new-instance p0, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string v0, "app_entry_msg: reject recent app "

    .line 285
    .line 286
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-static {v11, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    :cond_10
    return-void

    .line 300
    :cond_11
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-le v0, v12, :cond_12

    .line 307
    .line 308
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->recentEntryProcessNames:Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-virtual {p0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    :cond_12
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 314
    .line 315
    .line 316
    move-result p0

    .line 317
    if-eqz p0, :cond_21

    .line 318
    .line 319
    new-instance p0, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .line 323
    .line 324
    const-string v0, "app_entry_msg: "

    .line 325
    .line 326
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    invoke-static {v11, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    goto/16 :goto_7

    .line 340
    .line 341
    :cond_13
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 342
    .line 343
    iget-object p1, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 344
    .line 345
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    check-cast p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 354
    .line 355
    if-nez p1, :cond_14

    .line 356
    .line 357
    return-void

    .line 358
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isKeyAppEnable()Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_15

    .line 363
    .line 364
    iget-object v1, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    .line 365
    .line 366
    iget-object v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 367
    .line 368
    check-cast v1, Ljava/util/HashMap;

    .line 369
    .line 370
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    :cond_15
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    if-eqz v1, :cond_16

    .line 378
    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 393
    .line 394
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    invoke-static {v11, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    :cond_16
    iget-object p1, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 405
    .line 406
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    goto/16 :goto_7

    .line 414
    .line 415
    :cond_17
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 416
    .line 417
    iget-object v1, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 418
    .line 419
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    check-cast v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 428
    .line 429
    if-nez v1, :cond_18

    .line 430
    .line 431
    return-void

    .line 432
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isKeyAppEnable()Z

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    if-eqz v5, :cond_19

    .line 437
    .line 438
    sget-object v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->STATUS_ALREADY_PPN:Ljava/lang/Integer;

    .line 439
    .line 440
    iget-object v6, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    .line 441
    .line 442
    iget-object v7, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 443
    .line 444
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 445
    .line 446
    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v5

    .line 454
    if-eqz v5, :cond_19

    .line 455
    .line 456
    iget-object v5, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 457
    .line 458
    invoke-static {v0, v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    if-nez v5, :cond_19

    .line 463
    .line 464
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    .line 465
    .line 466
    iget-object v5, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 467
    .line 468
    sget-object v6, Lcom/android/server/chimera/ppn/PerProcessNandswap;->STATUS_KEY_APP:Ljava/lang/Integer;

    .line 469
    .line 470
    check-cast v0, Ljava/util/HashMap;

    .line 471
    .line 472
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    :cond_19
    iget v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 476
    .line 477
    if-eq v0, v9, :cond_1a

    .line 478
    .line 479
    if-eq v0, v12, :cond_1a

    .line 480
    .line 481
    if-ne v0, v2, :cond_21

    .line 482
    .line 483
    :cond_1a
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-eqz v0, :cond_1b

    .line 488
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    iget-object v2, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .line 511
    .line 512
    :cond_1b
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isPrefetchActionEnabled()Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-eqz v0, :cond_1d

    .line 517
    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    iget-object v2, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 524
    .line 525
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    sget-boolean v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    .line 536
    .line 537
    if-eqz v0, :cond_1c

    .line 538
    .line 539
    invoke-static {p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smprefetchProcessFast(I)V

    .line 540
    .line 541
    .line 542
    goto :goto_4

    .line 543
    :cond_1c
    invoke-static {p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smprefetchProcess(I)V

    .line 544
    .line 545
    .line 546
    :cond_1d
    :goto_4
    invoke-virtual {p0, v1, v13}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    .line 547
    .line 548
    .line 549
    goto :goto_7

    .line 550
    :cond_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 553
    .line 554
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 555
    .line 556
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 557
    .line 558
    iget-object v3, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 559
    .line 560
    iget v4, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 561
    .line 562
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    if-eqz v5, :cond_1f

    .line 567
    .line 568
    new-instance v5, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    const-string v2, " ppnState:"

    .line 583
    .line 584
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    const-string v2, " action:"

    .line 591
    .line 592
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object p1

    .line 602
    invoke-static {v11, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .line 604
    .line 605
    :cond_1f
    invoke-virtual {p0, v0, v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 606
    .line 607
    .line 608
    goto :goto_7

    .line 609
    :cond_20
    :goto_5
    return-void

    .line 610
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 611
    .line 612
    .line 613
    :cond_21
    :goto_7
    return-void
.end method

.method public final tryToNandswapByBgEvent(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "try_to_nandswap_by_bg_event not accepted "

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->checkCanDoPPRForCachedApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapProcess(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " pid: "

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public final tryToNandswapByFreezeEvent(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "try_to_nandswap_by_freeze_event not accepted "

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->checkCanDoPPRForCachedApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->tryToNandswapProcess(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " pid: "

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    .line 57
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

    .line 3
    .line 4
    const-string v2, "Nandswap check_ppr (pid:"

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, " / name: "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, ")"

    .line 22
    .line 23
    invoke-static {v1, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 28
    .line 29
    iget-boolean v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v3, :cond_f

    .line 35
    .line 36
    sget v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 37
    .line 38
    if-gtz v3, :cond_0

    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_0
    iget-object v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    int-to-long v6, v3

    .line 49
    const-wide/16 v8, 0x14

    .line 50
    .line 51
    cmp-long v3, v6, v8

    .line 52
    .line 53
    if-ltz v3, :cond_1

    .line 54
    .line 55
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_10

    .line 60
    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v0, "Nandswap check_ppr:  deny reason: pending app count "

    .line 64
    .line 65
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :cond_1
    iget-object v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    int-to-long v6, v3

    .line 93
    cmp-long v3, v6, v8

    .line 94
    .line 95
    if-ltz v3, :cond_2

    .line 96
    .line 97
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_10

    .line 102
    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v0, "Nandswap check_ppr:  deny reason: delayed app count "

    .line 106
    .line 107
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    goto/16 :goto_6

    .line 127
    .line 128
    :cond_2
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    .line 129
    .line 130
    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 134
    .line 135
    .line 136
    invoke-static {v2}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getMinSwapFreePercentage()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-ge v3, v6, :cond_3

    .line 145
    .line 146
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_10

    .line 151
    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v0, "Nandswap check_ppr:  deny reason: swap space not enough - free "

    .line 155
    .line 156
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    .line 160
    .line 161
    .line 162
    move-result-wide v0

    .line 163
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v0, " KB over "

    .line 167
    .line 168
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    .line 172
    .line 173
    .line 174
    move-result-wide v0

    .line 175
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v0, " KB"

    .line 179
    .line 180
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    goto/16 :goto_6

    .line 191
    .line 192
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v3, "Nandswap check_ppr_app: pid "

    .line 195
    .line 196
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 200
    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v3, " / name "

    .line 205
    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    sget-object v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->NANDSWAP_EXCEPTION_PKGNAMES:[Ljava/lang/String;

    .line 219
    .line 220
    array-length v4, v3

    .line 221
    move v6, v5

    .line 222
    :goto_0
    if-ge v6, v4, :cond_6

    .line 223
    .line 224
    aget-object v7, v3, v6

    .line 225
    .line 226
    iget-object v8, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    if-eqz v7, :cond_5

    .line 233
    .line 234
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    if-eqz p2, :cond_4

    .line 239
    .line 240
    const-string p2, " deny reason: exception app"

    .line 241
    .line 242
    invoke-static {v2, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    :cond_4
    invoke-virtual {p0, p1, v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    .line 252
    .line 253
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

    .line 258
    .line 259
    iget-object v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v2}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isKeyAppEnable()Z

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    if-nez v4, :cond_7

    .line 266
    .line 267
    goto :goto_1

    .line 268
    :cond_7
    iget-object v4, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    .line 269
    .line 270
    check-cast v4, Ljava/util/LinkedHashMap;

    .line 271
    .line 272
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    sget-object v4, Lcom/android/server/chimera/ppn/PerProcessNandswap;->STATUS_KEY_APP:Ljava/lang/Integer;

    .line 277
    .line 278
    invoke-virtual {v4, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-nez v3, :cond_8

    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_8
    iget-object v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 286
    .line 287
    invoke-virtual {v3}, Lcom/android/server/chimera/SystemRepository;->getAvailableMemory()J

    .line 288
    .line 289
    .line 290
    move-result-wide v3

    .line 291
    iget-object v2, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    .line 292
    .line 293
    iget-wide v6, v2, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    .line 294
    .line 295
    cmp-long v2, v3, v6

    .line 296
    .line 297
    if-lez v2, :cond_a

    .line 298
    .line 299
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    if-eqz p2, :cond_9

    .line 304
    .line 305
    iget-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 306
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string v1, " deny by key app"

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    :cond_9
    invoke-virtual {p0, p1, v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    .line 328
    .line 329
    .line 330
    return v5

    .line 331
    :cond_a
    :goto_1
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-eqz v2, :cond_b

    .line 336
    .line 337
    iget-object v2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 338
    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v1, " accept"

    .line 348
    .line 349
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    :cond_b
    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 360
    .line 361
    iget-object v1, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 362
    .line 363
    iget v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 364
    .line 365
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    check-cast v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 374
    .line 375
    if-nez v1, :cond_c

    .line 376
    .line 377
    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 378
    .line 379
    iget-object v1, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 380
    .line 381
    iget v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 382
    .line 383
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    goto :goto_2

    .line 391
    :cond_c
    move-object p1, v1

    .line 392
    :goto_2
    iget-object v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnStateLock:Ljava/lang/Object;

    .line 393
    .line 394
    monitor-enter v1

    .line 395
    :try_start_0
    iput v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 396
    .line 397
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 399
    .line 400
    .line 401
    move-result-wide v1

    .line 402
    iput-wide v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pendingNandswapTime:J

    .line 403
    .line 404
    iget-object v1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 405
    .line 406
    iget-object v1, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 407
    .line 408
    const/4 v2, 0x2

    .line 409
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    const/16 v2, 0x9

    .line 414
    .line 415
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 416
    .line 417
    if-eqz p2, :cond_d

    .line 418
    .line 419
    iget-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 420
    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    const-string/jumbo v3, "startNandswapProcess Frozen-ppn "

    .line 424
    .line 425
    .line 426
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    iget-object v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 430
    .line 431
    invoke-static {v2, v3, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    const/16 p2, 0x10

    .line 435
    .line 436
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 437
    .line 438
    goto :goto_3

    .line 439
    :cond_d
    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 440
    .line 441
    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 442
    .line 443
    iget-object v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 444
    .line 445
    iget v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->uid:I

    .line 446
    .line 447
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    invoke-static {v3, v2}, Lcom/android/server/am/FreecessController;->freezeTargetProcess(ILjava/lang/String;)Z

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    if-nez v2, :cond_e

    .line 455
    .line 456
    iget-boolean p2, p2, Lcom/android/server/am/FreecessController;->mIsQuickFreezeEnabled:Z

    .line 457
    .line 458
    if-eqz p2, :cond_e

    .line 459
    .line 460
    iget-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->TAG:Ljava/lang/String;

    .line 461
    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    const-string/jumbo v3, "startNandswapProcess to-delay Cached-ppn "

    .line 465
    .line 466
    .line 467
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    iget-object v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 471
    .line 472
    invoke-static {v2, v3, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iget-wide v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pendingNandswapTime:J

    .line 476
    .line 477
    sget-object p2, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    .line 478
    .line 479
    sget p2, Lcom/android/server/am/FreecessHandler;->mScreenOnQuickFreezeCheckDelay:I

    .line 480
    .line 481
    const/16 v4, 0x1770

    .line 482
    .line 483
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 484
    .line 485
    .line 486
    move-result p2

    .line 487
    int-to-long v5, p2

    .line 488
    add-long/2addr v2, v5

    .line 489
    iput-wide v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pendingNandswapTime:J

    .line 490
    .line 491
    sget p2, Lcom/android/server/am/FreecessHandler;->mScreenOnQuickFreezeCheckDelay:I

    .line 492
    .line 493
    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    .line 494
    .line 495
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

    .line 500
    .line 501
    :goto_4
    iget-object p2, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 502
    .line 503
    iget-object p2, p2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 504
    .line 505
    monitor-enter p2

    .line 506
    :try_start_1
    iget-object v4, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 507
    .line 508
    iget-object v4, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 509
    .line 510
    invoke-virtual {v4, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 515
    .line 516
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 517
    .line 518
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 519
    .line 520
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

    .line 529
    .line 530
    .line 531
    move-result p2

    .line 532
    if-eqz p2, :cond_10

    .line 533
    .line 534
    const-string p2, "Nandswap check_ppr:  deny reason: disabled"

    .line 535
    .line 536
    invoke-static {v4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    :cond_10
    :goto_6
    invoke-virtual {p0, p1, v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;->changePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    .line 540
    .line 541
    .line 542
    return v5
.end method
