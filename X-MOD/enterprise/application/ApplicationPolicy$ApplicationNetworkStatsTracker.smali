.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final connectionChangeIntentReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$4;

.field public currentNetwork:Ljava/lang/String;

.field public final datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

.field public final networkDataUsageMap:Ljava/util/Hashtable;

.field public final networkDataUsageMapTemp:Ljava/util/Hashtable;

.field public previousNetwork:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 6
    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/util/Hashtable;

    .line 14
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    .line 21
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$4;

    .line 29
    const-string v0, "NetworkDatausageHandlerThread"

    .line 31
    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    .line 37
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 40
    move-result-object v0

    .line 41
    invoke-direct {v1, p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Landroid/os/Looper;)V

    .line 44
    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    .line 46
    const-string/jumbo v0, "registerNetworkChangeReceiver"

    .line 49
    const-string v1, "ApplicationPolicy"

    .line 51
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$4;

    .line 56
    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    .line 60
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 62
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPolicy$4;

    .line 67
    const/16 v3, 0x8

    .line 69
    invoke-direct {v2, v3, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$4;-><init>(ILjava/lang/Object;)V

    .line 72
    iput-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$4;

    .line 74
    iget-object p0, p1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    const-string/jumbo p0, "registerNetworkChangeReceiver() : Done"

    .line 82
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    :cond_0
    :goto_0
    return-void
.end method

.method public static addNetworkStatsDataOnHashMap(Ljava/util/Hashtable;Landroid/net/NetworkStats;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 8
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_4

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 20
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getUid()I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    .line 31
    move-result-wide v4

    .line 32
    const-wide/16 v6, 0x0

    .line 34
    cmp-long v0, v2, v6

    .line 36
    if-gtz v0, :cond_2

    .line 38
    cmp-long v0, v4, v6

    .line 40
    if-lez v0, :cond_1

    .line 42
    :cond_2
    if-eqz v1, :cond_1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;

    .line 64
    iget-wide v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    .line 66
    add-long/2addr v6, v2

    .line 67
    iput-wide v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    .line 69
    iget-wide v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    .line 71
    add-long/2addr v1, v4

    .line 72
    iput-wide v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;

    .line 77
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-wide v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    .line 82
    iput-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p0, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    return-void
.end method

.method public static calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 15
    return-object v0

    .line 16
    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    .line 18
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/samsung/android/knox/application/NetworkStats;

    .line 57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lcom/samsung/android/knox/application/NetworkStats;

    .line 67
    new-instance v4, Lcom/samsung/android/knox/application/NetworkStats;

    .line 69
    invoke-direct {v4}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    .line 72
    iget-wide v5, v2, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 74
    iget-wide v7, v3, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 76
    sub-long/2addr v5, v7

    .line 77
    iput-wide v5, v4, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 79
    iget-wide v5, v2, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 81
    iget-wide v7, v3, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 83
    sub-long/2addr v5, v7

    .line 84
    iput-wide v5, v4, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 86
    iget-wide v5, v2, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 88
    iget-wide v7, v3, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 90
    sub-long/2addr v5, v7

    .line 91
    iput-wide v5, v4, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 93
    iget-wide v5, v2, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 95
    iget-wide v2, v3, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 97
    sub-long/2addr v5, v2

    .line 98
    iput-wide v5, v4, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/Integer;

    .line 106
    invoke-virtual {v1, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception p0

    .line 111
    move-object v0, v1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Lcom/samsung/android/knox/application/NetworkStats;

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/Integer;

    .line 125
    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    goto :goto_0

    .line 129
    :catch_1
    move-exception p0

    .line 130
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    move-object v1, v0

    .line 134
    :cond_3
    return-object v1
.end method

.method public static calculateTotalUsage(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 6
    :try_start_0
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda0;

    .line 8
    invoke-direct {v1, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda0;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 11
    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->forEach(Ljava/util/function/BiConsumer;)V

    .line 14
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_0

    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/samsung/android/knox/application/NetworkStats;

    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/Integer;

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final updateDataUsageMap(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3
    const-string v1, "ApplicationPolicy"

    .line 5
    const-string/jumbo v2, "updateDataUsageMap"

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v1

    .line 15
    :try_start_0
    new-instance v3, Ljava/util/Hashtable;

    .line 17
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 20
    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 22
    const-class v5, Landroid/app/usage/NetworkStatsManager;

    .line 24
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Landroid/app/usage/NetworkStatsManager;

    .line 30
    if-nez v4, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v4}, Landroid/app/usage/NetworkStatsManager;->getWifiUidStats()Landroid/net/NetworkStats;

    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v4}, Landroid/app/usage/NetworkStatsManager;->getMobileUidStats()Landroid/net/NetworkStats;

    .line 40
    move-result-object v4

    .line 41
    invoke-static {v3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->addNetworkStatsDataOnHashMap(Ljava/util/Hashtable;Landroid/net/NetworkStats;)V

    .line 44
    invoke-static {v3, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->addNetworkStatsDataOnHashMap(Ljava/util/Hashtable;Landroid/net/NetworkStats;)V

    .line 47
    :goto_0
    const/4 v4, -0x1

    .line 48
    if-ne p2, v4, :cond_1

    .line 50
    iget-object p2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 52
    const-string/jumbo v0, "user"

    .line 55
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Landroid/os/UserManager;

    .line 61
    if-eqz p2, :cond_2

    .line 63
    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 66
    move-result-object p2

    .line 67
    if-eqz p2, :cond_2

    .line 69
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object p2

    .line 73
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 79
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 85
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 87
    new-instance v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;

    .line 89
    invoke-direct {v4, p0, v0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;II)V

    .line 92
    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->forEach(Ljava/util/function/BiConsumer;)V

    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception p0

    .line 97
    goto :goto_2

    .line 98
    :cond_1
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;

    .line 100
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;II)V

    .line 103
    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_3

    .line 107
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    :cond_2
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    return-void
.end method
