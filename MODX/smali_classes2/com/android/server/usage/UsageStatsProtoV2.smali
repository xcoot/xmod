.class public abstract Lcom/android/server/usage/UsageStatsProtoV2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final ONE_HOUR_MS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    .line 10
    .line 11
    return-void
.end method

.method public static loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V
    .locals 12

    .line 1
    const-wide v0, 0x10500000001L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sub-int/2addr v2, v3

    .line 18
    iget-object v4, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Landroid/util/SparseIntArray;

    .line 25
    .line 26
    if-nez v4, :cond_1

    .line 27
    .line 28
    new-instance v4, Landroid/util/SparseIntArray;

    .line 29
    .line 30
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v4, Landroid/util/SparseIntArray;

    .line 40
    .line 41
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    const/4 v5, -0x1

    .line 49
    if-eq v2, v5, :cond_8

    .line 50
    .line 51
    if-eq v2, v3, :cond_7

    .line 52
    .line 53
    const/4 v6, 0x2

    .line 54
    if-eq v2, v6, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const-wide v7, 0x20b00000002L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v7

    .line 66
    const/4 v2, 0x0

    .line 67
    move v9, v5

    .line 68
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    if-eq v10, v5, :cond_5

    .line 73
    .line 74
    if-eq v10, v3, :cond_4

    .line 75
    .line 76
    if-eq v10, v6, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const-wide v10, 0x10500000002L

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    sub-int/2addr v9, v3

    .line 94
    goto :goto_1

    .line 95
    :cond_5
    if-eq v9, v5, :cond_6

    .line 96
    .line 97
    invoke-virtual {v4, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    .line 99
    .line 100
    :cond_6
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_7
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    sub-int/2addr v2, v3

    .line 109
    iget-object v5, p1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 110
    .line 111
    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_8
    return-void
.end method

.method public static loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/app/usage/ConfigurationStats;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 9
    .line 10
    .line 11
    const-wide v2, 0x10b00000001L

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v6, -0x1

    .line 35
    if-eq v4, v6, :cond_6

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    if-eq v4, v6, :cond_5

    .line 39
    .line 40
    const/4 v6, 0x2

    .line 41
    if-eq v4, v6, :cond_4

    .line 42
    .line 43
    const/4 v6, 0x3

    .line 44
    if-eq v4, v6, :cond_3

    .line 45
    .line 46
    const/4 v6, 0x4

    .line 47
    if-eq v4, v6, :cond_2

    .line 48
    .line 49
    const/4 v6, 0x5

    .line 50
    if-eq v4, v6, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-wide v4, 0x10800000005L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    move v5, v4

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-wide v6, 0x10500000004L

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    iput v4, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const-wide v6, 0x10300000003L

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v6

    .line 85
    iput-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 89
    .line 90
    const-wide v8, 0x10300000002L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 96
    .line 97
    .line 98
    move-result-wide v8

    .line 99
    add-long/2addr v8, v6

    .line 100
    iput-wide v8, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    invoke-virtual {v0, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iget-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 111
    .line 112
    iput-wide v6, v4, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 113
    .line 114
    iget-wide v6, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 115
    .line 116
    iput-wide v6, v4, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 117
    .line 118
    iget v1, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 119
    .line 120
    iput v1, v4, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 121
    .line 122
    move-object v1, v4

    .line 123
    goto :goto_0

    .line 124
    :cond_6
    if-eqz v5, :cond_7

    .line 125
    .line 126
    iget-object p0, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 127
    .line 128
    iput-object p0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 129
    .line 130
    :cond_7
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
    const-string p2, "UsageStatsProtoV2"

    .line 64
    .line 65
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;
    .locals 12

    .line 1
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-wide v2, 0x10500000001L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v4, 0x10500000002L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const/4 v6, -0x1

    .line 21
    const/4 v7, 0x1

    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    :pswitch_0
    goto :goto_0

    .line 26
    :pswitch_1
    const-wide v8, 0x10b0000000eL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v8

    .line 35
    new-instance v1, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;-><init>()V

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    if-eq v10, v6, :cond_2

    .line 45
    .line 46
    if-eq v10, v7, :cond_1

    .line 47
    .line 48
    const/4 v11, 0x2

    .line 49
    if-eq v10, v11, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    sub-int/2addr v10, v7

    .line 57
    iput v10, v1, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mActionToken:I

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    sub-int/2addr v10, v7

    .line 65
    iput v10, v1, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mCategoryToken:I

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    .line 69
    .line 70
    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    const-string v2, "UsageStatsProtoV2"

    .line 76
    .line 77
    const-string v3, "Unable to read some user interaction extras from proto."

    .line 78
    .line 79
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_2
    const-wide v1, 0x1050000000dL

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    sub-int/2addr v1, v7

    .line 93
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :pswitch_3
    const-wide v1, 0x1050000000cL

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    sub-int/2addr v1, v7

    .line 106
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :pswitch_4
    const-wide v1, 0x1050000000bL

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    sub-int/2addr v1, v7

    .line 119
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_5
    const-wide v1, 0x1050000000aL

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_6
    const-wide v1, 0x10500000009L

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    sub-int/2addr v1, v7

    .line 144
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :pswitch_7
    const-wide v1, 0x10500000008L

    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :pswitch_8
    const-wide v1, 0x10500000007L

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    sub-int/2addr v1, v7

    .line 171
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :pswitch_9
    new-instance v1, Landroid/content/res/Configuration;

    .line 176
    .line 177
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 181
    .line 182
    const-wide v2, 0x10b00000006L

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :pswitch_a
    const-wide v1, 0x10500000005L

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :pswitch_b
    const-wide v1, 0x10500000004L

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :pswitch_c
    const-wide v1, 0x10300000003L

    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 224
    .line 225
    .line 226
    move-result-wide v1

    .line 227
    add-long/2addr v1, p1

    .line 228
    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :pswitch_d
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    sub-int/2addr v1, v7

    .line 237
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :pswitch_e
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    sub-int/2addr v1, v7

    .line 246
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :pswitch_f
    iget p0, v0, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 251
    .line 252
    if-ne p0, v6, :cond_3

    .line 253
    .line 254
    const/4 v0, 0x0

    .line 255
    :cond_3
    return-object v0

    .line 256
    nop

    .line 257
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
    .end packed-switch
.end method

.method public static parsePendingEvent(Landroid/util/proto/ProtoInputStream;)Landroid/app/usage/UsageEvents$Event;
    .locals 4

    .line 1
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    :pswitch_0
    goto :goto_0

    .line 14
    :pswitch_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 15
    .line 16
    const-wide v2, 0x10c0000000eL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_2
    const-wide v1, 0x1090000000cL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_3
    const-wide v1, 0x1090000000bL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_4
    const-wide v1, 0x1050000000aL

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_5
    const-wide v1, 0x10900000009L

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_6
    const-wide v1, 0x10500000008L

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_7
    const-wide v1, 0x10900000007L

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_8
    new-instance v1, Landroid/content/res/Configuration;

    .line 108
    .line 109
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 113
    .line 114
    const-wide v2, 0x10b00000006L

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Configuration;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :pswitch_9
    const-wide v1, 0x10500000005L

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :pswitch_a
    const-wide v1, 0x10500000004L

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :pswitch_b
    const-wide v1, 0x10300000003L

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :pswitch_c
    const-wide v1, 0x10900000002L

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :pswitch_d
    const-wide v1, 0x10900000001L

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :pswitch_e
    iget p0, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 189
    .line 190
    const/4 v1, 0x5

    .line 191
    if-eq p0, v1, :cond_2

    .line 192
    .line 193
    const/16 v1, 0x8

    .line 194
    .line 195
    const-string v2, ""

    .line 196
    .line 197
    if-eq p0, v1, :cond_1

    .line 198
    .line 199
    const/16 v1, 0xc

    .line 200
    .line 201
    if-eq p0, v1, :cond_0

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_0
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 205
    .line 206
    if-nez p0, :cond_3

    .line 207
    .line 208
    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_1
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 212
    .line 213
    if-nez p0, :cond_3

    .line 214
    .line 215
    iput-object v2, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_2
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 219
    .line 220
    if-nez p0, :cond_3

    .line 221
    .line 222
    new-instance p0, Landroid/content/res/Configuration;

    .line 223
    .line 224
    invoke-direct {p0}, Landroid/content/res/Configuration;-><init>()V

    .line 225
    .line 226
    .line 227
    iput-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 228
    .line 229
    :cond_3
    :goto_1
    iget-object p0, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 230
    .line 231
    if-nez p0, :cond_4

    .line 232
    .line 233
    const/4 v0, 0x0

    .line 234
    :cond_4
    return-object v0

    .line 235
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;
    .locals 5

    .line 1
    new-instance v0, Landroid/app/usage/UsageStats;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v1, v2, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    if-eq v1, v2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    packed-switch v1, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_0
    const-wide v1, 0x1030000000cL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    add-long/2addr v1, p1

    .line 36
    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_1
    const-wide v1, 0x1030000000bL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_2
    const-wide v1, 0x1030000000aL

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    add-long/2addr v1, p1

    .line 61
    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_3
    const-wide v1, 0x10300000009L

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_4
    const-wide v1, 0x10300000008L

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    add-long/2addr v1, p1

    .line 86
    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_5
    const-wide v1, 0x20b00000007L

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 95
    .line 96
    .line 97
    move-result-wide v1

    .line 98
    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadChooserCounts(Landroid/util/proto/ProtoInputStream;Landroid/app/usage/UsageStats;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v2, "Unable to read chooser counts for "

    .line 108
    .line 109
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget v2, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    .line 113
    .line 114
    const-string v3, "UsageStatsProtoV2"

    .line 115
    .line 116
    invoke-static {v1, v2, v3}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :pswitch_6
    const-wide v1, 0x10500000006L

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    iput v1, v0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    const-wide v1, 0x10300000004L

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 138
    .line 139
    .line 140
    move-result-wide v1

    .line 141
    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_1
    const-wide v1, 0x10300000003L

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 151
    .line 152
    .line 153
    move-result-wide v1

    .line 154
    add-long/2addr v1, p1

    .line 155
    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_2
    const-wide v3, 0x10500000001L

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    sub-int/2addr v1, v2

    .line 169
    iput v1, v0, Landroid/app/usage/UsageStats;->mPackageToken:I

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_3
    return-object v0

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;Z)V
    .locals 7

    .line 1
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq p0, v1, :cond_5

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eq p0, v2, :cond_4

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq p0, v2, :cond_3

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-eq p0, v2, :cond_2

    .line 21
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    const-string v2, "UsageStatsProtoV2"

    .line 26
    .line 27
    packed-switch p0, :pswitch_data_1

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_0
    if-eqz p2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-wide v3, 0x20b00000016L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 44
    .line 45
    invoke-static {v0, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->parseEvent(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageEvents$Event;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 50
    .line 51
    .line 52
    if-eqz p0, :cond_0

    .line 53
    .line 54
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    const-string v1, "Unable to read some events from proto."

    .line 62
    .line 63
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_1
    const-wide v3, 0x20b00000015L

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    :try_start_1
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->loadConfigStats(Landroid/util/proto/ProtoInputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_1
    move-exception p0

    .line 84
    const-string v1, "Unable to read some configuration stats from proto."

    .line 85
    .line 86
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_2
    const-wide v3, 0x20b00000014L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    :try_start_2
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 100
    .line 101
    invoke-static {v0, v5, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->parseUsageStats(Landroid/util/proto/ProtoInputStream;J)Landroid/app/usage/UsageStats;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 106
    .line 107
    .line 108
    iget v3, p0, Landroid/app/usage/UsageStats;->mPackageToken:I

    .line 109
    .line 110
    if-eq v3, v1, :cond_0

    .line 111
    .line 112
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {v1, v3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catch_2
    move-exception p0

    .line 119
    const-string v1, "Unable to read some usage stats from proto."

    .line 120
    .line 121
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_3
    const-wide v1, 0x10b0000000dL

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 131
    .line 132
    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :pswitch_4
    const-wide v1, 0x10b0000000cL

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 143
    .line 144
    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :pswitch_5
    const-wide v1, 0x10b0000000bL

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 155
    .line 156
    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :pswitch_6
    const-wide v1, 0x10b0000000aL

    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 167
    .line 168
    invoke-static {v0, v1, v2, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->loadCountAndTime(Landroid/util/proto/ProtoInputStream;JLcom/android/server/usage/IntervalStats$EventTracker;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_2
    const-wide v1, 0x10500000003L

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    iput p0, p1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_3
    const-wide v1, 0x10500000002L

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    iput p0, p1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_4
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 200
    .line 201
    const-wide v3, 0x10300000001L

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 207
    .line 208
    .line 209
    move-result-wide v3

    .line 210
    add-long/2addr v3, v1

    .line 211
    iput-wide v3, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_5
    iget-object p0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    const/4 p2, 0x0

    .line 222
    :goto_1
    if-ge p2, p0, :cond_6

    .line 223
    .line 224
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    .line 225
    .line 226
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Landroid/app/usage/UsageStats;

    .line 231
    .line 232
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 233
    .line 234
    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 235
    .line 236
    iget-wide v1, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 237
    .line 238
    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 239
    .line 240
    add-int/lit8 p2, p2, 0x1

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_6
    return-void

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readGlobalComponentUsage(Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq p0, v1, :cond_5

    .line 12
    .line 13
    const/16 v2, 0x18

    .line 14
    .line 15
    if-eq p0, v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-wide v2, 0x20b00000018L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    const-string p0, ""

    .line 28
    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    move-wide v6, v4

    .line 32
    :goto_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-eq v8, v1, :cond_4

    .line 37
    .line 38
    const/4 v9, 0x1

    .line 39
    if-eq v8, v9, :cond_3

    .line 40
    .line 41
    const/4 v9, 0x2

    .line 42
    if-eq v8, v9, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const-wide v6, 0x10300000002L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const-wide v8, 0x10900000001L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    new-instance v1, Landroid/util/Pair;

    .line 66
    .line 67
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-direct {v1, p0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 75
    .line 76
    .line 77
    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p0, Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_0

    .line 86
    .line 87
    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p0, Ljava/lang/Long;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    cmp-long p0, v2, v4

    .line 96
    .line 97
    if-lez p0, :cond_0

    .line 98
    .line 99
    iget-object p0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p0, Ljava/lang/String;

    .line 102
    .line 103
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v1, Ljava/lang/Long;

    .line 106
    .line 107
    move-object v2, p1

    .line 108
    check-cast v2, Landroid/util/ArrayMap;

    .line 109
    .line 110
    invoke-virtual {v2, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move-exception p0

    .line 115
    const-string v1, "UsageStatsProtoV2"

    .line 116
    .line 117
    const-string v2, "Unable to parse some package usage from proto."

    .line 118
    .line 119
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_5
    return-void
.end method

.method public static readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .locals 12

    .line 1
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq p0, v1, :cond_6

    .line 12
    .line 13
    const-wide v2, 0x10500000001L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-eq p0, v4, :cond_5

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    if-eq p0, v5, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-wide v6, 0x20b00000002L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    iget-object p0, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 35
    .line 36
    new-instance v8, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    move v9, v1

    .line 42
    :goto_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    if-eq v10, v1, :cond_3

    .line 47
    .line 48
    if-eq v10, v4, :cond_2

    .line 49
    .line 50
    if-eq v10, v5, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const-wide v10, 0x20900000002L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    sub-int/2addr v9, v4

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    if-eq v9, v1, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    iput p0, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_6
    return-void
.end method

.method public static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .locals 20

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v2, "UsageStatsProtoV2"

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
    sub-long/2addr v3, v5

    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    cmp-long v0, v3, v5

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-wide/16 v5, 0x1

    .line 24
    .line 25
    add-long/2addr v3, v5

    .line 26
    :cond_0
    const-wide v5, 0x10300000001L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-virtual {v10, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 32
    .line 33
    .line 34
    const-wide v3, 0x10500000002L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    iget v0, v1, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 40
    .line 41
    invoke-virtual {v10, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 42
    .line 43
    .line 44
    const-wide v3, 0x10500000003L

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    iget v0, v1, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    .line 50
    .line 51
    invoke-virtual {v10, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 55
    .line 56
    iget v3, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 57
    .line 58
    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 59
    .line 60
    const-wide v4, 0x10b0000000aL

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    move-object v8, v10

    .line 66
    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 70
    .line 71
    iget v3, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 72
    .line 73
    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 74
    .line 75
    const-wide v4, 0x10b0000000bL

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    move-object v8, v10

    .line 81
    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 85
    .line 86
    iget v3, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 87
    .line 88
    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 89
    .line 90
    const-wide v4, 0x10b0000000cL

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    move-object v8, v10

    .line 96
    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 100
    .line 101
    iget v3, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    .line 102
    .line 103
    iget-wide v6, v0, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    .line 104
    .line 105
    const-wide v4, 0x10b0000000dL

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    move-object v8, v10

    .line 111
    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsProtoV2;->writeCountAndTime(IJJLandroid/util/proto/ProtoOutputStream;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string v3, "Unable to write some interval stats trackers to proto."

    .line 117
    .line 118
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .line 120
    .line 121
    :goto_0
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    const/4 v4, 0x0

    .line 128
    :goto_1
    if-ge v4, v3, :cond_1

    .line 129
    .line 130
    const-wide v5, 0x20b00000014L

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :try_start_1
    invoke-virtual {v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 136
    .line 137
    .line 138
    move-result-wide v5

    .line 139
    iget-wide v7, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 140
    .line 141
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    .line 142
    .line 143
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroid/app/usage/UsageStats;

    .line 148
    .line 149
    invoke-static {v10, v7, v8, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catch_1
    move-exception v0

    .line 157
    const-string v5, "Unable to write some usage stats to proto."

    .line 158
    .line 159
    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .line 161
    .line 162
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_1
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    const/4 v13, 0x0

    .line 172
    :goto_3
    if-ge v13, v12, :cond_2

    .line 173
    .line 174
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 175
    .line 176
    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 177
    .line 178
    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    check-cast v3, Landroid/content/res/Configuration;

    .line 183
    .line 184
    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    const-wide v3, 0x20b00000015L

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    :try_start_2
    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 194
    .line 195
    .line 196
    move-result-wide v14

    .line 197
    iget-wide v8, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 198
    .line 199
    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 200
    .line 201
    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    move-object v6, v3

    .line 206
    check-cast v6, Landroid/app/usage/ConfigurationStats;

    .line 207
    .line 208
    iget-object v3, v6, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 209
    .line 210
    const-wide v4, 0x10b00000001L

    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v10, v4, v5}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 216
    .line 217
    .line 218
    iget-wide v4, v6, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 219
    .line 220
    const-wide v16, 0x10300000002L

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    move-object v3, v10

    .line 226
    move-wide/from16 v18, v4

    .line 227
    .line 228
    move-wide/from16 v4, v16

    .line 229
    .line 230
    move-object v11, v6

    .line 231
    move-wide/from16 v6, v18

    .line 232
    .line 233
    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 234
    .line 235
    .line 236
    iget-wide v3, v11, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 237
    .line 238
    const-wide v5, 0x10300000003L

    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    invoke-virtual {v10, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 244
    .line 245
    .line 246
    iget v3, v11, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 247
    .line 248
    const-wide v4, 0x10500000004L

    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    invoke-virtual {v10, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 254
    .line 255
    .line 256
    const-wide v3, 0x10800000005L

    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    invoke-virtual {v10, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v10, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :catch_2
    move-exception v0

    .line 269
    const-string v3, "Unable to write some configuration stats to proto."

    .line 270
    .line 271
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .line 273
    .line 274
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_2
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 278
    .line 279
    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    const/4 v11, 0x0

    .line 284
    :goto_5
    if-ge v11, v3, :cond_3

    .line 285
    .line 286
    const-wide v4, 0x20b00000016L

    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    :try_start_3
    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 292
    .line 293
    .line 294
    move-result-wide v4

    .line 295
    iget-wide v6, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 296
    .line 297
    iget-object v0, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 298
    .line 299
    invoke-virtual {v0, v11}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-static {v10, v6, v7, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 307
    .line 308
    .line 309
    goto :goto_6

    .line 310
    :catch_3
    move-exception v0

    .line 311
    const-string v4, "Unable to write some events to proto."

    .line 312
    .line 313
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .line 315
    .line 316
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 317
    .line 318
    goto :goto_5

    .line 319
    :cond_3
    invoke-virtual {v10}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 320
    .line 321
    .line 322
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
    iget-object v2, v1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    iget-object v2, v1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_0
    if-ge v4, v2, :cond_5

    .line 26
    .line 27
    iget-object v5, v1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    iget-object v6, v1, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Landroid/util/SparseIntArray;

    .line 40
    .line 41
    if-eqz v6, :cond_4

    .line 42
    .line 43
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-nez v7, :cond_1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    const-wide v7, 0x20b00000007L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    const-wide v9, 0x10500000001L

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    move v11, v3

    .line 74
    :goto_1
    if-ge v11, v5, :cond_3

    .line 75
    .line 76
    invoke-virtual {v6, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    invoke-virtual {v6, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    if-gtz v13, :cond_2

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    const-wide v14, 0x20b00000002L

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v14

    .line 96
    add-int/lit8 v12, v12, 0x1

    .line 97
    .line 98
    invoke-virtual {v0, v9, v10, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 99
    .line 100
    .line 101
    const-wide v9, 0x10500000002L

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v9, v10, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 110
    .line 111
    .line 112
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 113
    .line 114
    const-wide v9, 0x10500000001L

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    :goto_4
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

.method public static writeEvent(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageEvents$Event;)V
    .locals 14

    .line 1
    move-object v7, p0

    .line 2
    move-object/from16 v8, p3

    .line 3
    .line 4
    iget v0, v8, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    const-wide v9, 0x10500000001L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 14
    .line 15
    .line 16
    iget v0, v8, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    .line 17
    .line 18
    const-wide v11, 0x10500000002L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const/4 v13, -0x1

    .line 24
    if-eq v0, v13, :cond_0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const-wide v1, 0x10300000003L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    iget-wide v3, v8, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 37
    .line 38
    move-object v0, p0

    .line 39
    move-wide v5, p1

    .line 40
    invoke-static/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 41
    .line 42
    .line 43
    const-wide v0, 0x10500000004L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    iget v2, v8, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 49
    .line 50
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 51
    .line 52
    .line 53
    const-wide v0, 0x10500000005L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    iget v2, v8, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 59
    .line 60
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 61
    .line 62
    .line 63
    const-wide v0, 0x1050000000aL

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    iget v2, v8, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 69
    .line 70
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 71
    .line 72
    .line 73
    iget v0, v8, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    .line 74
    .line 75
    if-eq v0, v13, :cond_1

    .line 76
    .line 77
    const-wide v1, 0x1050000000bL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget v0, v8, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    .line 88
    .line 89
    if-eq v0, v13, :cond_2

    .line 90
    .line 91
    const-wide v1, 0x1050000000cL

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 97
    .line 98
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iget v0, v8, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 102
    .line 103
    const/4 v1, 0x5

    .line 104
    if-eq v0, v1, :cond_8

    .line 105
    .line 106
    const/16 v1, 0x1e

    .line 107
    .line 108
    if-eq v0, v1, :cond_7

    .line 109
    .line 110
    const/4 v1, 0x7

    .line 111
    if-eq v0, v1, :cond_6

    .line 112
    .line 113
    const/16 v1, 0x8

    .line 114
    .line 115
    if-eq v0, v1, :cond_5

    .line 116
    .line 117
    const/16 v1, 0xb

    .line 118
    .line 119
    if-eq v0, v1, :cond_4

    .line 120
    .line 121
    const/16 v1, 0xc

    .line 122
    .line 123
    if-eq v0, v1, :cond_3

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    iget v0, v8, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    .line 127
    .line 128
    if-eq v0, v13, :cond_9

    .line 129
    .line 130
    const-wide v1, 0x10500000009L

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 136
    .line 137
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_4
    iget v0, v8, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 142
    .line 143
    if-eqz v0, :cond_9

    .line 144
    .line 145
    const-wide v1, 0x10500000008L

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_5
    iget v0, v8, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    .line 155
    .line 156
    if-eq v0, v13, :cond_9

    .line 157
    .line 158
    const-wide v1, 0x10500000007L

    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 164
    .line 165
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_6
    iget-object v0, v8, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    .line 170
    .line 171
    if-eqz v0, :cond_9

    .line 172
    .line 173
    const-wide v1, 0x10b0000000eL

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 179
    .line 180
    .line 181
    move-result-wide v1

    .line 182
    iget v3, v0, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mCategoryToken:I

    .line 183
    .line 184
    add-int/lit8 v3, v3, 0x1

    .line 185
    .line 186
    invoke-virtual {p0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 187
    .line 188
    .line 189
    iget v0, v0, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mActionToken:I

    .line 190
    .line 191
    add-int/lit8 v0, v0, 0x1

    .line 192
    .line 193
    invoke-virtual {p0, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_7
    iget v0, v8, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    .line 201
    .line 202
    if-eq v0, v13, :cond_9

    .line 203
    .line 204
    const-wide v1, 0x1050000000dL

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    add-int/lit8 v0, v0, 0x1

    .line 210
    .line 211
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 212
    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_8
    iget-object v0, v8, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 216
    .line 217
    if-eqz v0, :cond_9

    .line 218
    .line 219
    const-wide v1, 0x10b00000006L

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 225
    .line 226
    .line 227
    :cond_9
    :goto_0
    return-void
.end method

.method public static writeGlobalComponentUsage(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, [Ljava/util/Map$Entry;

    .line 15
    .line 16
    array-length p1, p0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, p1, :cond_1

    .line 19
    .line 20
    aget-object v2, p0, v1

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    const-wide/16 v4, 0x0

    .line 33
    .line 34
    cmp-long v2, v2, v4

    .line 35
    .line 36
    if-gtz v2, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const-wide v2, 0x20b00000018L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    aget-object v4, p0, v1

    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    const-wide v5, 0x10900000001L

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    aget-object v4, p0, v1

    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Ljava/lang/Long;

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v4

    .line 76
    const-wide v6, 0x10300000002L

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 85
    .line 86
    .line 87
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    return-void
.end method

.method public static writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V
    .locals 13

    .line 1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    iget p0, p1, Lcom/android/server/usage/PackagesTokenData;->counter:I

    .line 7
    .line 8
    const-wide v1, 0x10500000001L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    :goto_0
    if-ge v4, p0, :cond_1

    .line 25
    .line 26
    const-wide v5, 0x20b00000002L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    iget-object v7, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    add-int/lit8 v7, v7, 0x1

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 44
    .line 45
    .line 46
    iget-object v7, p1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    move v9, v3

    .line 59
    :goto_1
    if-ge v9, v8, :cond_0

    .line 60
    .line 61
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    check-cast v10, Ljava/lang/String;

    .line 66
    .line 67
    const-wide v11, 0x20900000002L

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v9, v9, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public static writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/server/usage/UsageStatsProtoV2;->ONE_HOUR_MS:J

    .line 2
    .line 3
    sub-long v0, p5, v0

    .line 4
    .line 5
    cmp-long v0, p3, v0

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    sub-long/2addr p3, p5

    .line 10
    const-wide/16 p5, 0x0

    .line 11
    .line 12
    cmp-long p5, p3, p5

    .line 13
    .line 14
    if-nez p5, :cond_0

    .line 15
    .line 16
    const-wide/16 p5, 0x1

    .line 17
    .line 18
    add-long/2addr p3, p5

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public static writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 2
    .line 3
    const-wide v1, 0x10900000001L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-wide v1, 0x10900000002L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    const-wide v0, 0x10300000003L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 31
    .line 32
    .line 33
    const-wide v0, 0x10500000004L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 41
    .line 42
    .line 43
    const-wide v0, 0x10500000005L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 49
    .line 50
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 51
    .line 52
    .line 53
    const-wide v0, 0x1050000000aL

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 59
    .line 60
    invoke-virtual {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    const-wide v1, 0x1090000000bL

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    const-wide v1, 0x1090000000cL

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 88
    .line 89
    const/4 v1, 0x5

    .line 90
    if-eq v0, v1, :cond_7

    .line 91
    .line 92
    const/4 v1, 0x7

    .line 93
    if-eq v0, v1, :cond_6

    .line 94
    .line 95
    const/16 v1, 0x8

    .line 96
    .line 97
    if-eq v0, v1, :cond_5

    .line 98
    .line 99
    const/16 v1, 0xb

    .line 100
    .line 101
    if-eq v0, v1, :cond_4

    .line 102
    .line 103
    const/16 v1, 0xc

    .line 104
    .line 105
    if-eq v0, v1, :cond_3

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz p1, :cond_8

    .line 111
    .line 112
    const-wide v0, 0x10900000009L

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 122
    .line 123
    if-eqz p1, :cond_8

    .line 124
    .line 125
    const-wide v0, 0x10500000008L

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 135
    .line 136
    if-eqz p1, :cond_8

    .line 137
    .line 138
    const-wide v0, 0x10900000007L

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_6
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    .line 148
    .line 149
    if-eqz v0, :cond_8

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/os/PersistableBundle;->size()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_8

    .line 156
    .line 157
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    .line 158
    .line 159
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 160
    .line 161
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const-wide v0, 0x10c0000000eL

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0, v1, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_7
    iget-object p1, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 181
    .line 182
    if-eqz p1, :cond_8

    .line 183
    .line 184
    const-wide v0, 0x10b00000006L

    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Configuration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 190
    .line 191
    .line 192
    :cond_8
    :goto_0
    return-void
.end method

.method public static writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, p0, :cond_0

    .line 12
    .line 13
    const-wide v2, 0x20b00000017L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    .line 27
    .line 28
    invoke-static {v0, v4}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvent(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageEvents$Event;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception v2

    .line 36
    const-string v3, "UsageStatsProtoV2"

    .line 37
    .line 38
    const-string v4, "Unable to write some pending events to proto."

    .line 39
    .line 40
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static writeUsageStats(Landroid/util/proto/ProtoOutputStream;JLandroid/app/usage/UsageStats;)V
    .locals 11

    .line 1
    iget v0, p3, Landroid/app/usage/UsageStats;->mPackageToken:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-wide v1, 0x10500000001L

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 11
    .line 12
    .line 13
    const-wide v4, 0x10300000003L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iget-wide v6, p3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 19
    .line 20
    move-object v3, p0

    .line 21
    move-wide v8, p1

    .line 22
    invoke-static/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 23
    .line 24
    .line 25
    const-wide v0, 0x10300000004L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    iget-wide v2, p3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 33
    .line 34
    .line 35
    const-wide v5, 0x10300000008L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    iget-wide v7, p3, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 41
    .line 42
    move-object v4, p0

    .line 43
    move-wide v9, p1

    .line 44
    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 45
    .line 46
    .line 47
    const-wide v0, 0x10300000009L

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    iget-wide v2, p3, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 53
    .line 54
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 55
    .line 56
    .line 57
    const-wide v5, 0x1030000000aL

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    iget-wide v7, p3, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 63
    .line 64
    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 65
    .line 66
    .line 67
    const-wide v0, 0x1030000000bL

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    iget-wide v2, p3, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 73
    .line 74
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 75
    .line 76
    .line 77
    const-wide v5, 0x1030000000cL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    iget-wide v7, p3, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 83
    .line 84
    invoke-static/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsProtoV2;->writeOffsetTimestamp(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 85
    .line 86
    .line 87
    const-wide p1, 0x10500000006L

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    iget v0, p3, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 93
    .line 94
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 95
    .line 96
    .line 97
    :try_start_0
    invoke-static {p0, p3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeChooserCounts(Landroid/util/proto/ProtoOutputStream;Landroid/app/usage/UsageStats;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception p0

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string p2, "Unable to write chooser counts for "

    .line 105
    .line 106
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string p2, "UsageStatsProtoV2"

    .line 119
    .line 120
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .line 122
    .line 123
    :goto_0
    return-void
.end method
