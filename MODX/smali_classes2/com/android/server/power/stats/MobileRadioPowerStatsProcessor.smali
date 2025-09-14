.class public final Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;
.super Lcom/android/server/power/stats/PowerStatsProcessor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NUM_SIGNAL_STRENGTH_LEVELS:I


# instance fields
.field public final mCallPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field public mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

.field public final mRxTxPowerEstimators:Landroid/util/SparseArray;

.field public final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

.field public mTmpDeviceStatsArray:[J

.field public mTmpStateStatsArray:[J

.field public mTmpUidStatsArray:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->NUM_SIGNAL_STRENGTH_LEVELS:I

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mRxTxPowerEstimators:Landroid/util/SparseArray;

    .line 14
    .line 15
    const-wide v2, 0x100000000L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/4 v7, 0x0

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    iput-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v6, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 37
    .line 38
    invoke-direct {v6, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 39
    .line 40
    .line 41
    iput-object v6, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 42
    .line 43
    :goto_0
    const-wide v2, 0x110000000L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    iput-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    new-instance v6, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 62
    .line 63
    invoke-direct {v6, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 64
    .line 65
    .line 66
    iput-object v6, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 67
    .line 68
    :goto_1
    const-string/jumbo v2, "radio.active"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    const/4 v7, 0x1

    .line 80
    const-wide/16 v8, 0x0

    .line 81
    .line 82
    const/4 v10, 0x0

    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    const-string/jumbo v2, "modem.controller.rx"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    add-double/2addr v2, v8

    .line 93
    move v6, v10

    .line 94
    :goto_2
    sget v11, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->NUM_SIGNAL_STRENGTH_LEVELS:I

    .line 95
    .line 96
    if-ge v6, v11, :cond_2

    .line 97
    .line 98
    const-string/jumbo v11, "modem.controller.tx"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v11, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    .line 102
    .line 103
    .line 104
    move-result-wide v11

    .line 105
    add-double/2addr v2, v11

    .line 106
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_2
    add-int/2addr v11, v7

    .line 110
    int-to-double v11, v11

    .line 111
    div-double/2addr v2, v11

    .line 112
    :cond_3
    new-instance v6, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 113
    .line 114
    invoke-direct {v6, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 115
    .line 116
    .line 117
    iput-object v6, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mCallPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 118
    .line 119
    new-instance v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 120
    .line 121
    const-string/jumbo v3, "radio.scanning"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v3, v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    .line 125
    .line 126
    .line 127
    move-result-wide v11

    .line 128
    invoke-direct {v2, v11, v12}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 129
    .line 130
    .line 131
    iput-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 132
    .line 133
    move v2, v10

    .line 134
    :goto_3
    const/4 v3, 0x3

    .line 135
    if-ge v2, v3, :cond_a

    .line 136
    .line 137
    const/4 v3, 0x2

    .line 138
    if-ne v2, v3, :cond_4

    .line 139
    .line 140
    const/4 v6, 0x5

    .line 141
    goto :goto_4

    .line 142
    :cond_4
    move v6, v7

    .line 143
    :goto_4
    move v11, v10

    .line 144
    :goto_5
    if-ge v11, v6, :cond_9

    .line 145
    .line 146
    iget-object v12, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mRxTxPowerEstimators:Landroid/util/SparseArray;

    .line 147
    .line 148
    if-ne v2, v3, :cond_5

    .line 149
    .line 150
    shl-int/lit8 v13, v11, 0x8

    .line 151
    .line 152
    or-int/2addr v13, v2

    .line 153
    goto :goto_6

    .line 154
    :cond_5
    move v13, v2

    .line 155
    :goto_6
    new-instance v14, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;

    .line 156
    .line 157
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    .line 161
    .line 162
    .line 163
    move-result v15

    .line 164
    new-array v15, v15, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 165
    .line 166
    iput-object v15, v14, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mTxPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 167
    .line 168
    const/high16 v15, 0x20000000

    .line 169
    .line 170
    const/4 v3, -0x1

    .line 171
    invoke-static {v15, v2, v11, v3}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainKey(IIII)J

    .line 172
    .line 173
    .line 174
    move-result-wide v7

    .line 175
    invoke-virtual {v1, v7, v8, v4, v5}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    .line 176
    .line 177
    .line 178
    move-result-wide v16

    .line 179
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    const-string v9, "Unavailable Power Profile constant for key 0x"

    .line 184
    .line 185
    const-string v15, "MobileRadioPowerStatsProcessor"

    .line 186
    .line 187
    if-eqz v3, :cond_6

    .line 188
    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-static {v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    const-wide/16 v7, 0x0

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_6
    move-wide/from16 v7, v16

    .line 212
    .line 213
    :goto_7
    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 214
    .line 215
    invoke-direct {v3, v7, v8}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 216
    .line 217
    .line 218
    iput-object v3, v14, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 219
    .line 220
    move v3, v10

    .line 221
    :goto_8
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    if-ge v3, v7, :cond_8

    .line 226
    .line 227
    const/high16 v7, 0x30000000

    .line 228
    .line 229
    invoke-static {v7, v2, v11, v3}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainKey(IIII)J

    .line 230
    .line 231
    .line 232
    move-result-wide v7

    .line 233
    invoke-virtual {v1, v7, v8, v4, v5}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    .line 234
    .line 235
    .line 236
    move-result-wide v16

    .line 237
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    .line 238
    .line 239
    .line 240
    move-result v18

    .line 241
    if-eqz v18, :cond_7

    .line 242
    .line 243
    new-instance v4, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-static {v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    const-wide/16 v4, 0x0

    .line 263
    .line 264
    goto :goto_9

    .line 265
    :cond_7
    move-wide/from16 v4, v16

    .line 266
    .line 267
    :goto_9
    iget-object v7, v14, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mTxPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 268
    .line 269
    new-instance v8, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 270
    .line 271
    invoke-direct {v8, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 272
    .line 273
    .line 274
    aput-object v8, v7, v3

    .line 275
    .line 276
    add-int/lit8 v3, v3, 0x1

    .line 277
    .line 278
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 279
    .line 280
    goto :goto_8

    .line 281
    :cond_8
    invoke-virtual {v12, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    add-int/lit8 v11, v11, 0x1

    .line 285
    .line 286
    const/4 v3, 0x2

    .line 287
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 288
    .line 289
    const/4 v7, 0x1

    .line 290
    const-wide/16 v8, 0x0

    .line 291
    .line 292
    goto/16 :goto_5

    .line 293
    .line 294
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 295
    .line 296
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    .line 297
    .line 298
    const/4 v7, 0x1

    .line 299
    const-wide/16 v8, 0x0

    .line 300
    .line 301
    goto/16 :goto_3

    .line 302
    .line 303
    :cond_a
    return-void
.end method


# virtual methods
.method public final finish(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V
    .locals 18

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
    iget-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

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
    iput-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 20
    .line 21
    new-instance v3, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Lcom/android/server/power/stats/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 24
    .line 25
    .line 26
    iput-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 27
    .line 28
    iget v3, v2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    .line 29
    .line 30
    new-array v3, v3, [J

    .line 31
    .line 32
    iput-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 33
    .line 34
    iget v3, v2, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    .line 35
    .line 36
    new-array v3, v3, [J

    .line 37
    .line 38
    iput-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    .line 39
    .line 40
    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    .line 41
    .line 42
    new-array v2, v2, [J

    .line 43
    .line 44
    iput-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 45
    .line 46
    :goto_0
    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 47
    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    new-instance v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 51
    .line 52
    iget-object v3, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 53
    .line 54
    invoke-direct {v2, v3}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;)V

    .line 55
    .line 56
    .line 57
    iput-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 58
    .line 59
    :cond_2
    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 60
    .line 61
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 62
    .line 63
    check-cast v2, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    add-int/lit8 v2, v2, -0x1

    .line 70
    .line 71
    :goto_1
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    if-ltz v2, :cond_a

    .line 77
    .line 78
    iget-object v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 79
    .line 80
    iget-object v5, v5, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 81
    .line 82
    check-cast v5, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    check-cast v5, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 89
    .line 90
    new-instance v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;

    .line 91
    .line 92
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v6, v5, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 96
    .line 97
    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 98
    .line 99
    iget-object v5, v5, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 100
    .line 101
    invoke-virtual {v1, v5, v7}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-nez v7, :cond_3

    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_3
    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 110
    .line 111
    iget v7, v7, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 112
    .line 113
    add-int/lit8 v7, v7, -0x1

    .line 114
    .line 115
    :goto_2
    if-ltz v7, :cond_4

    .line 116
    .line 117
    iget-wide v8, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 118
    .line 119
    iget-object v10, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 120
    .line 121
    iget-object v11, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 122
    .line 123
    invoke-virtual {v10, v7, v11}, Lcom/android/server/power/stats/PowerStatsLayout;->getConsumedEnergy(I[J)J

    .line 124
    .line 125
    .line 126
    move-result-wide v10

    .line 127
    add-long/2addr v10, v8

    .line 128
    iput-wide v10, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 129
    .line 130
    add-int/lit8 v7, v7, -0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 134
    .line 135
    if-eqz v7, :cond_5

    .line 136
    .line 137
    iget-wide v8, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 138
    .line 139
    iget-object v10, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 140
    .line 141
    iget-object v11, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 142
    .line 143
    iget v10, v10, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceSleepTimePosition:I

    .line 144
    .line 145
    aget-wide v10, v11, v10

    .line 146
    .line 147
    iget-wide v12, v7, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 148
    .line 149
    long-to-double v10, v10

    .line 150
    mul-double/2addr v12, v10

    .line 151
    add-double/2addr v12, v8

    .line 152
    iput-wide v12, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 153
    .line 154
    :cond_5
    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 155
    .line 156
    if-eqz v7, :cond_6

    .line 157
    .line 158
    iget-wide v8, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 159
    .line 160
    iget-object v10, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 161
    .line 162
    iget-object v11, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 163
    .line 164
    iget v10, v10, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 165
    .line 166
    aget-wide v10, v11, v10

    .line 167
    .line 168
    iget-wide v12, v7, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 169
    .line 170
    long-to-double v10, v10

    .line 171
    mul-double/2addr v12, v10

    .line 172
    add-double/2addr v12, v8

    .line 173
    iput-wide v12, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 174
    .line 175
    :cond_6
    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 176
    .line 177
    if-eqz v7, :cond_7

    .line 178
    .line 179
    iget-wide v8, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 180
    .line 181
    iget-object v10, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 182
    .line 183
    iget-object v11, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 184
    .line 185
    iget v10, v10, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 186
    .line 187
    aget-wide v10, v11, v10

    .line 188
    .line 189
    iget-wide v12, v7, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 190
    .line 191
    long-to-double v10, v10

    .line 192
    mul-double/2addr v12, v10

    .line 193
    add-double/2addr v12, v8

    .line 194
    iput-wide v12, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 195
    .line 196
    :cond_7
    new-instance v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;

    .line 197
    .line 198
    invoke-direct {v7, v0, v1, v5, v6}, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;)V

    .line 199
    .line 200
    .line 201
    iget-object v8, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 202
    .line 203
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    add-int/lit8 v8, v8, -0x1

    .line 208
    .line 209
    :goto_3
    if-ltz v8, :cond_8

    .line 210
    .line 211
    iget-object v9, v1, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 212
    .line 213
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    invoke-virtual {v7, v9}, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;->accept(I)V

    .line 218
    .line 219
    .line 220
    add-int/lit8 v8, v8, -0x1

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_8
    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mCallPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 224
    .line 225
    if-eqz v7, :cond_9

    .line 226
    .line 227
    iget-object v8, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 228
    .line 229
    iget-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 230
    .line 231
    iget v8, v8, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceCallTimePosition:I

    .line 232
    .line 233
    aget-wide v8, v9, v8

    .line 234
    .line 235
    iget-wide v10, v7, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 236
    .line 237
    long-to-double v7, v8

    .line 238
    mul-double/2addr v10, v7

    .line 239
    iput-wide v10, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    .line 240
    .line 241
    :cond_9
    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 242
    .line 243
    iget-object v8, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 244
    .line 245
    iget-wide v9, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 246
    .line 247
    iget-wide v11, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 248
    .line 249
    add-double/2addr v9, v11

    .line 250
    iget-wide v11, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 251
    .line 252
    add-double/2addr v9, v11

    .line 253
    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/power/stats/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 254
    .line 255
    .line 256
    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 257
    .line 258
    iget-object v8, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 259
    .line 260
    iget-wide v9, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    .line 261
    .line 262
    iget v6, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    .line 263
    .line 264
    mul-double/2addr v9, v3

    .line 265
    double-to-long v3, v9

    .line 266
    aput-wide v3, v8, v6

    .line 267
    .line 268
    invoke-virtual {v1, v5, v8}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 269
    .line 270
    .line 271
    :goto_4
    add-int/lit8 v2, v2, -0x1

    .line 272
    .line 273
    goto/16 :goto_1

    .line 274
    .line 275
    :cond_a
    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 276
    .line 277
    iget v2, v2, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceEnergyConsumerCount:I

    .line 278
    .line 279
    const-wide/16 v5, 0x0

    .line 280
    .line 281
    if-eqz v2, :cond_e

    .line 282
    .line 283
    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 284
    .line 285
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 286
    .line 287
    check-cast v2, Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    add-int/lit8 v2, v2, -0x1

    .line 294
    .line 295
    move-wide v9, v5

    .line 296
    const-wide/16 v11, 0x0

    .line 297
    .line 298
    :goto_5
    if-ltz v2, :cond_b

    .line 299
    .line 300
    iget-object v13, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 301
    .line 302
    iget-object v13, v13, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 303
    .line 304
    check-cast v13, Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v13

    .line 310
    check-cast v13, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 311
    .line 312
    iget-object v13, v13, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v13, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;

    .line 315
    .line 316
    iget-wide v14, v13, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 317
    .line 318
    iget-wide v7, v13, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 319
    .line 320
    add-double/2addr v14, v7

    .line 321
    iget-wide v7, v13, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 322
    .line 323
    add-double/2addr v14, v7

    .line 324
    iget-wide v7, v13, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    .line 325
    .line 326
    add-double/2addr v14, v7

    .line 327
    add-double/2addr v9, v14

    .line 328
    iget-wide v7, v13, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 329
    .line 330
    add-long/2addr v11, v7

    .line 331
    add-int/lit8 v2, v2, -0x1

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_b
    cmpl-double v2, v9, v5

    .line 335
    .line 336
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 337
    .line 338
    if-nez v2, :cond_c

    .line 339
    .line 340
    move-wide v11, v7

    .line 341
    goto :goto_6

    .line 342
    :cond_c
    long-to-double v11, v11

    .line 343
    const-wide v13, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    mul-double/2addr v11, v13

    .line 349
    div-double/2addr v11, v9

    .line 350
    :goto_6
    cmpl-double v2, v11, v7

    .line 351
    .line 352
    if-eqz v2, :cond_e

    .line 353
    .line 354
    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 355
    .line 356
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 357
    .line 358
    check-cast v2, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 361
    .line 362
    .line 363
    move-result v2

    .line 364
    add-int/lit8 v2, v2, -0x1

    .line 365
    .line 366
    :goto_7
    if-ltz v2, :cond_e

    .line 367
    .line 368
    iget-object v7, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 369
    .line 370
    iget-object v7, v7, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 371
    .line 372
    check-cast v7, Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    check-cast v7, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 379
    .line 380
    iget-object v8, v7, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    .line 381
    .line 382
    iget-object v7, v7, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;

    .line 385
    .line 386
    iget-wide v9, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 387
    .line 388
    mul-double/2addr v9, v11

    .line 389
    iput-wide v9, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 390
    .line 391
    iget-wide v9, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 392
    .line 393
    mul-double/2addr v9, v11

    .line 394
    iput-wide v9, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 395
    .line 396
    iget-wide v9, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 397
    .line 398
    mul-double/2addr v9, v11

    .line 399
    iput-wide v9, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 400
    .line 401
    iget-wide v9, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    .line 402
    .line 403
    mul-double/2addr v9, v11

    .line 404
    iput-wide v9, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    .line 405
    .line 406
    iget-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 407
    .line 408
    invoke-virtual {v1, v8, v9}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getDeviceStats([I[J)Z

    .line 409
    .line 410
    .line 411
    move-result v9

    .line 412
    if-nez v9, :cond_d

    .line 413
    .line 414
    goto :goto_8

    .line 415
    :cond_d
    iget-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 416
    .line 417
    iget-object v10, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 418
    .line 419
    iget-wide v13, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 420
    .line 421
    iget-wide v5, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 422
    .line 423
    add-double/2addr v13, v5

    .line 424
    iget-wide v5, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 425
    .line 426
    add-double/2addr v13, v5

    .line 427
    invoke-virtual {v9, v10, v13, v14}, Lcom/android/server/power/stats/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 428
    .line 429
    .line 430
    iget-object v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 431
    .line 432
    iget-object v6, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 433
    .line 434
    iget-wide v9, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    .line 435
    .line 436
    iget v5, v5, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mDeviceCallPowerPosition:I

    .line 437
    .line 438
    mul-double/2addr v9, v3

    .line 439
    double-to-long v9, v9

    .line 440
    aput-wide v9, v6, v5

    .line 441
    .line 442
    invoke-virtual {v1, v8, v6}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 443
    .line 444
    .line 445
    :goto_8
    add-int/lit8 v2, v2, -0x1

    .line 446
    .line 447
    const-wide/16 v5, 0x0

    .line 448
    .line 449
    goto :goto_7

    .line 450
    :cond_e
    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 451
    .line 452
    iget-object v2, v2, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 453
    .line 454
    check-cast v2, Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    add-int/lit8 v2, v2, -0x1

    .line 461
    .line 462
    :goto_9
    if-ltz v2, :cond_10

    .line 463
    .line 464
    iget-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 465
    .line 466
    iget-object v3, v3, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 467
    .line 468
    check-cast v3, Ljava/util/ArrayList;

    .line 469
    .line 470
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    check-cast v3, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 475
    .line 476
    new-instance v4, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;

    .line 477
    .line 478
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 479
    .line 480
    .line 481
    iput-object v4, v3, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 482
    .line 483
    iget-object v3, v3, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 484
    .line 485
    check-cast v3, Ljava/util/ArrayList;

    .line 486
    .line 487
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 488
    .line 489
    .line 490
    move-result v5

    .line 491
    add-int/lit8 v5, v5, -0x1

    .line 492
    .line 493
    :goto_a
    if-ltz v5, :cond_f

    .line 494
    .line 495
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v6

    .line 499
    check-cast v6, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;

    .line 500
    .line 501
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 502
    .line 503
    check-cast v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;

    .line 504
    .line 505
    iget-wide v7, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 506
    .line 507
    iget-wide v9, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 508
    .line 509
    add-double/2addr v7, v9

    .line 510
    iput-wide v7, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 511
    .line 512
    iget-wide v7, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 513
    .line 514
    iget-wide v9, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 515
    .line 516
    add-double/2addr v7, v9

    .line 517
    iput-wide v7, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 518
    .line 519
    iget-wide v7, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 520
    .line 521
    iget-wide v9, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 522
    .line 523
    add-double/2addr v7, v9

    .line 524
    iput-wide v7, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 525
    .line 526
    iget-wide v7, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 527
    .line 528
    iget-wide v9, v6, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 529
    .line 530
    add-long/2addr v7, v9

    .line 531
    iput-wide v7, v4, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 532
    .line 533
    add-int/lit8 v5, v5, -0x1

    .line 534
    .line 535
    goto :goto_a

    .line 536
    :cond_f
    add-int/lit8 v2, v2, -0x1

    .line 537
    .line 538
    goto :goto_9

    .line 539
    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    .line 540
    .line 541
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->collectUids(Ljava/util/Collection;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    if-nez v3, :cond_1a

    .line 552
    .line 553
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    if-eqz v4, :cond_14

    .line 562
    .line 563
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v4

    .line 567
    check-cast v4, Ljava/lang/Integer;

    .line 568
    .line 569
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    const/4 v5, 0x0

    .line 574
    :goto_b
    iget-object v6, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 575
    .line 576
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 577
    .line 578
    check-cast v6, Ljava/util/ArrayList;

    .line 579
    .line 580
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 581
    .line 582
    .line 583
    move-result v6

    .line 584
    if-ge v5, v6, :cond_11

    .line 585
    .line 586
    iget-object v6, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 587
    .line 588
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 589
    .line 590
    check-cast v6, Ljava/util/ArrayList;

    .line 591
    .line 592
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    check-cast v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;

    .line 597
    .line 598
    iget-object v7, v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 599
    .line 600
    iget-object v7, v7, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 601
    .line 602
    check-cast v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;

    .line 603
    .line 604
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 605
    .line 606
    check-cast v6, Ljava/util/ArrayList;

    .line 607
    .line 608
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 609
    .line 610
    .line 611
    move-result-object v6

    .line 612
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 613
    .line 614
    .line 615
    move-result v8

    .line 616
    if-eqz v8, :cond_13

    .line 617
    .line 618
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v8

    .line 622
    check-cast v8, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 623
    .line 624
    iget-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 625
    .line 626
    iget-object v8, v8, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 627
    .line 628
    invoke-virtual {v1, v4, v8, v9}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    .line 629
    .line 630
    .line 631
    move-result v8

    .line 632
    if-nez v8, :cond_12

    .line 633
    .line 634
    goto :goto_c

    .line 635
    :cond_12
    iget-wide v8, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->rxPackets:J

    .line 636
    .line 637
    iget-object v10, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 638
    .line 639
    iget-object v11, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 640
    .line 641
    iget v12, v10, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 642
    .line 643
    aget-wide v12, v11, v12

    .line 644
    .line 645
    add-long/2addr v8, v12

    .line 646
    iput-wide v8, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->rxPackets:J

    .line 647
    .line 648
    iget-wide v8, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->txPackets:J

    .line 649
    .line 650
    iget v10, v10, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 651
    .line 652
    aget-wide v10, v11, v10

    .line 653
    .line 654
    add-long/2addr v8, v10

    .line 655
    iput-wide v8, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->txPackets:J

    .line 656
    .line 657
    goto :goto_c

    .line 658
    :cond_13
    add-int/lit8 v5, v5, 0x1

    .line 659
    .line 660
    goto :goto_b

    .line 661
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    if-eqz v3, :cond_1a

    .line 670
    .line 671
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v3

    .line 675
    check-cast v3, Ljava/lang/Integer;

    .line 676
    .line 677
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 678
    .line 679
    .line 680
    move-result v3

    .line 681
    const/4 v4, 0x0

    .line 682
    :goto_e
    iget-object v6, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 683
    .line 684
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 685
    .line 686
    check-cast v6, Ljava/util/ArrayList;

    .line 687
    .line 688
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 689
    .line 690
    .line 691
    move-result v6

    .line 692
    if-ge v4, v6, :cond_19

    .line 693
    .line 694
    iget-object v6, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 695
    .line 696
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 697
    .line 698
    check-cast v6, Ljava/util/ArrayList;

    .line 699
    .line 700
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v6

    .line 704
    check-cast v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;

    .line 705
    .line 706
    iget-object v7, v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 707
    .line 708
    iget-object v7, v7, Lcom/android/server/power/stats/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 709
    .line 710
    check-cast v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;

    .line 711
    .line 712
    iget-object v6, v6, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 713
    .line 714
    check-cast v6, Ljava/util/ArrayList;

    .line 715
    .line 716
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 717
    .line 718
    .line 719
    move-result-object v6

    .line 720
    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 721
    .line 722
    .line 723
    move-result v8

    .line 724
    if-eqz v8, :cond_18

    .line 725
    .line 726
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v8

    .line 730
    check-cast v8, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 731
    .line 732
    iget-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 733
    .line 734
    iget-object v10, v8, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 735
    .line 736
    invoke-virtual {v1, v3, v10, v9}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->getUidStats(I[I[J)Z

    .line 737
    .line 738
    .line 739
    move-result v9

    .line 740
    if-nez v9, :cond_15

    .line 741
    .line 742
    goto :goto_f

    .line 743
    :cond_15
    iget-wide v9, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->rxPackets:J

    .line 744
    .line 745
    const-wide/16 v11, 0x0

    .line 746
    .line 747
    cmp-long v13, v9, v11

    .line 748
    .line 749
    if-eqz v13, :cond_16

    .line 750
    .line 751
    iget-wide v11, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 752
    .line 753
    iget-object v13, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 754
    .line 755
    iget-object v14, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 756
    .line 757
    iget v13, v13, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidRxPacketsPosition:I

    .line 758
    .line 759
    aget-wide v13, v14, v13

    .line 760
    .line 761
    long-to-double v13, v13

    .line 762
    mul-double/2addr v11, v13

    .line 763
    long-to-double v9, v9

    .line 764
    div-double/2addr v11, v9

    .line 765
    const-wide/16 v9, 0x0

    .line 766
    .line 767
    add-double/2addr v11, v9

    .line 768
    goto :goto_10

    .line 769
    :cond_16
    const-wide/16 v9, 0x0

    .line 770
    .line 771
    move-wide v11, v9

    .line 772
    :goto_10
    iget-wide v13, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->txPackets:J

    .line 773
    .line 774
    const-wide/16 v15, 0x0

    .line 775
    .line 776
    cmp-long v17, v13, v15

    .line 777
    .line 778
    move-object/from16 p3, v6

    .line 779
    .line 780
    if-eqz v17, :cond_17

    .line 781
    .line 782
    iget-wide v5, v7, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 783
    .line 784
    iget-object v9, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 785
    .line 786
    iget-object v10, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 787
    .line 788
    iget v9, v9, Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;->mUidTxPacketsPosition:I

    .line 789
    .line 790
    aget-wide v9, v10, v9

    .line 791
    .line 792
    long-to-double v9, v9

    .line 793
    mul-double/2addr v5, v9

    .line 794
    long-to-double v9, v13

    .line 795
    div-double/2addr v5, v9

    .line 796
    add-double/2addr v11, v5

    .line 797
    :cond_17
    iget-object v5, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/MobileRadioPowerStatsLayout;

    .line 798
    .line 799
    iget-object v6, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 800
    .line 801
    invoke-virtual {v5, v6, v11, v12}, Lcom/android/server/power/stats/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 802
    .line 803
    .line 804
    iget-object v5, v8, Lcom/android/server/power/stats/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    .line 805
    .line 806
    iget-object v6, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 807
    .line 808
    invoke-virtual {v1, v3, v5, v6}, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    .line 809
    .line 810
    .line 811
    move-object/from16 v6, p3

    .line 812
    .line 813
    goto :goto_f

    .line 814
    :cond_18
    const-wide/16 v15, 0x0

    .line 815
    .line 816
    add-int/lit8 v4, v4, 0x1

    .line 817
    .line 818
    goto/16 :goto_e

    .line 819
    .line 820
    :cond_19
    const-wide/16 v15, 0x0

    .line 821
    .line 822
    goto/16 :goto_d

    .line 823
    .line 824
    :cond_1a
    iget-object v0, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;

    .line 825
    .line 826
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    .line 827
    .line 828
    .line 829
    return-void
.end method
