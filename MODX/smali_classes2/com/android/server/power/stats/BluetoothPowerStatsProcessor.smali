.class public final Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;
.super Lcom/android/server/power/stats/PowerStatsProcessor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

.field public final mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mStatsLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

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
    const-string v1, "bluetooth.controller.rx"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 18
    .line 19
    const-string v1, "bluetooth.controller.tx"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 29
    .line 30
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 31
    .line 32
    const-string v1, "bluetooth.controller.idle"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V
    .locals 22

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
    iget-object v3, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

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
    iput-object v2, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 20
    .line 21
    new-instance v3, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Lcom/android/server/power/stats/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 24
    .line 25
    .line 26
    iput-object v3, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 27
    .line 28
    iget v3, v2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    .line 29
    .line 30
    new-array v3, v3, [J

    .line 31
    .line 32
    iput-object v3, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 33
    .line 34
    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    .line 35
    .line 36
    new-array v2, v2, [J

    .line 37
    .line 38
    iput-object v2, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 39
    .line 40
    :goto_0
    iget-object v2, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    new-instance v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 45
    .line 46
    iget-object v3, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 47
    .line 48
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;)V

    .line 49
    .line 50
    .line 51
    iput-object v2, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 52
    .line 53
    :cond_2
    iget-object v2, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 54
    .line 55
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 56
    .line 57
    check-cast v2, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/4 v3, 0x1

    .line 64
    sub-int/2addr v2, v3

    .line 65
    :goto_1
    if-ltz v2, :cond_5

    .line 66
    .line 67
    iget-object v4, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 68
    .line 69
    iget-object v4, v4, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 70
    .line 71
    check-cast v4, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 78
    .line 79
    new-instance v5, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;

    .line 80
    .line 81
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v5, v4, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 85
    .line 86
    iget-object v6, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 87
    .line 88
    iget-object v4, v4, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 89
    .line 90
    invoke-virtual {v1, v4, v6}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_3

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_3
    iget-object v6, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 98
    .line 99
    iget v6, v6, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 100
    .line 101
    sub-int/2addr v6, v3

    .line 102
    :goto_2
    if-ltz v6, :cond_4

    .line 103
    .line 104
    iget-wide v7, v5, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 105
    .line 106
    iget-object v9, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 107
    .line 108
    iget-object v10, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 109
    .line 110
    invoke-virtual {v9, v6, v10}, Lcom/android/server/power/stats/PowerStatsLayout;->getConsumedEnergy(I[J)J

    .line 111
    .line 112
    .line 113
    move-result-wide v9

    .line 114
    add-long/2addr v9, v7

    .line 115
    iput-wide v9, v5, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 116
    .line 117
    add-int/lit8 v6, v6, -0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    iget-object v6, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 121
    .line 122
    iget-object v7, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 123
    .line 124
    iget v8, v6, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 125
    .line 126
    aget-wide v8, v7, v8

    .line 127
    .line 128
    iput-wide v8, v5, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    .line 129
    .line 130
    iget v10, v6, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 131
    .line 132
    aget-wide v10, v7, v10

    .line 133
    .line 134
    iput-wide v10, v5, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    .line 135
    .line 136
    iget v12, v6, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 137
    .line 138
    aget-wide v12, v7, v12

    .line 139
    .line 140
    iput-wide v12, v5, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    .line 141
    .line 142
    iget v12, v6, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 143
    .line 144
    aget-wide v12, v7, v12

    .line 145
    .line 146
    iget-object v14, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 147
    .line 148
    iget-wide v14, v14, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 149
    .line 150
    long-to-double v8, v8

    .line 151
    mul-double/2addr v14, v8

    .line 152
    iput-wide v14, v5, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 153
    .line 154
    iget-object v8, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 155
    .line 156
    iget-wide v8, v8, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 157
    .line 158
    long-to-double v10, v10

    .line 159
    mul-double/2addr v8, v10

    .line 160
    iput-wide v8, v5, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 161
    .line 162
    iget-object v10, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 163
    .line 164
    iget-wide v10, v10, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 165
    .line 166
    long-to-double v12, v12

    .line 167
    mul-double/2addr v10, v12

    .line 168
    iput-wide v10, v5, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    .line 169
    .line 170
    add-double/2addr v14, v8

    .line 171
    add-double/2addr v14, v10

    .line 172
    invoke-virtual {v6, v7, v14, v15}, Lcom/android/server/power/stats/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 173
    .line 174
    .line 175
    iget-object v5, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 176
    .line 177
    invoke-virtual {v1, v4, v5}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 178
    .line 179
    .line 180
    :goto_3
    add-int/lit8 v2, v2, -0x1

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_5
    iget-object v2, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 184
    .line 185
    iget v2, v2, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 186
    .line 187
    const-wide/16 v4, 0x0

    .line 188
    .line 189
    if-eqz v2, :cond_9

    .line 190
    .line 191
    iget-object v2, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 192
    .line 193
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 194
    .line 195
    check-cast v2, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    sub-int/2addr v2, v3

    .line 202
    move-wide v8, v4

    .line 203
    const-wide/16 v10, 0x0

    .line 204
    .line 205
    :goto_4
    if-ltz v2, :cond_6

    .line 206
    .line 207
    iget-object v12, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 208
    .line 209
    iget-object v12, v12, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 210
    .line 211
    check-cast v12, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    check-cast v12, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 218
    .line 219
    iget-object v12, v12, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v12, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;

    .line 222
    .line 223
    iget-wide v13, v12, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 224
    .line 225
    iget-wide v6, v12, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 226
    .line 227
    add-double/2addr v13, v6

    .line 228
    iget-wide v6, v12, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    .line 229
    .line 230
    add-double/2addr v13, v6

    .line 231
    add-double/2addr v8, v13

    .line 232
    iget-wide v6, v12, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 233
    .line 234
    add-long/2addr v10, v6

    .line 235
    add-int/lit8 v2, v2, -0x1

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_6
    cmpl-double v2, v8, v4

    .line 239
    .line 240
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 241
    .line 242
    if-nez v2, :cond_7

    .line 243
    .line 244
    move-wide v10, v6

    .line 245
    goto :goto_5

    .line 246
    :cond_7
    long-to-double v10, v10

    .line 247
    const-wide v12, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    mul-double/2addr v10, v12

    .line 253
    div-double/2addr v10, v8

    .line 254
    :goto_5
    cmpl-double v2, v10, v6

    .line 255
    .line 256
    if-eqz v2, :cond_9

    .line 257
    .line 258
    iget-object v2, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 259
    .line 260
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 261
    .line 262
    check-cast v2, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    sub-int/2addr v2, v3

    .line 269
    :goto_6
    if-ltz v2, :cond_9

    .line 270
    .line 271
    iget-object v6, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 272
    .line 273
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 274
    .line 275
    check-cast v6, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    check-cast v6, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 282
    .line 283
    iget-object v7, v6, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 284
    .line 285
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v6, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;

    .line 288
    .line 289
    iget-wide v8, v6, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 290
    .line 291
    mul-double/2addr v8, v10

    .line 292
    iput-wide v8, v6, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 293
    .line 294
    iget-wide v12, v6, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 295
    .line 296
    mul-double/2addr v12, v10

    .line 297
    iput-wide v12, v6, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 298
    .line 299
    iget-wide v14, v6, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    .line 300
    .line 301
    mul-double/2addr v14, v10

    .line 302
    iput-wide v14, v6, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    .line 303
    .line 304
    add-double/2addr v8, v12

    .line 305
    add-double/2addr v8, v14

    .line 306
    iget-object v6, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 307
    .line 308
    invoke-virtual {v1, v7, v6}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    if-nez v6, :cond_8

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_8
    iget-object v6, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 316
    .line 317
    iget-object v12, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 318
    .line 319
    invoke-virtual {v6, v12, v8, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 320
    .line 321
    .line 322
    iget-object v6, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 323
    .line 324
    invoke-virtual {v1, v7, v6}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 325
    .line 326
    .line 327
    :goto_7
    add-int/lit8 v2, v2, -0x1

    .line 328
    .line 329
    goto :goto_6

    .line 330
    :cond_9
    iget-object v2, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 331
    .line 332
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 333
    .line 334
    check-cast v2, Ljava/util/ArrayList;

    .line 335
    .line 336
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    sub-int/2addr v2, v3

    .line 341
    :goto_8
    if-ltz v2, :cond_b

    .line 342
    .line 343
    iget-object v6, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 344
    .line 345
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 346
    .line 347
    check-cast v6, Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v6

    .line 353
    check-cast v6, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 354
    .line 355
    new-instance v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;

    .line 356
    .line 357
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 358
    .line 359
    .line 360
    iput-object v7, v6, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 361
    .line 362
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 363
    .line 364
    check-cast v6, Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 367
    .line 368
    .line 369
    move-result v8

    .line 370
    sub-int/2addr v8, v3

    .line 371
    :goto_9
    if-ltz v8, :cond_a

    .line 372
    .line 373
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    check-cast v9, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 378
    .line 379
    iget-object v9, v9, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v9, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;

    .line 382
    .line 383
    iget-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    .line 384
    .line 385
    iget-wide v12, v9, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    .line 386
    .line 387
    add-long/2addr v10, v12

    .line 388
    iput-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    .line 389
    .line 390
    iget-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    .line 391
    .line 392
    iget-wide v12, v9, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    .line 393
    .line 394
    add-long/2addr v10, v12

    .line 395
    iput-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    .line 396
    .line 397
    iget-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 398
    .line 399
    iget-wide v12, v9, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 400
    .line 401
    add-double/2addr v10, v12

    .line 402
    iput-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 403
    .line 404
    iget-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    .line 405
    .line 406
    iget-wide v12, v9, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    .line 407
    .line 408
    add-long/2addr v10, v12

    .line 409
    iput-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    .line 410
    .line 411
    iget-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    .line 412
    .line 413
    iget-wide v12, v9, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    .line 414
    .line 415
    add-long/2addr v10, v12

    .line 416
    iput-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    .line 417
    .line 418
    iget-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 419
    .line 420
    iget-wide v12, v9, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 421
    .line 422
    add-double/2addr v10, v12

    .line 423
    iput-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 424
    .line 425
    iget-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    .line 426
    .line 427
    iget-wide v12, v9, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    .line 428
    .line 429
    add-double/2addr v10, v12

    .line 430
    iput-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    .line 431
    .line 432
    iget-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    .line 433
    .line 434
    iget-wide v12, v9, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    .line 435
    .line 436
    add-long/2addr v10, v12

    .line 437
    iput-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    .line 438
    .line 439
    iget-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 440
    .line 441
    iget-wide v12, v9, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 442
    .line 443
    add-long/2addr v10, v12

    .line 444
    iput-wide v10, v7, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 445
    .line 446
    add-int/lit8 v8, v8, -0x1

    .line 447
    .line 448
    goto :goto_9

    .line 449
    :cond_a
    add-int/lit8 v2, v2, -0x1

    .line 450
    .line 451
    goto :goto_8

    .line 452
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    .line 453
    .line 454
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->collectUids(Ljava/util/Collection;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    if-nez v6, :cond_1b

    .line 465
    .line 466
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 467
    .line 468
    .line 469
    move-result-object v6

    .line 470
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 471
    .line 472
    .line 473
    move-result v7

    .line 474
    if-eqz v7, :cond_f

    .line 475
    .line 476
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v7

    .line 480
    check-cast v7, Ljava/lang/Integer;

    .line 481
    .line 482
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 483
    .line 484
    .line 485
    move-result v7

    .line 486
    const/4 v8, 0x0

    .line 487
    :goto_a
    iget-object v9, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 488
    .line 489
    iget-object v9, v9, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 490
    .line 491
    check-cast v9, Ljava/util/ArrayList;

    .line 492
    .line 493
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 494
    .line 495
    .line 496
    move-result v9

    .line 497
    if-ge v8, v9, :cond_c

    .line 498
    .line 499
    iget-object v9, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 500
    .line 501
    iget-object v9, v9, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 502
    .line 503
    check-cast v9, Ljava/util/ArrayList;

    .line 504
    .line 505
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v9

    .line 509
    check-cast v9, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;

    .line 510
    .line 511
    iget-object v10, v9, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 512
    .line 513
    iget-object v10, v10, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 514
    .line 515
    check-cast v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;

    .line 516
    .line 517
    iget-object v9, v9, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 518
    .line 519
    check-cast v9, Ljava/util/ArrayList;

    .line 520
    .line 521
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 522
    .line 523
    .line 524
    move-result-object v9

    .line 525
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 526
    .line 527
    .line 528
    move-result v11

    .line 529
    if-eqz v11, :cond_e

    .line 530
    .line 531
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v11

    .line 535
    check-cast v11, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 536
    .line 537
    iget-object v12, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 538
    .line 539
    iget-object v11, v11, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 540
    .line 541
    invoke-virtual {v1, v7, v11, v12}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    .line 542
    .line 543
    .line 544
    move-result v11

    .line 545
    if-nez v11, :cond_d

    .line 546
    .line 547
    goto :goto_b

    .line 548
    :cond_d
    iget-wide v11, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    .line 549
    .line 550
    iget-object v13, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 551
    .line 552
    iget-object v14, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 553
    .line 554
    iget v15, v13, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    .line 555
    .line 556
    aget-wide v15, v14, v15

    .line 557
    .line 558
    add-long/2addr v11, v15

    .line 559
    iput-wide v11, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    .line 560
    .line 561
    iget-wide v11, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    .line 562
    .line 563
    iget v13, v13, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    .line 564
    .line 565
    aget-wide v13, v14, v13

    .line 566
    .line 567
    add-long/2addr v11, v13

    .line 568
    iput-wide v11, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    .line 569
    .line 570
    goto :goto_b

    .line 571
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 572
    .line 573
    goto :goto_a

    .line 574
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 579
    .line 580
    .line 581
    move-result v6

    .line 582
    if-eqz v6, :cond_1b

    .line 583
    .line 584
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v6

    .line 588
    check-cast v6, Ljava/lang/Integer;

    .line 589
    .line 590
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 591
    .line 592
    .line 593
    move-result v6

    .line 594
    const/4 v7, 0x0

    .line 595
    :goto_c
    iget-object v9, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 596
    .line 597
    iget-object v9, v9, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 598
    .line 599
    check-cast v9, Ljava/util/ArrayList;

    .line 600
    .line 601
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 602
    .line 603
    .line 604
    move-result v9

    .line 605
    if-ge v7, v9, :cond_10

    .line 606
    .line 607
    iget-object v9, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 608
    .line 609
    iget-object v9, v9, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 610
    .line 611
    check-cast v9, Ljava/util/ArrayList;

    .line 612
    .line 613
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v9

    .line 617
    check-cast v9, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;

    .line 618
    .line 619
    iget-object v10, v9, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 620
    .line 621
    iget-object v10, v10, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 622
    .line 623
    check-cast v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;

    .line 624
    .line 625
    iget-wide v11, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    .line 626
    .line 627
    iget-wide v13, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    .line 628
    .line 629
    cmp-long v13, v11, v13

    .line 630
    .line 631
    if-lez v13, :cond_11

    .line 632
    .line 633
    move v13, v3

    .line 634
    goto :goto_d

    .line 635
    :cond_11
    const/4 v13, 0x0

    .line 636
    :goto_d
    iget-wide v14, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    .line 637
    .line 638
    cmp-long v11, v11, v14

    .line 639
    .line 640
    if-lez v11, :cond_12

    .line 641
    .line 642
    move v11, v3

    .line 643
    goto :goto_e

    .line 644
    :cond_12
    const/4 v11, 0x0

    .line 645
    :goto_e
    iget-object v9, v9, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 646
    .line 647
    check-cast v9, Ljava/util/ArrayList;

    .line 648
    .line 649
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 650
    .line 651
    .line 652
    move-result-object v9

    .line 653
    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 654
    .line 655
    .line 656
    move-result v12

    .line 657
    if-eqz v12, :cond_1a

    .line 658
    .line 659
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v12

    .line 663
    check-cast v12, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 664
    .line 665
    iget-object v14, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 666
    .line 667
    iget-object v15, v12, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 668
    .line 669
    invoke-virtual {v1, v6, v15, v14}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    .line 670
    .line 671
    .line 672
    move-result v14

    .line 673
    if-nez v14, :cond_13

    .line 674
    .line 675
    goto :goto_f

    .line 676
    :cond_13
    if-eqz v13, :cond_15

    .line 677
    .line 678
    iget-wide v14, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    .line 679
    .line 680
    const-wide/16 v16, 0x0

    .line 681
    .line 682
    cmp-long v18, v14, v16

    .line 683
    .line 684
    move-object/from16 v17, v9

    .line 685
    .line 686
    if-eqz v18, :cond_14

    .line 687
    .line 688
    iget-wide v8, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 689
    .line 690
    iget-object v3, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 691
    .line 692
    iget-object v4, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 693
    .line 694
    iget v3, v3, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    .line 695
    .line 696
    aget-wide v3, v4, v3

    .line 697
    .line 698
    long-to-double v3, v3

    .line 699
    mul-double/2addr v8, v3

    .line 700
    long-to-double v3, v14

    .line 701
    :goto_10
    div-double/2addr v8, v3

    .line 702
    const-wide/16 v3, 0x0

    .line 703
    .line 704
    add-double/2addr v8, v3

    .line 705
    goto :goto_12

    .line 706
    :cond_14
    move-wide v3, v4

    .line 707
    goto :goto_11

    .line 708
    :cond_15
    move-object/from16 v17, v9

    .line 709
    .line 710
    iget-wide v3, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    .line 711
    .line 712
    const-wide/16 v8, 0x0

    .line 713
    .line 714
    cmp-long v5, v3, v8

    .line 715
    .line 716
    if-eqz v5, :cond_16

    .line 717
    .line 718
    iget-wide v8, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 719
    .line 720
    iget-object v5, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 721
    .line 722
    iget-object v14, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 723
    .line 724
    iget v5, v5, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    .line 725
    .line 726
    aget-wide v14, v14, v5

    .line 727
    .line 728
    long-to-double v14, v14

    .line 729
    mul-double/2addr v8, v14

    .line 730
    long-to-double v3, v3

    .line 731
    goto :goto_10

    .line 732
    :cond_16
    const-wide/16 v3, 0x0

    .line 733
    .line 734
    :goto_11
    move-wide v8, v3

    .line 735
    :goto_12
    if-eqz v11, :cond_18

    .line 736
    .line 737
    iget-wide v14, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    .line 738
    .line 739
    const-wide/16 v19, 0x0

    .line 740
    .line 741
    cmp-long v5, v14, v19

    .line 742
    .line 743
    if-eqz v5, :cond_17

    .line 744
    .line 745
    iget-wide v3, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 746
    .line 747
    iget-object v5, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 748
    .line 749
    move-object/from16 v21, v2

    .line 750
    .line 751
    iget-object v2, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 752
    .line 753
    iget v5, v5, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    .line 754
    .line 755
    aget-wide v1, v2, v5

    .line 756
    .line 757
    long-to-double v1, v1

    .line 758
    mul-double/2addr v3, v1

    .line 759
    long-to-double v1, v14

    .line 760
    div-double/2addr v3, v1

    .line 761
    add-double/2addr v8, v3

    .line 762
    goto :goto_13

    .line 763
    :cond_17
    move-object/from16 v21, v2

    .line 764
    .line 765
    goto :goto_13

    .line 766
    :cond_18
    move-object/from16 v21, v2

    .line 767
    .line 768
    iget-wide v1, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    .line 769
    .line 770
    const-wide/16 v3, 0x0

    .line 771
    .line 772
    cmp-long v5, v1, v3

    .line 773
    .line 774
    if-eqz v5, :cond_19

    .line 775
    .line 776
    iget-wide v14, v10, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 777
    .line 778
    iget-object v5, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 779
    .line 780
    iget-object v3, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 781
    .line 782
    iget v4, v5, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    .line 783
    .line 784
    aget-wide v3, v3, v4

    .line 785
    .line 786
    long-to-double v3, v3

    .line 787
    mul-double/2addr v14, v3

    .line 788
    long-to-double v1, v1

    .line 789
    div-double/2addr v14, v1

    .line 790
    add-double/2addr v8, v14

    .line 791
    :cond_19
    :goto_13
    iget-object v1, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 792
    .line 793
    iget-object v2, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 794
    .line 795
    invoke-virtual {v1, v2, v8, v9}, Lcom/android/server/power/stats/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 796
    .line 797
    .line 798
    iget-object v1, v12, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 799
    .line 800
    iget-object v2, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 801
    .line 802
    move-object/from16 v3, p1

    .line 803
    .line 804
    invoke-virtual {v3, v6, v1, v2}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    .line 805
    .line 806
    .line 807
    move-object v1, v3

    .line 808
    move-object/from16 v9, v17

    .line 809
    .line 810
    move-object/from16 v2, v21

    .line 811
    .line 812
    const/4 v3, 0x1

    .line 813
    const-wide/16 v4, 0x0

    .line 814
    .line 815
    goto/16 :goto_f

    .line 816
    .line 817
    :cond_1a
    move-object v3, v1

    .line 818
    move-object/from16 v21, v2

    .line 819
    .line 820
    add-int/lit8 v7, v7, 0x1

    .line 821
    .line 822
    const/4 v3, 0x1

    .line 823
    const-wide/16 v4, 0x0

    .line 824
    .line 825
    goto/16 :goto_c

    .line 826
    .line 827
    :cond_1b
    iget-object v0, v0, Lcom/android/server/power/stats/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 828
    .line 829
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    .line 830
    .line 831
    .line 832
    return-void
.end method
