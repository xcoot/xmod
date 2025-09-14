.class public final Lcom/android/server/connectivity/NetdEventListenerService;
.super Lcom/android/net/module/util/BaseNetdEventListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALLOWED_CALLBACK_TYPES:[I

.field static final WAKEUP_EVENT_BUFFER_LENGTH:I = 0x400

.field static final WAKEUP_EVENT_PREFIX_DELIM:Ljava/lang/String; = ":"


# instance fields
.field public final filter:Landroid/content/IntentFilter;

.field public final mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

.field public mCheckedNetId:I

.field public final mCm:Landroid/net/ConnectivityManager;

.field public final mConnectTb:Lcom/android/internal/util/TokenBucket;

.field public mContext:Landroid/content/Context;

.field public final mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

.field public mDnsHandler:Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;

.field public mFailCount:I

.field public mLastSnapshot:J

.field public final mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

.field public final mNetworkMetrics:Landroid/util/SparseArray;

.field public final mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

.field public mPolicyManager:Landroid/net/NetworkPolicyManager;

.field public final mWakeupEvents:Lcom/android/internal/util/RingBuffer;

.field public final mWakeupStats:Landroid/util/ArrayMap;

.field public final receiver:Lcom/android/server/connectivity/NetdEventListenerService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/connectivity/NetdEventListenerService;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    .line 10
    .line 11
    return-void

    .line 12
    nop

    .line 13
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/net/metrics/INetdEventListener$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 12
    .line 13
    const-class v1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    .line 14
    .line 15
    const/16 v2, 0x90

    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 25
    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 32
    .line 33
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 34
    .line 35
    const-class v1, Landroid/net/metrics/WakeupEvent;

    .line 36
    .line 37
    const/16 v2, 0x400

    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    .line 43
    .line 44
    new-instance v0, Lcom/android/internal/util/TokenBucket;

    .line 45
    .line 46
    const/16 v1, 0x3a98

    .line 47
    .line 48
    const/16 v2, 0x1388

    .line 49
    .line 50
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    .line 54
    .line 55
    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    .line 56
    .line 57
    invoke-direct {v0}, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    .line 61
    .line 62
    new-instance v1, Landroid/content/IntentFilter;

    .line 63
    .line 64
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    .line 68
    .line 69
    new-instance v1, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    .line 70
    .line 71
    invoke-direct {v1}, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;

    .line 78
    .line 79
    const/4 v1, 0x6

    .line 80
    new-array v1, v1, [Landroid/net/INetdEventCallback;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    .line 83
    .line 84
    new-instance v1, Lcom/android/server/connectivity/NetdEventListenerService$1;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lcom/android/server/connectivity/NetdEventListenerService$1;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->receiver:Lcom/android/server/connectivity/NetdEventListenerService$1;

    .line 90
    .line 91
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    .line 92
    .line 93
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    .line 94
    .line 95
    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p1, p0, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public static getReturnCodeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p0, "UNKNOWN"

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, "OVERFLOW"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    const-string p0, "PROTOCOL"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    const-string p0, "BADHINTS"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_3
    const-string p0, "SYSTEM"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    const-string p0, "SOCKTYPE"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_5
    const-string p0, "SERVICE"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_6
    const-string p0, "NONAME"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_7
    const-string p0, "NODATA"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_8
    const-string p0, "MEMORY"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_9
    const-string p0, "FAMILY"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_a
    const-string p0, "FAIL"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_b
    const-string p0, "BADFLAGS"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_c
    const-string p0, "AGAIN"

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_d
    const-string p0, "ADDRFAMILY"

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_e
    const-string p0, "SUCCESS"

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_0
    const-string p0, "TIMEOUT"

    .line 57
    .line 58
    return-object p0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final collectPendingMetricsSnapshot(JZ)V
    .locals 4

    .line 1
    const-wide/32 v0, 0xea60

    .line 2
    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 7
    .line 8
    sub-long v2, p1, v2

    .line 9
    .line 10
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    cmp-long p3, v2, v0

    .line 15
    .line 16
    if-gtz p3, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    div-long/2addr p1, v0

    .line 20
    mul-long/2addr p1, v0

    .line 21
    iput-wide p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 22
    .line 23
    iget-object p3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-static {p1, p2, p3}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object p2, p1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    .line 30
    .line 31
    check-cast p2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "8e27594d285ca7c567d87e8cf74766c27647e02b"

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final getMetricsForNetwork(IJ)Landroid/net/metrics/NetworkMetrics;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/metrics/NetworkMetrics;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->mCapabilities:Landroid/util/SparseArray;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-object v1, v1, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->mCapabilities:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 21
    .line 22
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-wide/16 v2, 0x0

    .line 35
    .line 36
    :goto_0
    if-eqz v0, :cond_1

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-wide v4, v0, Landroid/net/metrics/NetworkMetrics;->transports:J

    .line 41
    .line 42
    cmp-long v1, v4, v2

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v1, 0x0

    .line 49
    :goto_1
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(JZ)V

    .line 50
    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    :cond_2
    new-instance v0, Landroid/net/metrics/NetworkMetrics;

    .line 57
    .line 58
    iget-object p2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    .line 59
    .line 60
    invoke-direct {v0, p1, v2, v3, p2}, Landroid/net/metrics/NetworkMetrics;-><init>(IJLcom/android/internal/util/TokenBucket;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    return-object v0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p0
.end method

.method public final declared-synchronized onConnectEvent(IIILjava/lang/String;II)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v6

    .line 6
    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(IJ)Landroid/net/metrics/NetworkMetrics;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p2, p3, p4}, Landroid/net/metrics/NetworkMetrics;->addConnectResult(IILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    .line 14
    .line 15
    array-length p2, p1

    .line 16
    const/4 p3, 0x0

    .line 17
    :goto_0
    if-ge p3, p2, :cond_1

    .line 18
    .line 19
    aget-object v0, p1, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    move-object v1, p4

    .line 24
    move v2, p5

    .line 25
    move-wide v3, v6

    .line 26
    move v5, p6

    .line 27
    :try_start_1
    invoke-interface/range {v0 .. v5}, Landroid/net/INetdEventCallback;->onConnectEvent(Ljava/lang/String;IJI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :catch_0
    move-exception p1

    .line 34
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :cond_0
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :goto_2
    monitor-exit p0

    .line 45
    throw p1
.end method

.method public final declared-synchronized onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p4

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    move/from16 v14, p1

    .line 11
    .line 12
    invoke-virtual {v1, v14, v2, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(IJ)Landroid/net/metrics/NetworkMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    move/from16 v15, p2

    .line 17
    .line 18
    move/from16 v13, p3

    .line 19
    .line 20
    invoke-virtual {v4, v15, v13, v0}, Landroid/net/metrics/NetworkMetrics;->addDnsResult(III)V

    .line 21
    .line 22
    .line 23
    iget-object v11, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    .line 24
    .line 25
    array-length v12, v11

    .line 26
    const/4 v4, 0x0

    .line 27
    move v10, v4

    .line 28
    move/from16 v16, v10

    .line 29
    .line 30
    :goto_0
    if-ge v10, v12, :cond_2

    .line 31
    .line 32
    aget-object v4, v11, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    :try_start_1
    sget-object v5, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    .line 37
    .line 38
    aget v5, v5, v16

    .line 39
    .line 40
    const/4 v6, 0x4

    .line 41
    if-ne v5, v6, :cond_0

    .line 42
    .line 43
    int-to-long v5, v0

    .line 44
    move-wide/from16 v17, v5

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    move-wide/from16 v17, v2

    .line 48
    .line 49
    :goto_1
    move/from16 v5, p1

    .line 50
    .line 51
    move/from16 v6, p2

    .line 52
    .line 53
    move/from16 v7, p3

    .line 54
    .line 55
    move-object/from16 v8, p5

    .line 56
    .line 57
    move-object/from16 v9, p6

    .line 58
    .line 59
    move/from16 v19, v10

    .line 60
    .line 61
    move/from16 v10, p7

    .line 62
    .line 63
    move-object/from16 v20, v11

    .line 64
    .line 65
    move/from16 v21, v12

    .line 66
    .line 67
    move-wide/from16 v11, v17

    .line 68
    .line 69
    move/from16 v13, p8

    .line 70
    .line 71
    invoke-interface/range {v4 .. v13}, Landroid/net/INetdEventCallback;->onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto :goto_3

    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    throw v0

    .line 83
    :cond_1
    move/from16 v19, v10

    .line 84
    .line 85
    move-object/from16 v20, v11

    .line 86
    .line 87
    move/from16 v21, v12

    .line 88
    .line 89
    :goto_2
    add-int/lit8 v16, v16, 0x1

    .line 90
    .line 91
    add-int/lit8 v10, v19, 0x1

    .line 92
    .line 93
    move/from16 v13, p3

    .line 94
    .line 95
    move-object/from16 v11, v20

    .line 96
    .line 97
    move/from16 v12, v21

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object v2, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;

    .line 101
    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    const/16 v3, 0x2711

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    new-instance v9, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;

    .line 111
    .line 112
    move-object v2, v9

    .line 113
    move/from16 v3, p1

    .line 114
    .line 115
    move/from16 v4, p3

    .line 116
    .line 117
    move/from16 v5, p8

    .line 118
    .line 119
    move/from16 v6, p4

    .line 120
    .line 121
    move-object/from16 v7, p5

    .line 122
    .line 123
    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;-><init>(IIIILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    .line 128
    iget-object v0, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;

    .line 129
    .line 130
    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    .line 133
    :cond_3
    monitor-exit p0

    .line 134
    return-void

    .line 135
    :goto_3
    monitor-exit p0

    .line 136
    throw v0
.end method

.method public final declared-synchronized onNat64PrefixEvent(IZLjava/lang/String;I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    .line 3
    .line 4
    array-length v1, v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    :try_start_1
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onNat64PrefixEvent(IZLjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :catch_0
    move-exception p1

    .line 19
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_2
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public final declared-synchronized onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    .line 3
    .line 4
    array-length v1, v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    :try_start_1
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :catch_0
    move-exception p1

    .line 19
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_2
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public final declared-synchronized onTcpSocketStatsEvent([I[I[I[I[I)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    array-length v0, p1

    .line 3
    array-length v1, p2

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    array-length v1, p3

    .line 8
    if-ne v0, v1, :cond_2

    .line 9
    .line 10
    array-length v0, p1

    .line 11
    array-length v1, p4

    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    array-length v0, p1

    .line 15
    array-length v1, p5

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    array-length v3, p1

    .line 25
    if-ge v2, v3, :cond_1

    .line 26
    .line 27
    aget v3, p1, v2

    .line 28
    .line 29
    aget v4, p2, v2

    .line 30
    .line 31
    aget v5, p3, v2

    .line 32
    .line 33
    aget v6, p4, v2

    .line 34
    .line 35
    aget v7, p5, v2

    .line 36
    .line 37
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(IJ)Landroid/net/metrics/NetworkMetrics;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/net/metrics/NetworkMetrics;->addTcpStatsResult(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "NetdEventListenerService"

    .line 52
    .line 53
    const-string p2, "Mismatched lengths of TCP socket stats data arrays"

    .line 54
    .line 55
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :goto_2
    monitor-exit p0

    .line 61
    throw p1
.end method

.method public final declared-synchronized onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "Empty mac address on WiFi transport, network: "

    .line 6
    .line 7
    const-string v3, "Prefix "

    .line 8
    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    const-string v4, ":"

    .line 11
    .line 12
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    array-length v5, v4

    .line 17
    const/4 v6, 0x2

    .line 18
    if-ne v5, v6, :cond_5

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    aget-object v0, v4, v0

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    invoke-static {v5, v6}, Landroid/net/Network;->fromNetworkHandle(J)Landroid/net/Network;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v3, Landroid/net/metrics/WakeupEvent;

    .line 32
    .line 33
    invoke-direct {v3}, Landroid/net/metrics/WakeupEvent;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    aget-object v4, v4, v5

    .line 38
    .line 39
    iput-object v4, v3, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 40
    .line 41
    move/from16 v4, p2

    .line 42
    .line 43
    iput v4, v3, Landroid/net/metrics/WakeupEvent;->uid:I

    .line 44
    .line 45
    move/from16 v9, p3

    .line 46
    .line 47
    iput v9, v3, Landroid/net/metrics/WakeupEvent;->ethertype:I

    .line 48
    .line 49
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    iget-object v6, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    .line 56
    .line 57
    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v6, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_0

    .line 66
    .line 67
    const-string v5, "NetdEventListenerService"

    .line 68
    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 89
    iput-object v2, v3, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    .line 90
    .line 91
    :goto_1
    move-object/from16 v2, p6

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iput-object v2, v3, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :goto_2
    iput-object v2, v3, Landroid/net/metrics/WakeupEvent;->srcIp:Ljava/lang/String;

    .line 102
    .line 103
    move-object/from16 v5, p7

    .line 104
    .line 105
    iput-object v5, v3, Landroid/net/metrics/WakeupEvent;->dstIp:Ljava/lang/String;

    .line 106
    .line 107
    move/from16 v13, p4

    .line 108
    .line 109
    iput v13, v3, Landroid/net/metrics/WakeupEvent;->ipNextHeader:I

    .line 110
    .line 111
    move/from16 v14, p8

    .line 112
    .line 113
    iput v14, v3, Landroid/net/metrics/WakeupEvent;->srcPort:I

    .line 114
    .line 115
    move/from16 v15, p9

    .line 116
    .line 117
    iput v15, v3, Landroid/net/metrics/WakeupEvent;->dstPort:I

    .line 118
    .line 119
    const-wide/16 v6, 0x0

    .line 120
    .line 121
    cmp-long v6, p10, v6

    .line 122
    .line 123
    if-lez v6, :cond_2

    .line 124
    .line 125
    const-wide/32 v6, 0xf4240

    .line 126
    .line 127
    .line 128
    div-long v6, p10, v6

    .line 129
    .line 130
    iput-wide v6, v3, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 134
    .line 135
    .line 136
    move-result-wide v6

    .line 137
    iput-wide v6, v3, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    .line 138
    .line 139
    :goto_3
    iget-object v6, v3, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v7, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    .line 142
    .line 143
    invoke-virtual {v7, v3}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-object v7, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 147
    .line 148
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    check-cast v7, Landroid/net/metrics/WakeupStats;

    .line 153
    .line 154
    if-nez v7, :cond_3

    .line 155
    .line 156
    new-instance v7, Landroid/net/metrics/WakeupStats;

    .line 157
    .line 158
    invoke-direct {v7, v6}, Landroid/net/metrics/WakeupStats;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v8, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 162
    .line 163
    invoke-virtual {v8, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    :cond_3
    invoke-virtual {v7, v3}, Landroid/net/metrics/WakeupStats;->countEvent(Landroid/net/metrics/WakeupEvent;)V

    .line 167
    .line 168
    .line 169
    const-class v6, Landroid/os/BatteryStatsInternal;

    .line 170
    .line 171
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    check-cast v6, Landroid/os/BatteryStatsInternal;

    .line 176
    .line 177
    if-eqz v6, :cond_4

    .line 178
    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 180
    .line 181
    .line 182
    move-result-wide v7

    .line 183
    iget-wide v10, v3, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    .line 184
    .line 185
    add-long/2addr v7, v10

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 187
    .line 188
    .line 189
    move-result-wide v10

    .line 190
    sub-long/2addr v7, v10

    .line 191
    iget v10, v3, Landroid/net/metrics/WakeupEvent;->uid:I

    .line 192
    .line 193
    invoke-virtual {v6, v0, v7, v8, v10}, Landroid/os/BatteryStatsInternal;->noteCpuWakingNetworkPacket(Landroid/net/Network;JI)V

    .line 194
    .line 195
    .line 196
    :cond_4
    iget-object v0, v3, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    .line 197
    .line 198
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    iget-object v8, v3, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 203
    .line 204
    const/16 v6, 0x2c

    .line 205
    .line 206
    move/from16 v7, p2

    .line 207
    .line 208
    move/from16 v9, p3

    .line 209
    .line 210
    move-object/from16 v11, p6

    .line 211
    .line 212
    move-object/from16 v12, p7

    .line 213
    .line 214
    move/from16 v13, p4

    .line 215
    .line 216
    move/from16 v14, p8

    .line 217
    .line 218
    move/from16 v15, p9

    .line 219
    .line 220
    invoke-static/range {v6 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .line 222
    .line 223
    monitor-exit p0

    .line 224
    return-void

    .line 225
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 226
    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v0, " required in format <nethandle>:<interface>"

    .line 236
    .line 237
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :goto_4
    monitor-exit p0

    .line 249
    throw v0
.end method

.method public final writeMobileDataDnsFile()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/log/err"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "writeMobileDataDnsFile"

    .line 9
    .line 10
    .line 11
    const-string v2, "NetdEventListenerService"

    .line 12
    .line 13
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string v1, "!dir.exists"

    .line 23
    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string/jumbo p0, "dir not created"

    .line 34
    .line 35
    .line 36
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const-string/jumbo v0, "end of dir"

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljava/io/File;

    .line 47
    .line 48
    const-string v1, "/data/log/err/mobiledata_dns.dat"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 60
    .line 61
    .line 62
    new-instance v2, Ljava/io/PrintWriter;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    .line 66
    .line 67
    :try_start_1
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    .line 68
    .line 69
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    move-object v1, v2

    .line 81
    goto :goto_2

    .line 82
    :catch_0
    move-exception p0

    .line 83
    move-object v1, v2

    .line 84
    goto :goto_0

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    goto :goto_2

    .line 87
    :catch_1
    move-exception p0

    .line 88
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    .line 90
    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_1
    return-void

    .line 97
    :goto_2
    if-eqz v1, :cond_2

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 100
    .line 101
    .line 102
    :cond_2
    throw p0
.end method
