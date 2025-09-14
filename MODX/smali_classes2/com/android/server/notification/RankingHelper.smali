.class public final Lcom/android/server/notification/RankingHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

.field public final mPreliminaryComparator:Ljava/util/Comparator;

.field public final mProxyByGroupTmp:Landroid/util/ArrayMap;

.field public final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field public final mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/RankingConfig;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)V
    .locals 5

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    const-string v1, "RankingHelper"

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/android/server/notification/GlobalSortKeyComparator;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    .line 14
    .line 15
    new-instance v2, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 25
    .line 26
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    new-instance p1, Lcom/android/server/notification/NotificationTimeComparator;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Ljava/util/Comparator;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p2, Lcom/android/server/notification/NotificationComparator;

    .line 41
    .line 42
    invoke-direct {p2, p1}, Lcom/android/server/notification/NotificationComparator;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Ljava/util/Comparator;

    .line 46
    .line 47
    :goto_0
    array-length p1, p6

    .line 48
    new-array p2, p1, [Lcom/android/server/notification/NotificationSignalExtractor;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    :goto_1
    if-ge p2, p1, :cond_3

    .line 54
    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    aget-object v3, p6, p2

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/android/server/notification/NotificationSignalExtractor;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    invoke-interface {v2, v3, p5}, Lcom/android/server/notification/NotificationSignalExtractor;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v2, p3}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v2, p4}, Lcom/android/server/notification/NotificationSignalExtractor;->setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroid/app/Flags;->restrictAudioAttributesAlarm()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_1

    .line 89
    .line 90
    invoke-static {}, Landroid/app/Flags;->restrictAudioAttributesMedia()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_1

    .line 95
    .line 96
    invoke-static {}, Landroid/app/Flags;->restrictAudioAttributesCall()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catch_0
    move-exception v2

    .line 104
    goto :goto_3

    .line 105
    :catch_1
    move-exception v2

    .line 106
    goto :goto_4

    .line 107
    :catch_2
    move-exception v2

    .line 108
    goto :goto_5

    .line 109
    :cond_1
    :goto_2
    invoke-interface {v2, p7}, Lcom/android/server/notification/NotificationSignalExtractor;->setCompatChangeLogger(Lcom/android/internal/compat/IPlatformCompat;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    .line 113
    .line 114
    aput-object v2, v3, p2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v4, "Problem accessing extractor "

    .line 120
    .line 121
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    aget-object v4, p6, p2

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    .line 138
    .line 139
    goto :goto_6

    .line 140
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v4, "Couldn\'t instantiate extractor "

    .line 143
    .line 144
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    aget-object v4, p6, p2

    .line 148
    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v4, "Couldn\'t find extractor "

    .line 166
    .line 167
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    aget-object v4, p6, p2

    .line 171
    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .line 184
    .line 185
    :goto_6
    add-int/lit8 p2, p2, 0x1

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :cond_3
    return-void
.end method


# virtual methods
.method public final extractSignals(Lcom/android/server/notification/NotificationRecord;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    :try_start_0
    invoke-interface {v3, p1}, Lcom/android/server/notification/NotificationSignalExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 16
    .line 17
    check-cast v4, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    .line 18
    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/16 v5, 0x3e8

    .line 23
    .line 24
    invoke-static {v4, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    iget-wide v7, v3, Lcom/android/server/notification/RankingReconsideration;->mDelay:J

    .line 31
    .line 32
    invoke-virtual {v6, v7, v8, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v3

    .line 41
    const-string v4, "RankingHelper"

    .line 42
    .line 43
    const-string v5, "NotificationSignalExtractor failed."

    .line 44
    .line 45
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method public final findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    aget-object v2, p0, v1

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public final sort(Ljava/util/ArrayList;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    iput-object v3, v2, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Ljava/util/Comparator;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Ljava/util/Comparator;

    .line 34
    .line 35
    check-cast v1, Lcom/android/server/notification/NotificationComparator;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/notification/NotificationComparator;->mStateLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Ljava/util/Comparator;

    .line 41
    .line 42
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 43
    .line 44
    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :goto_1
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 47
    .line 48
    monitor-enter v2

    .line 49
    const/4 v1, 0x0

    .line 50
    move v3, v1

    .line 51
    :goto_2
    if-ge v3, v0, :cond_5

    .line 52
    .line 53
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 58
    .line 59
    iput v3, v4, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    .line 60
    .line 61
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_3

    .line 66
    .line 67
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 68
    .line 69
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 80
    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    iget-object v6, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 84
    .line 85
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v6}, Landroid/app/Notification;->isGroupSummary()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_4

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    goto/16 :goto_9

    .line 98
    .line 99
    :cond_2
    :goto_3
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 100
    .line 101
    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_3
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 106
    .line 107
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 112
    .line 113
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 118
    .line 119
    if-nez v6, :cond_4

    .line 120
    .line 121
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 122
    .line 123
    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    :goto_5
    if-ge v1, v0, :cond_b

    .line 130
    .line 131
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 136
    .line 137
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 138
    .line 139
    iget-object v5, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 140
    .line 141
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 150
    .line 151
    iget-object v5, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 152
    .line 153
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v5}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    if-nez v5, :cond_6

    .line 162
    .line 163
    const-string/jumbo v5, "nsk"

    .line 164
    .line 165
    .line 166
    :goto_6
    move-object v10, v5

    .line 167
    goto :goto_7

    .line 168
    :cond_6
    const-string v6, ""

    .line 169
    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-eqz v6, :cond_7

    .line 175
    .line 176
    const-string v5, "esk"

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v7, "gsk="

    .line 185
    .line 186
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    goto :goto_6

    .line 197
    :goto_7
    iget-object v5, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 198
    .line 199
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    const/16 v7, 0x31

    .line 212
    .line 213
    const/16 v8, 0x30

    .line 214
    .line 215
    if-eqz v6, :cond_8

    .line 216
    .line 217
    const/16 v6, 0x32

    .line 218
    .line 219
    goto :goto_8

    .line 220
    :cond_8
    iget-boolean v6, v3, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 221
    .line 222
    if-eqz v6, :cond_9

    .line 223
    .line 224
    iget v6, v3, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 225
    .line 226
    const/4 v9, 0x1

    .line 227
    if-le v6, v9, :cond_9

    .line 228
    .line 229
    move v6, v8

    .line 230
    goto :goto_8

    .line 231
    :cond_9
    move v6, v7

    .line 232
    :goto_8
    const-string v12, "crtcl=0x%04x:intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x"

    .line 233
    .line 234
    iget v9, v3, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    .line 235
    .line 236
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    iget v4, v4, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    .line 245
    .line 246
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    if-eqz v5, :cond_a

    .line 251
    .line 252
    move v7, v8

    .line 253
    :cond_a
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    iget v6, v3, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    .line 258
    .line 259
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v13

    .line 263
    move-object v6, v9

    .line 264
    move-object v7, v11

    .line 265
    move-object v8, v4

    .line 266
    move-object v9, v5

    .line 267
    move-object v11, v13

    .line 268
    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-static {v12, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    iput-object v4, v3, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    .line 277
    .line 278
    add-int/lit8 v1, v1, 0x1

    .line 279
    .line 280
    goto/16 :goto_5

    .line 281
    .line 282
    :cond_b
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 283
    .line 284
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 285
    .line 286
    .line 287
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    iget-object p0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    .line 289
    .line 290
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :goto_9
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    throw p0

    .line 296
    :catchall_1
    move-exception p0

    .line 297
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 298
    throw p0
.end method
