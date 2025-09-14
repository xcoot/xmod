.class public final Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public mChannels:Ljava/util/Map;

.field public mEntityNames:Ljava/util/Map;

.field public mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

.field public mStateNames:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v8, p1

    .line 3
    .line 4
    move-object/from16 v9, p2

    .line 5
    .line 6
    const/16 v1, 0x2715

    .line 7
    .line 8
    const-string v2, "StatsPullAtomCallbackImpl"

    .line 9
    .line 10
    const-wide/16 v3, 0x7d0

    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eq v8, v1, :cond_4

    .line 15
    .line 16
    const/16 v1, 0x2736

    .line 17
    .line 18
    if-ne v8, v1, :cond_3

    .line 19
    .line 20
    :try_start_0
    iget-object v1, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 21
    .line 22
    new-array v6, v10, [I

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v7, Ljava/util/concurrent/CompletableFuture;

    .line 28
    .line 29
    invoke-direct {v7}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v11, v1, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 33
    .line 34
    invoke-static {v11}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    new-instance v12, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 v13, 0x1

    .line 41
    invoke-direct {v12, v1, v7, v6, v13}, Lcom/android/server/powerstats/PowerStatsService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/powerstats/PowerStatsService$LocalService;Ljava/util/concurrent/CompletableFuture;[II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 48
    .line 49
    invoke-virtual {v7, v3, v4, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v11, v1

    .line 54
    check-cast v11, [Landroid/hardware/power/stats/EnergyMeasurement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    if-nez v11, :cond_0

    .line 57
    .line 58
    :goto_0
    move v10, v5

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    move v12, v10

    .line 61
    :goto_1
    array-length v1, v11

    .line 62
    if-ge v12, v1, :cond_2

    .line 63
    .line 64
    aget-object v1, v11, v12

    .line 65
    .line 66
    iget-wide v2, v1, Landroid/hardware/power/stats/EnergyMeasurement;->durationMs:J

    .line 67
    .line 68
    iget-wide v4, v1, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    .line 69
    .line 70
    cmp-long v2, v2, v4

    .line 71
    .line 72
    if-nez v2, :cond_1

    .line 73
    .line 74
    iget-object v2, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mChannels:Ljava/util/Map;

    .line 75
    .line 76
    iget v3, v1, Landroid/hardware/power/stats/EnergyMeasurement;->id:I

    .line 77
    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v2, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Landroid/hardware/power/stats/Channel;

    .line 89
    .line 90
    iget-object v2, v2, Landroid/hardware/power/stats/Channel;->subsystem:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mChannels:Ljava/util/Map;

    .line 93
    .line 94
    iget v4, v1, Landroid/hardware/power/stats/EnergyMeasurement;->id:I

    .line 95
    .line 96
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v3, Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Landroid/hardware/power/stats/Channel;

    .line 107
    .line 108
    iget-object v3, v3, Landroid/hardware/power/stats/Channel;->name:Ljava/lang/String;

    .line 109
    .line 110
    iget-wide v4, v1, Landroid/hardware/power/stats/EnergyMeasurement;->durationMs:J

    .line 111
    .line 112
    iget-wide v6, v1, Landroid/hardware/power/stats/EnergyMeasurement;->energyUWs:J

    .line 113
    .line 114
    move/from16 v1, p1

    .line 115
    .line 116
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;Ljava/lang/String;JJ)Landroid/util/StatsEvent;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :cond_1
    add-int/lit8 v12, v12, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "Failed to readEnergyMeterAsync"

    .line 128
    .line 129
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    :goto_2
    return v10

    .line 134
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 135
    .line 136
    const-string v1, "Unknown tagId="

    .line 137
    .line 138
    invoke-static {v8, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_4
    :try_start_1
    iget-object v1, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 147
    .line 148
    new-array v6, v10, [I

    .line 149
    .line 150
    invoke-virtual {v1, v6}, Lcom/android/server/powerstats/PowerStatsService$LocalService;->getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 155
    .line 156
    invoke-virtual {v1, v3, v4, v6}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    move-object v11, v1

    .line 161
    check-cast v11, [Landroid/hardware/power/stats/StateResidencyResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    .line 163
    if-nez v11, :cond_5

    .line 164
    .line 165
    :goto_3
    move v10, v5

    .line 166
    goto :goto_6

    .line 167
    :cond_5
    move v12, v10

    .line 168
    :goto_4
    array-length v1, v11

    .line 169
    if-ge v12, v1, :cond_7

    .line 170
    .line 171
    aget-object v13, v11, v12

    .line 172
    .line 173
    move v14, v10

    .line 174
    :goto_5
    iget-object v1, v13, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    .line 175
    .line 176
    array-length v2, v1

    .line 177
    if-ge v14, v2, :cond_6

    .line 178
    .line 179
    aget-object v1, v1, v14

    .line 180
    .line 181
    iget-object v2, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mEntityNames:Ljava/util/Map;

    .line 182
    .line 183
    iget v3, v13, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    .line 184
    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v2, Ljava/util/HashMap;

    .line 190
    .line 191
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Ljava/lang/String;

    .line 196
    .line 197
    iget-object v3, v0, Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;->mStateNames:Ljava/util/Map;

    .line 198
    .line 199
    iget v4, v13, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    .line 200
    .line 201
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    check-cast v3, Ljava/util/HashMap;

    .line 206
    .line 207
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    check-cast v3, Ljava/util/Map;

    .line 212
    .line 213
    iget v4, v1, Landroid/hardware/power/stats/StateResidency;->id:I

    .line 214
    .line 215
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    check-cast v3, Ljava/lang/String;

    .line 224
    .line 225
    iget-wide v4, v1, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    .line 226
    .line 227
    iget-wide v6, v1, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    .line 228
    .line 229
    move/from16 v1, p1

    .line 230
    .line 231
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;Ljava/lang/String;JJ)Landroid/util/StatsEvent;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    add-int/lit8 v14, v14, 0x1

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :catch_1
    move-exception v0

    .line 245
    const-string v1, "Failed to getStateResidencyAsync"

    .line 246
    .line 247
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_7
    :goto_6
    return v10
.end method
