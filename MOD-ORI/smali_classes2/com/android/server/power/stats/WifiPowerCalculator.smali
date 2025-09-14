.class public final Lcom/android/server/power/stats/WifiPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final mBatchScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mHasWifiPowerController:Z

.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mPowerOnPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mWifiPowerPerPacket:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    .line 3
    .line 4
    sput-object v0, Lcom/android/server/power/stats/WifiPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 5
    .line 6
    const-string/jumbo v1, "wifi.on"

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
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mPowerOnPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 19
    .line 20
    const-string/jumbo v1, "wifi.scan"

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
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 33
    .line 34
    const-string/jumbo v1, "wifi.batchedscan"

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
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mBatchScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 45
    .line 46
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 47
    .line 48
    const-string/jumbo v1, "wifi.controller.idle"

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
    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 59
    .line 60
    new-instance v1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 61
    .line 62
    const-string/jumbo v2, "wifi.controller.tx"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    invoke-direct {v1, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 73
    .line 74
    new-instance v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 75
    .line 76
    const-string/jumbo v3, "wifi.controller.rx"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 80
    .line 81
    .line 82
    move-result-wide v3

    .line 83
    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 84
    .line 85
    .line 86
    iput-object v2, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 87
    .line 88
    const-string/jumbo v3, "wifi.active"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    const-wide v5, 0x40ac200000000000L    # 3600.0

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    div-double/2addr v3, v5

    .line 101
    const-wide v5, 0x404e848000000000L    # 61.03515625

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    div-double/2addr v3, v5

    .line 107
    iput-wide v3, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mWifiPowerPerPacket:D

    .line 108
    .line 109
    iget-wide v3, v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 110
    .line 111
    const-wide/16 v5, 0x0

    .line 112
    .line 113
    cmpl-double p1, v3, v5

    .line 114
    .line 115
    if-eqz p1, :cond_0

    .line 116
    .line 117
    iget-wide v0, v1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 118
    .line 119
    cmpl-double p1, v0, v5

    .line 120
    .line 121
    if-eqz p1, :cond_0

    .line 122
    .line 123
    iget-wide v0, v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 124
    .line 125
    cmpl-double p1, v0, v5

    .line 126
    .line 127
    if-eqz p1, :cond_0

    .line 128
    .line 129
    const/4 p1, 0x1

    .line 130
    goto :goto_0

    .line 131
    :cond_0
    const/4 p1, 0x0

    .line 132
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mHasWifiPowerController:Z

    .line 133
    .line 134
    return-void
.end method


# virtual methods
.method public final calcPowerFromControllerDataMah(JJJ)D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 2
    .line 3
    iget-wide v0, v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 4
    .line 5
    long-to-double p1, p1

    .line 6
    mul-double/2addr v0, p1

    .line 7
    iget-object p1, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 8
    .line 9
    iget-wide p1, p1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 10
    .line 11
    long-to-double p3, p3

    .line 12
    mul-double/2addr p1, p3

    .line 13
    add-double/2addr p1, v0

    .line 14
    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 15
    .line 16
    iget-wide p3, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 17
    .line 18
    long-to-double p5, p5

    .line 19
    mul-double/2addr p3, p5

    .line 20
    add-double/2addr p3, p1

    .line 21
    return-wide p3
.end method

.method public final calcPowerWithoutControllerDataMah(JJJJJ)D
    .locals 0

    .line 1
    add-long/2addr p1, p3

    .line 2
    long-to-double p1, p1

    .line 3
    iget-wide p3, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mWifiPowerPerPacket:D

    .line 4
    .line 5
    mul-double/2addr p1, p3

    .line 6
    iget-object p3, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mPowerOnPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 7
    .line 8
    iget-wide p3, p3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 9
    .line 10
    long-to-double p5, p5

    .line 11
    mul-double/2addr p3, p5

    .line 12
    add-double/2addr p3, p1

    .line 13
    iget-object p1, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 14
    .line 15
    iget-wide p1, p1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 16
    .line 17
    long-to-double p5, p7

    .line 18
    mul-double/2addr p1, p5

    .line 19
    add-double/2addr p1, p3

    .line 20
    iget-object p0, p0, Lcom/android/server/power/stats/WifiPowerCalculator;->mBatchScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 21
    .line 22
    iget-wide p3, p0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 23
    .line 24
    long-to-double p5, p9

    .line 25
    mul-double/2addr p3, p5

    .line 26
    add-double/2addr p3, p1

    .line 27
    return-wide p3
.end method

.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 42

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-wide/from16 v13, p3

    .line 6
    .line 7
    move-object/from16 v15, p7

    .line 8
    .line 9
    sget-object v0, Lcom/android/server/power/stats/WifiPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v10, 0x1

    .line 20
    sub-int/2addr v1, v10

    .line 21
    const/16 v16, 0x0

    .line 22
    .line 23
    move v3, v1

    .line 24
    move-object/from16 v4, v16

    .line 25
    .line 26
    move-object/from16 v19, v4

    .line 27
    .line 28
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    const-wide/16 v17, 0x0

    .line 31
    .line 32
    :goto_0
    const-wide/16 v20, 0x3e8

    .line 33
    .line 34
    iget-boolean v5, v11, Lcom/android/server/power/stats/WifiPowerCalculator;->mHasWifiPowerController:Z

    .line 35
    .line 36
    const-wide v22, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const/16 v6, 0xb

    .line 42
    .line 43
    if-ltz v3, :cond_10

    .line 44
    .line 45
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v26

    .line 49
    move-object/from16 v10, v26

    .line 50
    .line 51
    check-cast v10, Landroid/os/UidBatteryConsumer$Builder;

    .line 52
    .line 53
    sget-object v7, Lcom/android/server/power/stats/WifiPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 54
    .line 55
    if-ne v0, v7, :cond_1

    .line 56
    .line 57
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-virtual {v10, v6}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    array-length v4, v0

    .line 68
    new-array v4, v4, [D

    .line 69
    .line 70
    move-object v7, v0

    .line 71
    move-object v8, v4

    .line 72
    move-object v4, v7

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    move-object v8, v4

    .line 75
    move-object/from16 v7, v16

    .line 76
    .line 77
    :goto_1
    move-object/from16 v4, v19

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_1
    move-object v7, v0

    .line 81
    move-object v8, v4

    .line 82
    goto :goto_1

    .line 83
    :goto_2
    invoke-virtual {v10}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object/from16 v26, v7

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getWifiEnergyConsumptionUC()J

    .line 90
    .line 91
    .line 92
    move-result-wide v6

    .line 93
    invoke-static {v6, v7, v15}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    move-object/from16 v27, v9

    .line 98
    .line 99
    invoke-virtual {v10}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    .line 104
    .line 105
    .line 106
    move-result v28

    .line 107
    move-wide/from16 v29, v1

    .line 108
    .line 109
    const/4 v1, 0x2

    .line 110
    const/4 v2, 0x0

    .line 111
    invoke-virtual {v9, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 112
    .line 113
    .line 114
    move-result-wide v31

    .line 115
    move/from16 v25, v3

    .line 116
    .line 117
    const/4 v3, 0x3

    .line 118
    invoke-virtual {v9, v3, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    .line 119
    .line 120
    .line 121
    move-result-wide v33

    .line 122
    invoke-virtual {v9, v1, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9, v3, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    .line 126
    .line 127
    .line 128
    if-eqz v28, :cond_9

    .line 129
    .line 130
    if-eqz v5, :cond_9

    .line 131
    .line 132
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-eqz v1, :cond_6

    .line 137
    .line 138
    invoke-virtual {v1}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-virtual {v1}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    aget-object v3, v3, v2

    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v5, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 153
    .line 154
    .line 155
    move-result-wide v20

    .line 156
    invoke-virtual {v3, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 157
    .line 158
    .line 159
    move-result-wide v31

    .line 160
    invoke-virtual {v1, v2}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 161
    .line 162
    .line 163
    move-result-wide v33

    .line 164
    add-long v35, v33, v20

    .line 165
    .line 166
    add-long v35, v35, v31

    .line 167
    .line 168
    const/4 v2, 0x1

    .line 169
    if-ne v0, v2, :cond_2

    .line 170
    .line 171
    move v2, v0

    .line 172
    move-object/from16 v0, p0

    .line 173
    .line 174
    move v12, v2

    .line 175
    move-object/from16 v28, v10

    .line 176
    .line 177
    move-wide/from16 v6, v29

    .line 178
    .line 179
    move-object v10, v1

    .line 180
    move-wide/from16 v1, v20

    .line 181
    .line 182
    move-object v15, v3

    .line 183
    move-object v11, v4

    .line 184
    move-wide/from16 v3, v31

    .line 185
    .line 186
    move-object v13, v5

    .line 187
    move-wide/from16 v37, v6

    .line 188
    .line 189
    const/16 v7, 0xb

    .line 190
    .line 191
    move-wide/from16 v5, v33

    .line 192
    .line 193
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/WifiPowerCalculator;->calcPowerFromControllerDataMah(JJJ)D

    .line 194
    .line 195
    .line 196
    move-result-wide v0

    .line 197
    move-wide/from16 v19, v0

    .line 198
    .line 199
    move v14, v7

    .line 200
    goto :goto_3

    .line 201
    :cond_2
    move v12, v0

    .line 202
    move-object v15, v3

    .line 203
    move-object v11, v4

    .line 204
    move-object v13, v5

    .line 205
    move-object/from16 v28, v10

    .line 206
    .line 207
    move-wide/from16 v37, v29

    .line 208
    .line 209
    const/16 v14, 0xb

    .line 210
    .line 211
    move-object v10, v1

    .line 212
    long-to-double v0, v6

    .line 213
    mul-double v0, v0, v22

    .line 214
    .line 215
    move-wide/from16 v19, v0

    .line 216
    .line 217
    :goto_3
    if-eqz v11, :cond_5

    .line 218
    .line 219
    const/4 v7, 0x0

    .line 220
    :goto_4
    array-length v0, v11

    .line 221
    if-ge v7, v0, :cond_5

    .line 222
    .line 223
    aget-object v0, v11, v7

    .line 224
    .line 225
    iget v0, v0, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 226
    .line 227
    if-nez v0, :cond_3

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_3
    const/4 v1, 0x1

    .line 231
    if-ne v12, v1, :cond_4

    .line 232
    .line 233
    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    .line 234
    .line 235
    .line 236
    move-result-wide v1

    .line 237
    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    .line 238
    .line 239
    .line 240
    move-result-wide v3

    .line 241
    invoke-virtual {v10, v0}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    .line 242
    .line 243
    .line 244
    move-result-wide v5

    .line 245
    move-object/from16 v0, p0

    .line 246
    .line 247
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/WifiPowerCalculator;->calcPowerFromControllerDataMah(JJJ)D

    .line 248
    .line 249
    .line 250
    move-result-wide v0

    .line 251
    aput-wide v0, v8, v7

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_4
    invoke-virtual {v9, v0}, Landroid/os/BatteryStats$Uid;->getWifiEnergyConsumptionUC(I)J

    .line 255
    .line 256
    .line 257
    move-result-wide v0

    .line 258
    long-to-double v0, v0

    .line 259
    mul-double v0, v0, v22

    .line 260
    .line 261
    aput-wide v0, v8, v7

    .line 262
    .line 263
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_5
    move-wide/from16 v5, v19

    .line 267
    .line 268
    const-wide/16 v0, 0x0

    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_6
    move v12, v0

    .line 272
    move-object v11, v4

    .line 273
    move-object/from16 v28, v10

    .line 274
    .line 275
    move-wide/from16 v37, v29

    .line 276
    .line 277
    const/16 v14, 0xb

    .line 278
    .line 279
    const-wide/16 v0, 0x0

    .line 280
    .line 281
    if-eqz v8, :cond_7

    .line 282
    .line 283
    invoke-static {v8, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    .line 284
    .line 285
    .line 286
    :cond_7
    move-wide v5, v0

    .line 287
    const-wide/16 v35, 0x0

    .line 288
    .line 289
    :goto_6
    move-wide v13, v0

    .line 290
    move-object v15, v8

    .line 291
    move-object/from16 v39, v26

    .line 292
    .line 293
    move-object/from16 v24, v27

    .line 294
    .line 295
    :cond_8
    :goto_7
    move-wide/from16 v0, v35

    .line 296
    .line 297
    goto/16 :goto_b

    .line 298
    .line 299
    :cond_9
    move v12, v0

    .line 300
    move-object v11, v4

    .line 301
    move-object/from16 v28, v10

    .line 302
    .line 303
    move-wide/from16 v37, v29

    .line 304
    .line 305
    const/16 v14, 0xb

    .line 306
    .line 307
    move-wide/from16 v3, p3

    .line 308
    .line 309
    move v10, v2

    .line 310
    const-wide/16 v1, 0x0

    .line 311
    .line 312
    invoke-virtual {v9, v3, v4, v10}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    .line 313
    .line 314
    .line 315
    move-result-wide v29

    .line 316
    div-long v35, v29, v20

    .line 317
    .line 318
    const/4 v13, 0x1

    .line 319
    if-ne v12, v13, :cond_b

    .line 320
    .line 321
    invoke-virtual {v9, v3, v4, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    .line 322
    .line 323
    .line 324
    move-result-wide v5

    .line 325
    div-long v22, v5, v20

    .line 326
    .line 327
    move v0, v10

    .line 328
    const-wide/16 v29, 0x0

    .line 329
    .line 330
    :goto_8
    const/4 v5, 0x5

    .line 331
    if-ge v0, v5, :cond_a

    .line 332
    .line 333
    invoke-virtual {v9, v0, v3, v4, v10}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    .line 334
    .line 335
    .line 336
    move-result-wide v5

    .line 337
    div-long v5, v5, v20

    .line 338
    .line 339
    add-long v29, v5, v29

    .line 340
    .line 341
    add-int/lit8 v0, v0, 0x1

    .line 342
    .line 343
    goto :goto_8

    .line 344
    :cond_a
    move-object/from16 v0, p0

    .line 345
    .line 346
    move-wide v5, v1

    .line 347
    move-wide/from16 v1, v31

    .line 348
    .line 349
    move-wide/from16 v3, v33

    .line 350
    .line 351
    move-wide v13, v5

    .line 352
    move-wide/from16 v5, v35

    .line 353
    .line 354
    move-object v15, v8

    .line 355
    move-object/from16 v9, v26

    .line 356
    .line 357
    move-wide/from16 v7, v22

    .line 358
    .line 359
    move-object/from16 v39, v9

    .line 360
    .line 361
    move-object/from16 v24, v27

    .line 362
    .line 363
    move-wide/from16 v9, v29

    .line 364
    .line 365
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/power/stats/WifiPowerCalculator;->calcPowerWithoutControllerDataMah(JJJJJ)D

    .line 366
    .line 367
    .line 368
    move-result-wide v0

    .line 369
    :goto_9
    move-wide v5, v0

    .line 370
    goto :goto_a

    .line 371
    :cond_b
    move-wide v13, v1

    .line 372
    move-object v15, v8

    .line 373
    move-object/from16 v39, v26

    .line 374
    .line 375
    move-object/from16 v24, v27

    .line 376
    .line 377
    long-to-double v0, v6

    .line 378
    mul-double v0, v0, v22

    .line 379
    .line 380
    goto :goto_9

    .line 381
    :goto_a
    if-eqz v15, :cond_8

    .line 382
    .line 383
    invoke-static {v15, v13, v14}, Ljava/util/Arrays;->fill([DD)V

    .line 384
    .line 385
    .line 386
    goto :goto_7

    .line 387
    :goto_b
    invoke-virtual/range {v28 .. v28}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-nez v2, :cond_c

    .line 392
    .line 393
    add-long v17, v17, v0

    .line 394
    .line 395
    move-wide/from16 v7, v37

    .line 396
    .line 397
    add-double v2, v7, v5

    .line 398
    .line 399
    :goto_c
    move-object/from16 v7, v28

    .line 400
    .line 401
    const/16 v4, 0xb

    .line 402
    .line 403
    goto :goto_d

    .line 404
    :cond_c
    move-wide/from16 v7, v37

    .line 405
    .line 406
    move-wide v2, v7

    .line 407
    goto :goto_c

    .line 408
    :goto_d
    invoke-virtual {v7, v4, v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v7, v4, v5, v6, v12}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-eqz v0, :cond_e

    .line 419
    .line 420
    move-object/from16 v0, v39

    .line 421
    .line 422
    if-eqz v0, :cond_f

    .line 423
    .line 424
    const/4 v10, 0x0

    .line 425
    :goto_e
    array-length v1, v0

    .line 426
    if-ge v10, v1, :cond_f

    .line 427
    .line 428
    aget-object v1, v0, v10

    .line 429
    .line 430
    iget v4, v1, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 431
    .line 432
    if-nez v4, :cond_d

    .line 433
    .line 434
    goto :goto_f

    .line 435
    :cond_d
    aget-wide v4, v15, v10

    .line 436
    .line 437
    invoke-virtual {v7, v1, v4, v5, v12}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 438
    .line 439
    .line 440
    :goto_f
    add-int/lit8 v10, v10, 0x1

    .line 441
    .line 442
    goto :goto_e

    .line 443
    :cond_e
    move-object/from16 v0, v39

    .line 444
    .line 445
    :cond_f
    add-int/lit8 v1, v25, -0x1

    .line 446
    .line 447
    move-object/from16 v12, p1

    .line 448
    .line 449
    move-wide/from16 v13, p3

    .line 450
    .line 451
    move-object/from16 v19, v11

    .line 452
    .line 453
    move-object v4, v15

    .line 454
    move-object/from16 v9, v24

    .line 455
    .line 456
    const/4 v10, 0x1

    .line 457
    move-object/from16 v11, p0

    .line 458
    .line 459
    move-object/from16 v15, p7

    .line 460
    .line 461
    move-wide/from16 v40, v2

    .line 462
    .line 463
    move v3, v1

    .line 464
    move-wide/from16 v1, v40

    .line 465
    .line 466
    goto/16 :goto_0

    .line 467
    .line 468
    :cond_10
    move-wide v7, v1

    .line 469
    const-wide/16 v13, 0x0

    .line 470
    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getWifiEnergyConsumptionUC()J

    .line 472
    .line 473
    .line 474
    move-result-wide v0

    .line 475
    move-object/from16 v2, p7

    .line 476
    .line 477
    invoke-static {v0, v1, v2}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 478
    .line 479
    .line 480
    move-result v9

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    const/4 v3, 0x2

    .line 486
    if-ne v9, v3, :cond_11

    .line 487
    .line 488
    long-to-double v0, v0

    .line 489
    mul-double v0, v0, v22

    .line 490
    .line 491
    goto :goto_10

    .line 492
    :cond_11
    move-wide v0, v13

    .line 493
    :goto_10
    if-eqz v2, :cond_12

    .line 494
    .line 495
    if-eqz v5, :cond_12

    .line 496
    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    const/4 v10, 0x0

    .line 506
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 507
    .line 508
    .line 509
    move-result-wide v5

    .line 510
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    aget-object v3, v3, v10

    .line 515
    .line 516
    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 517
    .line 518
    .line 519
    move-result-wide v3

    .line 520
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 521
    .line 522
    .line 523
    move-result-object v11

    .line 524
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 525
    .line 526
    .line 527
    move-result-wide v11

    .line 528
    add-long v15, v5, v11

    .line 529
    .line 530
    add-long/2addr v15, v3

    .line 531
    const/4 v13, 0x1

    .line 532
    if-ne v9, v13, :cond_14

    .line 533
    .line 534
    invoke-virtual {v2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 539
    .line 540
    .line 541
    move-result-wide v0

    .line 542
    long-to-double v0, v0

    .line 543
    const-wide v20, 0x414b774000000000L    # 3600000.0

    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    div-double v0, v0, v20

    .line 549
    .line 550
    const-wide/16 v20, 0x0

    .line 551
    .line 552
    cmpl-double v2, v0, v20

    .line 553
    .line 554
    if-nez v2, :cond_14

    .line 555
    .line 556
    move-object/from16 v0, p0

    .line 557
    .line 558
    move-wide v1, v11

    .line 559
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/WifiPowerCalculator;->calcPowerFromControllerDataMah(JJJ)D

    .line 560
    .line 561
    .line 562
    move-result-wide v0

    .line 563
    goto :goto_11

    .line 564
    :cond_12
    const/4 v10, 0x0

    .line 565
    const/4 v13, 0x1

    .line 566
    move-object/from16 v2, p2

    .line 567
    .line 568
    move-wide/from16 v3, p3

    .line 569
    .line 570
    invoke-virtual {v2, v3, v4, v10}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    .line 571
    .line 572
    .line 573
    move-result-wide v2

    .line 574
    div-long v2, v2, v20

    .line 575
    .line 576
    if-ne v9, v13, :cond_13

    .line 577
    .line 578
    move-object/from16 v4, p0

    .line 579
    .line 580
    iget-object v0, v4, Lcom/android/server/power/stats/WifiPowerCalculator;->mPowerOnPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 581
    .line 582
    iget-wide v0, v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 583
    .line 584
    long-to-double v4, v2

    .line 585
    mul-double/2addr v0, v4

    .line 586
    :cond_13
    move-wide v15, v2

    .line 587
    :cond_14
    :goto_11
    sub-long v2, v15, v17

    .line 588
    .line 589
    const-wide/16 v4, 0x0

    .line 590
    .line 591
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 592
    .line 593
    .line 594
    move-result-wide v2

    .line 595
    sub-double/2addr v0, v7

    .line 596
    const-wide/16 v4, 0x0

    .line 597
    .line 598
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    .line 599
    .line 600
    .line 601
    move-result-wide v0

    .line 602
    move-object/from16 v4, p1

    .line 603
    .line 604
    invoke-virtual {v4, v10}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    const/16 v6, 0xb

    .line 609
    .line 610
    invoke-virtual {v5, v6, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    check-cast v2, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 615
    .line 616
    add-double/2addr v0, v7

    .line 617
    invoke-virtual {v2, v6, v0, v1, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v4, v13}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 625
    .line 626
    .line 627
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/16 p0, 0xb

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
