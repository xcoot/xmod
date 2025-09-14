.class public final Lcom/android/server/power/stats/SensorPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSensors:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/power/stats/SensorPowerCalculator;->mSensors:Landroid/util/SparseArray;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ge v0, v1, :cond_0

    .line 26
    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/hardware/Sensor;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/power/stats/SensorPowerCalculator;->mSensors:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x1

    .line 14
    sub-int/2addr v4, v5

    .line 15
    const-wide/16 v8, 0x0

    .line 16
    .line 17
    :goto_0
    const/4 v10, 0x0

    .line 18
    if-ltz v4, :cond_6

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v12

    .line 24
    check-cast v12, Landroid/os/UidBatteryConsumer$Builder;

    .line 25
    .line 26
    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    .line 27
    .line 28
    .line 29
    move-result v13

    .line 30
    if-nez v13, :cond_5

    .line 31
    .line 32
    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 33
    .line 34
    .line 35
    move-result-object v13

    .line 36
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    .line 37
    .line 38
    .line 39
    move-result-object v14

    .line 40
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    .line 41
    .line 42
    .line 43
    move-result v15

    .line 44
    move v6, v10

    .line 45
    move-object/from16 p7, v12

    .line 46
    .line 47
    const-wide/16 v11, 0x0

    .line 48
    .line 49
    :goto_1
    const-wide/16 v16, 0x0

    .line 50
    .line 51
    const-wide/16 v18, 0x3e8

    .line 52
    .line 53
    const/16 v7, -0x2710

    .line 54
    .line 55
    if-ge v6, v15, :cond_2

    .line 56
    .line 57
    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-ne v5, v7, :cond_0

    .line 62
    .line 63
    move-wide/from16 v22, v11

    .line 64
    .line 65
    move-object/from16 v12, p0

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_0
    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    check-cast v7, Landroid/os/BatteryStats$Uid$Sensor;

    .line 73
    .line 74
    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v7, v1, v2, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 79
    .line 80
    .line 81
    move-result-wide v20

    .line 82
    move-wide/from16 v22, v11

    .line 83
    .line 84
    div-long v10, v20, v18

    .line 85
    .line 86
    cmp-long v7, v10, v16

    .line 87
    .line 88
    move-object/from16 v12, p0

    .line 89
    .line 90
    if-eqz v7, :cond_1

    .line 91
    .line 92
    iget-object v7, v12, Lcom/android/server/power/stats/SensorPowerCalculator;->mSensors:Landroid/util/SparseArray;

    .line 93
    .line 94
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Landroid/hardware/Sensor;

    .line 99
    .line 100
    if-eqz v5, :cond_1

    .line 101
    .line 102
    long-to-float v7, v10

    .line 103
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getPower()F

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    mul-float/2addr v5, v7

    .line 108
    const v7, 0x4a5bba00    # 3600000.0f

    .line 109
    .line 110
    .line 111
    div-float/2addr v5, v7

    .line 112
    float-to-double v10, v5

    .line 113
    add-double v10, v22, v10

    .line 114
    .line 115
    move-wide/from16 v22, v10

    .line 116
    .line 117
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 118
    .line 119
    move-wide/from16 v11, v22

    .line 120
    .line 121
    const/4 v5, 0x1

    .line 122
    const/4 v10, 0x0

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    move-wide/from16 v22, v11

    .line 125
    .line 126
    move-object/from16 v12, p0

    .line 127
    .line 128
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    move-wide/from16 v10, v16

    .line 137
    .line 138
    const/4 v13, 0x0

    .line 139
    :goto_3
    if-ge v13, v6, :cond_4

    .line 140
    .line 141
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->keyAt(I)I

    .line 142
    .line 143
    .line 144
    move-result v14

    .line 145
    if-ne v14, v7, :cond_3

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_3
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v14

    .line 152
    check-cast v14, Landroid/os/BatteryStats$Uid$Sensor;

    .line 153
    .line 154
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    const/4 v15, 0x0

    .line 159
    invoke-virtual {v14, v1, v2, v15}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    .line 160
    .line 161
    .line 162
    move-result-wide v16

    .line 163
    div-long v16, v16, v18

    .line 164
    .line 165
    add-long v16, v16, v10

    .line 166
    .line 167
    move-wide/from16 v10, v16

    .line 168
    .line 169
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_4
    move-object/from16 v14, p7

    .line 173
    .line 174
    const/16 v13, 0x9

    .line 175
    .line 176
    invoke-virtual {v14, v13, v10, v11}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    .line 181
    .line 182
    move-wide/from16 v6, v22

    .line 183
    .line 184
    invoke-virtual {v5, v13, v6, v7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 185
    .line 186
    .line 187
    add-double/2addr v8, v6

    .line 188
    goto :goto_5

    .line 189
    :cond_5
    move-object/from16 v12, p0

    .line 190
    .line 191
    :goto_5
    add-int/lit8 v4, v4, -0x1

    .line 192
    .line 193
    const/4 v5, 0x1

    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_6
    move v4, v10

    .line 197
    const/16 v13, 0x9

    .line 198
    .line 199
    invoke-virtual {v0, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v1, v13, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 204
    .line 205
    .line 206
    const/4 v1, 0x1

    .line 207
    invoke-virtual {v0, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0, v13, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/16 p0, 0x9

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method
