.class public final synthetic Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Hashtable;

.field public final synthetic f$1:Ljava/util/Hashtable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda0;->f$0:Ljava/util/Hashtable;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda0;->f$1:Ljava/util/Hashtable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda0;->f$0:Ljava/util/Hashtable;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$$ExternalSyntheticLambda0;->f$1:Ljava/util/Hashtable;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    check-cast p2, Lcom/samsung/android/knox/application/NetworkStats;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/samsung/android/knox/application/NetworkStats;

    .line 20
    .line 21
    new-instance v1, Lcom/samsung/android/knox/application/NetworkStats;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iput v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    .line 31
    .line 32
    iget-wide v2, p2, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 33
    .line 34
    iget-wide v4, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 35
    .line 36
    add-long/2addr v2, v4

    .line 37
    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 38
    .line 39
    iget-wide v2, p2, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 40
    .line 41
    iget-wide v4, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 42
    .line 43
    add-long/2addr v2, v4

    .line 44
    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 45
    .line 46
    iget-wide v2, p2, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 47
    .line 48
    iget-wide v4, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 49
    .line 50
    add-long/2addr v2, v4

    .line 51
    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 52
    .line 53
    iget-wide v2, p2, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 54
    .line 55
    iget-wide v4, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 56
    .line 57
    add-long/2addr v2, v4

    .line 58
    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 59
    .line 60
    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method
