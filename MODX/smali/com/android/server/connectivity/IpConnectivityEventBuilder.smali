.class public abstract Lcom/android/server/connectivity/IpConnectivityEventBuilder;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final IFNAME_LINKLAYERS:[I

.field public static final IFNAME_PREFIXES:[Ljava/lang/String;

.field public static final TRANSPORT_LINKLAYER_MAP:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:Landroid/util/SparseIntArray;

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x4

    .line 15
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 18
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 21
    const/4 v5, 0x3

    .line 22
    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 25
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 28
    const/4 v6, 0x5

    .line 29
    const/16 v7, 0x8

    .line 31
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 34
    const/4 v8, 0x6

    .line 35
    const/16 v9, 0x9

    .line 37
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 40
    const/4 v0, 0x7

    .line 41
    new-array v10, v0, [Ljava/lang/String;

    .line 43
    sput-object v10, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    .line 45
    new-array v11, v0, [I

    .line 47
    sput-object v11, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    .line 49
    const-string/jumbo v12, "rmnet"

    .line 52
    aput-object v12, v10, v1

    .line 54
    aput v2, v11, v1

    .line 56
    const-string/jumbo v1, "wlan"

    .line 59
    aput-object v1, v10, v3

    .line 61
    aput v4, v11, v3

    .line 63
    const-string/jumbo v1, "bt-pan"

    .line 66
    aput-object v1, v10, v2

    .line 68
    aput v3, v11, v2

    .line 70
    const-string/jumbo v1, "p2p"

    .line 73
    aput-object v1, v10, v5

    .line 75
    aput v0, v11, v5

    .line 77
    const-string v0, "aware"

    .line 79
    aput-object v0, v10, v4

    .line 81
    aput v7, v11, v4

    .line 83
    const-string/jumbo v0, "eth"

    .line 86
    aput-object v0, v10, v6

    .line 88
    aput v5, v11, v6

    .line 90
    const-string/jumbo v0, "wpan"

    .line 93
    aput-object v0, v10, v8

    .line 95
    aput v9, v11, v8

    .line 97
    return-void
.end method

.method public static buildEvent(ILjava/lang/String;J)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 3
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    .line 6
    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    .line 8
    iput-wide p2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    .line 10
    if-eqz p1, :cond_0

    .line 12
    iput-object p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    .line 14
    :cond_0
    const-wide/16 p0, 0x0

    .line 16
    cmp-long p0, p2, p0

    .line 18
    const/4 p1, 0x0

    .line 19
    if-eqz p0, :cond_2

    .line 21
    invoke-static {p2, p3}, Ljava/lang/Long;->bitCount(J)I

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_4

    .line 27
    const/4 v1, 0x1

    .line 28
    if-eq p0, v1, :cond_1

    .line 30
    const/4 p1, 0x6

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 35
    move-result p0

    .line 36
    sget-object p2, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:Landroid/util/SparseIntArray;

    .line 38
    invoke-virtual {p2, p0, p1}, Landroid/util/SparseIntArray;->get(II)I

    .line 41
    move-result p1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    .line 45
    if-eqz p0, :cond_4

    .line 47
    move p2, p1

    .line 48
    :goto_0
    const/4 p3, 0x7

    .line 49
    if-ge p2, p3, :cond_4

    .line 51
    sget-object p3, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    .line 53
    aget-object p3, p3, p2

    .line 55
    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_3

    .line 61
    sget-object p0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    .line 63
    aget p1, p0, p2

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    :goto_1
    if-nez p1, :cond_5

    .line 71
    goto :goto_2

    .line 72
    :cond_5
    iput p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    .line 74
    const-string p0, ""

    .line 76
    iput-object p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    .line 78
    :goto_2
    return-object v0
.end method

.method public static serialize(ILjava/util/List;)[B
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    .line 3
    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    .line 6
    check-cast p1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 14
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 20
    iput-object p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 22
    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    .line 24
    array-length p1, p1

    .line 25
    if-gtz p1, :cond_0

    .line 27
    if-lez p0, :cond_1

    .line 29
    :cond_0
    const/4 p0, 0x2

    .line 30
    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->version:I

    .line 32
    :cond_1
    invoke-static {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 12
    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    .line 15
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 18
    move-result v4

    .line 19
    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->key:I

    .line 21
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 24
    move-result v4

    .line 25
    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->value:I

    .line 27
    aput-object v3, v1, v2

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v1
.end method

.method public static toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 4

    .line 78
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    .line 79
    iget v1, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    .line 80
    iget v1, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    .line 81
    iget v1, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    .line 82
    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    .line 83
    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 84
    iget v1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/ConnectStats;->transports:J

    const/4 p0, 0x0

    invoke-static {v1, p0, v2, v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(ILjava/lang/String;J)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object p0

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setConnectStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object p0
.end method

.method public static toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 6

    .line 117
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    .line 118
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->finalScore:J

    .line 119
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->initialScore:J

    .line 120
    iget-boolean v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v4, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v4, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 121
    :cond_0
    iget-boolean v4, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v4, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 122
    :goto_0
    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->ipSupport:I

    .line 123
    iget-wide v4, p0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    iput-wide v4, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->defaultNetworkDurationMs:J

    .line 124
    iget-wide v4, p0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    iput-wide v4, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->validationDurationMs:J

    .line 125
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->previousTransports:I

    int-to-long v4, v1

    .line 126
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v2, 0x6

    goto :goto_1

    .line 127
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    .line 128
    sget-object v3, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 129
    :cond_4
    :goto_1
    iput v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousDefaultNetworkLinkLayer:I

    .line 130
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(ILjava/lang/String;J)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    .line 131
    iget p0, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    if-nez p0, :cond_5

    const/4 p0, 0x5

    .line 132
    iput p0, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    .line 133
    :cond_5
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object v1
.end method

.method public static toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 6

    .line 86
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    .line 87
    iget v1, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    invoke-virtual {p0, v1}, Landroid/net/metrics/DnsEvent;->resize(I)V

    .line 88
    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    .line 89
    array-length v2, v1

    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    .line 90
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 91
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
    :cond_0
    iput-object v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    .line 93
    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    .line 94
    array-length v2, v1

    new-array v2, v2, [I

    .line 95
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 96
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 97
    :cond_1
    iput-object v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    .line 98
    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    .line 99
    iget v1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/DnsEvent;->transports:J

    const/4 p0, 0x0

    invoke-static {v1, p0, v2, v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(ILjava/lang/String;J)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object p0

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDnsLookupBatch(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object p0
.end method

.method public static toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 4

    .line 101
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;-><init>()V

    .line 102
    invoke-virtual {p0}, Landroid/net/metrics/WakeupStats;->updateDuration()V

    .line 103
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    .line 104
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    .line 105
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    .line 106
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    .line 107
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    .line 108
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    .line 109
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    .line 110
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2UnicastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    .line 111
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2MulticastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    .line 112
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2BroadcastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    .line 113
    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 114
    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    const-wide/16 v1, 0x0

    .line 115
    iget-object p0, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3, p0, v1, v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(ILjava/lang/String;J)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object p0

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setWakeupStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object p0
.end method

.method public static toProto(Ljava/util/List;)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityMetricsEvent;

    .line 3
    iget v2, v1, Landroid/net/ConnectivityMetricsEvent;->netId:I

    iget-wide v3, v1, Landroid/net/ConnectivityMetricsEvent;->transports:J

    iget-object v5, v1, Landroid/net/ConnectivityMetricsEvent;->ifname:Ljava/lang/String;

    invoke-static {v2, v5, v3, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(ILjava/lang/String;J)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    .line 4
    iget-wide v3, v1, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    iput-wide v3, v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    .line 5
    iget-object v1, v1, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    .line 6
    instance-of v3, v1, Landroid/net/metrics/DhcpErrorEvent;

    if-eqz v3, :cond_0

    .line 7
    check-cast v1, Landroid/net/metrics/DhcpErrorEvent;

    .line 8
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    .line 9
    iget v1, v1, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {v3, v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->setErrorCode(I)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    .line 10
    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDhcpEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto/16 :goto_2

    .line 11
    :cond_0
    instance-of v3, v1, Landroid/net/metrics/DhcpClientEvent;

    if-eqz v3, :cond_1

    .line 12
    check-cast v1, Landroid/net/metrics/DhcpClientEvent;

    .line 13
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    .line 14
    iget-object v4, v1, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->setStateTransition(Ljava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    .line 15
    iget v1, v1, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    iput v1, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    .line 16
    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDhcpEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto/16 :goto_2

    .line 17
    :cond_1
    instance-of v3, v1, Landroid/net/metrics/IpManagerEvent;

    if-eqz v3, :cond_2

    .line 18
    check-cast v1, Landroid/net/metrics/IpManagerEvent;

    .line 19
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    .line 20
    iget v4, v1, Landroid/net/metrics/IpManagerEvent;->eventType:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    .line 21
    iget-wide v4, v1, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    long-to-int v1, v4

    iput v1, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    .line 22
    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setIpProvisioningEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto/16 :goto_2

    .line 23
    :cond_2
    instance-of v3, v1, Landroid/net/metrics/IpReachabilityEvent;

    if-eqz v3, :cond_3

    .line 24
    check-cast v1, Landroid/net/metrics/IpReachabilityEvent;

    .line 25
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    .line 26
    iget v1, v1, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    iput v1, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    .line 27
    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto/16 :goto_2

    .line 28
    :cond_3
    instance-of v3, v1, Landroid/net/metrics/NetworkEvent;

    if-eqz v3, :cond_4

    .line 29
    check-cast v1, Landroid/net/metrics/NetworkEvent;

    .line 30
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;-><init>()V

    .line 31
    iget v4, v1, Landroid/net/metrics/NetworkEvent;->eventType:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;->eventType:I

    .line 32
    iget-wide v4, v1, Landroid/net/metrics/NetworkEvent;->durationMs:J

    long-to-int v1, v4

    iput v1, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    .line 33
    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto/16 :goto_2

    .line 34
    :cond_4
    instance-of v3, v1, Landroid/net/metrics/ValidationProbeEvent;

    if-eqz v3, :cond_5

    .line 35
    check-cast v1, Landroid/net/metrics/ValidationProbeEvent;

    .line 36
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    .line 37
    iget-wide v4, v1, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    long-to-int v4, v4

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    .line 38
    iget v4, v1, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    .line 39
    iget v1, v1, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    iput v1, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    .line 40
    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto/16 :goto_2

    .line 41
    :cond_5
    instance-of v3, v1, Landroid/net/metrics/ApfProgramEvent;

    if-eqz v3, :cond_9

    .line 42
    check-cast v1, Landroid/net/metrics/ApfProgramEvent;

    .line 43
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    .line 44
    iget-wide v4, v1, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    .line 45
    iget-wide v4, v1, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    .line 46
    iget v4, v1, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    .line 47
    iget v4, v1, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    .line 48
    iget v4, v1, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    .line 49
    iget v1, v1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    and-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    move v4, v5

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_7

    .line 50
    iput-boolean v5, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    :cond_7
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    .line 51
    iput-boolean v5, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    .line 52
    :cond_8
    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto :goto_2

    .line 53
    :cond_9
    instance-of v3, v1, Landroid/net/metrics/ApfStats;

    if-eqz v3, :cond_a

    .line 54
    check-cast v1, Landroid/net/metrics/ApfStats;

    .line 55
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;-><init>()V

    .line 56
    iget-wide v4, v1, Landroid/net/metrics/ApfStats;->durationMs:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    .line 57
    iget v4, v1, Landroid/net/metrics/ApfStats;->receivedRas:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    .line 58
    iget v4, v1, Landroid/net/metrics/ApfStats;->matchingRas:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    .line 59
    iget v4, v1, Landroid/net/metrics/ApfStats;->droppedRas:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    .line 60
    iget v4, v1, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    .line 61
    iget v4, v1, Landroid/net/metrics/ApfStats;->parseErrors:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    .line 62
    iget v4, v1, Landroid/net/metrics/ApfStats;->programUpdates:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    .line 63
    iget v4, v1, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    .line 64
    iget v4, v1, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    .line 65
    iget v1, v1, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    iput v1, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    .line 66
    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setApfStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto :goto_2

    .line 67
    :cond_a
    instance-of v3, v1, Landroid/net/metrics/RaEvent;

    if-eqz v3, :cond_b

    .line 68
    check-cast v1, Landroid/net/metrics/RaEvent;

    .line 69
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;-><init>()V

    .line 70
    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->routerLifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    .line 71
    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    .line 72
    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    .line 73
    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    .line 74
    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    .line 75
    iget-wide v4, v1, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    iput-wide v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    .line 76
    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_c

    goto/16 :goto_0

    .line 77
    :cond_c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    return-object v0
.end method
