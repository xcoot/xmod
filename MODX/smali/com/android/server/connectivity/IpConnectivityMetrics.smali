.class public final Lcom/android/server/connectivity/IpConnectivityMetrics;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final READ_BUFFER_SIZE:Lcom/android/server/connectivity/IpConnectivityMetrics$$ExternalSyntheticLambda0;


# instance fields
.field public final impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

.field public final mBuckets:Landroid/util/ArrayMap;

.field public mBuffer:Ljava/util/ArrayList;

.field public mCapacity:I

.field public final mCapacityGetter:Ljava/util/function/ToIntFunction;

.field final mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

.field public mDropped:I

.field public final mEventLog:Lcom/android/internal/util/RingBuffer;

.field public final mLock:Ljava/lang/Object;

.field mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method public static -$$Nest$mcmdFlush(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    .line 6
    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 8
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->initBuffer()V

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Ljava/util/List;)Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    .line 18
    monitor-enter v1

    .line 19
    :try_start_1
    iget-object v3, v1, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    .line 21
    check-cast v3, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v3

    .line 27
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/net/metrics/DefaultNetworkEvent;

    .line 39
    invoke-static {v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 42
    move-result-object v4

    .line 43
    move-object v5, v0

    .line 44
    check-cast v5, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto/16 :goto_9

    .line 53
    :cond_0
    iget-object v3, v1, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    .line 55
    check-cast v3, Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit v1

    .line 61
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 63
    const/4 v1, 0x0

    .line 64
    if-eqz p0, :cond_6

    .line 66
    monitor-enter p0

    .line 67
    move v3, v1

    .line 68
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 70
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 73
    move-result v4

    .line 74
    if-ge v3, v4, :cond_2

    .line 76
    iget-object v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 78
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Landroid/net/metrics/NetworkMetrics;

    .line 84
    iget-object v4, v4, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    .line 86
    iget v5, v4, Landroid/net/metrics/ConnectStats;->eventCount:I

    .line 88
    if-nez v5, :cond_1

    .line 90
    goto :goto_2

    .line 91
    :cond_1
    invoke-static {v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 94
    move-result-object v4

    .line 95
    move-object v5, v0

    .line 96
    check-cast v5, Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 103
    goto :goto_1

    .line 104
    :catchall_1
    move-exception p1

    .line 105
    goto :goto_6

    .line 106
    :cond_2
    move v3, v1

    .line 107
    :goto_3
    iget-object v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 109
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 112
    move-result v4

    .line 113
    if-ge v3, v4, :cond_4

    .line 115
    iget-object v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 117
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Landroid/net/metrics/NetworkMetrics;

    .line 123
    iget-object v4, v4, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    .line 125
    iget v5, v4, Landroid/net/metrics/DnsEvent;->eventCount:I

    .line 127
    if-nez v5, :cond_3

    .line 129
    goto :goto_4

    .line 130
    :cond_3
    invoke-static {v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 133
    move-result-object v4

    .line 134
    move-object v5, v0

    .line 135
    check-cast v5, Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 142
    goto :goto_3

    .line 143
    :cond_4
    move v3, v1

    .line 144
    :goto_5
    iget-object v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 146
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 149
    move-result v4

    .line 150
    if-ge v3, v4, :cond_5

    .line 152
    iget-object v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 154
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 157
    move-result-object v4

    .line 158
    check-cast v4, Landroid/net/metrics/WakeupStats;

    .line 160
    invoke-static {v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 163
    move-result-object v4

    .line 164
    move-object v5, v0

    .line 165
    check-cast v5, Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v3, v3, 0x1

    .line 172
    goto :goto_5

    .line 173
    :cond_5
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 175
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 178
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 180
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    monitor-exit p0

    .line 184
    goto :goto_7

    .line 185
    :goto_6
    monitor-exit p0

    .line 186
    throw p1

    .line 187
    :cond_6
    :goto_7
    :try_start_3
    invoke-static {v2, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->serialize(ILjava/util/List;)[B

    .line 190
    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 191
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 194
    move-result-object p0

    .line 195
    goto :goto_8

    .line 196
    :catch_0
    move-exception p0

    .line 197
    const-string v0, "IpConnectivityMetrics"

    .line 199
    const-string/jumbo v1, "could not serialize events"

    .line 202
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    const-string p0, ""

    .line 207
    :goto_8
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    return-void

    .line 211
    :goto_9
    monitor-exit v1

    .line 212
    throw p0

    .line 213
    :catchall_2
    move-exception p0

    .line 214
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 215
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/connectivity/IpConnectivityMetrics$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->READ_BUFFER_SIZE:Lcom/android/server/connectivity/IpConnectivityMetrics$$ExternalSyntheticLambda0;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->READ_BUFFER_SIZE:Lcom/android/server/connectivity/IpConnectivityMetrics$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    .line 13
    new-instance p1, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    .line 15
    invoke-direct {p1, p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;-><init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V

    .line 18
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    .line 20
    new-instance p1, Lcom/android/internal/util/RingBuffer;

    .line 22
    const-class v1, Landroid/net/ConnectivityMetricsEvent;

    .line 24
    const/16 v2, 0x1f4

    .line 26
    invoke-direct {p1, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 29
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mEventLog:Lcom/android/internal/util/RingBuffer;

    .line 31
    new-instance p1, Landroid/util/ArrayMap;

    .line 33
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 36
    const-class v1, Landroid/net/metrics/ApfProgramEvent;

    .line 38
    new-instance v2, Lcom/android/internal/util/TokenBucket;

    .line 40
    const v3, 0xea60

    .line 43
    const/16 v4, 0x32

    .line 45
    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuckets:Landroid/util/ArrayMap;

    .line 53
    new-instance p1, Lcom/android/server/connectivity/DefaultNetworkMetrics;

    .line 55
    invoke-direct {p1}, Lcom/android/server/connectivity/DefaultNetworkMetrics;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    .line 60
    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacityGetter:Ljava/util/function/ToIntFunction;

    .line 62
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->initBuffer()V

    .line 65
    return-void
.end method


# virtual methods
.method public bufferCapacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacityGetter:Ljava/util/function/ToIntFunction;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getEvents()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mEventLog:Lcom/android/internal/util/RingBuffer;

    .line 6
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, [Landroid/net/ConnectivityMetricsEvent;

    .line 12
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    monitor-exit v0

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final initBuffer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 7
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->bufferCapacity()I

    .line 10
    move-result v1

    .line 11
    iput v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    .line 17
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    iput-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final listEventsAsProtos()Ljava/util/List;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getEvents()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Ljava/util/List;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_3

    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    move v4, v2

    .line 21
    :goto_0
    iget-object v5, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 26
    move-result v5

    .line 27
    if-ge v4, v5, :cond_0

    .line 29
    iget-object v5, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 31
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Landroid/net/metrics/NetworkMetrics;

    .line 37
    iget-object v5, v5, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    .line 39
    invoke-static {v5}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_3

    .line 51
    :cond_0
    move v4, v2

    .line 52
    :goto_1
    iget-object v5, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 54
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 57
    move-result v5

    .line 58
    if-ge v4, v5, :cond_1

    .line 60
    iget-object v5, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 62
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Landroid/net/metrics/NetworkMetrics;

    .line 68
    iget-object v5, v5, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    .line 70
    invoke-static {v5}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move v4, v2

    .line 81
    :goto_2
    iget-object v5, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 83
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 86
    move-result v5

    .line 87
    if-ge v4, v5, :cond_2

    .line 89
    iget-object v5, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 91
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Landroid/net/metrics/WakeupStats;

    .line 97
    invoke-static {v5}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    add-int/lit8 v4, v4, 0x1

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    monitor-exit v1

    .line 108
    move-object v1, v0

    .line 109
    check-cast v1, Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    goto :goto_4

    .line 115
    :goto_3
    monitor-exit v1

    .line 116
    throw p0

    .line 117
    :cond_3
    :goto_4
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    .line 119
    monitor-enter p0

    .line 120
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 122
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-object v3, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    .line 127
    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 130
    move-result-object v3

    .line 131
    check-cast v3, [Landroid/net/metrics/DefaultNetworkEvent;

    .line 133
    array-length v4, v3

    .line 134
    :goto_5
    if-ge v2, v4, :cond_4

    .line 136
    aget-object v5, v3, v2

    .line 138
    invoke-static {v5}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    add-int/lit8 v2, v2, 0x1

    .line 147
    goto :goto_5

    .line 148
    :catchall_1
    move-exception v0

    .line 149
    goto :goto_6

    .line 150
    :cond_4
    monitor-exit p0

    .line 151
    move-object p0, v0

    .line 152
    check-cast p0, Ljava/util/ArrayList;

    .line 154
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    return-object v0

    .line 158
    :goto_6
    monitor-exit p0

    .line 159
    throw v0
.end method

.method public final onBootPhase(I)V
    .locals 4

    .line 1
    const/16 v0, 0x1f4

    .line 3
    if-ne p1, v0, :cond_1

    .line 5
    new-instance p1, Lcom/android/server/connectivity/NetdEventListenerService;

    .line 7
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    const-class v1, Landroid/net/ConnectivityManager;

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 19
    invoke-direct {p1, v1}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/net/ConnectivityManager;)V

    .line 22
    iput-object v0, p1, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    .line 24
    iget-object v1, p1, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    .line 26
    const-string/jumbo v2, "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

    .line 29
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    iget-object v1, p1, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    .line 34
    const-string/jumbo v2, "com.samsung.android.mobiledoctor.DELETEMOBILEDATAFILES"

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    iget-object v1, p1, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    .line 42
    const-string/jumbo v2, "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    iget-object v1, p1, Lcom/android/server/connectivity/NetdEventListenerService;->receiver:Lcom/android/server/connectivity/NetdEventListenerService$1;

    .line 50
    iget-object v2, p1, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    .line 52
    const/4 v3, 0x2

    .line 53
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 56
    new-instance v1, Landroid/os/HandlerThread;

    .line 58
    const-string v2, "NetdEventListenerService"

    .line 60
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 66
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    .line 72
    new-instance v2, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;

    .line 74
    invoke-direct {v2, p1, v1}, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;Landroid/os/Looper;)V

    .line 77
    iput-object v2, p1, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const-string/jumbo v1, "handlerThread.getLooper() returned null"

    .line 83
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    const-class v1, Landroid/net/NetworkPolicyManager;

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/net/NetworkPolicyManager;

    .line 94
    iput-object v0, p1, Lcom/android/server/connectivity/NetdEventListenerService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 96
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 98
    const-string/jumbo p1, "connmetrics"

    .line 101
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 106
    iget-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 108
    const-string/jumbo v0, "netd_listener"

    .line 111
    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 114
    new-instance p0, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-class p1, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;

    .line 121
    invoke-static {p1, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 124
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method
