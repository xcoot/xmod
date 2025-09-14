.class public abstract Lcom/android/server/usage/UsageStatsProto;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .locals 14

    .line 1
    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 11
    .line 12
    :cond_0
    const-wide v0, 0x10900000001L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroid/util/ArrayMap;

    .line 35
    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    new-instance v4, Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {v5, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v4, Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 52
    .line 53
    .line 54
    move-object v2, v3

    .line 55
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    const-string v6, ""

    .line 60
    .line 61
    const/4 v7, -0x1

    .line 62
    if-eq v5, v7, :cond_9

    .line 63
    .line 64
    const/4 v8, 0x1

    .line 65
    if-eq v5, v8, :cond_8

    .line 66
    .line 67
    const/4 v9, 0x3

    .line 68
    if-eq v5, v9, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const-wide v10, 0x20b00000003L

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 77
    .line 78
    .line 79
    move-result-wide v10

    .line 80
    const/4 v5, 0x0

    .line 81
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    if-eq v12, v7, :cond_6

    .line 86
    .line 87
    if-eq v12, v8, :cond_5

    .line 88
    .line 89
    if-eq v12, v9, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const-wide v12, 0x10500000003L

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v12, v13}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    goto :goto_1

    .line 102
    :cond_5
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    goto :goto_1

    .line 107
    :cond_6
    if-nez v3, :cond_7

    .line 108
    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v4, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v4, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {p0, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_8
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 133
    .line 134
    invoke-virtual {v5, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_9
    :goto_3
    if-nez v2, :cond_a

    .line 139
    .line 140
    iget-object p0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 141
    .line 142
    invoke-virtual {p0, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :cond_a
    return-void
.end method

.method public static loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 11

    .line 1
    const-wide v0, 0x20b00000015L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    new-instance v2, Landroid/content/res/Configuration;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 13
    .line 14
    .line 15
    const-wide v3, 0x10b00000001L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    const/4 v6, 0x0

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2, p0, v3, v4}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v5, Landroid/app/usage/ConfigurationStats;

    .line 36
    .line 37
    invoke-direct {v5}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const/4 v8, -0x1

    .line 45
    if-eq v7, v8, :cond_6

    .line 46
    .line 47
    const/4 v8, 0x1

    .line 48
    if-eq v7, v8, :cond_5

    .line 49
    .line 50
    const/4 v8, 0x2

    .line 51
    if-eq v7, v8, :cond_4

    .line 52
    .line 53
    const/4 v8, 0x3

    .line 54
    if-eq v7, v8, :cond_3

    .line 55
    .line 56
    const/4 v8, 0x4

    .line 57
    if-eq v7, v8, :cond_2

    .line 58
    .line 59
    const/4 v8, 0x5

    .line 60
    if-eq v7, v8, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-wide v6, 0x10800000005L

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-wide v7, 0x10500000004L

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    iput v7, v5, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const-wide v7, 0x10300000003L

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    iput-wide v7, v5, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 98
    .line 99
    const-wide v9, 0x10300000002L

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v9

    .line 108
    add-long/2addr v9, v7

    .line 109
    iput-wide v9, v5, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    invoke-virtual {v2, p0, v3, v4}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    iget-wide v8, v5, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 120
    .line 121
    iput-wide v8, v7, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 122
    .line 123
    iget-wide v8, v5, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 124
    .line 125
    iput-wide v8, v7, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 126
    .line 127
    iget v5, v5, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 128
    .line 129
    iput v5, v7, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 130
    .line 131
    move-object v5, v7

    .line 132
    goto :goto_0

    .line 133
    :cond_6
    if-eqz v6, :cond_7

    .line 134
    .line 135
    iget-object v2, v5, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 136
    .line 137
    iput-object v2, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 138
    .line 139
    :cond_7
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public static loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, -0x1

    .line 10
    if-eq v2, v3, :cond_2

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v2, v3, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    if-eq v2, v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide v2, 0x10300000002L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    iput-wide v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const-wide v2, 0x10500000001L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iput v2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "Unable to read event tracker "

    .line 52
    .line 53
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "UsageStatsProto"

    .line 64
    .line 65
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static loadEvent(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .locals 7

    .line 1
    const-wide v0, 0x20b00000016L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    packed-switch v3, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    :pswitch_0
    goto :goto_0

    .line 23
    :pswitch_1
    const-wide v3, 0x10500000011L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-int/lit8 v3, v3, -0x1

    .line 33
    .line 34
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_2
    const-wide v3, 0x10500000010L

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/lit8 v3, v3, -0x1

    .line 57
    .line 58
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_3
    const-wide v3, 0x1050000000fL

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    add-int/lit8 v3, v3, -0x1

    .line 81
    .line 82
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_4
    const-wide v3, 0x1050000000eL

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_5
    const-wide v3, 0x1050000000dL

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    add-int/lit8 v3, v3, -0x1

    .line 117
    .line 118
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :pswitch_6
    const-wide v3, 0x1090000000cL

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :pswitch_7
    const-wide v3, 0x1050000000bL

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :pswitch_8
    const-wide v3, 0x10900000009L

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :pswitch_9
    new-instance v3, Landroid/content/res/Configuration;

    .line 174
    .line 175
    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 179
    .line 180
    const-wide v4, 0x10b00000008L

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, p0, v4, v5}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :pswitch_a
    const-wide v3, 0x10500000007L

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :pswitch_b
    const-wide v3, 0x10500000006L

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    iput v3, v2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :pswitch_c
    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 217
    .line 218
    const-wide v5, 0x10300000005L

    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 224
    .line 225
    .line 226
    move-result-wide v5

    .line 227
    add-long/2addr v5, v3

    .line 228
    iput-wide v5, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :pswitch_d
    const-wide v3, 0x10500000004L

    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    add-int/lit8 v3, v3, -0x1

    .line 242
    .line 243
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    check-cast v3, Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :pswitch_e
    const-wide v3, 0x10900000003L

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :pswitch_f
    const-wide v3, 0x10500000002L

    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    add-int/lit8 v3, v3, -0x1

    .line 284
    .line 285
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    check-cast v3, Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :pswitch_10
    const-wide v3, 0x10900000001L

    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-virtual {p1, v3}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :pswitch_11
    iget p2, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 317
    .line 318
    const/4 v3, 0x5

    .line 319
    if-eq p2, v3, :cond_3

    .line 320
    .line 321
    const/16 v3, 0x8

    .line 322
    .line 323
    const-string v4, ""

    .line 324
    .line 325
    if-eq p2, v3, :cond_2

    .line 326
    .line 327
    const/16 v3, 0xc

    .line 328
    .line 329
    if-eq p2, v3, :cond_1

    .line 330
    .line 331
    const/16 v3, 0x1e

    .line 332
    .line 333
    if-eq p2, v3, :cond_0

    .line 334
    .line 335
    goto :goto_1

    .line 336
    :cond_0
    iget-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 337
    .line 338
    if-nez p2, :cond_4

    .line 339
    .line 340
    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 341
    .line 342
    goto :goto_1

    .line 343
    :cond_1
    iget-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 344
    .line 345
    if-nez p2, :cond_4

    .line 346
    .line 347
    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 348
    .line 349
    goto :goto_1

    .line 350
    :cond_2
    iget-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 351
    .line 352
    if-nez p2, :cond_4

    .line 353
    .line 354
    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 355
    .line 356
    goto :goto_1

    .line 357
    :cond_3
    iget-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 358
    .line 359
    if-nez p2, :cond_4

    .line 360
    .line 361
    new-instance p2, Landroid/content/res/Configuration;

    .line 362
    .line 363
    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    .line 364
    .line 365
    .line 366
    iput-object p2, v2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 367
    .line 368
    :cond_4
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 369
    .line 370
    .line 371
    iget-object p0, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 372
    .line 373
    if-eqz p0, :cond_5

    .line 374
    .line 375
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 376
    .line 377
    invoke-virtual {p0, v2}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    .line 378
    .line 379
    .line 380
    return-void

    .line 381
    :cond_5
    new-instance p0, Ljava/net/ProtocolException;

    .line 382
    .line 383
    const-string/jumbo p1, "no package field present"

    .line 384
    .line 385
    .line 386
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw p0

    .line 390
    nop

    .line 391
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static loadUsageStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    .locals 11

    .line 1
    const-wide v0, 0x20b00000014L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, 0x10500000002L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const-wide v5, 0x10900000001L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    add-int/lit8 v4, v4, -0x1

    .line 31
    .line 32
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v4}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {p1, v4}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v4, Landroid/app/usage/UsageStats;

    .line 59
    .line 60
    invoke-direct {v4}, Landroid/app/usage/UsageStats;-><init>()V

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    const/4 v8, -0x1

    .line 68
    if-eq v7, v8, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    packed-switch v7, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_0
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 79
    .line 80
    const-wide v9, 0x1030000000cL

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v9

    .line 89
    add-long/2addr v9, v7

    .line 90
    iput-wide v9, v4, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :pswitch_1
    const-wide v7, 0x1030000000bL

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :pswitch_2
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 106
    .line 107
    const-wide v9, 0x1030000000aL

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 113
    .line 114
    .line 115
    move-result-wide v9

    .line 116
    add-long/2addr v9, v7

    .line 117
    iput-wide v9, v4, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :pswitch_3
    const-wide v7, 0x10300000009L

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 126
    .line 127
    .line 128
    move-result-wide v7

    .line 129
    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :pswitch_4
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 133
    .line 134
    const-wide v9, 0x10300000008L

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 140
    .line 141
    .line 142
    move-result-wide v9

    .line 143
    add-long/2addr v9, v7

    .line 144
    iput-wide v9, v4, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :pswitch_5
    const-wide v7, 0x20b00000007L

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    :try_start_0
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 153
    .line 154
    .line 155
    move-result-wide v7

    .line 156
    invoke-static {p0, v4}, Lcom/android/server/usage/UsageStatsProto;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catch_0
    move-exception v7

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v9, "Unable to read chooser counts for "

    .line 167
    .line 168
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v9, v4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    const-string v9, "UsageStatsProto"

    .line 181
    .line 182
    invoke-static {v9, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :pswitch_6
    const-wide v7, 0x10500000006L

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    iput v7, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :pswitch_7
    const-wide v7, 0x10500000005L

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    iput v7, v4, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :pswitch_8
    const-wide v7, 0x10300000004L

    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 218
    .line 219
    .line 220
    move-result-wide v7

    .line 221
    iput-wide v7, v4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :pswitch_9
    iget-wide v7, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 226
    .line 227
    const-wide v9, 0x10300000003L

    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v9, v10}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 233
    .line 234
    .line 235
    move-result-wide v9

    .line 236
    add-long/2addr v9, v7

    .line 237
    iput-wide v9, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :pswitch_a
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    add-int/lit8 v7, v7, -0x1

    .line 246
    .line 247
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    check-cast v7, Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {p1, v7}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 258
    .line 259
    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 260
    .line 261
    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 262
    .line 263
    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 264
    .line 265
    iget v8, v4, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 266
    .line 267
    iput v8, v7, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 268
    .line 269
    iget v4, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 270
    .line 271
    iput v4, v7, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 272
    .line 273
    :goto_1
    move-object v4, v7

    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :pswitch_b
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-virtual {p1, v7}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 285
    .line 286
    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 287
    .line 288
    iget-wide v8, v4, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 289
    .line 290
    iput-wide v8, v7, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 291
    .line 292
    iget v8, v4, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 293
    .line 294
    iput v8, v7, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 295
    .line 296
    iget v4, v4, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 297
    .line 298
    iput v4, v7, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 299
    .line 300
    goto :goto_1

    .line 301
    :cond_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 18
    .line 19
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/app/usage/EventList;->clear()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, -0x1

    .line 30
    if-eq v1, v3, :cond_7

    .line 31
    .line 32
    if-eq v1, v2, :cond_6

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    const-string v4, "UsageStatsProto"

    .line 36
    .line 37
    if-eq v1, v2, :cond_2

    .line 38
    .line 39
    const/4 v2, 0x3

    .line 40
    if-eq v1, v2, :cond_1

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    if-eq v1, v2, :cond_0

    .line 44
    .line 45
    packed-switch v1, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    packed-switch v1, :pswitch_data_1

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_0
    :try_start_0
    invoke-static {v0, p1, p0}, Lcom/android/server/usage/UsageStatsProto;->loadEvent(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    const-string v2, "Unable to read some events from proto."

    .line 58
    .line 59
    invoke-static {v4, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_1
    :try_start_1
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsProto;->loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_1
    move-exception v1

    .line 68
    const-string v2, "Unable to read some configuration stats from proto."

    .line 69
    .line 70
    invoke-static {v4, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_2
    :try_start_2
    invoke-static {v0, p1, p0}, Lcom/android/server/usage/UsageStatsProto;->loadUsageStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_2
    move-exception v1

    .line 79
    const-string v2, "Unable to read some usage stats from proto."

    .line 80
    .line 81
    invoke-static {v4, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_3
    const-wide v1, 0x10b0000000dL

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 91
    .line 92
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :pswitch_4
    const-wide v1, 0x10b0000000cL

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 102
    .line 103
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_5
    const-wide v1, 0x10b0000000bL

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 113
    .line 114
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_6
    const-wide v1, 0x10b0000000aL

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 124
    .line 125
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/usage/UsageStatsProto;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    const-wide v1, 0x10500000004L

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    iput v1, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_1
    const-wide v1, 0x10500000003L

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    iput v1, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_2
    const-wide v5, 0x10b00000002L

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :try_start_3
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 160
    .line 161
    .line 162
    move-result-wide v5

    .line 163
    const-wide v7, 0x10500000001L

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_3

    .line 173
    .line 174
    new-instance v1, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .line 188
    .line 189
    :goto_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-eq v7, v3, :cond_5

    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-eq v7, v2, :cond_4

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_4
    const-wide v7, 0x20900000002L

    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_5
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 216
    .line 217
    .line 218
    :try_start_4
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 219
    .line 220
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 221
    .line 222
    .line 223
    :goto_2
    move-object p0, v1

    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :catch_3
    move-exception p0

    .line 227
    goto :goto_3

    .line 228
    :catch_4
    move-exception v1

    .line 229
    move-object v9, v1

    .line 230
    move-object v1, p0

    .line 231
    move-object p0, v9

    .line 232
    :goto_3
    const-string v2, "Unable to read string pool from proto."

    .line 233
    .line 234
    invoke-static {v4, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_6
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 239
    .line 240
    const-wide v3, 0x10300000001L

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 246
    .line 247
    .line 248
    move-result-wide v3

    .line 249
    add-long/2addr v3, v1

    .line 250
    iput-wide v3, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_7
    iget p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 255
    .line 256
    if-lt p0, v2, :cond_8

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_8
    iput v2, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 260
    .line 261
    :goto_4
    return-void

    .line 262
    nop

    .line 263
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 23

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v2, "UsageStatsProto"

    .line 4
    .line 5
    new-instance v10, Landroid/util/proto/ProtoOutputStream;

    .line 6
    .line 7
    move-object/from16 v0, p0

    .line 8
    .line 9
    invoke-direct {v10, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 10
    .line 11
    .line 12
    iget-wide v3, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 13
    .line 14
    iget-wide v5, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 15
    .line 16
    sget v0, Lcom/android/server/usage/UsageStatsProtoV2;->$r8$clinit:I

    .line 17
    .line 18
    sub-long/2addr v3, v5

    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    cmp-long v0, v3, v5

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-wide/16 v5, 0x1

    .line 26
    .line 27
    add-long/2addr v3, v5

    .line 28
    :cond_0
    const-wide v5, 0x10300000001L

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    invoke-virtual {v10, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 34
    .line 35
    .line 36
    const-wide v3, 0x10500000003L

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    iget v0, v1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 42
    .line 43
    invoke-virtual {v10, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 44
    .line 45
    .line 46
    iget v0, v1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    .line 47
    .line 48
    const-wide v11, 0x10500000004L

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    invoke-virtual {v10, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 54
    .line 55
    .line 56
    const-wide v3, 0x10b00000002L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :try_start_0
    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const-wide v5, 0x10500000001L

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    invoke-virtual {v10, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 77
    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    :goto_0
    if-ge v5, v0, :cond_1

    .line 81
    .line 82
    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 83
    .line 84
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Ljava/lang/String;

    .line 89
    .line 90
    const-wide v7, 0x20900000002L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    invoke-virtual {v10, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string v3, "Unable to write string pool to proto."

    .line 107
    .line 108
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    :goto_1
    :try_start_1
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 112
    .line 113
    iget v3, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 114
    .line 115
    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 116
    .line 117
    const-wide v4, 0x10b0000000aL

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    move-object v8, v10

    .line 123
    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 127
    .line 128
    iget v3, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 129
    .line 130
    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 131
    .line 132
    const-wide v4, 0x10b0000000bL

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    move-object v8, v10

    .line 138
    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 142
    .line 143
    iget v3, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 144
    .line 145
    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 146
    .line 147
    const-wide v4, 0x10b0000000cL

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    move-object v8, v10

    .line 153
    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 157
    .line 158
    iget v3, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 159
    .line 160
    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 161
    .line 162
    const-wide v4, 0x10b0000000dL

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    move-object v8, v10

    .line 168
    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsProto;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :catch_1
    move-exception v0

    .line 173
    const-string v3, "Unable to write some interval stats trackers to proto."

    .line 174
    .line 175
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .line 177
    .line 178
    :goto_2
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    const/4 v4, 0x0

    .line 185
    :goto_3
    if-ge v4, v3, :cond_2

    .line 186
    .line 187
    :try_start_2
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 188
    .line 189
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Landroid/app/usage/UsageStats;

    .line 194
    .line 195
    invoke-static {v10, v1, v0}, Lcom/android/server/usage/UsageStatsProto;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :catch_2
    move-exception v0

    .line 200
    const-string v5, "Unable to write some usage stats to proto."

    .line 201
    .line 202
    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .line 204
    .line 205
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_2
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 209
    .line 210
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 211
    .line 212
    .line 213
    move-result v14

    .line 214
    const/4 v15, 0x0

    .line 215
    :goto_5
    if-ge v15, v14, :cond_3

    .line 216
    .line 217
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 218
    .line 219
    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 220
    .line 221
    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    check-cast v3, Landroid/content/res/Configuration;

    .line 226
    .line 227
    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    :try_start_3
    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 232
    .line 233
    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    move-object v8, v3

    .line 238
    check-cast v8, Landroid/app/usage/ConfigurationStats;

    .line 239
    .line 240
    const-wide v3, 0x20b00000015L

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 246
    .line 247
    .line 248
    move-result-wide v6

    .line 249
    iget-object v3, v8, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 250
    .line 251
    const-wide v4, 0x10b00000001L

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v10, v4, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 257
    .line 258
    .line 259
    iget-wide v4, v8, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6

    .line 260
    .line 261
    move/from16 v16, v14

    .line 262
    .line 263
    :try_start_4
    iget-wide v13, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5

    .line 264
    .line 265
    const-wide v17, 0x10300000002L

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    move-object v3, v10

    .line 271
    move-wide/from16 v19, v4

    .line 272
    .line 273
    move-wide/from16 v4, v17

    .line 274
    .line 275
    move-wide/from16 v21, v6

    .line 276
    .line 277
    move-wide/from16 v6, v19

    .line 278
    .line 279
    move-object v11, v8

    .line 280
    move-wide v8, v13

    .line 281
    :try_start_5
    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 282
    .line 283
    .line 284
    iget-wide v3, v11, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 285
    .line 286
    const-wide v5, 0x10300000003L

    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    invoke-virtual {v10, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 292
    .line 293
    .line 294
    iget v3, v11, Landroid/app/usage/ConfigurationStats;->mActivationCount:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    .line 295
    .line 296
    const-wide v4, 0x10500000004L

    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    :try_start_6
    invoke-virtual {v10, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 302
    .line 303
    .line 304
    const-wide v6, 0x10800000005L

    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    invoke-virtual {v10, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 310
    .line 311
    .line 312
    move-wide/from16 v6, v21

    .line 313
    .line 314
    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3

    .line 315
    .line 316
    .line 317
    goto :goto_7

    .line 318
    :catch_3
    move-exception v0

    .line 319
    goto :goto_6

    .line 320
    :catch_4
    move-exception v0

    .line 321
    const-wide v4, 0x10500000004L

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    goto :goto_6

    .line 327
    :catch_5
    move-exception v0

    .line 328
    move-wide v4, v11

    .line 329
    goto :goto_6

    .line 330
    :catch_6
    move-exception v0

    .line 331
    move-wide v4, v11

    .line 332
    move/from16 v16, v14

    .line 333
    .line 334
    :goto_6
    const-string v3, "Unable to write some configuration stats to proto."

    .line 335
    .line 336
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    .line 338
    .line 339
    :goto_7
    add-int/lit8 v15, v15, 0x1

    .line 340
    .line 341
    move-wide v11, v4

    .line 342
    move/from16 v14, v16

    .line 343
    .line 344
    goto/16 :goto_5

    .line 345
    .line 346
    :cond_3
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 347
    .line 348
    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    const/4 v13, 0x0

    .line 353
    :goto_8
    if-ge v13, v3, :cond_4

    .line 354
    .line 355
    :try_start_7
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 356
    .line 357
    invoke-virtual {v0, v13}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-static {v10, v1, v0}, Lcom/android/server/usage/UsageStatsProto;->writeEvent(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    .line 362
    .line 363
    .line 364
    goto :goto_9

    .line 365
    :catch_7
    move-exception v0

    .line 366
    const-string v4, "Unable to write some events to proto."

    .line 367
    .line 368
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    .line 370
    .line 371
    :goto_9
    add-int/lit8 v13, v13, 0x1

    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_4
    invoke-virtual {v10}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 375
    .line 376
    .line 377
    return-void
.end method

.method public static writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v2, v1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 8
    .line 9
    if-eqz v2, :cond_5

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    iget-object v2, v1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    move v4, v3

    .line 31
    :goto_0
    if-ge v4, v2, :cond_5

    .line 32
    .line 33
    iget-object v5, v1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Ljava/lang/String;

    .line 40
    .line 41
    iget-object v6, v1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Landroid/util/ArrayMap;

    .line 48
    .line 49
    if-eqz v5, :cond_4

    .line 50
    .line 51
    if-eqz v6, :cond_4

    .line 52
    .line 53
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    const-wide v7, 0x20b00000007L

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    const-wide v9, 0x10900000001L

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    move v11, v3

    .line 82
    :goto_1
    if-ge v11, v5, :cond_3

    .line 83
    .line 84
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    check-cast v12, Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v13

    .line 94
    check-cast v13, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-lez v13, :cond_2

    .line 101
    .line 102
    const-wide v14, 0x20b00000003L

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v14

    .line 111
    invoke-virtual {v0, v9, v10, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-wide v9, 0x10500000003L

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v9, v10, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 123
    .line 124
    .line 125
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 126
    .line 127
    const-wide v9, 0x10900000001L

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 134
    .line 135
    .line 136
    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_5
    :goto_3
    return-void
.end method

.method public static writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V
    .locals 2

    .line 1
    invoke-virtual {p5, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    const-wide v0, 0x10500000001L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-virtual {p5, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 11
    .line 12
    .line 13
    const-wide v0, 0x10300000002L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-virtual {p5, v0, v1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p5, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static writeEvent(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    .locals 12

    .line 1
    const-wide v0, 0x20b00000016L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 11
    .line 12
    iget-object v3, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ltz v2, :cond_0

    .line 19
    .line 20
    const-wide v3, 0x10500000002L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-wide v2, 0x10900000001L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    iget-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ltz v2, :cond_1

    .line 52
    .line 53
    const-wide v3, 0x10500000004L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const-wide v2, 0x10900000003L

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    iget-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_1
    iget-wide v8, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 75
    .line 76
    iget-wide v10, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 77
    .line 78
    const-wide v6, 0x10300000005L

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    move-object v5, p0

    .line 84
    invoke-static/range {v5 .. v11}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 85
    .line 86
    .line 87
    const-wide v2, 0x10500000006L

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    iget v4, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 93
    .line 94
    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 95
    .line 96
    .line 97
    const-wide v2, 0x10500000007L

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    iget v4, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 103
    .line 104
    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 105
    .line 106
    .line 107
    const-wide v2, 0x1050000000eL

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    iget v4, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 113
    .line 114
    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 115
    .line 116
    .line 117
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 118
    .line 119
    if-eqz v2, :cond_3

    .line 120
    .line 121
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 122
    .line 123
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-ltz v2, :cond_3

    .line 128
    .line 129
    const-wide v3, 0x1050000000fL

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    add-int/lit8 v2, v2, 0x1

    .line 135
    .line 136
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 137
    .line 138
    .line 139
    :cond_3
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 140
    .line 141
    if-eqz v2, :cond_4

    .line 142
    .line 143
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 144
    .line 145
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-ltz v2, :cond_4

    .line 150
    .line 151
    const-wide v3, 0x10500000010L

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 159
    .line 160
    .line 161
    :cond_4
    iget v2, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 162
    .line 163
    const/4 v3, 0x5

    .line 164
    if-eq v2, v3, :cond_a

    .line 165
    .line 166
    const/16 v3, 0x8

    .line 167
    .line 168
    if-eq v2, v3, :cond_9

    .line 169
    .line 170
    const/16 v3, 0x1e

    .line 171
    .line 172
    if-eq v2, v3, :cond_8

    .line 173
    .line 174
    const/16 v3, 0xb

    .line 175
    .line 176
    if-eq v2, v3, :cond_7

    .line 177
    .line 178
    const/16 v3, 0xc

    .line 179
    .line 180
    if-eq v2, v3, :cond_5

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_5
    iget-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 184
    .line 185
    if-eqz v2, :cond_b

    .line 186
    .line 187
    iget-object p1, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 188
    .line 189
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-ltz p1, :cond_6

    .line 194
    .line 195
    const-wide v2, 0x1050000000dL

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    add-int/lit8 p1, p1, 0x1

    .line 201
    .line 202
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 203
    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_6
    const-wide v2, 0x1090000000cL

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_7
    iget p1, p2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 218
    .line 219
    if-eqz p1, :cond_b

    .line 220
    .line 221
    const-wide v2, 0x1050000000bL

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_8
    iget-object p2, p2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 231
    .line 232
    if-eqz p2, :cond_b

    .line 233
    .line 234
    iget-object p1, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 235
    .line 236
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-ltz p1, :cond_b

    .line 241
    .line 242
    const-wide v2, 0x10500000011L

    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    add-int/lit8 p1, p1, 0x1

    .line 248
    .line 249
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_9
    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 254
    .line 255
    if-eqz p1, :cond_b

    .line 256
    .line 257
    const-wide v2, 0x10900000009L

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_a
    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 267
    .line 268
    if-eqz p1, :cond_b

    .line 269
    .line 270
    const-wide v2, 0x10b00000008L

    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, p0, v2, v3}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 276
    .line 277
    .line 278
    :cond_b
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 279
    .line 280
    .line 281
    return-void
.end method

.method public static writeUsageStats(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .locals 13

    .line 1
    const-wide v0, 0x20b00000014L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 11
    .line 12
    iget-object v3, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ltz v2, :cond_0

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    const-wide v3, 0x10500000002L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-wide v2, 0x10900000001L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    iget-object v4, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-wide v8, p2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 42
    .line 43
    iget-wide v10, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 44
    .line 45
    const-wide v6, 0x10300000003L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    move-object v5, p0

    .line 51
    invoke-static/range {v5 .. v11}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 52
    .line 53
    .line 54
    const-wide v2, 0x10300000004L

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    iget-wide v4, p2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 60
    .line 61
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 62
    .line 63
    .line 64
    const-wide v2, 0x10500000005L

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    iget v4, p2, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 70
    .line 71
    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 72
    .line 73
    .line 74
    iget-wide v8, p2, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 75
    .line 76
    iget-wide v10, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 77
    .line 78
    const-wide v6, 0x10300000008L

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    move-object v5, p0

    .line 84
    invoke-static/range {v5 .. v11}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 85
    .line 86
    .line 87
    const-wide v2, 0x10300000009L

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    iget-wide v4, p2, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 93
    .line 94
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 95
    .line 96
    .line 97
    iget-wide v9, p2, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 98
    .line 99
    iget-wide v11, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 100
    .line 101
    const-wide v7, 0x1030000000aL

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    move-object v6, p0

    .line 107
    invoke-static/range {v6 .. v12}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 108
    .line 109
    .line 110
    const-wide v2, 0x1030000000bL

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    iget-wide v4, p2, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 116
    .line 117
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 118
    .line 119
    .line 120
    iget-wide v9, p2, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 121
    .line 122
    iget-wide v11, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 123
    .line 124
    const-wide v7, 0x1030000000cL

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    invoke-static/range {v6 .. v12}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 130
    .line 131
    .line 132
    const-wide v2, 0x10500000006L

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    iget p1, p2, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 138
    .line 139
    invoke-virtual {p0, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 140
    .line 141
    .line 142
    :try_start_0
    invoke-static {p0, p2}, Lcom/android/server/usage/UsageStatsProto;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catch_0
    move-exception p1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v3, "Unable to write chooser counts for "

    .line 150
    .line 151
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object p2, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    const-string v2, "UsageStatsProto"

    .line 164
    .line 165
    invoke-static {v2, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .line 167
    .line 168
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 169
    .line 170
    .line 171
    return-void
.end method
