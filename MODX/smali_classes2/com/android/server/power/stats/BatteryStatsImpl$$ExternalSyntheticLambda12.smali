.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lcom/android/internal/app/IBatteryStatsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/util/List;JLcom/android/internal/app/IBatteryStatsCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda12;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda12;->f$2:J

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda12;->f$3:Lcom/android/internal/app/IBatteryStatsCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda12;->f$1:Ljava/util/List;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda12;->f$2:J

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda12;->f$3:Lcom/android/internal/app/IBatteryStatsCallback;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;

    .line 29
    .line 30
    iget-wide v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mRxPackets:J

    .line 31
    .line 32
    const-wide/16 v7, 0x0

    .line 33
    .line 34
    cmp-long v5, v5, v7

    .line 35
    .line 36
    if-nez v5, :cond_0

    .line 37
    .line 38
    iget-wide v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mTxPackets:J

    .line 39
    .line 40
    cmp-long v5, v5, v7

    .line 41
    .line 42
    if-nez v5, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mUid:I

    .line 46
    .line 47
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNetworkStatsDeltaMap:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_1

    .line 58
    .line 59
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNetworkStatsDeltaMap:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    new-instance v8, Landroid/os/SemSimpleNetworkStats;

    .line 66
    .line 67
    iget v9, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mUid:I

    .line 68
    .line 69
    invoke-direct {v8, v9}, Landroid/os/SemSimpleNetworkStats;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNetworkStatsDeltaMap:Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    move-object v12, v6

    .line 86
    check-cast v12, Landroid/os/SemSimpleNetworkStats;

    .line 87
    .line 88
    new-instance v13, Landroid/os/SemSimpleNetworkStats;

    .line 89
    .line 90
    iget-wide v8, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mTxBytes:J

    .line 91
    .line 92
    iget-wide v10, v4, Lcom/android/server/power/stats/BatteryStatsImpl$NetworkStatsDelta;->mRxBytes:J

    .line 93
    .line 94
    move-object v6, v13

    .line 95
    move v7, v5

    .line 96
    invoke-direct/range {v6 .. v11}, Landroid/os/SemSimpleNetworkStats;-><init>(IJJ)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v12, v13}, Landroid/os/SemSimpleNetworkStats;->add(Landroid/os/SemSimpleNetworkStats;)V

    .line 100
    .line 101
    .line 102
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNetworkStatsDeltaMap:Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v4, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    iget-wide v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mLastCallbackTime:J

    .line 113
    .line 114
    sub-long v4, v2, v4

    .line 115
    .line 116
    const-wide/32 v6, 0xea60

    .line 117
    .line 118
    .line 119
    cmp-long v1, v4, v6

    .line 120
    .line 121
    if-lez v1, :cond_4

    .line 122
    .line 123
    new-instance v1, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNetworkStatsDeltaMap:Ljava/util/HashMap;

    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_3

    .line 143
    .line 144
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    check-cast v5, Ljava/lang/Integer;

    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNetworkStatsDeltaMap:Ljava/util/HashMap;

    .line 154
    .line 155
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    check-cast v5, Landroid/os/SemSimpleNetworkStats;

    .line 160
    .line 161
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_3
    new-instance v4, Lcom/android/server/power/stats/BatteryStatsImpl$UsageComparator;

    .line 166
    .line 167
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    const/16 v5, 0xa

    .line 178
    .line 179
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    const/4 v5, 0x0

    .line 184
    invoke-virtual {v1, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-interface {p0, v1}, Lcom/android/internal/app/IBatteryStatsCallback;->notifyNetworkStatsUpdated(Ljava/util/List;)V

    .line 189
    .line 190
    .line 191
    iput-wide v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mLastCallbackTime:J

    .line 192
    .line 193
    iget-object p0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNetworkStatsDeltaMap:Ljava/util/HashMap;

    .line 194
    .line 195
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :catch_0
    const-string p0, "BatteryStatsImpl"

    .line 200
    .line 201
    const-string v0, "Callback failed to call"

    .line 202
    .line 203
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :cond_4
    :goto_2
    return-void
.end method
