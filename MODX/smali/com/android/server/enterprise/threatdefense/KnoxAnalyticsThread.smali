.class public final Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EVENT:[Ljava/lang/String;

.field public static final sApiCalledCount:Ljava/util/Hashtable;


# instance fields
.field public final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "PROC_PID_USAGE"

    .line 3
    const-string v1, "GET_PID_USAGE"

    .line 5
    const-string v2, "PROC_USAGE"

    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->EVENT:[Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/Hashtable;

    .line 15
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 18
    sput-object v0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public final countApiCall(ILjava/lang/String;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "pkg="

    .line 4
    if-eqz p2, :cond_4

    .line 6
    const/4 v1, 0x3

    .line 7
    if-lt p1, v1, :cond_0

    .line 9
    goto/16 :goto_8

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    .line 16
    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    if-nez v3, :cond_1

    .line 22
    new-instance v3, Ljava/util/Hashtable;

    .line 24
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v4

    .line 32
    const-wide/16 v5, 0x0

    .line 34
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v3, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v4

    .line 46
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v3, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const/4 v4, 0x2

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v4

    .line 58
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v2, p2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto/16 :goto_7

    .line 72
    :catch_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :catch_1
    move-exception p1

    .line 75
    goto :goto_2

    .line 76
    :catch_2
    move-exception p1

    .line 77
    goto :goto_3

    .line 78
    :catch_3
    move-exception p1

    .line 79
    goto :goto_4

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Ljava/util/Hashtable;

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Ljava/lang/Long;

    .line 96
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 99
    move-result-wide v3

    .line 100
    const-wide/32 v5, 0x7ffffffe

    .line 103
    cmp-long v5, v3, v5

    .line 105
    const-wide/16 v6, 0x1

    .line 107
    if-nez v5, :cond_3

    .line 109
    sget-boolean v2, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    .line 111
    if-eqz v2, :cond_2

    .line 113
    const-string v2, "KnoxAnalyticsThread"

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v0, ", api="

    .line 125
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v0, ", c="

    .line 133
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2
    add-long/2addr v3, v6

    .line 147
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sendKnoxAnalyticsLogs(ILjava/lang/String;J)V

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->flush(ILjava/lang/String;)V

    .line 153
    goto :goto_6

    .line 154
    :cond_3
    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    move-result-object p2

    .line 158
    check-cast p2, Ljava/util/Hashtable;

    .line 160
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object p1

    .line 164
    add-long/2addr v3, v6

    .line 165
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    goto :goto_6

    .line 173
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 176
    goto :goto_5

    .line 177
    :goto_2
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 180
    goto :goto_5

    .line 181
    :goto_3
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 184
    goto :goto_5

    .line 185
    :goto_4
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 188
    :goto_5
    const-string p1, "KnoxAnalyticsThread"

    .line 190
    const-string p2, "Reset"

    .line 192
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    .line 197
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :try_start_2
    sget-object p1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    .line 200
    invoke-virtual {p1}, Ljava/util/Hashtable;->clear()V

    .line 203
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    :goto_6
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    return-void

    .line 206
    :catchall_1
    move-exception p1

    .line 207
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 208
    :try_start_5
    throw p1

    .line 209
    :goto_7
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 210
    throw p0

    .line 211
    :cond_4
    :goto_8
    return-void
.end method

.method public final flush(ILjava/lang/String;)V
    .locals 10

    .line 1
    if-eqz p2, :cond_1

    .line 3
    const/4 v0, 0x3

    .line 4
    if-lt p1, v0, :cond_0

    .line 6
    goto/16 :goto_3

    .line 8
    :cond_0
    const-wide/16 v0, 0x0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->sApiCalledCount:Ljava/util/Hashtable;

    .line 15
    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/util/Hashtable;

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/Long;

    .line 31
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 34
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    :try_start_2
    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Ljava/util/Hashtable;

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v6

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Ljava/util/Hashtable;

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/lang/Long;

    .line 68
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 71
    move-result-wide v0

    .line 72
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    goto :goto_2

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    move-wide v8, v0

    .line 76
    move-wide v0, v3

    .line 77
    move-wide v2, v8

    .line 78
    goto :goto_0

    .line 79
    :catchall_1
    move-exception p1

    .line 80
    move-wide v2, v0

    .line 81
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 82
    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :catchall_2
    move-exception p1

    .line 86
    goto :goto_0

    .line 87
    :catch_1
    move-exception p0

    .line 88
    move-wide v2, v0

    .line 89
    :goto_1
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 92
    move-wide v8, v0

    .line 93
    move-wide v0, v2

    .line 94
    move-wide v3, v8

    .line 95
    :goto_2
    const-string p0, "KnoxAnalyticsThread"

    .line 97
    const-string p1, "Flush!! status: "

    .line 99
    const-string p2, "->"

    .line 101
    invoke-static {p1, v3, v4, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 116
    :cond_1
    :goto_3
    const-string p0, "KnoxAnalyticsThread"

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v1, "pkg="

    .line 123
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string p2, ", api="

    .line 131
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public final sendKnoxAnalyticsLogs(ILjava/lang/String;J)V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "MTD_USAGE_EVENT"

    .line 6
    const-string v3, "KNOX_MTD"

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    sget-object v1, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->EVENT:[Ljava/lang/String;

    .line 13
    aget-object v1, v1, p1

    .line 15
    const-string/jumbo v2, "e"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v1, "c"

    .line 24
    invoke-virtual {v0, v1, p3, p4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    .line 27
    const-string/jumbo v1, "pN"

    .line 30
    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-wide/16 v1, 0x0

    .line 35
    cmp-long p3, p3, v1

    .line 37
    const-string p4, "KnoxAnalyticsThread"

    .line 39
    if-nez p3, :cond_0

    .line 41
    const-string p0, "Skip!! api="

    .line 43
    invoke-static {p1, p0, p4}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 50
    sget-boolean p3, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    .line 52
    const-string v1, "KA Data : "

    .line 54
    if-eqz p3, :cond_1

    .line 56
    new-instance p3, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p3

    .line 72
    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->getPayload()Landroid/os/Bundle;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p3

    .line 96
    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/threatdefense/KnoxAnalyticsThread;->flush(ILjava/lang/String;)V

    .line 102
    :goto_1
    return-void
.end method
