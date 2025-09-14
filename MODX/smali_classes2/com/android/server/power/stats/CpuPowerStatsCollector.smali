.class public final Lcom/android/server/power/stats/CpuPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

.field public mCpuEnergyConsumerIds:[I

.field public mCpuPowerStats:Lcom/android/internal/os/PowerStats;

.field public mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public mCpuTimeByScalingStep:[J

.field public mDefaultCpuPowerBrackets:I

.field public mDefaultCpuPowerBracketsPerEnergyConsumer:I

.field public final mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

.field public mIsInitialized:Z

.field public mIsPerUidTimeInStateSupported:Z

.field public mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

.field public mLastConsumedEnergyUws:[J

.field public mLastUpdateTimestampNanos:J

.field public mLastUpdateUptimeMillis:J

.field public mLastVoltageMv:I

.field public mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

.field public mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mTempCpuTimeByScalingStep:[J

.field public mTempUidStats:[J

.field public final mUidStats:Landroid/util/SparseArray;

.field public mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 2
    .line 3
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    iget-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 15
    .line 16
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 17
    .line 18
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 19
    .line 20
    move-object v1, p0

    .line 21
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    new-array v0, v0, [I

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuEnergyConsumerIds:[I

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 37
    .line 38
    return-void
.end method

.method public static mapScalingStepsToDefaultBrackets([I[DI)V
    .locals 10

    .line 1
    array-length v0, p1

    .line 2
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide/16 v3, 0x1

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    move v6, v5

    .line 11
    :goto_0
    if-ge v6, v0, :cond_2

    .line 12
    .line 13
    aget-wide v7, p1, v6

    .line 14
    .line 15
    cmpg-double v9, v7, v1

    .line 16
    .line 17
    if-gez v9, :cond_0

    .line 18
    .line 19
    move-wide v1, v7

    .line 20
    :cond_0
    cmpl-double v9, v7, v3

    .line 21
    .line 22
    if-lez v9, :cond_1

    .line 23
    .line 24
    move-wide v3, v7

    .line 25
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    array-length v0, p1

    .line 29
    if-gt v0, p2, :cond_3

    .line 30
    .line 31
    :goto_1
    array-length p1, p0

    .line 32
    if-ge v5, p1, :cond_5

    .line 33
    .line 34
    aput v5, p0, v5

    .line 35
    .line 36
    add-int/lit8 v5, v5, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    sub-double/2addr v2, v0

    .line 48
    int-to-double v6, p2

    .line 49
    div-double/2addr v2, v6

    .line 50
    :goto_2
    array-length v4, p1

    .line 51
    if-ge v5, v4, :cond_5

    .line 52
    .line 53
    aget-wide v6, p1, v5

    .line 54
    .line 55
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    sub-double/2addr v6, v0

    .line 60
    div-double/2addr v6, v2

    .line 61
    double-to-int v4, v6

    .line 62
    if-lt v4, p2, :cond_4

    .line 63
    .line 64
    add-int/lit8 v4, p2, -0x1

    .line 65
    .line 66
    :cond_4
    aput v4, p0, v5

    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    return-void
.end method


# virtual methods
.method public final collectStats()Lcom/android/internal/os/PowerStats;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized$1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsPerUidTimeInStateSupported:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    .line 22
    .line 23
    new-instance v2, Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v2, p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/CpuPowerStatsCollector;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 29
    .line 30
    iget-object v3, v0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    .line 31
    .line 32
    iget-wide v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    .line 33
    .line 34
    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    .line 35
    .line 36
    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempUidStats:[J

    .line 37
    .line 38
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;->nativeReadCpuStats(Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsCallback;[IJ[J[J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 43
    .line 44
    iget v2, v2, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    .line 45
    .line 46
    add-int/lit8 v2, v2, -0x1

    .line 47
    .line 48
    :goto_0
    if-ltz v2, :cond_2

    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    .line 53
    .line 54
    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 55
    .line 56
    iget-object v5, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    .line 57
    .line 58
    aget-wide v6, v5, v2

    .line 59
    .line 60
    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuTimeByScalingStep:[J

    .line 61
    .line 62
    aget-wide v9, v8, v2

    .line 63
    .line 64
    sub-long/2addr v6, v9

    .line 65
    iget v3, v3, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    .line 66
    .line 67
    add-int/2addr v3, v2

    .line 68
    aput-wide v6, v4, v3

    .line 69
    .line 70
    aget-wide v3, v5, v2

    .line 71
    .line 72
    aput-wide v3, v8, v2

    .line 73
    .line 74
    add-int/lit8 v2, v2, -0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    .line 78
    .line 79
    iget-wide v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    .line 80
    .line 81
    sub-long v3, v0, v3

    .line 82
    .line 83
    const-wide/32 v5, 0xf4240

    .line 84
    .line 85
    .line 86
    div-long/2addr v3, v5

    .line 87
    iput-wide v3, v2, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 88
    .line 89
    iput-wide v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    iget-wide v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateUptimeMillis:J

    .line 98
    .line 99
    sub-long v2, v0, v2

    .line 100
    .line 101
    iput-wide v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateUptimeMillis:J

    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    .line 104
    .line 105
    iget-wide v4, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 106
    .line 107
    cmp-long v1, v2, v4

    .line 108
    .line 109
    if-lez v1, :cond_3

    .line 110
    .line 111
    move-wide v2, v4

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 115
    .line 116
    iget v1, v1, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 117
    .line 118
    aput-wide v2, v0, v1

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuEnergyConsumerIds:[I

    .line 121
    .line 122
    array-length v0, v0

    .line 123
    if-eqz v0, :cond_9

    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;->getAsInt()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-gtz v0, :cond_4

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v2, "Unexpected battery voltage ("

    .line 136
    .line 137
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v0, " mV) when querying energy consumers"

    .line 144
    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v1, "CpuPowerStatsCollector"

    .line 153
    .line 154
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_4
    iget v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastVoltageMv:I

    .line 159
    .line 160
    if-eqz v1, :cond_5

    .line 161
    .line 162
    add-int/2addr v1, v0

    .line 163
    div-int/lit8 v1, v1, 0x2

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_5
    move v1, v0

    .line 167
    :goto_1
    iput v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastVoltageMv:I

    .line 168
    .line 169
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 170
    .line 171
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuEnergyConsumerIds:[I

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->getConsumedEnergyUws([I)[J

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-nez v0, :cond_6

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_6
    array-length v2, v0

    .line 181
    add-int/lit8 v2, v2, -0x1

    .line 182
    .line 183
    :goto_2
    if-ltz v2, :cond_9

    .line 184
    .line 185
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastConsumedEnergyUws:[J

    .line 186
    .line 187
    aget-wide v3, v3, v2

    .line 188
    .line 189
    const-wide/16 v5, -0x1

    .line 190
    .line 191
    cmp-long v5, v3, v5

    .line 192
    .line 193
    const-wide/16 v6, 0x0

    .line 194
    .line 195
    if-eqz v5, :cond_7

    .line 196
    .line 197
    aget-wide v8, v0, v2

    .line 198
    .line 199
    sub-long/2addr v8, v3

    .line 200
    goto :goto_3

    .line 201
    :cond_7
    move-wide v8, v6

    .line 202
    :goto_3
    cmp-long v3, v8, v6

    .line 203
    .line 204
    if-gez v3, :cond_8

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_8
    move-wide v6, v8

    .line 208
    :goto_4
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 209
    .line 210
    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    .line 211
    .line 212
    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 213
    .line 214
    invoke-static {v1, v6, v7}, Lcom/android/server/power/stats/PowerStatsCollector;->uJtoUc(IJ)J

    .line 215
    .line 216
    .line 217
    move-result-wide v5

    .line 218
    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/server/power/stats/PowerStatsLayout;->setConsumedEnergy([JIJ)V

    .line 219
    .line 220
    .line 221
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastConsumedEnergyUws:[J

    .line 222
    .line 223
    aget-wide v4, v0, v2

    .line 224
    .line 225
    aput-wide v4, v3, v2

    .line 226
    .line 227
    add-int/lit8 v2, v2, -0x1

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_9
    :goto_5
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    .line 231
    .line 232
    return-object p0
.end method

.method public final ensureInitialized$1()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsInitialized:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    return v3

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 16
    .line 17
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 18
    .line 19
    iget-object v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 20
    .line 21
    iput-object v5, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 22
    .line 23
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 24
    .line 25
    iput-object v4, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 26
    .line 27
    new-instance v4, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v4, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    .line 33
    .line 34
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 35
    .line 36
    iput-object v5, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 37
    .line 38
    new-instance v5, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-direct {v5, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V

    .line 41
    .line 42
    .line 43
    iput-object v5, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    iput v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    iput v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBracketsPerEnergyConsumer:I

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;->nativeIsSupportedFeature()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    iput-boolean v4, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsPerUidTimeInStateSupported:Z

    .line 56
    .line 57
    iget-object v4, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-virtual {v4, v1, v5}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->getEnergyConsumerIds(ILjava/lang/String;)[I

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuEnergyConsumerIds:[I

    .line 65
    .line 66
    array-length v1, v1

    .line 67
    new-array v1, v1, [J

    .line 68
    .line 69
    iput-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastConsumedEnergyUws:[J

    .line 70
    .line 71
    const-wide/16 v4, -0x1

    .line 72
    .line 73
    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    new-array v4, v1, [J

    .line 83
    .line 84
    iput-object v4, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuTimeByScalingStep:[J

    .line 85
    .line 86
    new-array v4, v1, [J

    .line 87
    .line 88
    iput-object v4, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    .line 89
    .line 90
    iget-object v4, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getCpuPowerBracketCount()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    const/4 v5, -0x1

    .line 97
    if-eq v4, v5, :cond_3

    .line 98
    .line 99
    iget-object v4, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    new-array v4, v4, [I

    .line 106
    .line 107
    iget-object v5, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    array-length v6, v5

    .line 114
    move v7, v3

    .line 115
    move v8, v7

    .line 116
    :goto_0
    if-ge v7, v6, :cond_b

    .line 117
    .line 118
    aget v9, v5, v7

    .line 119
    .line 120
    iget-object v10, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 121
    .line 122
    invoke-virtual {v10, v9}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    move v11, v3

    .line 127
    :goto_1
    array-length v12, v10

    .line 128
    if-ge v11, v12, :cond_2

    .line 129
    .line 130
    iget-object v12, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 131
    .line 132
    invoke-virtual {v12, v9, v11}, Lcom/android/internal/os/PowerProfile;->getCpuPowerBracketForScalingStep(II)I

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    add-int/lit8 v13, v8, 0x1

    .line 137
    .line 138
    aput v12, v4, v8

    .line 139
    .line 140
    add-int/lit8 v11, v11, 0x1

    .line 141
    .line 142
    move v8, v13

    .line 143
    goto :goto_1

    .line 144
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    iget-object v4, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuEnergyConsumerIds:[I

    .line 148
    .line 149
    array-length v5, v4

    .line 150
    if-eqz v5, :cond_a

    .line 151
    .line 152
    array-length v4, v4

    .line 153
    if-ne v4, v2, :cond_4

    .line 154
    .line 155
    goto/16 :goto_5

    .line 156
    .line 157
    :cond_4
    iget-object v4, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 158
    .line 159
    invoke-virtual {v4}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    array-length v4, v4

    .line 164
    iget-object v5, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuEnergyConsumerIds:[I

    .line 165
    .line 166
    array-length v5, v5

    .line 167
    if-ne v4, v5, :cond_9

    .line 168
    .line 169
    iget v4, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBracketsPerEnergyConsumer:I

    .line 170
    .line 171
    iget-object v5, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 172
    .line 173
    invoke-virtual {v5}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    new-array v5, v5, [I

    .line 178
    .line 179
    iget-object v6, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 180
    .line 181
    invoke-virtual {v6}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    array-length v7, v6

    .line 186
    move v8, v3

    .line 187
    move v9, v8

    .line 188
    move v10, v9

    .line 189
    :goto_2
    if-ge v8, v7, :cond_8

    .line 190
    .line 191
    aget v11, v6, v8

    .line 192
    .line 193
    iget-object v12, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 194
    .line 195
    invoke-virtual {v12, v11}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    array-length v13, v12

    .line 200
    new-array v13, v13, [D

    .line 201
    .line 202
    move v14, v3

    .line 203
    :goto_3
    array-length v15, v12

    .line 204
    if-ge v14, v15, :cond_5

    .line 205
    .line 206
    iget-object v15, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 207
    .line 208
    invoke-virtual {v15, v11, v14}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    .line 209
    .line 210
    .line 211
    move-result-wide v15

    .line 212
    aput-wide v15, v13, v14

    .line 213
    .line 214
    add-int/lit8 v14, v14, 0x1

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_5
    array-length v11, v12

    .line 218
    new-array v11, v11, [I

    .line 219
    .line 220
    invoke-static {v11, v13, v4}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mapScalingStepsToDefaultBrackets([I[DI)V

    .line 221
    .line 222
    .line 223
    move v13, v3

    .line 224
    move v14, v13

    .line 225
    :goto_4
    array-length v15, v12

    .line 226
    if-ge v13, v15, :cond_7

    .line 227
    .line 228
    aget v15, v11, v13

    .line 229
    .line 230
    add-int/2addr v15, v10

    .line 231
    add-int/lit8 v16, v9, 0x1

    .line 232
    .line 233
    aput v15, v5, v9

    .line 234
    .line 235
    if-le v15, v14, :cond_6

    .line 236
    .line 237
    move v14, v15

    .line 238
    :cond_6
    add-int/lit8 v13, v13, 0x1

    .line 239
    .line 240
    move/from16 v9, v16

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_7
    add-int/lit8 v10, v14, 0x1

    .line 244
    .line 245
    add-int/lit8 v8, v8, 0x1

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_8
    move-object v4, v5

    .line 249
    goto :goto_6

    .line 250
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v5, "Assigning a single power brackets to each CPU_CLUSTER energy consumer. Number of CPU clusters ("

    .line 253
    .line 254
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object v5, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 258
    .line 259
    invoke-virtual {v5}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    array-length v5, v5

    .line 264
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v5, ") does not match the number of energy consumers ("

    .line 268
    .line 269
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-object v5, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuEnergyConsumerIds:[I

    .line 273
    .line 274
    array-length v5, v5

    .line 275
    const-string v6, ").  Using default power bucket assignment."

    .line 276
    .line 277
    const-string v7, "CpuPowerStatsCollector"

    .line 278
    .line 279
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget v4, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    .line 283
    .line 284
    invoke-virtual {v0, v4}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initDefaultPowerBrackets(I)[I

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    goto :goto_6

    .line 289
    :cond_a
    :goto_5
    iget v4, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    .line 290
    .line 291
    invoke-virtual {v0, v4}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initDefaultPowerBrackets(I)[I

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    :cond_b
    :goto_6
    new-instance v5, Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 296
    .line 297
    invoke-direct {v5}, Lcom/android/server/power/stats/PowerStatsLayout;-><init>()V

    .line 298
    .line 299
    .line 300
    iput-object v5, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 301
    .line 302
    const-string/jumbo v6, "steps"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v1, v3, v6}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    iput v6, v5, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    .line 310
    .line 311
    iput v1, v5, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    .line 312
    .line 313
    iget-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 314
    .line 315
    iget-object v5, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 316
    .line 317
    invoke-virtual {v5}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    array-length v5, v5

    .line 322
    const-string v6, "clusters"

    .line 323
    .line 324
    invoke-virtual {v1, v5, v3, v6}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    iput v6, v1, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    .line 329
    .line 330
    iput v5, v1, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    .line 331
    .line 332
    iget-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 333
    .line 334
    const-string/jumbo v5, "usage"

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v2, v2, v5}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    iput v5, v1, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 342
    .line 343
    iget-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 344
    .line 345
    iget-object v5, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuEnergyConsumerIds:[I

    .line 346
    .line 347
    array-length v5, v5

    .line 348
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 349
    .line 350
    .line 351
    iget-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 352
    .line 353
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 354
    .line 355
    .line 356
    iget-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 357
    .line 358
    iput-object v4, v1, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    .line 359
    .line 360
    iput v2, v1, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 361
    .line 362
    array-length v5, v4

    .line 363
    move v6, v3

    .line 364
    :goto_7
    if-ge v6, v5, :cond_d

    .line 365
    .line 366
    aget v7, v4, v6

    .line 367
    .line 368
    iget v8, v1, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 369
    .line 370
    if-lt v7, v8, :cond_c

    .line 371
    .line 372
    add-int/lit8 v7, v7, 0x1

    .line 373
    .line 374
    iput v7, v1, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 375
    .line 376
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 377
    .line 378
    goto :goto_7

    .line 379
    :cond_d
    iget v4, v1, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 380
    .line 381
    const-string/jumbo v5, "time"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v4, v3, v5}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    iput v3, v1, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    .line 389
    .line 390
    iget-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 391
    .line 392
    const/4 v3, 0x5

    .line 393
    const-string/jumbo v4, "power"

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    iput v3, v1, Lcom/android/server/power/stats/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 401
    .line 402
    new-instance v10, Landroid/os/PersistableBundle;

    .line 403
    .line 404
    invoke-direct {v10}, Landroid/os/PersistableBundle;-><init>()V

    .line 405
    .line 406
    .line 407
    iget-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 408
    .line 409
    invoke-virtual {v1, v10}, Lcom/android/server/power/stats/CpuPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 410
    .line 411
    .line 412
    new-instance v1, Lcom/android/internal/os/PowerStats$Descriptor;

    .line 413
    .line 414
    iget-object v3, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 415
    .line 416
    iget v6, v3, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceStatsArrayLength:I

    .line 417
    .line 418
    iget v9, v3, Lcom/android/server/power/stats/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 419
    .line 420
    const/4 v7, 0x0

    .line 421
    const/4 v8, 0x0

    .line 422
    const/4 v5, 0x1

    .line 423
    move-object v4, v1

    .line 424
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 425
    .line 426
    .line 427
    iput-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 428
    .line 429
    new-instance v1, Lcom/android/internal/os/PowerStats;

    .line 430
    .line 431
    iget-object v3, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 432
    .line 433
    invoke-direct {v1, v3}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 434
    .line 435
    .line 436
    iput-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    .line 437
    .line 438
    iget-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 439
    .line 440
    iget v1, v1, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 441
    .line 442
    new-array v1, v1, [J

    .line 443
    .line 444
    iput-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempUidStats:[J

    .line 445
    .line 446
    iput-boolean v2, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsInitialized:Z

    .line 447
    .line 448
    return v2
.end method

.method public getCpuPowerBracketDescription(I)Ljava/lang/String;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized$1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/CpuPowerStatsLayout;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/power/stats/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    array-length v3, v2

    .line 26
    const/4 v4, 0x0

    .line 27
    move v5, v4

    .line 28
    move v6, v5

    .line 29
    :goto_0
    if-ge v5, v3, :cond_5

    .line 30
    .line 31
    aget v7, v2, v5

    .line 32
    .line 33
    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 34
    .line 35
    invoke-virtual {v8, v7}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    move v9, v4

    .line 40
    :goto_1
    array-length v10, v8

    .line 41
    if-ge v9, v10, :cond_4

    .line 42
    .line 43
    aget v10, v0, v6

    .line 44
    .line 45
    if-eq v10, p1, :cond_1

    .line 46
    .line 47
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    if-eqz v10, :cond_2

    .line 55
    .line 56
    const-string v10, ", "

    .line 57
    .line 58
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_2
    array-length v10, v2

    .line 62
    const/4 v11, 0x1

    .line 63
    if-le v10, v11, :cond_3

    .line 64
    .line 65
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const/16 v10, 0x2f

    .line 69
    .line 70
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :cond_3
    aget v10, v8, v9

    .line 74
    .line 75
    div-int/lit16 v10, v10, 0x3e8

    .line 76
    .line 77
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/16 v10, 0x28

    .line 81
    .line 82
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 86
    .line 87
    iget-object v11, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 88
    .line 89
    invoke-virtual {v11, v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    .line 90
    .line 91
    .line 92
    move-result-wide v11

    .line 93
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    const-string v12, "%.1f"

    .line 102
    .line 103
    invoke-static {v10, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const/16 v10, 0x29

    .line 111
    .line 112
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0
.end method

.method public getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized$1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 10
    .line 11
    return-object p0
.end method

.method public final initDefaultPowerBrackets(I)[I
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    new-array v1, v1, [D

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    array-length v3, v2

    .line 24
    const/4 v4, 0x0

    .line 25
    move v5, v4

    .line 26
    move v6, v5

    .line 27
    :goto_0
    if-ge v5, v3, :cond_1

    .line 28
    .line 29
    aget v7, v2, v5

    .line 30
    .line 31
    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 32
    .line 33
    invoke-virtual {v8, v7}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    move v9, v4

    .line 38
    :goto_1
    array-length v10, v8

    .line 39
    if-ge v9, v10, :cond_0

    .line 40
    .line 41
    add-int/lit8 v10, v6, 0x1

    .line 42
    .line 43
    iget-object v11, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 44
    .line 45
    invoke-virtual {v11, v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    .line 46
    .line 47
    .line 48
    move-result-wide v11

    .line 49
    aput-wide v11, v1, v6

    .line 50
    .line 51
    add-int/lit8 v9, v9, 0x1

    .line 52
    .line 53
    move v6, v10

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-static {v0, v1, p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mapScalingStepsToDefaultBrackets([I[DI)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public final onUidRemoved(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
