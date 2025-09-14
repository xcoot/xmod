.class public final Lcom/android/server/usage/UserUsageStatsService$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# instance fields
.field public final synthetic val$beginTime:J

.field public final synthetic val$endTime:J

.field public final synthetic val$flags:I

.field public final synthetic val$isQueryForAllEvents:Z

.field public final synthetic val$isQueryForAllPackages:Z

.field public final synthetic val$names:Landroid/util/ArraySet;

.field public final synthetic val$pkgNameFilter:Landroid/util/ArraySet;

.field public final synthetic val$queryEventFilter:[Z


# direct methods
.method public constructor <init>(JJZ[ZIZLandroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$beginTime:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$endTime:J

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$isQueryForAllEvents:Z

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$queryEventFilter:[Z

    .line 11
    .line 12
    iput p7, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    .line 13
    .line 14
    iput-boolean p8, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$isQueryForAllPackages:Z

    .line 15
    .line 16
    iput-object p9, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$pkgNameFilter:Landroid/util/ArraySet;

    .line 17
    .line 18
    iput-object p10, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .locals 8

    .line 1
    iget-object p2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$beginTime:J

    .line 4
    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    const/4 v1, 0x1

    .line 16
    if-ge p2, v0, :cond_c

    .line 17
    .line 18
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 19
    .line 20
    invoke-virtual {v2, p2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-wide v3, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 25
    .line 26
    iget-wide v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$endTime:J

    .line 27
    .line 28
    cmp-long v3, v3, v5

    .line 29
    .line 30
    if-ltz v3, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_0
    iget v3, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 35
    .line 36
    iget-boolean v4, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$isQueryForAllEvents:Z

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$queryEventFilter:[Z

    .line 41
    .line 42
    aget-boolean v4, v4, v3

    .line 43
    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v4, 0x8

    .line 48
    .line 49
    iget v5, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$flags:I

    .line 50
    .line 51
    if-ne v3, v4, :cond_2

    .line 52
    .line 53
    and-int/lit8 v6, v5, 0x2

    .line 54
    .line 55
    const/4 v7, 0x2

    .line 56
    if-ne v6, v7, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/16 v6, 0x1e

    .line 60
    .line 61
    if-ne v3, v6, :cond_3

    .line 62
    .line 63
    and-int/lit8 v6, v5, 0x8

    .line 64
    .line 65
    if-ne v6, v4, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/16 v4, 0xa

    .line 69
    .line 70
    if-eq v3, v4, :cond_4

    .line 71
    .line 72
    const/16 v4, 0xc

    .line 73
    .line 74
    if-ne v3, v4, :cond_5

    .line 75
    .line 76
    :cond_4
    and-int/lit8 v3, v5, 0x4

    .line 77
    .line 78
    const/4 v4, 0x4

    .line 79
    if-ne v3, v4, :cond_5

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getObfuscatedNotificationEvent()Landroid/app/usage/UsageEvents$Event;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :cond_5
    and-int/lit8 v3, v5, 0x1

    .line 86
    .line 87
    if-ne v3, v1, :cond_6

    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getObfuscatedIfInstantApp()Landroid/app/usage/UsageEvents$Event;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$isQueryForAllPackages:Z

    .line 94
    .line 95
    if-nez v1, :cond_7

    .line 96
    .line 97
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$pkgNameFilter:Landroid/util/ArraySet;

    .line 98
    .line 99
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_7

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_7
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 109
    .line 110
    if-eqz v1, :cond_8

    .line 111
    .line 112
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    .line 113
    .line 114
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_8
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 118
    .line 119
    if-eqz v1, :cond_9

    .line 120
    .line 121
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    .line 122
    .line 123
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_9
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 127
    .line 128
    if-eqz v1, :cond_a

    .line 129
    .line 130
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    .line 131
    .line 132
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_a
    iget-object v1, v2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v1, :cond_b

    .line 138
    .line 139
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$names:Landroid/util/ArraySet;

    .line 140
    .line 141
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :cond_b
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_c
    return v1
.end method
