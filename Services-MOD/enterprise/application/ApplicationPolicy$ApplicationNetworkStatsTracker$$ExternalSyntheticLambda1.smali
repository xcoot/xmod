.class public final synthetic Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 6
    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 3
    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$1:I

    .line 5
    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda1;->f$2:I

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 9
    check-cast p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 17
    move-result v2

    .line 18
    const/4 v3, -0x1

    .line 19
    if-eq v1, v3, :cond_0

    .line 21
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    move-result v3

    .line 25
    if-ne v3, v1, :cond_4

    .line 27
    :cond_0
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    .line 29
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v1, :cond_2

    .line 36
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    .line 38
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/samsung/android/knox/application/NetworkStats;

    .line 44
    if-ne p0, v3, :cond_1

    .line 46
    iget-wide v0, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    .line 48
    iget-wide v2, p1, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 50
    sub-long/2addr v0, v2

    .line 51
    iput-wide v0, p1, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 53
    iget-wide v0, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    .line 55
    iget-wide v2, p1, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 57
    sub-long/2addr v0, v2

    .line 58
    iput-wide v0, p1, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-wide v0, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    .line 63
    iget-wide v2, p1, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 65
    sub-long/2addr v0, v2

    .line 66
    iput-wide v0, p1, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 68
    iget-wide v0, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    .line 70
    iget-wide v2, p1, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 72
    sub-long/2addr v0, v2

    .line 73
    iput-wide v0, p1, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    new-instance v1, Lcom/samsung/android/knox/application/NetworkStats;

    .line 78
    invoke-direct {v1}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    .line 81
    iput v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    .line 83
    if-ne p0, v3, :cond_3

    .line 85
    iget-wide v2, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    .line 87
    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 89
    iget-wide v2, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    .line 91
    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 93
    iget-object p0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    .line 95
    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    iget-wide v2, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    .line 101
    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 103
    iget-wide v2, p2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    .line 105
    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 107
    iget-object p0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    .line 109
    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_4
    :goto_0
    return-void
.end method
