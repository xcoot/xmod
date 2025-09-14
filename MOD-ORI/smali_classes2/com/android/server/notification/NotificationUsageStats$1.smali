.class public final Lcom/android/server/notification/NotificationUsageStats$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationUsageStats;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationUsageStats;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$1;->this$0:Lcom/android/server/notification/NotificationUsageStats;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const-string p0, "NotificationUsageStats"

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Unknown message type: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget p1, p1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats$1;->this$0:Lcom/android/server/notification/NotificationUsageStats;

    .line 29
    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    const-string p1, "__global"

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->emit()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Lcom/android/server/notification/NotificationUsageStats$1;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Lcom/android/server/notification/NotificationUsageStats$1;

    .line 46
    .line 47
    const-wide/32 v2, 0xdbba00

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    .line 54
    .line 55
    check-cast p1, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/String;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    .line 78
    .line 79
    check-cast v1, Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 86
    .line 87
    iget-wide v1, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mLastAccessTime:J

    .line 88
    .line 89
    iget-wide v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    .line 90
    .line 91
    cmp-long v1, v1, v3

    .line 92
    .line 93
    if-gez v1, :cond_1

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    goto :goto_3

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Ljava/lang/String;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    .line 122
    .line 123
    check-cast v1, Ljava/util/HashMap;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .line 140
    monitor-exit p0

    .line 141
    :goto_2
    return-void

    .line 142
    :goto_3
    monitor-exit p0

    .line 143
    throw p1
.end method
