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

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mServiceThread:Lcom/android/server/ServiceThread;

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
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_5

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_4

    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    if-eq v0, p1, :cond_3

    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    if-eq v0, p1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_5

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_e

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 45
    .line 46
    iget-object v4, v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-string/jumbo v3, "com.sec."

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    const-string/jumbo v3, "com.samsung."

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    :cond_2
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 72
    .line 73
    iget v4, v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    aget v7, v3, v2

    .line 80
    .line 81
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {v7}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isAlwaysRunningAdj(I)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_1

    .line 91
    .line 92
    iget-object v3, v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v3, :cond_1

    .line 95
    .line 96
    array-length v4, v3

    .line 97
    if-eqz v4, :cond_1

    .line 98
    .line 99
    new-instance v10, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 100
    .line 101
    aget-object v8, v3, v1

    .line 102
    .line 103
    iget-object v9, v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 104
    .line 105
    iget v5, v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 106
    .line 107
    iget v6, v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 108
    .line 109
    move-object v4, v10

    .line 110
    invoke-direct/range {v4 .. v9}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    iput-wide v3, v10, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->alwaysRunningStartTime:J

    .line 118
    .line 119
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 120
    .line 121
    iget-object v3, v3, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 122
    .line 123
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :try_start_1
    iget-object v4, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 125
    .line 126
    iget-object v4, v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 127
    .line 128
    iget v0, v0, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 129
    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v4, Landroid/util/ArrayMap;

    .line 135
    .line 136
    invoke-virtual {v4, v0, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
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

    .line 146
    .line 147
    :cond_3
    iget-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->getAlwaysRunningList()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    move-object v0, p1

    .line 154
    check-cast v0, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_e

    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/Heimdall;->checkAlwaysRunningProcesses(Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_5

    .line 170
    .line 171
    :cond_4
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 172
    .line 173
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 174
    .line 175
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    :try_start_3
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 177
    .line 178
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 179
    .line 180
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 181
    .line 182
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p0, Landroid/util/ArrayMap;

    .line 187
    .line 188
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    monitor-exit v0

    .line 192
    goto/16 :goto_5

    .line 193
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

    .line 198
    .line 199
    check-cast v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 200
    .line 201
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 202
    .line 203
    iget-object v4, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    const-string/jumbo v3, "com.sec."

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-nez v3, :cond_7

    .line 216
    .line 217
    const-string/jumbo v3, "com.samsung."

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_6

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_6
    return-void

    .line 228
    :cond_7
    :goto_1
    iget v3, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->pid:I

    .line 229
    .line 230
    iget v4, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->adj:I

    .line 231
    .line 232
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 233
    .line 234
    iget-object v5, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 235
    .line 236
    iget-object v5, v5, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 237
    .line 238
    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 239
    :try_start_5
    iget-object v6, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 240
    .line 241
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    invoke-static {v4}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isAlwaysRunningAdj(I)Z

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    if-eqz v6, :cond_b

    .line 249
    .line 250
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 251
    .line 252
    iget-object v2, v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 253
    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    check-cast v2, Landroid/util/ArrayMap;

    .line 259
    .line 260
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    check-cast v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 265
    .line 266
    if-nez v2, :cond_8

    .line 267
    .line 268
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 269
    .line 270
    .line 271
    move-result-wide v1

    .line 272
    iput-wide v1, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->alwaysRunningStartTime:J

    .line 273
    .line 274
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 275
    .line 276
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 277
    .line 278
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    check-cast p0, Landroid/util/ArrayMap;

    .line 283
    .line 284
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
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

    .line 291
    .line 292
    iget-boolean v0, v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->isForegroundApp:Z

    .line 293
    .line 294
    if-eqz v0, :cond_9

    .line 295
    .line 296
    iput-boolean v1, v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->isForegroundApp:Z

    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_9
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 300
    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    if-eqz p1, :cond_a

    .line 305
    .line 306
    const/16 p0, 0xfa

    .line 307
    .line 308
    if-le p1, p0, :cond_d

    .line 309
    .line 310
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 311
    .line 312
    .line 313
    move-result-wide p0

    .line 314
    iput-wide p0, v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->alwaysRunningStartTime:J

    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_b
    if-nez v4, :cond_c

    .line 318
    .line 319
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 320
    .line 321
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 322
    .line 323
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    check-cast p0, Landroid/util/ArrayMap;

    .line 328
    .line 329
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    check-cast p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 334
    .line 335
    if-eqz p0, :cond_d

    .line 336
    .line 337
    iput-boolean v2, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->isForegroundApp:Z

    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_c
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;->this$0:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 341
    .line 342
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 343
    .line 344
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    check-cast p0, Landroid/util/ArrayMap;

    .line 349
    .line 350
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
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

    .line 358
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    const-string v1, "Handler message catch exception "

    .line 362
    .line 363
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-static {p0, v0, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :cond_e
    :goto_5
    return-void
.end method
