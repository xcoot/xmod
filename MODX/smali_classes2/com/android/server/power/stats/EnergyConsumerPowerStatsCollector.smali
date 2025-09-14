.class public Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

.field public mEnergyConsumerIds:[I

.field public final mEnergyConsumerName:Ljava/lang/String;

.field public final mEnergyConsumerType:I

.field public mFirstCollection:Z

.field public final mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

.field public mIsInitialized:Z

.field public mLastConsumedEnergyUws:J

.field public final mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

.field public mLastUpdateTimestamp:J

.field public mLastVoltageMv:I

.field public final mLayout:Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;

.field public final mPowerComponentId:I

.field public final mPowerComponentName:Ljava/lang/String;

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

.field public mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;ILjava/lang/String;ILcom/android/server/power/stats/BinaryStatePowerStatsLayout;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 2
    invoke-virtual {p1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v3

    .line 3
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 4
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    move-object v1, p0

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastConsumedEnergyUws:J

    .line 7
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mFirstCollection:Z

    .line 9
    iput-object p1, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 10
    iput p2, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentId:I

    .line 11
    iput-object p3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentName:Ljava/lang/String;

    .line 12
    iput p4, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerType:I

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerName:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;ILjava/lang/String;ILcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;)V
    .locals 7

    .line 15
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 16
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 17
    invoke-virtual {p1, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v3

    .line 18
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 19
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    move-object v1, p0

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    const-wide/16 v0, -0x1

    .line 21
    iput-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastConsumedEnergyUws:J

    .line 22
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mFirstCollection:Z

    .line 24
    iput-object p1, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 25
    iput p2, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentId:I

    .line 26
    iput-object p3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentName:Ljava/lang/String;

    .line 27
    filled-new-array {p4}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerIds:[I

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerType:I

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerName:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;

    return-void
.end method


# virtual methods
.method public final collectStats()Lcom/android/internal/os/PowerStats;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mIsInitialized:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/EnergyConsumerPowerStatsLayout;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    return-object v3

    .line 17
    :cond_1
    iget-object v1, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 18
    .line 19
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 20
    .line 21
    iput-object v5, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 22
    .line 23
    new-instance v6, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v6, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V

    .line 26
    .line 27
    .line 28
    iput-object v6, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    iget v1, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerType:I

    .line 35
    .line 36
    iget-object v6, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v5, v1, v6}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->getEnergyConsumerIds(ILjava/lang/String;)[I

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 43
    .line 44
    :cond_2
    new-instance v12, Landroid/os/PersistableBundle;

    .line 45
    .line 46
    invoke-direct {v12}, Landroid/os/PersistableBundle;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v12}, Lcom/android/server/power/stats/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/android/internal/os/PowerStats$Descriptor;

    .line 53
    .line 54
    iget v8, v4, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceStatsArrayLength:I

    .line 55
    .line 56
    iget v11, v4, Lcom/android/server/power/stats/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 57
    .line 58
    iget v6, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentId:I

    .line 59
    .line 60
    iget-object v7, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentName:Ljava/lang/String;

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v10, 0x0

    .line 64
    move-object v5, v1

    .line 65
    invoke-direct/range {v5 .. v12}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 66
    .line 67
    .line 68
    new-instance v5, Lcom/android/internal/os/PowerStats;

    .line 69
    .line 70
    invoke-direct {v5, v1}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 71
    .line 72
    .line 73
    iput-object v5, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 74
    .line 75
    iput-boolean v2, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mIsInitialized:Z

    .line 76
    .line 77
    :goto_0
    iget-object v1, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 78
    .line 79
    array-length v5, v1

    .line 80
    if-nez v5, :cond_3

    .line 81
    .line 82
    return-object v3

    .line 83
    :cond_3
    iget-object v5, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 84
    .line 85
    invoke-virtual {v5, v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->getConsumedEnergy([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-wide/16 v5, 0x0

    .line 90
    .line 91
    const-wide/16 v7, -0x1

    .line 92
    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    array-length v9, v1

    .line 96
    sub-int/2addr v9, v2

    .line 97
    move-wide v10, v5

    .line 98
    :goto_1
    if-ltz v9, :cond_6

    .line 99
    .line 100
    aget-object v12, v1, v9

    .line 101
    .line 102
    iget-wide v12, v12, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    .line 103
    .line 104
    cmp-long v14, v12, v7

    .line 105
    .line 106
    if-eqz v14, :cond_4

    .line 107
    .line 108
    add-long/2addr v10, v12

    .line 109
    :cond_4
    add-int/lit8 v9, v9, -0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    move-wide v10, v5

    .line 113
    :cond_6
    iget-wide v12, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastConsumedEnergyUws:J

    .line 114
    .line 115
    cmp-long v9, v12, v7

    .line 116
    .line 117
    if-eqz v9, :cond_7

    .line 118
    .line 119
    sub-long v12, v10, v12

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_7
    move-wide v12, v5

    .line 123
    :goto_2
    iput-wide v10, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastConsumedEnergyUws:J

    .line 124
    .line 125
    cmp-long v9, v12, v5

    .line 126
    .line 127
    if-gez v9, :cond_8

    .line 128
    .line 129
    move-wide v12, v5

    .line 130
    :cond_8
    cmp-long v9, v12, v5

    .line 131
    .line 132
    if-nez v9, :cond_9

    .line 133
    .line 134
    iget-boolean v9, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mFirstCollection:Z

    .line 135
    .line 136
    if-nez v9, :cond_9

    .line 137
    .line 138
    return-object v3

    .line 139
    :cond_9
    iget-object v3, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;->getAsInt()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    const/4 v9, 0x0

    .line 146
    if-gtz v3, :cond_a

    .line 147
    .line 148
    new-instance v10, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v11, "Unexpected battery voltage ("

    .line 151
    .line 152
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v3, " mV) when querying energy consumers"

    .line 159
    .line 160
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    const-string v10, "EnergyConsumerPowerStatsCollector"

    .line 168
    .line 169
    invoke-static {v10, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move v3, v9

    .line 173
    :cond_a
    iget v10, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastVoltageMv:I

    .line 174
    .line 175
    if-eqz v10, :cond_b

    .line 176
    .line 177
    add-int/2addr v10, v3

    .line 178
    div-int/lit8 v10, v10, 0x2

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_b
    move v10, v3

    .line 182
    :goto_3
    iput v3, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastVoltageMv:I

    .line 183
    .line 184
    iget-object v3, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 185
    .line 186
    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 187
    .line 188
    invoke-static {v10, v12, v13}, Lcom/android/server/power/stats/PowerStatsCollector;->uJtoUc(IJ)J

    .line 189
    .line 190
    .line 191
    move-result-wide v11

    .line 192
    invoke-virtual {v4, v3, v9, v11, v12}, Lcom/android/server/power/stats/PowerStatsLayout;->setConsumedEnergy([JIJ)V

    .line 193
    .line 194
    .line 195
    iget-object v3, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 196
    .line 197
    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 198
    .line 199
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    sub-int/2addr v3, v2

    .line 204
    :goto_4
    if-ltz v3, :cond_c

    .line 205
    .line 206
    iget-object v11, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 207
    .line 208
    iget-object v11, v11, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 209
    .line 210
    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    check-cast v11, [J

    .line 215
    .line 216
    iget v12, v4, Lcom/android/server/power/stats/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 217
    .line 218
    aput-wide v5, v11, v12

    .line 219
    .line 220
    add-int/lit8 v3, v3, -0x1

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_c
    if-eqz v1, :cond_12

    .line 224
    .line 225
    array-length v3, v1

    .line 226
    sub-int/2addr v3, v2

    .line 227
    :goto_5
    if-ltz v3, :cond_12

    .line 228
    .line 229
    aget-object v2, v1, v3

    .line 230
    .line 231
    iget-object v2, v2, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    .line 232
    .line 233
    if-nez v2, :cond_e

    .line 234
    .line 235
    :cond_d
    move-wide v15, v5

    .line 236
    goto :goto_8

    .line 237
    :cond_e
    array-length v11, v2

    .line 238
    move v12, v9

    .line 239
    :goto_6
    if-ge v12, v11, :cond_d

    .line 240
    .line 241
    aget-object v13, v2, v12

    .line 242
    .line 243
    iget v14, v13, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    .line 244
    .line 245
    iget-object v15, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 246
    .line 247
    invoke-virtual {v15, v14}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    .line 248
    .line 249
    .line 250
    move-result v14

    .line 251
    iget-object v15, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    .line 252
    .line 253
    invoke-virtual {v15, v14, v7, v8}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 254
    .line 255
    .line 256
    move-result-wide v15

    .line 257
    iget-object v9, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    .line 258
    .line 259
    iget-wide v5, v13, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    .line 260
    .line 261
    invoke-virtual {v9, v14, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 262
    .line 263
    .line 264
    cmp-long v5, v15, v7

    .line 265
    .line 266
    if-nez v5, :cond_f

    .line 267
    .line 268
    const-wide/16 v15, 0x0

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_f
    iget-wide v5, v13, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    .line 272
    .line 273
    sub-long/2addr v5, v15

    .line 274
    const-wide/16 v15, 0x0

    .line 275
    .line 276
    cmp-long v9, v5, v15

    .line 277
    .line 278
    if-gtz v9, :cond_10

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_10
    iget-object v9, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 282
    .line 283
    iget-object v9, v9, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 284
    .line 285
    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    check-cast v9, [J

    .line 290
    .line 291
    if-nez v9, :cond_11

    .line 292
    .line 293
    iget v9, v4, Lcom/android/server/power/stats/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 294
    .line 295
    new-array v9, v9, [J

    .line 296
    .line 297
    iget-object v13, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 298
    .line 299
    iget-object v13, v13, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 300
    .line 301
    invoke-virtual {v13, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    :cond_11
    iget v13, v4, Lcom/android/server/power/stats/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 305
    .line 306
    aget-wide v13, v9, v13

    .line 307
    .line 308
    invoke-static {v10, v5, v6}, Lcom/android/server/power/stats/PowerStatsCollector;->uJtoUc(IJ)J

    .line 309
    .line 310
    .line 311
    move-result-wide v5

    .line 312
    add-long/2addr v5, v13

    .line 313
    iget v13, v4, Lcom/android/server/power/stats/PowerStatsLayout;->mUidEnergyConsumerPosition:I

    .line 314
    .line 315
    aput-wide v5, v9, v13

    .line 316
    .line 317
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 318
    .line 319
    move-wide v5, v15

    .line 320
    const/4 v9, 0x0

    .line 321
    goto :goto_6

    .line 322
    :goto_8
    add-int/lit8 v3, v3, -0x1

    .line 323
    .line 324
    move-wide v5, v15

    .line 325
    const/4 v9, 0x0

    .line 326
    goto :goto_5

    .line 327
    :cond_12
    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    .line 328
    .line 329
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 330
    .line 331
    .line 332
    move-result-wide v1

    .line 333
    iget-object v3, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 334
    .line 335
    iget-wide v4, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastUpdateTimestamp:J

    .line 336
    .line 337
    sub-long v4, v1, v4

    .line 338
    .line 339
    iput-wide v4, v3, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 340
    .line 341
    iput-wide v1, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastUpdateTimestamp:J

    .line 342
    .line 343
    const/4 v1, 0x0

    .line 344
    iput-boolean v1, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mFirstCollection:Z

    .line 345
    .line 346
    return-object v3
.end method

.method public final onUidRemoved(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
