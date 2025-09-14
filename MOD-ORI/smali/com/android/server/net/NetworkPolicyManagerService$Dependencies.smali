.class public final Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/app/usage/NetworkStatsManager;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/app/usage/NetworkStatsManager;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    invoke-virtual {p1, p0}, Landroid/app/usage/NetworkStatsManager;->setPollOnOpen(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 10

    .line 1
    const-string v0, "Failed to read network stats: "

    .line 2
    .line 3
    const-string/jumbo v1, "getNetworkTotalBytes"

    .line 4
    .line 5
    .line 6
    const-wide/32 v2, 0x200000

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 13
    .line 14
    move-object v5, p1

    .line 15
    move-wide v6, p2

    .line 16
    move-wide v8, p4

    .line 17
    invoke-virtual/range {v4 .. v9}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    .line 26
    .line 27
    .line 28
    move-result-wide p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    add-long/2addr p1, p3

    .line 30
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 31
    .line 32
    .line 33
    return-wide p1

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    :try_start_1
    const-string p1, "NetworkPolicy"

    .line 38
    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 55
    .line 56
    .line 57
    const-wide/16 p0, 0x0

    .line 58
    .line 59
    return-wide p0

    .line 60
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method

.method public final getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Ljava/util/List;
    .locals 9

    .line 1
    const-string/jumbo v0, "getNetworkUidBytes"

    .line 2
    .line 3
    .line 4
    const-wide/32 v1, 0x200000

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$Dependencies;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 16
    .line 17
    move-object v4, p1

    .line 18
    move-wide v5, p2

    .line 19
    move-wide v7, p4

    .line 20
    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    new-instance p1, Landroid/app/usage/NetworkStats$Bucket;

    .line 31
    .line 32
    invoke-direct {p1}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_4

    .line 44
    :catch_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 47
    .line 48
    .line 49
    goto :goto_3

    .line 50
    :goto_2
    :try_start_1
    const-string p1, "NetworkPolicy"

    .line 51
    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string p3, "Failed to read network stats: "

    .line 58
    .line 59
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :goto_3
    return-object v0

    .line 74
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method
