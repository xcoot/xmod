.class public final Lcom/android/server/power/stats/WifiPowerStatsProcessor;
.super Lcom/android/server/power/stats/PowerStatsProcessor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mBatchedScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mHasWifiPowerController:Z

.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

.field public final mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpUidStatsArray:[J

.field public final mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 5
    .line 6
    const-string/jumbo v1, "wifi.controller.rx"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 19
    .line 20
    const-string/jumbo v1, "wifi.controller.tx"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 33
    .line 34
    const-string/jumbo v1, "wifi.controller.idle"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 45
    .line 46
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 47
    .line 48
    const-string/jumbo v1, "wifi.active"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 59
    .line 60
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 61
    .line 62
    const-string/jumbo v1, "wifi.scan"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 73
    .line 74
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 75
    .line 76
    const-string/jumbo v1, "wifi.batchedscan"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mBatchedScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v3, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iput-object v2, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 20
    .line 21
    new-instance v3, Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Lcom/android/server/power/stats/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 24
    .line 25
    .line 26
    iput-object v3, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 27
    .line 28
    iget v4, v2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    .line 29
    .line 30
    new-array v4, v4, [J

    .line 31
    .line 32
    iput-object v4, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 33
    .line 34
    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    .line 35
    .line 36
    new-array v2, v2, [J

    .line 37
    .line 38
    iput-object v2, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 39
    .line 40
    iget-boolean v2, v3, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mPowerReportingSupported:Z

    .line 41
    .line 42
    iput-boolean v2, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    .line 43
    .line 44
    :goto_0
    iget-object v2, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 45
    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    new-instance v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 49
    .line 50
    iget-object v3, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 51
    .line 52
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 56
    .line 57
    :cond_2
    iget-object v2, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 60
    .line 61
    check-cast v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    add-int/lit8 v2, v2, -0x1

    .line 68
    .line 69
    :goto_1
    if-ltz v2, :cond_6

    .line 70
    .line 71
    iget-object v3, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 74
    .line 75
    check-cast v3, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 82
    .line 83
    new-instance v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v4, v3, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 89
    .line 90
    iget-object v5, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 91
    .line 92
    iget-object v3, v3, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 93
    .line 94
    invoke-virtual {v1, v3, v5}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-nez v5, :cond_3

    .line 99
    .line 100
    move/from16 p2, v2

    .line 101
    .line 102
    move-object v2, v1

    .line 103
    goto/16 :goto_4

    .line 104
    .line 105
    :cond_3
    iget-object v5, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 106
    .line 107
    iget v5, v5, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 108
    .line 109
    add-int/lit8 v5, v5, -0x1

    .line 110
    .line 111
    :goto_2
    if-ltz v5, :cond_4

    .line 112
    .line 113
    iget-wide v6, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 114
    .line 115
    iget-object v8, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 116
    .line 117
    iget-object v9, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 118
    .line 119
    invoke-virtual {v8, v5, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->getConsumedEnergy(I[J)J

    .line 120
    .line 121
    .line 122
    move-result-wide v8

    .line 123
    add-long/2addr v8, v6

    .line 124
    iput-wide v8, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 125
    .line 126
    add-int/lit8 v5, v5, -0x1

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    iget-object v5, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 130
    .line 131
    iget-object v6, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 132
    .line 133
    iget v7, v5, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceBasicScanTimePosition:I

    .line 134
    .line 135
    aget-wide v7, v6, v7

    .line 136
    .line 137
    iput-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    .line 138
    .line 139
    iget v9, v5, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceBatchedScanTimePosition:I

    .line 140
    .line 141
    aget-wide v9, v6, v9

    .line 142
    .line 143
    iput-wide v9, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    .line 144
    .line 145
    iget-boolean v11, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    .line 146
    .line 147
    iget-object v12, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 148
    .line 149
    if-eqz v11, :cond_5

    .line 150
    .line 151
    iget v7, v5, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 152
    .line 153
    aget-wide v7, v6, v7

    .line 154
    .line 155
    iget-object v9, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 156
    .line 157
    iget-wide v9, v9, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 158
    .line 159
    long-to-double v7, v7

    .line 160
    mul-double/2addr v9, v7

    .line 161
    iput-wide v9, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    .line 162
    .line 163
    iget v7, v5, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 164
    .line 165
    aget-wide v7, v6, v7

    .line 166
    .line 167
    iget-object v11, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 168
    .line 169
    iget-wide v13, v11, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 170
    .line 171
    long-to-double v7, v7

    .line 172
    mul-double/2addr v13, v7

    .line 173
    iput-wide v13, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->txPower:D

    .line 174
    .line 175
    iget v7, v5, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 176
    .line 177
    aget-wide v7, v6, v7

    .line 178
    .line 179
    iget-wide v11, v12, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 180
    .line 181
    long-to-double v7, v7

    .line 182
    mul-double/2addr v11, v7

    .line 183
    iput-wide v11, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    .line 184
    .line 185
    iget v7, v5, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 186
    .line 187
    aget-wide v7, v6, v7

    .line 188
    .line 189
    iget-object v15, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 190
    .line 191
    move/from16 p2, v2

    .line 192
    .line 193
    iget-wide v1, v15, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 194
    .line 195
    long-to-double v7, v7

    .line 196
    mul-double/2addr v1, v7

    .line 197
    iput-wide v1, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    .line 198
    .line 199
    add-double/2addr v9, v13

    .line 200
    add-double/2addr v9, v11

    .line 201
    add-double/2addr v9, v1

    .line 202
    invoke-virtual {v5, v6, v9, v10}, Lcom/android/server/power/stats/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_5
    move/from16 p2, v2

    .line 207
    .line 208
    iget v1, v5, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mDeviceActiveTimePosition:I

    .line 209
    .line 210
    aget-wide v1, v6, v1

    .line 211
    .line 212
    iget-object v11, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 213
    .line 214
    iget-wide v13, v11, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 215
    .line 216
    long-to-double v1, v1

    .line 217
    mul-double/2addr v13, v1

    .line 218
    iput-wide v13, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->activePower:D

    .line 219
    .line 220
    iget-wide v1, v12, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 221
    .line 222
    long-to-double v7, v7

    .line 223
    mul-double/2addr v1, v7

    .line 224
    iput-wide v1, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    .line 225
    .line 226
    iget-object v7, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mBatchedScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 227
    .line 228
    iget-wide v7, v7, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 229
    .line 230
    long-to-double v9, v9

    .line 231
    mul-double/2addr v7, v9

    .line 232
    iput-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    .line 233
    .line 234
    add-double/2addr v13, v1

    .line 235
    add-double/2addr v13, v7

    .line 236
    invoke-virtual {v5, v6, v13, v14}, Lcom/android/server/power/stats/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 237
    .line 238
    .line 239
    :goto_3
    iget-object v1, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 240
    .line 241
    move-object/from16 v2, p1

    .line 242
    .line 243
    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 244
    .line 245
    .line 246
    :goto_4
    add-int/lit8 v1, p2, -0x1

    .line 247
    .line 248
    move-object/from16 v19, v2

    .line 249
    .line 250
    move v2, v1

    .line 251
    move-object/from16 v1, v19

    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :cond_6
    move-object v2, v1

    .line 256
    iget-object v1, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 257
    .line 258
    iget v1, v1, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 259
    .line 260
    const-wide/16 v3, 0x0

    .line 261
    .line 262
    if-eqz v1, :cond_c

    .line 263
    .line 264
    iget-object v1, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 265
    .line 266
    iget-object v1, v1, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 267
    .line 268
    check-cast v1, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    add-int/lit8 v1, v1, -0x1

    .line 275
    .line 276
    move-wide v7, v3

    .line 277
    const-wide/16 v9, 0x0

    .line 278
    .line 279
    :goto_5
    if-ltz v1, :cond_8

    .line 280
    .line 281
    iget-object v11, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 282
    .line 283
    iget-object v11, v11, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 284
    .line 285
    check-cast v11, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    check-cast v11, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 292
    .line 293
    iget-object v11, v11, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast v11, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;

    .line 296
    .line 297
    iget-boolean v12, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    .line 298
    .line 299
    if-eqz v12, :cond_7

    .line 300
    .line 301
    iget-wide v12, v11, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    .line 302
    .line 303
    iget-wide v14, v11, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->txPower:D

    .line 304
    .line 305
    add-double/2addr v12, v14

    .line 306
    iget-wide v14, v11, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    .line 307
    .line 308
    add-double/2addr v12, v14

    .line 309
    iget-wide v14, v11, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    .line 310
    .line 311
    :goto_6
    add-double/2addr v12, v14

    .line 312
    add-double/2addr v12, v7

    .line 313
    move-wide v7, v12

    .line 314
    goto :goto_7

    .line 315
    :cond_7
    iget-wide v12, v11, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->activePower:D

    .line 316
    .line 317
    iget-wide v14, v11, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    .line 318
    .line 319
    add-double/2addr v12, v14

    .line 320
    iget-wide v14, v11, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :goto_7
    iget-wide v11, v11, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 324
    .line 325
    add-long/2addr v9, v11

    .line 326
    add-int/lit8 v1, v1, -0x1

    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_8
    cmpl-double v1, v7, v3

    .line 330
    .line 331
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 332
    .line 333
    if-nez v1, :cond_9

    .line 334
    .line 335
    move-wide v9, v11

    .line 336
    goto :goto_8

    .line 337
    :cond_9
    long-to-double v9, v9

    .line 338
    const-wide v13, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    mul-double/2addr v9, v13

    .line 344
    div-double/2addr v9, v7

    .line 345
    :goto_8
    cmpl-double v1, v9, v11

    .line 346
    .line 347
    if-eqz v1, :cond_c

    .line 348
    .line 349
    iget-object v1, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 350
    .line 351
    iget-object v1, v1, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 352
    .line 353
    check-cast v1, Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    add-int/lit8 v1, v1, -0x1

    .line 360
    .line 361
    :goto_9
    if-ltz v1, :cond_c

    .line 362
    .line 363
    iget-object v7, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 364
    .line 365
    iget-object v7, v7, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 366
    .line 367
    check-cast v7, Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    check-cast v7, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 374
    .line 375
    iget-object v8, v7, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 376
    .line 377
    iget-object v7, v7, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;

    .line 380
    .line 381
    iget-boolean v11, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    .line 382
    .line 383
    if-eqz v11, :cond_a

    .line 384
    .line 385
    iget-wide v11, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    .line 386
    .line 387
    mul-double/2addr v11, v9

    .line 388
    iput-wide v11, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    .line 389
    .line 390
    iget-wide v13, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->txPower:D

    .line 391
    .line 392
    mul-double/2addr v13, v9

    .line 393
    iput-wide v13, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->txPower:D

    .line 394
    .line 395
    iget-wide v3, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    .line 396
    .line 397
    mul-double/2addr v3, v9

    .line 398
    iput-wide v3, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    .line 399
    .line 400
    iget-wide v5, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    .line 401
    .line 402
    mul-double/2addr v5, v9

    .line 403
    iput-wide v5, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    .line 404
    .line 405
    add-double/2addr v11, v13

    .line 406
    add-double/2addr v11, v3

    .line 407
    add-double/2addr v11, v5

    .line 408
    goto :goto_a

    .line 409
    :cond_a
    iget-wide v3, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->activePower:D

    .line 410
    .line 411
    mul-double/2addr v3, v9

    .line 412
    iput-wide v3, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->activePower:D

    .line 413
    .line 414
    iget-wide v5, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    .line 415
    .line 416
    mul-double/2addr v5, v9

    .line 417
    iput-wide v5, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    .line 418
    .line 419
    iget-wide v11, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    .line 420
    .line 421
    mul-double/2addr v11, v9

    .line 422
    iput-wide v11, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    .line 423
    .line 424
    add-double/2addr v3, v5

    .line 425
    add-double/2addr v11, v3

    .line 426
    :goto_a
    iget-object v3, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 427
    .line 428
    invoke-virtual {v2, v8, v3}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    if-nez v3, :cond_b

    .line 433
    .line 434
    goto :goto_b

    .line 435
    :cond_b
    iget-object v3, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 436
    .line 437
    iget-object v4, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 438
    .line 439
    invoke-virtual {v3, v4, v11, v12}, Lcom/android/server/power/stats/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 440
    .line 441
    .line 442
    iget-object v3, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 443
    .line 444
    invoke-virtual {v2, v8, v3}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 445
    .line 446
    .line 447
    :goto_b
    add-int/lit8 v1, v1, -0x1

    .line 448
    .line 449
    const-wide/16 v3, 0x0

    .line 450
    .line 451
    goto :goto_9

    .line 452
    :cond_c
    iget-object v1, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 453
    .line 454
    iget-object v1, v1, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 455
    .line 456
    check-cast v1, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    add-int/lit8 v1, v1, -0x1

    .line 463
    .line 464
    :goto_c
    if-ltz v1, :cond_f

    .line 465
    .line 466
    iget-object v3, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 467
    .line 468
    iget-object v3, v3, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 469
    .line 470
    check-cast v3, Ljava/util/ArrayList;

    .line 471
    .line 472
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    check-cast v3, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 477
    .line 478
    new-instance v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;

    .line 479
    .line 480
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 481
    .line 482
    .line 483
    iput-object v4, v3, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 484
    .line 485
    iget-object v3, v3, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 486
    .line 487
    check-cast v3, Ljava/util/ArrayList;

    .line 488
    .line 489
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 490
    .line 491
    .line 492
    move-result v5

    .line 493
    add-int/lit8 v5, v5, -0x1

    .line 494
    .line 495
    :goto_d
    if-ltz v5, :cond_e

    .line 496
    .line 497
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    check-cast v6, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 502
    .line 503
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 504
    .line 505
    check-cast v6, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;

    .line 506
    .line 507
    iget-boolean v7, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    .line 508
    .line 509
    if-eqz v7, :cond_d

    .line 510
    .line 511
    iget-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    .line 512
    .line 513
    iget-wide v9, v6, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    .line 514
    .line 515
    add-double/2addr v7, v9

    .line 516
    iput-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    .line 517
    .line 518
    iget-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->txPower:D

    .line 519
    .line 520
    iget-wide v9, v6, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->txPower:D

    .line 521
    .line 522
    add-double/2addr v7, v9

    .line 523
    iput-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->txPower:D

    .line 524
    .line 525
    iget-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    .line 526
    .line 527
    iget-wide v9, v6, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    .line 528
    .line 529
    add-double/2addr v7, v9

    .line 530
    iput-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    .line 531
    .line 532
    iget-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    .line 533
    .line 534
    iget-wide v9, v6, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    .line 535
    .line 536
    add-double/2addr v7, v9

    .line 537
    iput-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    .line 538
    .line 539
    goto :goto_e

    .line 540
    :cond_d
    iget-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->activePower:D

    .line 541
    .line 542
    iget-wide v9, v6, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->activePower:D

    .line 543
    .line 544
    add-double/2addr v7, v9

    .line 545
    iput-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->activePower:D

    .line 546
    .line 547
    iget-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    .line 548
    .line 549
    iget-wide v9, v6, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    .line 550
    .line 551
    add-double/2addr v7, v9

    .line 552
    iput-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    .line 553
    .line 554
    iget-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    .line 555
    .line 556
    iget-wide v9, v6, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    .line 557
    .line 558
    add-double/2addr v7, v9

    .line 559
    iput-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    .line 560
    .line 561
    :goto_e
    iget-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    .line 562
    .line 563
    iget-wide v9, v6, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    .line 564
    .line 565
    add-long/2addr v7, v9

    .line 566
    iput-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    .line 567
    .line 568
    iget-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    .line 569
    .line 570
    iget-wide v9, v6, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    .line 571
    .line 572
    add-long/2addr v7, v9

    .line 573
    iput-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    .line 574
    .line 575
    iget-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 576
    .line 577
    iget-wide v9, v6, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 578
    .line 579
    add-long/2addr v7, v9

    .line 580
    iput-wide v7, v4, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 581
    .line 582
    add-int/lit8 v5, v5, -0x1

    .line 583
    .line 584
    goto :goto_d

    .line 585
    :cond_e
    add-int/lit8 v1, v1, -0x1

    .line 586
    .line 587
    goto :goto_c

    .line 588
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    .line 589
    .line 590
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v2, v1}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->collectUids(Ljava/util/Collection;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    if-nez v3, :cond_1d

    .line 601
    .line 602
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 607
    .line 608
    .line 609
    move-result v4

    .line 610
    if-eqz v4, :cond_13

    .line 611
    .line 612
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    check-cast v4, Ljava/lang/Integer;

    .line 617
    .line 618
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 619
    .line 620
    .line 621
    move-result v4

    .line 622
    const/4 v5, 0x0

    .line 623
    :goto_f
    iget-object v6, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 624
    .line 625
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 626
    .line 627
    check-cast v6, Ljava/util/ArrayList;

    .line 628
    .line 629
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 630
    .line 631
    .line 632
    move-result v6

    .line 633
    if-ge v5, v6, :cond_10

    .line 634
    .line 635
    iget-object v6, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 636
    .line 637
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 638
    .line 639
    check-cast v6, Ljava/util/ArrayList;

    .line 640
    .line 641
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v6

    .line 645
    check-cast v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;

    .line 646
    .line 647
    iget-object v7, v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 648
    .line 649
    iget-object v7, v7, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 650
    .line 651
    check-cast v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;

    .line 652
    .line 653
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 654
    .line 655
    check-cast v6, Ljava/util/ArrayList;

    .line 656
    .line 657
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 658
    .line 659
    .line 660
    move-result-object v6

    .line 661
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 662
    .line 663
    .line 664
    move-result v8

    .line 665
    if-eqz v8, :cond_12

    .line 666
    .line 667
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v8

    .line 671
    check-cast v8, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 672
    .line 673
    iget-object v9, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 674
    .line 675
    iget-object v8, v8, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 676
    .line 677
    invoke-virtual {v2, v4, v8, v9}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    .line 678
    .line 679
    .line 680
    move-result v8

    .line 681
    if-nez v8, :cond_11

    .line 682
    .line 683
    goto :goto_10

    .line 684
    :cond_11
    iget-wide v8, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    .line 685
    .line 686
    iget-object v10, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 687
    .line 688
    iget-object v11, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 689
    .line 690
    iget v12, v10, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 691
    .line 692
    aget-wide v12, v11, v12

    .line 693
    .line 694
    add-long/2addr v8, v12

    .line 695
    iput-wide v8, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    .line 696
    .line 697
    iget-wide v8, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    .line 698
    .line 699
    iget v10, v10, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 700
    .line 701
    aget-wide v10, v11, v10

    .line 702
    .line 703
    add-long/2addr v8, v10

    .line 704
    iput-wide v8, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    .line 705
    .line 706
    goto :goto_10

    .line 707
    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 708
    .line 709
    goto :goto_f

    .line 710
    :cond_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    if-eqz v3, :cond_1d

    .line 719
    .line 720
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v3

    .line 724
    check-cast v3, Ljava/lang/Integer;

    .line 725
    .line 726
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 727
    .line 728
    .line 729
    move-result v3

    .line 730
    const/4 v4, 0x0

    .line 731
    :goto_11
    iget-object v6, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 732
    .line 733
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 734
    .line 735
    check-cast v6, Ljava/util/ArrayList;

    .line 736
    .line 737
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 738
    .line 739
    .line 740
    move-result v6

    .line 741
    if-ge v4, v6, :cond_14

    .line 742
    .line 743
    iget-object v6, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 744
    .line 745
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 746
    .line 747
    check-cast v6, Ljava/util/ArrayList;

    .line 748
    .line 749
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v6

    .line 753
    check-cast v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;

    .line 754
    .line 755
    iget-object v7, v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 756
    .line 757
    iget-object v7, v7, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 758
    .line 759
    check-cast v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;

    .line 760
    .line 761
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 762
    .line 763
    check-cast v6, Ljava/util/ArrayList;

    .line 764
    .line 765
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 766
    .line 767
    .line 768
    move-result-object v6

    .line 769
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 770
    .line 771
    .line 772
    move-result v8

    .line 773
    if-eqz v8, :cond_1c

    .line 774
    .line 775
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v8

    .line 779
    check-cast v8, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 780
    .line 781
    iget-object v9, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 782
    .line 783
    iget-object v10, v8, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 784
    .line 785
    invoke-virtual {v2, v3, v10, v9}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    .line 786
    .line 787
    .line 788
    move-result v9

    .line 789
    if-nez v9, :cond_15

    .line 790
    .line 791
    goto :goto_12

    .line 792
    :cond_15
    iget-boolean v9, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    .line 793
    .line 794
    if-eqz v9, :cond_18

    .line 795
    .line 796
    iget-wide v9, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    .line 797
    .line 798
    const-wide/16 v11, 0x0

    .line 799
    .line 800
    cmp-long v13, v9, v11

    .line 801
    .line 802
    if-eqz v13, :cond_16

    .line 803
    .line 804
    iget-wide v11, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    .line 805
    .line 806
    iget-object v13, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 807
    .line 808
    iget-object v14, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 809
    .line 810
    iget v13, v13, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 811
    .line 812
    aget-wide v13, v14, v13

    .line 813
    .line 814
    long-to-double v13, v13

    .line 815
    mul-double/2addr v11, v13

    .line 816
    long-to-double v9, v9

    .line 817
    div-double/2addr v11, v9

    .line 818
    const-wide/16 v9, 0x0

    .line 819
    .line 820
    add-double/2addr v11, v9

    .line 821
    move-wide v9, v11

    .line 822
    goto :goto_13

    .line 823
    :cond_16
    const-wide/16 v9, 0x0

    .line 824
    .line 825
    :goto_13
    iget-wide v11, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    .line 826
    .line 827
    const-wide/16 v13, 0x0

    .line 828
    .line 829
    cmp-long v16, v11, v13

    .line 830
    .line 831
    if-eqz v16, :cond_17

    .line 832
    .line 833
    iget-wide v13, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->txPower:D

    .line 834
    .line 835
    iget-object v5, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 836
    .line 837
    iget-object v15, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 838
    .line 839
    iget v5, v5, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 840
    .line 841
    move-object/from16 v18, v6

    .line 842
    .line 843
    aget-wide v5, v15, v5

    .line 844
    .line 845
    long-to-double v5, v5

    .line 846
    mul-double/2addr v13, v5

    .line 847
    long-to-double v5, v11

    .line 848
    div-double/2addr v13, v5

    .line 849
    add-double/2addr v9, v13

    .line 850
    goto :goto_14

    .line 851
    :cond_17
    move-object/from16 v18, v6

    .line 852
    .line 853
    :goto_14
    iget-wide v5, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    .line 854
    .line 855
    iget-wide v11, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    .line 856
    .line 857
    add-long/2addr v5, v11

    .line 858
    const-wide/16 v11, 0x0

    .line 859
    .line 860
    cmp-long v13, v5, v11

    .line 861
    .line 862
    if-eqz v13, :cond_1b

    .line 863
    .line 864
    iget-object v11, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 865
    .line 866
    iget-object v12, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 867
    .line 868
    iget v13, v11, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidScanTimePosition:I

    .line 869
    .line 870
    aget-wide v13, v12, v13

    .line 871
    .line 872
    iget v11, v11, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    .line 873
    .line 874
    aget-wide v11, v12, v11

    .line 875
    .line 876
    add-long/2addr v13, v11

    .line 877
    iget-wide v11, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    .line 878
    .line 879
    goto :goto_16

    .line 880
    :cond_18
    move-object/from16 v18, v6

    .line 881
    .line 882
    iget-wide v5, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    .line 883
    .line 884
    iget-wide v9, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    .line 885
    .line 886
    add-long/2addr v5, v9

    .line 887
    const-wide/16 v9, 0x0

    .line 888
    .line 889
    cmp-long v11, v5, v9

    .line 890
    .line 891
    if-eqz v11, :cond_19

    .line 892
    .line 893
    iget-object v9, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 894
    .line 895
    iget-object v10, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 896
    .line 897
    iget v11, v9, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 898
    .line 899
    aget-wide v11, v10, v11

    .line 900
    .line 901
    iget v9, v9, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 902
    .line 903
    aget-wide v9, v10, v9

    .line 904
    .line 905
    add-long/2addr v11, v9

    .line 906
    iget-wide v9, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->activePower:D

    .line 907
    .line 908
    long-to-double v11, v11

    .line 909
    mul-double/2addr v9, v11

    .line 910
    long-to-double v5, v5

    .line 911
    div-double/2addr v9, v5

    .line 912
    const-wide/16 v5, 0x0

    .line 913
    .line 914
    add-double/2addr v9, v5

    .line 915
    goto :goto_15

    .line 916
    :cond_19
    const-wide/16 v5, 0x0

    .line 917
    .line 918
    move-wide v9, v5

    .line 919
    :goto_15
    iget-wide v11, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    .line 920
    .line 921
    const-wide/16 v13, 0x0

    .line 922
    .line 923
    cmp-long v17, v11, v13

    .line 924
    .line 925
    if-eqz v17, :cond_1a

    .line 926
    .line 927
    iget-object v13, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 928
    .line 929
    iget-object v14, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 930
    .line 931
    iget v13, v13, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidScanTimePosition:I

    .line 932
    .line 933
    aget-wide v13, v14, v13

    .line 934
    .line 935
    iget-wide v5, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    .line 936
    .line 937
    long-to-double v13, v13

    .line 938
    mul-double/2addr v5, v13

    .line 939
    long-to-double v11, v11

    .line 940
    div-double/2addr v5, v11

    .line 941
    add-double/2addr v5, v9

    .line 942
    move-wide v9, v5

    .line 943
    :cond_1a
    iget-wide v5, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    .line 944
    .line 945
    const-wide/16 v11, 0x0

    .line 946
    .line 947
    cmp-long v13, v5, v11

    .line 948
    .line 949
    if-eqz v13, :cond_1b

    .line 950
    .line 951
    iget-object v13, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 952
    .line 953
    iget-object v14, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 954
    .line 955
    iget v13, v13, Lcom/android/server/power/stats/WifiPowerStatsLayout;->mUidBatchScanTimePosition:I

    .line 956
    .line 957
    aget-wide v13, v14, v13

    .line 958
    .line 959
    iget-wide v11, v7, Lcom/android/server/power/stats/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    .line 960
    .line 961
    :goto_16
    long-to-double v13, v13

    .line 962
    mul-double/2addr v11, v13

    .line 963
    long-to-double v5, v5

    .line 964
    div-double/2addr v11, v5

    .line 965
    add-double/2addr v9, v11

    .line 966
    :cond_1b
    iget-object v5, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/WifiPowerStatsLayout;

    .line 967
    .line 968
    iget-object v6, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 969
    .line 970
    invoke-virtual {v5, v6, v9, v10}, Lcom/android/server/power/stats/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 971
    .line 972
    .line 973
    iget-object v5, v8, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 974
    .line 975
    iget-object v6, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 976
    .line 977
    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    .line 978
    .line 979
    .line 980
    move-object/from16 v6, v18

    .line 981
    .line 982
    goto/16 :goto_12

    .line 983
    .line 984
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    .line 985
    .line 986
    goto/16 :goto_11

    .line 987
    .line 988
    :cond_1d
    iget-object v0, v0, Lcom/android/server/power/stats/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 989
    .line 990
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    .line 991
    .line 992
    .line 993
    return-void
.end method
