.class public final Lcom/android/server/connectivity/DefaultNetworkMetrics;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

.field public final mEvents:Ljava/util/List;

.field public final mEventsLog:Lcom/android/internal/util/RingBuffer;

.field public mIsCurrentlyValid:Z

.field public mLastTransports:I

.field public mLastValidationTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    .line 14
    .line 15
    new-instance v2, Lcom/android/internal/util/RingBuffer;

    .line 16
    .line 17
    const-class v3, Landroid/net/metrics/DefaultNetworkEvent;

    .line 18
    .line 19
    const/16 v4, 0x40

    .line 20
    .line 21
    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    .line 25
    .line 26
    new-instance v2, Landroid/net/metrics/DefaultNetworkEvent;

    .line 27
    .line 28
    invoke-direct {v2, v0, v1}, Landroid/net/metrics/DefaultNetworkEvent;-><init>(J)V

    .line 29
    .line 30
    .line 31
    iput-wide v0, v2, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 35
    .line 36
    iput-object v2, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    .line 37
    .line 38
    return-void
.end method

.method public static fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    .line 6
    .line 7
    iget p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    .line 8
    .line 9
    int-to-long v0, p1

    .line 10
    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    or-long/2addr v0, v2

    .line 19
    long-to-int p1, v0

    .line 20
    iput p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    .line 21
    .line 22
    iget-boolean p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIpv4Address()Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-eqz p3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIpv4DefaultRoute()Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    move p3, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move p3, v0

    .line 41
    :goto_0
    or-int/2addr p1, p3

    .line 42
    iput-boolean p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    .line 43
    .line 44
    iget-boolean p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-eqz p3, :cond_1

    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    move v0, v1

    .line 59
    :cond_1
    or-int/2addr p1, v0

    .line 60
    iput-boolean p1, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final logCurrentDefaultNetwork(JLandroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mIsCurrentlyValid:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    .line 6
    .line 7
    iget-wide v1, v0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastValidationTimeMs:J

    .line 10
    .line 11
    sub-long v3, p1, v3

    .line 12
    .line 13
    add-long/2addr v3, v1

    .line 14
    iput-wide v3, v0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mCurrentDefaultNetwork:Landroid/net/metrics/DefaultNetworkEvent;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/net/metrics/DefaultNetworkEvent;->updateDuration(J)V

    .line 19
    .line 20
    .line 21
    iget p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastTransports:I

    .line 22
    .line 23
    iput p1, v0, Landroid/net/metrics/DefaultNetworkEvent;->previousTransports:I

    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    invoke-static {v0, p3, p5, p6}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->fillLinkInfo(Landroid/net/metrics/DefaultNetworkEvent;Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 28
    .line 29
    .line 30
    iput p4, v0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    .line 31
    .line 32
    :cond_1
    iget p1, v0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iput p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mLastTransports:I

    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEvents:Ljava/util/List;

    .line 39
    .line 40
    check-cast p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/connectivity/DefaultNetworkMetrics;->mEventsLog:Lcom/android/internal/util/RingBuffer;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
