.class public final Lcom/android/server/usage/UserUsageStatsService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/usage/UserUsageStatsService$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .locals 8

    .line 1
    iget v1, p0, Lcom/android/server/usage/UserUsageStatsService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 7
    .line 8
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 11
    .line 12
    const/16 v3, 0xf

    .line 13
    .line 14
    move-object v2, p3

    .line 15
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 16
    .line 17
    .line 18
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 19
    .line 20
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 21
    .line 22
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 23
    .line 24
    const/16 v3, 0x10

    .line 25
    .line 26
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 27
    .line 28
    .line 29
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 30
    .line 31
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 32
    .line 33
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 34
    .line 35
    const/16 v3, 0x11

    .line 36
    .line 37
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 38
    .line 39
    .line 40
    iget-wide v3, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 41
    .line 42
    iget-wide v5, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 43
    .line 44
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    .line 45
    .line 46
    const/16 v2, 0x12

    .line 47
    .line 48
    move-object v1, p3

    .line 49
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/IntervalStats$EventTracker;->addToEventStats(Ljava/util/List;IJJ)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    return v0

    .line 54
    :pswitch_0
    const/4 v1, 0x1

    .line 55
    if-nez p2, :cond_0

    .line 56
    .line 57
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const/4 v3, 0x0

    .line 74
    :goto_0
    if-ge v3, v2, :cond_1

    .line 75
    .line 76
    new-instance v4, Landroid/app/usage/ConfigurationStats;

    .line 77
    .line 78
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Landroid/app/usage/ConfigurationStats;

    .line 85
    .line 86
    invoke-direct {v4, v5}, Landroid/app/usage/ConfigurationStats;-><init>(Landroid/app/usage/ConfigurationStats;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    :goto_1
    return v1

    .line 96
    :pswitch_1
    const/4 v1, 0x1

    .line 97
    if-nez p2, :cond_2

    .line 98
    .line 99
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_2
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 110
    .line 111
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    const/4 v3, 0x0

    .line 116
    :goto_2
    if-ge v3, v2, :cond_3

    .line 117
    .line 118
    new-instance v4, Landroid/app/usage/UsageStats;

    .line 119
    .line 120
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 121
    .line 122
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Landroid/app/usage/UsageStats;

    .line 127
    .line 128
    invoke-direct {v4, v5}, Landroid/app/usage/UsageStats;-><init>(Landroid/app/usage/UsageStats;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    :goto_3
    return v1

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
