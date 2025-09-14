.class public final Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 3
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mServiceThread:Lcom/android/server/ServiceThread;

    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_5

    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_4

    .line 10
    const/4 p1, 0x3

    .line 11
    if-eq v0, p1, :cond_3

    .line 13
    const/4 p1, 0x4

    .line 14
    if-eq v0, p1, :cond_0

    .line 16
    goto/16 :goto_5

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 20
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 22
    invoke-virtual {p1}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p1

    .line 32
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_e

    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 44
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 46
    iget-object v4, v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    const-string/jumbo v3, "com.sec."

    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 60
    const-string/jumbo v3, "com.samsung."

    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 69
    :cond_2
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 71
    iget-object v3, v3, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 73
    iget v4, v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 75
    invoke-virtual {v3, v4}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    .line 78
    move-result-object v3

    .line 79
    aget v7, v3, v2

    .line 81
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-static {v7}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isAlwaysRunningAdj(I)Z

    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_1

    .line 92
    iget-object v3, v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 94
    if-eqz v3, :cond_1

    .line 96
    array-length v4, v3

    .line 97
    if-eqz v4, :cond_1

    .line 99
    new-instance v10, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 101
    aget-object v8, v3, v1

    .line 103
    iget-object v9, v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 105
    iget v5, v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 107
    iget v6, v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 109
    move-object v4, v10

    .line 110
    invoke-direct/range {v4 .. v9}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 116
    move-result-wide v3

    .line 117
    iput-wide v3, v10, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->alwaysRunningStartTime:J

    .line 119
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 121
    iget-object v3, v3, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 123
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :try_start_1
    iget-object v4, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 126
    iget-object v4, v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 128
    iget v0, v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v0

    .line 134
    check-cast v4, Landroid/util/ArrayMap;

    .line 136
    invoke-virtual {v4, v0, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    monitor-exit v3

    .line 140
    goto :goto_0

    .line 141
    :catchall_0
    move-exception p0

    .line 142
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :try_start_2
    throw p0

    .line 144
    :catch_0
    move-exception p0

    .line 145
    goto/16 :goto_4

    .line 147
    :cond_3
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 149
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->getAlwaysRunningList()Ljava/util/List;

    .line 152
    move-result-object p1

    .line 153
    move-object v0, p1

    .line 154
    check-cast v0, Ljava/util/ArrayList;

    .line 156
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_e

    .line 162
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 164
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/Heimdall;->checkAlwaysRunningProcesses(Ljava/util/List;)V

    .line 169
    goto/16 :goto_5

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 173
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 175
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    :try_start_3
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 178
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 180
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    move-result-object p1

    .line 186
    check-cast p0, Landroid/util/ArrayMap;

    .line 188
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    monitor-exit v0

    .line 192
    goto/16 :goto_5

    .line 194
    :catchall_1
    move-exception p0

    .line 195
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 196
    :try_start_4
    throw p0

    .line 197
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    check-cast v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 201
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 203
    iget-object v4, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 205
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    const-string/jumbo v3, "com.sec."

    .line 211
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 214
    move-result v3

    .line 215
    if-nez v3, :cond_7

    .line 217
    const-string/jumbo v3, "com.samsung."

    .line 220
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_6

    .line 226
    goto :goto_1

    .line 227
    :cond_6
    return-void

    .line 228
    :cond_7
    :goto_1
    iget v3, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->pid:I

    .line 230
    iget v4, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->adj:I

    .line 232
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 234
    iget-object v5, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 236
    iget-object v5, v5, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 238
    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 239
    :try_start_5
    iget-object v6, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 241
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    invoke-static {v4}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isAlwaysRunningAdj(I)Z

    .line 247
    move-result v6

    .line 248
    if-eqz v6, :cond_b

    .line 250
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 252
    iget-object v2, v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    move-result-object v6

    .line 258
    check-cast v2, Landroid/util/ArrayMap;

    .line 260
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 266
    if-nez v2, :cond_8

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 271
    move-result-wide v1

    .line 272
    iput-wide v1, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->alwaysRunningStartTime:J

    .line 274
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 276
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 278
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    move-result-object p1

    .line 282
    check-cast p0, Landroid/util/ArrayMap;

    .line 284
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    goto :goto_2

    .line 288
    :catchall_2
    move-exception p0

    .line 289
    goto :goto_3

    .line 290
    :cond_8
    iput v4, v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->adj:I

    .line 292
    iget-boolean v0, v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->isForegroundApp:Z

    .line 294
    if-eqz v0, :cond_9

    .line 296
    iput-boolean v1, v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->isForegroundApp:Z

    .line 298
    goto :goto_2

    .line 299
    :cond_9
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    if-eqz p1, :cond_a

    .line 306
    const/16 p0, 0xfa

    .line 308
    if-le p1, p0, :cond_d

    .line 310
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 313
    move-result-wide p0

    .line 314
    iput-wide p0, v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->alwaysRunningStartTime:J

    .line 316
    goto :goto_2

    .line 317
    :cond_b
    if-nez v4, :cond_c

    .line 319
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 321
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 323
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    move-result-object p1

    .line 327
    check-cast p0, Landroid/util/ArrayMap;

    .line 329
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    move-result-object p0

    .line 333
    check-cast p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 335
    if-eqz p0, :cond_d

    .line 337
    iput-boolean v2, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->isForegroundApp:Z

    .line 339
    goto :goto_2

    .line 340
    :cond_c
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 342
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 344
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    move-result-object p1

    .line 348
    check-cast p0, Landroid/util/ArrayMap;

    .line 350
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_d
    :goto_2
    monitor-exit v5

    .line 354
    goto :goto_5

    .line 355
    :goto_3
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 356
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 357
    :goto_4
    const-string p1, "HeimdallAlwaysRunningMonitor"

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    .line 361
    const-string v1, "Handler message catch exception "

    .line 363
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-static {p0, v0, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 369
    :cond_e
    :goto_5
    return-void
.end method
