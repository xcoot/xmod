.class public final Lcom/android/server/backup/transport/TransportStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mStatsLock:Ljava/lang/Object;

.field public final mTransportStats:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/backup/transport/TransportStats;->mStatsLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    .line 18
    return-void
.end method

.method public static dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/backup/transport/TransportStats$Stats;)V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    iget-wide v1, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 8
    move-result-object v1

    .line 9
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "%sAverage connection time: %.2f ms"

    .line 15
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    iget-wide v0, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v3, "Max connection time: "

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    const-string v0, " ms"

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    iget-wide v1, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v4, "Min connection time: "

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    iget p2, p2, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string p1, "Number of connections: "

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string p1, " "

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    return-void
.end method


# virtual methods
.method public final registerConnectionTime(Landroid/content/ComponentName;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportStats;->mStatsLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/backup/transport/TransportStats$Stats;

    .line 14
    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/android/server/backup/transport/TransportStats$Stats;

    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v2, 0x0

    .line 22
    iput v2, v1, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    .line 24
    const-wide/16 v2, 0x0

    .line 26
    iput-wide v2, v1, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    .line 28
    const-wide/16 v2, 0x0

    .line 30
    iput-wide v2, v1, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    .line 32
    const-wide v2, 0x7fffffffffffffffL

    .line 37
    iput-wide v2, v1, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    .line 39
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportStats;->mTransportStats:Ljava/util/Map;

    .line 41
    check-cast p0, Ljava/util/HashMap;

    .line 43
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    iget-wide p0, v1, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    .line 51
    iget v2, v1, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    .line 53
    int-to-double v3, v2

    .line 54
    mul-double/2addr p0, v3

    .line 55
    long-to-double v3, p2

    .line 56
    add-double/2addr p0, v3

    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 59
    int-to-double v3, v2

    .line 60
    div-double/2addr p0, v3

    .line 61
    iput-wide p0, v1, Lcom/android/server/backup/transport/TransportStats$Stats;->average:D

    .line 63
    iput v2, v1, Lcom/android/server/backup/transport/TransportStats$Stats;->n:I

    .line 65
    iget-wide p0, v1, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    .line 67
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    .line 70
    move-result-wide p0

    .line 71
    iput-wide p0, v1, Lcom/android/server/backup/transport/TransportStats$Stats;->max:J

    .line 73
    iget-wide p0, v1, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    .line 75
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 78
    move-result-wide p0

    .line 79
    iput-wide p0, v1, Lcom/android/server/backup/transport/TransportStats$Stats;->min:J

    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0
.end method
