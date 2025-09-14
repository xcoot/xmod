.class public final Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public stats:Ljava/util/List;

.field public timeMs:J


# direct methods
.method public static collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v1, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    .line 13
    iput-wide p0, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    .line 15
    const/4 p0, 0x0

    .line 16
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 19
    move-result p1

    .line 20
    if-ge p0, p1, :cond_1

    .line 22
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/net/metrics/NetworkMetrics;

    .line 28
    invoke-virtual {p1}, Landroid/net/metrics/NetworkMetrics;->getPendingStats()Landroid/net/metrics/NetworkMetrics$Summary;

    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 34
    iget-object v1, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    .line 36
    check-cast v1, Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/StringJoiner;

    .line 3
    const-string v1, ", "

    .line 5
    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/net/metrics/NetworkMetrics$Summary;

    .line 28
    invoke-virtual {v2}, Landroid/net/metrics/NetworkMetrics$Summary;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-wide v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    .line 38
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    move-result-object v1

    .line 42
    iget-wide v2, p0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->timeMs:J

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    const-string v0, "%tT.%tL: %s"

    .line 58
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
