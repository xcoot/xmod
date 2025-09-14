.class public final Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;
.super Landroid/net/IIpConnectivityMetrics$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 3
    invoke-direct {p0}, Landroid/net/IIpConnectivityMetrics$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x3e8

    .line 8
    if-ne v1, v2, :cond_3

    .line 10
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 12
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez p0, :cond_0

    .line 17
    return v1

    .line 18
    :cond_0
    const-string v2, "Invalid caller type: "

    .line 20
    monitor-enter p0

    .line 21
    move v3, v1

    .line 22
    :goto_0
    const/4 v4, 0x6

    .line 23
    if-ge v3, v4, :cond_2

    .line 25
    :try_start_0
    sget-object v4, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    .line 27
    aget v4, v4, v3

    .line 29
    if-ne p1, v4, :cond_1

    .line 31
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    .line 33
    aput-object p2, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    add-int/2addr v3, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :try_start_1
    sget-object p2, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    .line 43
    const-string p2, "NetdEventListenerService"

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit p0

    .line 61
    move v0, v1

    .line 62
    :goto_1
    return v0

    .line 63
    :goto_2
    monitor-exit p0

    .line 64
    throw p1

    .line 65
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object p1

    .line 71
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    const-string p2, "Uid %d has no permission to listen for netd events."

    .line 77
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "IpConnectivityMetrics"

    .line 9
    const-string v2, "android.permission.DUMP"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 16
    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 18
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetdEventListenerService;->writeMobileDataDnsFile()V

    .line 21
    array-length v0, p3

    .line 22
    const/4 v1, 0x0

    .line 23
    if-lez v0, :cond_0

    .line 25
    aget-object p3, p3, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p3, ""

    .line 30
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 33
    move-result v0

    .line 34
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x2

    .line 36
    sparse-switch v0, :sswitch_data_0

    .line 39
    goto :goto_1

    .line 40
    :sswitch_0
    const-string/jumbo v0, "proto"

    .line 43
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p3

    .line 47
    if-eqz p3, :cond_1

    .line 49
    move p3, v2

    .line 50
    goto :goto_2

    .line 51
    :sswitch_1
    const-string/jumbo v0, "flush"

    .line 54
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result p3

    .line 58
    if-eqz p3, :cond_1

    .line 60
    move p3, v1

    .line 61
    goto :goto_2

    .line 62
    :sswitch_2
    const-string/jumbo v0, "list"

    .line 65
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result p3

    .line 69
    if-eqz p3, :cond_1

    .line 71
    const/4 p3, 0x3

    .line 72
    goto :goto_2

    .line 73
    :sswitch_3
    const-string v0, "--proto"

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result p3

    .line 79
    if-eqz p3, :cond_1

    .line 81
    move p3, v3

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    :goto_1
    const/4 p3, -0x1

    .line 84
    :goto_2
    if-eqz p3, :cond_e

    .line 86
    if-eq p3, v2, :cond_d

    .line 88
    if-eq p3, v3, :cond_c

    .line 90
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    const-string/jumbo p1, "metrics events:"

    .line 98
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getEvents()Ljava/util/List;

    .line 104
    move-result-object p1

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object p1

    .line 109
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result p3

    .line 113
    if-eqz p3, :cond_2

    .line 115
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object p3

    .line 119
    check-cast p3, Landroid/net/ConnectivityMetricsEvent;

    .line 121
    invoke-virtual {p3}, Landroid/net/ConnectivityMetricsEvent;->toString()Ljava/lang/String;

    .line 124
    move-result-object p3

    .line 125
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    goto :goto_3

    .line 129
    :cond_2
    const-string p1, ""

    .line 131
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 136
    if-eqz p1, :cond_9

    .line 138
    monitor-enter p1

    .line 139
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 142
    move-result-wide v2

    .line 143
    iget-object p3, p1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 145
    invoke-static {v2, v3, p3}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    .line 148
    move-result-object p3

    .line 149
    iget-object v0, p3, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    .line 151
    check-cast v0, Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_3

    .line 159
    iget-object v0, p1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    .line 161
    invoke-virtual {v0, p3}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 164
    goto :goto_4

    .line 165
    :catchall_0
    move-exception p0

    .line 166
    goto/16 :goto_a

    .line 168
    :cond_3
    :goto_4
    const-string/jumbo p3, "dns/connect events:"

    .line 171
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    move p3, v1

    .line 175
    :goto_5
    iget-object v0, p1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 177
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 180
    move-result v0

    .line 181
    if-ge p3, v0, :cond_4

    .line 183
    iget-object v0, p1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 185
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroid/net/metrics/NetworkMetrics;

    .line 191
    iget-object v0, v0, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    .line 193
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 196
    add-int/lit8 p3, p3, 0x1

    .line 198
    goto :goto_5

    .line 199
    :cond_4
    move p3, v1

    .line 200
    :goto_6
    iget-object v0, p1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 202
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 205
    move-result v0

    .line 206
    if-ge p3, v0, :cond_5

    .line 208
    iget-object v0, p1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 210
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Landroid/net/metrics/NetworkMetrics;

    .line 216
    iget-object v0, v0, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    .line 218
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 221
    add-int/lit8 p3, p3, 0x1

    .line 223
    goto :goto_6

    .line 224
    :cond_5
    const-string p3, ""

    .line 226
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    const-string/jumbo p3, "network statistics:"

    .line 232
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 238
    move-result-wide v2

    .line 239
    invoke-virtual {p1, v2, v3, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(JZ)V

    .line 242
    iget-object p3, p1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    .line 244
    invoke-virtual {p3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 247
    move-result-object p3

    .line 248
    check-cast p3, [Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    .line 250
    array-length v0, p3

    .line 251
    move v2, v1

    .line 252
    :goto_7
    if-ge v2, v0, :cond_6

    .line 254
    aget-object v3, p3, v2

    .line 256
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 259
    add-int/lit8 v2, v2, 0x1

    .line 261
    goto :goto_7

    .line 262
    :cond_6
    const-string p3, ""

    .line 264
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    const-string/jumbo p3, "packet wakeup events:"

    .line 270
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    move p3, v1

    .line 274
    :goto_8
    iget-object v0, p1, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 276
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 279
    move-result v0

    .line 280
    if-ge p3, v0, :cond_7

    .line 282
    iget-object v0, p1, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 284
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 291
    add-int/lit8 p3, p3, 0x1

    .line 293
    goto :goto_8

    .line 294
    :cond_7
    iget-object p3, p1, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    .line 296
    invoke-virtual {p3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 299
    move-result-object p3

    .line 300
    check-cast p3, [Landroid/net/metrics/WakeupEvent;

    .line 302
    array-length v0, p3

    .line 303
    move v2, v1

    .line 304
    :goto_9
    if-ge v2, v0, :cond_8

    .line 306
    aget-object v3, p3, v2

    .line 308
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    add-int/lit8 v2, v2, 0x1

    .line 313
    goto :goto_9

    .line 314
    :cond_8
    monitor-exit p1

    .line 315
    goto :goto_b

    .line 316
    :goto_a
    monitor-exit p1

    .line 317
    throw p0

    .line 318
    :cond_9
    :goto_b
    const-string p1, ""

    .line 320
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    .line 325
    monitor-enter p0

    .line 326
    :try_start_1
    const-string/jumbo p1, "default network events:"

    .line 329
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 335
    move-result-wide v2

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 339
    move-result-wide v4

    .line 340
    iget-object p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    .line 342
    invoke-virtual {p1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 345
    move-result-object p1

    .line 346
    check-cast p1, [Landroid/net/metrics/DefaultNetworkEvent;

    .line 348
    array-length p3, p1

    .line 349
    :goto_c
    if-ge v1, p3, :cond_a

    .line 351
    aget-object v0, p1, v1

    .line 353
    iget-wide v6, v0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    .line 355
    sub-long v6, v2, v6

    .line 357
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 360
    move-result-object v8

    .line 361
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 364
    move-result-object v6

    .line 365
    filled-new-array {v8, v6, v0}, [Ljava/lang/Object;

    .line 368
    move-result-object v0

    .line 369
    const-string v6, "%tT.%tL: %s"

    .line 371
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    add-int/lit8 v1, v1, 0x1

    .line 380
    goto :goto_c

    .line 381
    :catchall_1
    move-exception p1

    .line 382
    goto :goto_d

    .line 383
    :cond_a
    iget-object p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    .line 385
    invoke-virtual {p1, v4, v5}, Landroid/net/metrics/DefaultNetworkEvent;->updateDuration(J)V

    .line 388
    iget-boolean p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 390
    if-eqz p1, :cond_b

    .line 392
    iget-object p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    .line 394
    iget-wide v0, p1, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    .line 396
    iget-wide v6, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    .line 398
    sub-long v6, v4, v6

    .line 400
    add-long/2addr v6, v0

    .line 401
    iput-wide v6, p1, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    .line 403
    iput-wide v4, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    .line 405
    :cond_b
    iget-object p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    .line 407
    iget-wide v0, p1, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    .line 409
    sub-long/2addr v2, v0

    .line 410
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 413
    move-result-object p3

    .line 414
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 417
    move-result-object v0

    .line 418
    filled-new-array {p3, v0, p1}, [Ljava/lang/Object;

    .line 421
    move-result-object p1

    .line 422
    const-string p3, "%tT.%tL: %s"

    .line 424
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 427
    move-result-object p1

    .line 428
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 431
    monitor-exit p0

    .line 432
    return-void

    .line 433
    :goto_d
    monitor-exit p0

    .line 434
    throw p1

    .line 435
    :cond_c
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 437
    new-instance p2, Ljava/io/FileOutputStream;

    .line 439
    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 442
    iget-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    .line 444
    monitor-enter p1

    .line 445
    :try_start_2
    iget p3, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 447
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 448
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->listEventsAsProtos()Ljava/util/List;

    .line 451
    move-result-object p0

    .line 452
    invoke-static {p3, p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->serialize(ILjava/util/List;)[B

    .line 455
    move-result-object p0

    .line 456
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 459
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 462
    goto :goto_e

    .line 463
    :catch_0
    move-exception p0

    .line 464
    const-string p1, "IpConnectivityMetrics"

    .line 466
    const-string/jumbo p2, "could not serialize events"

    .line 469
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    :goto_e
    return-void

    .line 473
    :catchall_2
    move-exception p0

    .line 474
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 475
    throw p0

    .line 476
    :cond_d
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 478
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->listEventsAsProtos()Ljava/util/List;

    .line 481
    move-result-object p0

    .line 482
    new-instance p1, Lcom/android/server/connectivity/IpConnectivityMetrics$$ExternalSyntheticLambda1;

    .line 484
    invoke-direct {p1, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    .line 487
    check-cast p0, Ljava/util/ArrayList;

    .line 489
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 492
    return-void

    .line 493
    :cond_e
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 495
    invoke-static {p0, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-$$Nest$mcmdFlush(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 498
    return-void

    .line 499
    :sswitch_data_0
    .sparse-switch
        -0x605db7b8 -> :sswitch_3
        0x32b09e -> :sswitch_2
        0x5d03b04 -> :sswitch_1
        0x65fc9e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final logDefaultNetworkEvent(Landroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iget-object v2, v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 5
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v10

    .line 16
    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 18
    iget-object v2, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    .line 20
    monitor-enter v2

    .line 21
    move-object v3, v2

    .line 22
    move-wide v4, v10

    .line 23
    move-object/from16 v6, p6

    .line 25
    move/from16 v7, p7

    .line 27
    move-object/from16 v8, p8

    .line 29
    move-object/from16 v9, p9

    .line 31
    :try_start_0
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logCurrentDefaultNetwork(JLandroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 34
    new-instance v0, Landroid/net/metrics/DefaultNetworkEvent;

    .line 36
    invoke-direct {v0, v10, v11}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(J)V

    .line 39
    iput-wide v10, v0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    .line 41
    if-eqz v1, :cond_0

    .line 43
    move-object/from16 v3, p4

    .line 45
    move-object/from16 v4, p5

    .line 47
    invoke-static {v0, p1, v3, v4}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 50
    move v1, p2

    .line 51
    iput v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    .line 53
    if-eqz p3, :cond_1

    .line 55
    const/4 v1, 0x1

    .line 56
    iput-boolean v1, v2, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 58
    iput-wide v10, v2, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v1, 0x0

    .line 62
    iput-boolean v1, v2, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 64
    :cond_1
    :goto_0
    iput-object v0, v2, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit v2

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    monitor-exit v2

    .line 70
    throw v0
.end method

.method public final logDefaultNetworkValidity(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 10
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 12
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    move-result-wide v0

    .line 18
    monitor-enter p0

    .line 19
    if-nez p1, :cond_0

    .line 21
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 23
    if-eqz v2, :cond_0

    .line 25
    const/4 v2, 0x0

    .line 26
    iput-boolean v2, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 28
    iget-object v2, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    .line 30
    iget-wide v3, v2, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    .line 32
    iget-wide v5, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    .line 34
    sub-long v5, v0, v5

    .line 36
    add-long/2addr v5, v3

    .line 37
    iput-wide v5, v2, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 44
    iget-boolean p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 46
    if-nez p1, :cond_1

    .line 48
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 51
    iput-wide v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    goto :goto_2

    .line 54
    :goto_1
    monitor-exit p0

    .line 55
    throw p1

    .line 56
    :cond_1
    :goto_2
    monitor-exit p0

    .line 57
    return-void
.end method

.method public final logEvent(Landroid/net/ConnectivityMetricsEvent;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 10
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 12
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mEventLog:Lcom/android/internal/util/RingBuffer;

    .line 17
    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 20
    iget v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    .line 22
    iget-object v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v2

    .line 28
    sub-int/2addr v1, v2

    .line 29
    if-nez p1, :cond_0

    .line 31
    monitor-exit v0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuckets:Landroid/util/ArrayMap;

    .line 37
    iget-object v3, p1, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/internal/util/TokenBucket;

    .line 49
    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v2}, Lcom/android/internal/util/TokenBucket;->get()Z

    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_1

    .line 57
    monitor-exit v0

    .line 58
    const/4 v1, -0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    if-nez v1, :cond_2

    .line 62
    iget p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 66
    iput p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 68
    monitor-exit v0

    .line 69
    const/4 v1, 0x0

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v1, v1, -0x1

    .line 78
    monitor-exit v0

    .line 79
    :goto_0
    return v1

    .line 80
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method

.method public final removeNetdEventCallback(I)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x3e8

    .line 8
    if-ne v1, v2, :cond_3

    .line 10
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 12
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 14
    if-nez p0, :cond_0

    .line 16
    return v0

    .line 17
    :cond_0
    const-string v1, "Invalid caller type: "

    .line 19
    monitor-enter p0

    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    :goto_0
    const/4 v4, 0x6

    .line 23
    if-ge v3, v4, :cond_2

    .line 25
    :try_start_0
    sget-object v4, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    .line 27
    aget v4, v4, v3

    .line 29
    if-ne p1, v4, :cond_1

    .line 31
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    .line 33
    const/4 v2, 0x0

    .line 34
    aput-object v2, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    add-int/2addr v3, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    .line 44
    const-string v0, "NetdEventListenerService"

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit p0

    .line 62
    move v0, v2

    .line 63
    :goto_1
    return v0

    .line 64
    :goto_2
    monitor-exit p0

    .line 65
    throw p1

    .line 66
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object p1

    .line 72
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    const-string v0, "Uid %d has no permission to listen for netd events."

    .line 78
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p0
.end method
