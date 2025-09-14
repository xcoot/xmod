.class public final Lcom/android/server/usage/IntervalStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public activeConfiguration:Landroid/content/res/Configuration;

.field public beginTime:J

.field public final configurations:Landroid/util/ArrayMap;

.field public endTime:J

.field public final events:Landroid/app/usage/EventList;

.field public final interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public lastTimeSaved:J

.field public final mStringCache:Landroid/util/ArraySet;

.field public majorVersion:I

.field public minorVersion:I

.field public final nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

.field public final packageStats:Landroid/util/ArrayMap;

.field public final packageStatsObfuscated:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/server/usage/IntervalStats;->majorVersion:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/usage/IntervalStats;->minorVersion:I

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 22
    .line 23
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 29
    .line 30
    new-instance v0, Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 36
    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 43
    .line 44
    new-instance v0, Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    .line 50
    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 57
    .line 58
    new-instance v0, Landroid/app/usage/EventList;

    .line 59
    .line 60
    invoke-direct {v0}, Landroid/app/usage/EventList;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 64
    .line 65
    new-instance v0, Landroid/util/ArraySet;

    .line 66
    .line 67
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public addEvent(Landroid/app/usage/UsageEvents$Event;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 38
    .line 39
    :cond_2
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 40
    .line 41
    const/16 v1, 0xc

    .line 42
    .line 43
    if-ne v0, v1, :cond_3

    .line 44
    .line 45
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/app/usage/EventList;->insert(Landroid/app/usage/UsageEvents$Event;)V

    .line 56
    .line 57
    .line 58
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 59
    .line 60
    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 61
    .line 62
    cmp-long p1, v0, v2

    .line 63
    .line 64
    if-lez p1, :cond_4

    .line 65
    .line 66
    iput-wide v0, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 67
    .line 68
    :cond_4
    return-void
.end method

.method public final getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    return-object p0
.end method

.method public final getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/usage/ConfigurationStats;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/app/usage/ConfigurationStats;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 17
    .line 18
    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    .line 19
    .line 20
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 21
    .line 22
    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    .line 23
    .line 24
    iput-object p1, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v0
.end method

.method public final getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/usage/UsageStats;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/app/usage/UsageStats;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 21
    .line 22
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 23
    .line 24
    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 25
    .line 26
    iget-wide v1, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 27
    .line 28
    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object v0
.end method

.method public final obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    const/4 v5, -0x1

    .line 13
    if-ge v4, v2, :cond_5

    .line 14
    .line 15
    iget-object v6, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    check-cast v6, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v7, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    check-cast v7, Landroid/app/usage/UsageStats;

    .line 30
    .line 31
    if-nez v7, :cond_0

    .line 32
    .line 33
    goto :goto_4

    .line 34
    :cond_0
    iget-wide v8, v7, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 35
    .line 36
    invoke-virtual {v1, v8, v9, v6}, Lcom/android/server/usage/PackagesTokenData;->getPackageTokenOrAdd(JLjava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-ne v8, v5, :cond_1

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_1
    iput v8, v7, Landroid/app/usage/UsageStats;->mPackageToken:I

    .line 44
    .line 45
    iget-object v5, v7, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/4 v9, 0x0

    .line 52
    :goto_1
    if-ge v9, v5, :cond_4

    .line 53
    .line 54
    iget-object v10, v7, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    check-cast v10, Ljava/lang/String;

    .line 61
    .line 62
    iget-object v11, v7, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    check-cast v11, Landroid/util/ArrayMap;

    .line 69
    .line 70
    if-nez v11, :cond_2

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_2
    new-instance v12, Landroid/util/SparseIntArray;

    .line 74
    .line 75
    invoke-direct {v12}, Landroid/util/SparseIntArray;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    const/4 v14, 0x0

    .line 83
    :goto_2
    if-ge v14, v13, :cond_3

    .line 84
    .line 85
    invoke-virtual {v11, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    check-cast v15, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, v8, v6, v15}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    invoke-virtual {v11, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v16

    .line 99
    check-cast v16, Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {v12, v15, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    .line 107
    .line 108
    add-int/lit8 v14, v14, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    invoke-virtual {v1, v8, v6, v10}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    iget-object v10, v7, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 116
    .line 117
    invoke-virtual {v10, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    iget-object v3, v0, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    .line 124
    .line 125
    invoke-virtual {v3, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_5
    iget-object v2, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 132
    .line 133
    invoke-virtual {v2}, Landroid/app/usage/EventList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    add-int/lit8 v2, v2, -0x1

    .line 138
    .line 139
    :goto_5
    if-ltz v2, :cond_10

    .line 140
    .line 141
    iget-object v3, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 142
    .line 143
    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    if-nez v3, :cond_6

    .line 148
    .line 149
    goto/16 :goto_6

    .line 150
    .line 151
    :cond_6
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 152
    .line 153
    iget-wide v6, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 154
    .line 155
    invoke-virtual {v1, v6, v7, v4}, Lcom/android/server/usage/PackagesTokenData;->getPackageTokenOrAdd(JLjava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-ne v4, v5, :cond_7

    .line 160
    .line 161
    iget-object v3, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 162
    .line 163
    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    .line 164
    .line 165
    .line 166
    goto/16 :goto_6

    .line 167
    .line 168
    :cond_7
    iput v4, v3, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 169
    .line 170
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-nez v6, :cond_8

    .line 177
    .line 178
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v7, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v1, v4, v6, v7}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    iput v6, v3, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    .line 187
    .line 188
    :cond_8
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-nez v6, :cond_9

    .line 195
    .line 196
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v7, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v1, v4, v6, v7}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    iput v6, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    .line 205
    .line 206
    :cond_9
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-nez v6, :cond_a

    .line 213
    .line 214
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v7, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v1, v4, v6, v7}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    iput v6, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    .line 223
    .line 224
    :cond_a
    iget v6, v3, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 225
    .line 226
    const/4 v7, 0x7

    .line 227
    if-eq v6, v7, :cond_e

    .line 228
    .line 229
    const/16 v7, 0x8

    .line 230
    .line 231
    if-eq v6, v7, :cond_d

    .line 232
    .line 233
    const/16 v7, 0xc

    .line 234
    .line 235
    if-eq v6, v7, :cond_c

    .line 236
    .line 237
    const/16 v7, 0x1e

    .line 238
    .line 239
    if-eq v6, v7, :cond_b

    .line 240
    .line 241
    goto/16 :goto_6

    .line 242
    .line 243
    :cond_b
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 244
    .line 245
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-nez v6, :cond_f

    .line 250
    .line 251
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 252
    .line 253
    iget-object v7, v3, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v1, v4, v6, v7}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    iput v4, v3, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_c
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 263
    .line 264
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    if-nez v6, :cond_f

    .line 269
    .line 270
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 271
    .line 272
    iget-object v7, v3, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v1, v4, v6, v7}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    iput v4, v3, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_d
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    if-nez v6, :cond_f

    .line 288
    .line 289
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 290
    .line 291
    iget-object v7, v3, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v1, v4, v6, v7}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    iput v4, v3, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_e
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    .line 301
    .line 302
    if-eqz v6, :cond_f

    .line 303
    .line 304
    invoke-virtual {v6}, Landroid/os/PersistableBundle;->size()I

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    if-eqz v6, :cond_f

    .line 309
    .line 310
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    .line 311
    .line 312
    const-string v7, "android.app.usage.extra.EVENT_CATEGORY"

    .line 313
    .line 314
    invoke-virtual {v6, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    iget-object v7, v3, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    .line 319
    .line 320
    const-string v8, "android.app.usage.extra.EVENT_ACTION"

    .line 321
    .line 322
    invoke-virtual {v7, v8}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result v8

    .line 330
    if-nez v8, :cond_f

    .line 331
    .line 332
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    if-nez v8, :cond_f

    .line 337
    .line 338
    new-instance v8, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    .line 339
    .line 340
    invoke-direct {v8}, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;-><init>()V

    .line 341
    .line 342
    .line 343
    iput-object v8, v3, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    .line 344
    .line 345
    iget-object v9, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 346
    .line 347
    invoke-virtual {v1, v4, v9, v6}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    iput v6, v8, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mCategoryToken:I

    .line 352
    .line 353
    iget-object v6, v3, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    .line 354
    .line 355
    iget-object v3, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 356
    .line 357
    invoke-virtual {v1, v4, v3, v7}, Lcom/android/server/usage/PackagesTokenData;->getTokenOrAdd(ILjava/lang/String;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    iput v3, v6, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mActionToken:I

    .line 362
    .line 363
    :cond_f
    :goto_6
    add-int/lit8 v2, v2, -0x1

    .line 364
    .line 365
    goto/16 :goto_5

    .line 366
    .line 367
    :cond_10
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 7

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    if-eq p5, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x19

    .line 6
    .line 7
    if-ne p5, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    move-object v2, p2

    .line 15
    move-wide v3, p3

    .line 16
    move v5, p5

    .line 17
    move v6, p6

    .line 18
    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStats;->update(Ljava/lang/String;JII)V

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x0

    .line 29
    :goto_1
    if-ge p2, p1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v1, v0

    .line 38
    check-cast v1, Landroid/app/usage/UsageStats;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    move-wide v3, p3

    .line 42
    move v5, p5

    .line 43
    move v6, p6

    .line 44
    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStats;->update(Ljava/lang/String;JII)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_2
    iget-wide p1, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 51
    .line 52
    cmp-long p1, p3, p1

    .line 53
    .line 54
    if-lez p1, :cond_3

    .line 55
    .line 56
    iput-wide p3, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method public final updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p1, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-gez p1, :cond_1

    .line 23
    .line 24
    new-instance p1, Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {p0, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    move-object p1, p0

    .line 42
    check-cast p1, Landroid/util/ArrayMap;

    .line 43
    .line 44
    :goto_0
    const/4 p0, 0x0

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    add-int/lit8 p0, p0, 0x1

    .line 60
    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final updateConfigurationStats(Landroid/content/res/Configuration;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/usage/ConfigurationStats;

    .line 12
    .line 13
    iget-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 14
    .line 15
    iget-wide v3, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 16
    .line 17
    sub-long v3, p2, v3

    .line 18
    .line 19
    add-long/2addr v3, v1

    .line 20
    iput-wide v3, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 21
    .line 22
    const-wide/16 v1, 0x1

    .line 23
    .line 24
    sub-long v1, p2, v1

    .line 25
    .line 26
    iput-wide v1, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 27
    .line 28
    :cond_0
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-wide p2, p1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 35
    .line 36
    iget v0, p1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    iput v0, p1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 41
    .line 42
    iget-object p1, p1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 45
    .line 46
    :cond_1
    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 47
    .line 48
    cmp-long p1, p2, v0

    .line 49
    .line 50
    if-lez p1, :cond_2

    .line 51
    .line 52
    iput-wide p2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 53
    .line 54
    :cond_2
    return-void
.end method
