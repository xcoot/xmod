.class public final Lcom/android/server/power/stats/MobileRadioPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NUM_SIGNAL_STRENGTH_LEVELS:I

.field public static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field public final mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


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
    sput v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    .line 9
    .line 10
    sput-object v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    .line 5
    .line 6
    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 7
    .line 8
    iput-object v1, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 11
    .line 12
    const-wide v1, 0x100000000L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 18
    .line 19
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x0

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    iput-object v6, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v5, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 34
    .line 35
    invoke-direct {v5, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 36
    .line 37
    .line 38
    iput-object v5, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 39
    .line 40
    :goto_0
    const-wide v1, 0x110000000L

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    iput-object v6, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    new-instance v5, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 59
    .line 60
    invoke-direct {v5, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 61
    .line 62
    .line 63
    iput-object v5, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 64
    .line 65
    :goto_1
    const-string/jumbo v1, "radio.active"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    const-wide/16 v6, 0x0

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    if-eqz v5, :cond_3

    .line 80
    .line 81
    const-string/jumbo v1, "modem.controller.rx"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    add-double/2addr v1, v6

    .line 89
    move v5, v8

    .line 90
    :goto_2
    if-ge v5, v0, :cond_2

    .line 91
    .line 92
    const-string/jumbo v9, "modem.controller.tx"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v9, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    .line 96
    .line 97
    .line 98
    move-result-wide v9

    .line 99
    add-double/2addr v1, v9

    .line 100
    add-int/lit8 v5, v5, 0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    add-int/lit8 v5, v0, 0x1

    .line 104
    .line 105
    int-to-double v9, v5

    .line 106
    div-double/2addr v1, v9

    .line 107
    :cond_3
    new-instance v5, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 108
    .line 109
    invoke-direct {v5, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 110
    .line 111
    .line 112
    iput-object v5, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 113
    .line 114
    const-string/jumbo v1, "radio.on"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_4

    .line 126
    .line 127
    :goto_3
    if-ge v8, v0, :cond_5

    .line 128
    .line 129
    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 130
    .line 131
    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 132
    .line 133
    invoke-virtual {p1, v1, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    .line 134
    .line 135
    .line 136
    move-result-wide v4

    .line 137
    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 138
    .line 139
    .line 140
    aput-object v3, v2, v8

    .line 141
    .line 142
    add-int/lit8 v8, v8, 0x1

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_4
    const-string/jumbo v1, "modem.controller.idle"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    .line 149
    .line 150
    .line 151
    move-result-wide v1

    .line 152
    iget-object v3, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 153
    .line 154
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 155
    .line 156
    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    .line 157
    .line 158
    mul-double/2addr v9, v1

    .line 159
    const-wide v11, 0x4066800000000000L    # 180.0

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    div-double/2addr v9, v11

    .line 165
    invoke-direct {v4, v9, v10}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 166
    .line 167
    .line 168
    aput-object v4, v3, v8

    .line 169
    .line 170
    const/4 v3, 0x1

    .line 171
    :goto_4
    if-ge v3, v0, :cond_5

    .line 172
    .line 173
    iget-object v4, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 174
    .line 175
    new-instance v5, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 176
    .line 177
    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    .line 178
    .line 179
    div-double v8, v1, v8

    .line 180
    .line 181
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 182
    .line 183
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    .line 184
    .line 185
    .line 186
    move-result-wide v8

    .line 187
    invoke-direct {v5, v8, v9}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 188
    .line 189
    .line 190
    aput-object v5, v4, v3

    .line 191
    .line 192
    add-int/lit8 v3, v3, 0x1

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_5
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 196
    .line 197
    const-string/jumbo v1, "radio.scanning"

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v1, v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    .line 201
    .line 202
    .line 203
    move-result-wide v1

    .line 204
    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 205
    .line 206
    .line 207
    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 208
    .line 209
    return-void
.end method


# virtual methods
.method public final calcRxStatePowerMah(IIJ)D
    .locals 4

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainKey(IIII)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 9
    .line 10
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p3, "Unavailable Power Profile constant for key 0x"

    .line 25
    .line 26
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "MobRadioPowerCalculator"

    .line 41
    .line 42
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-wide v0

    .line 46
    :cond_0
    long-to-double p0, p3

    .line 47
    mul-double/2addr v2, p0

    .line 48
    const-wide p0, 0x414b774000000000L    # 3600000.0

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    div-double/2addr v2, p0

    .line 54
    return-wide v2
.end method

.method public final calcTxStatePowerMah(IIIJ)D
    .locals 4

    .line 1
    const/high16 v0, 0x30000000

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainKey(IIII)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iget-object p0, p0, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 8
    .line 9
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string p3, "Unavailable Power Profile constant for key 0x"

    .line 24
    .line 25
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "MobRadioPowerCalculator"

    .line 40
    .line 41
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-wide v0

    .line 45
    :cond_0
    long-to-double p0, p4

    .line 46
    mul-double/2addr v2, p0

    .line 47
    const-wide p0, 0x414b774000000000L    # 3600000.0

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    div-double/2addr v2, p0

    .line 53
    return-wide v2
.end method

.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 42

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move-wide/from16 v9, p3

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getMobileRadioEnergyConsumptionUC()J

    .line 10
    .line 11
    .line 12
    move-result-wide v11

    .line 13
    move-object/from16 v13, p7

    .line 14
    .line 15
    invoke-static {v11, v12, v13}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    .line 16
    .line 17
    .line 18
    move-result v14

    .line 19
    const/4 v4, 0x1

    .line 20
    sget v5, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    .line 21
    .line 22
    const-wide/16 v17, -0x1

    .line 23
    .line 24
    const/16 v19, 0x0

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    const-wide/16 v20, 0x3e8

    .line 28
    .line 29
    const-wide/16 v22, 0x0

    .line 30
    .line 31
    const-wide/16 v24, 0x0

    .line 32
    .line 33
    if-ne v14, v3, :cond_0

    .line 34
    .line 35
    move/from16 v34, v5

    .line 36
    .line 37
    move-wide/from16 v31, v11

    .line 38
    .line 39
    move-object/from16 v0, v19

    .line 40
    .line 41
    move-object v1, v0

    .line 42
    const/4 v11, 0x0

    .line 43
    const-wide/high16 v26, 0x7ff8000000000000L    # Double.NaN

    .line 44
    .line 45
    goto/16 :goto_7

    .line 46
    .line 47
    :cond_0
    div-long v0, v9, v20

    .line 48
    .line 49
    move-wide/from16 v26, v22

    .line 50
    .line 51
    const/4 v15, 0x0

    .line 52
    const/16 v16, 0x0

    .line 53
    .line 54
    :goto_0
    const/4 v2, 0x3

    .line 55
    if-ge v15, v2, :cond_8

    .line 56
    .line 57
    if-ne v15, v3, :cond_1

    .line 58
    .line 59
    const/4 v2, 0x5

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move v2, v4

    .line 62
    :goto_1
    const/4 v13, 0x0

    .line 63
    :goto_2
    if-ge v13, v2, :cond_7

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    :goto_3
    if-ge v7, v5, :cond_4

    .line 67
    .line 68
    move-wide/from16 v29, v0

    .line 69
    .line 70
    move-object/from16 v0, p2

    .line 71
    .line 72
    move v1, v15

    .line 73
    move-wide/from16 v31, v11

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    move v12, v2

    .line 77
    move v2, v13

    .line 78
    move v3, v7

    .line 79
    move/from16 v34, v5

    .line 80
    .line 81
    move-wide/from16 v4, v29

    .line 82
    .line 83
    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveTxRadioDurationMs(IIIJ)J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    cmp-long v0, v4, v17

    .line 88
    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_2
    move-object/from16 v0, p0

    .line 93
    .line 94
    move v1, v15

    .line 95
    move v2, v13

    .line 96
    move v3, v7

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcTxStatePowerMah(IIIJ)D

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_3
    add-double v26, v26, v0

    .line 109
    .line 110
    const/16 v16, 0x1

    .line 111
    .line 112
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 113
    .line 114
    move v2, v12

    .line 115
    move-wide/from16 v0, v29

    .line 116
    .line 117
    move-wide/from16 v11, v31

    .line 118
    .line 119
    move/from16 v5, v34

    .line 120
    .line 121
    const/4 v3, 0x2

    .line 122
    const/4 v4, 0x1

    .line 123
    goto :goto_3

    .line 124
    :cond_4
    move/from16 v34, v5

    .line 125
    .line 126
    move-wide/from16 v31, v11

    .line 127
    .line 128
    const/4 v11, 0x0

    .line 129
    move v12, v2

    .line 130
    invoke-virtual {v8, v15, v13, v0, v1}, Landroid/os/BatteryStats;->getActiveRxRadioDurationMs(IIJ)J

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    cmp-long v4, v2, v17

    .line 135
    .line 136
    if-nez v4, :cond_5

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_5
    invoke-virtual {v6, v15, v13, v2, v3}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->calcRxStatePowerMah(IIJ)D

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_6

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_6
    add-double v26, v26, v2

    .line 151
    .line 152
    const/16 v16, 0x1

    .line 153
    .line 154
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 155
    .line 156
    move-object/from16 v7, p1

    .line 157
    .line 158
    move v2, v12

    .line 159
    move-wide/from16 v11, v31

    .line 160
    .line 161
    move/from16 v5, v34

    .line 162
    .line 163
    const/4 v3, 0x2

    .line 164
    const/4 v4, 0x1

    .line 165
    goto :goto_2

    .line 166
    :cond_7
    move/from16 v34, v5

    .line 167
    .line 168
    move-wide/from16 v31, v11

    .line 169
    .line 170
    const/4 v11, 0x0

    .line 171
    add-int/lit8 v15, v15, 0x1

    .line 172
    .line 173
    move-object/from16 v7, p1

    .line 174
    .line 175
    move-object/from16 v13, p7

    .line 176
    .line 177
    move-wide/from16 v11, v31

    .line 178
    .line 179
    const/4 v3, 0x2

    .line 180
    const/4 v4, 0x1

    .line 181
    goto :goto_0

    .line 182
    :cond_8
    move/from16 v34, v5

    .line 183
    .line 184
    move-wide/from16 v31, v11

    .line 185
    .line 186
    const/4 v11, 0x0

    .line 187
    if-nez v16, :cond_a

    .line 188
    .line 189
    invoke-virtual {v8, v9, v10, v11}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    .line 190
    .line 191
    .line 192
    move-result-wide v0

    .line 193
    div-long v0, v0, v20

    .line 194
    .line 195
    cmp-long v2, v0, v24

    .line 196
    .line 197
    if-lez v2, :cond_9

    .line 198
    .line 199
    iget-object v2, v6, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 200
    .line 201
    iget-wide v2, v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 202
    .line 203
    long-to-double v0, v0

    .line 204
    mul-double v26, v2, v0

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_9
    move-wide/from16 v26, v22

    .line 208
    .line 209
    :cond_a
    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .line 213
    .line 214
    new-instance v1, Landroid/util/LongArrayQueue;

    .line 215
    .line 216
    invoke-direct {v1}, Landroid/util/LongArrayQueue;-><init>()V

    .line 217
    .line 218
    .line 219
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    sget-object v3, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 224
    .line 225
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    const/4 v5, 0x1

    .line 230
    sub-int/2addr v4, v5

    .line 231
    move-wide/from16 v15, v22

    .line 232
    .line 233
    move-wide/from16 v12, v24

    .line 234
    .line 235
    :goto_8
    const-wide v28, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    if-ltz v4, :cond_12

    .line 241
    .line 242
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v30

    .line 246
    move-object/from16 v5, v30

    .line 247
    .line 248
    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    .line 249
    .line 250
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    sget-object v7, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 255
    .line 256
    if-ne v3, v7, :cond_b

    .line 257
    .line 258
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-eqz v3, :cond_c

    .line 263
    .line 264
    const/16 v3, 0x8

    .line 265
    .line 266
    invoke-virtual {v5, v3}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    move-object v3, v7

    .line 271
    :cond_b
    :goto_9
    const/4 v7, 0x0

    .line 272
    goto :goto_a

    .line 273
    :cond_c
    move-object/from16 v3, v19

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :goto_a
    invoke-virtual {v11, v7}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    .line 277
    .line 278
    .line 279
    move-result-wide v36

    .line 280
    div-long v6, v36, v20

    .line 281
    .line 282
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    .line 283
    .line 284
    .line 285
    move-result v36

    .line 286
    if-nez v36, :cond_d

    .line 287
    .line 288
    add-long/2addr v12, v6

    .line 289
    :cond_d
    move-object/from16 v36, v2

    .line 290
    .line 291
    const/16 v2, 0x8

    .line 292
    .line 293
    invoke-virtual {v5, v2, v6, v7}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 294
    .line 295
    .line 296
    const/4 v2, 0x2

    .line 297
    if-ne v14, v2, :cond_11

    .line 298
    .line 299
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getMobileRadioEnergyConsumptionUC()J

    .line 300
    .line 301
    .line 302
    move-result-wide v6

    .line 303
    cmp-long v33, v6, v17

    .line 304
    .line 305
    if-eqz v33, :cond_10

    .line 306
    .line 307
    long-to-double v6, v6

    .line 308
    mul-double v6, v6, v28

    .line 309
    .line 310
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    .line 311
    .line 312
    .line 313
    move-result v33

    .line 314
    if-nez v33, :cond_e

    .line 315
    .line 316
    add-double/2addr v15, v6

    .line 317
    :cond_e
    const/16 v2, 0x8

    .line 318
    .line 319
    invoke-virtual {v5, v2, v6, v7, v14}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_10

    .line 327
    .line 328
    if-eqz v3, :cond_10

    .line 329
    .line 330
    array-length v2, v3

    .line 331
    const/4 v6, 0x0

    .line 332
    :goto_b
    if-ge v6, v2, :cond_10

    .line 333
    .line 334
    aget-object v7, v3, v6

    .line 335
    .line 336
    move/from16 v35, v2

    .line 337
    .line 338
    iget v2, v7, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 339
    .line 340
    if-nez v2, :cond_f

    .line 341
    .line 342
    move-object/from16 v37, v3

    .line 343
    .line 344
    goto :goto_c

    .line 345
    :cond_f
    move-object/from16 v37, v3

    .line 346
    .line 347
    invoke-virtual {v11, v2}, Landroid/os/BatteryStats$Uid;->getMobileRadioEnergyConsumptionUC(I)J

    .line 348
    .line 349
    .line 350
    move-result-wide v2

    .line 351
    long-to-double v2, v2

    .line 352
    mul-double v2, v2, v28

    .line 353
    .line 354
    invoke-virtual {v5, v7, v2, v3, v14}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 355
    .line 356
    .line 357
    :goto_c
    add-int/lit8 v6, v6, 0x1

    .line 358
    .line 359
    move/from16 v2, v35

    .line 360
    .line 361
    move-object/from16 v3, v37

    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_10
    move-object/from16 v37, v3

    .line 365
    .line 366
    goto :goto_d

    .line 367
    :cond_11
    move-object/from16 v37, v3

    .line 368
    .line 369
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v6, v7}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 373
    .line 374
    .line 375
    :goto_d
    add-int/lit8 v4, v4, -0x1

    .line 376
    .line 377
    move-object/from16 v6, p0

    .line 378
    .line 379
    move-object/from16 v2, v36

    .line 380
    .line 381
    move-object/from16 v3, v37

    .line 382
    .line 383
    const/4 v5, 0x1

    .line 384
    const/4 v11, 0x0

    .line 385
    goto/16 :goto_8

    .line 386
    .line 387
    :cond_12
    move v2, v11

    .line 388
    invoke-virtual {v8, v9, v10, v2}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    .line 389
    .line 390
    .line 391
    move-result-wide v4

    .line 392
    div-long v4, v4, v20

    .line 393
    .line 394
    cmp-long v2, v4, v12

    .line 395
    .line 396
    if-gez v2, :cond_13

    .line 397
    .line 398
    move-wide v4, v12

    .line 399
    :cond_13
    const/4 v2, 0x2

    .line 400
    if-eq v14, v2, :cond_1a

    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    const/4 v6, 0x0

    .line 407
    :goto_e
    if-ge v6, v2, :cond_1a

    .line 408
    .line 409
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v7

    .line 413
    check-cast v7, Landroid/os/UidBatteryConsumer$Builder;

    .line 414
    .line 415
    invoke-virtual {v1, v6}, Landroid/util/LongArrayQueue;->get(I)J

    .line 416
    .line 417
    .line 418
    move-result-wide v8

    .line 419
    long-to-double v10, v4

    .line 420
    cmpl-double v17, v10, v22

    .line 421
    .line 422
    if-nez v17, :cond_14

    .line 423
    .line 424
    move-object/from16 v17, v0

    .line 425
    .line 426
    move-object/from16 v18, v1

    .line 427
    .line 428
    move-wide/from16 v0, v22

    .line 429
    .line 430
    goto :goto_f

    .line 431
    :cond_14
    move-object/from16 v17, v0

    .line 432
    .line 433
    move-object/from16 v18, v1

    .line 434
    .line 435
    long-to-double v0, v8

    .line 436
    mul-double v0, v0, v26

    .line 437
    .line 438
    div-double/2addr v0, v10

    .line 439
    :goto_f
    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    .line 440
    .line 441
    .line 442
    move-result v10

    .line 443
    if-nez v10, :cond_15

    .line 444
    .line 445
    add-double/2addr v15, v0

    .line 446
    :cond_15
    const/16 v10, 0x8

    .line 447
    .line 448
    invoke-virtual {v7, v10, v0, v1, v14}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    .line 452
    .line 453
    .line 454
    move-result v10

    .line 455
    if-eqz v10, :cond_19

    .line 456
    .line 457
    if-eqz v3, :cond_19

    .line 458
    .line 459
    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    .line 460
    .line 461
    .line 462
    move-result-object v10

    .line 463
    array-length v11, v3

    .line 464
    move/from16 v19, v2

    .line 465
    .line 466
    const/4 v2, 0x0

    .line 467
    :goto_10
    if-ge v2, v11, :cond_18

    .line 468
    .line 469
    move/from16 v36, v11

    .line 470
    .line 471
    aget-object v11, v3, v2

    .line 472
    .line 473
    move-object/from16 v37, v3

    .line 474
    .line 475
    iget v3, v11, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 476
    .line 477
    if-nez v3, :cond_16

    .line 478
    .line 479
    move-wide/from16 v40, v4

    .line 480
    .line 481
    move-wide/from16 v38, v12

    .line 482
    .line 483
    goto :goto_12

    .line 484
    :cond_16
    invoke-virtual {v10, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTimeInProcessState(I)J

    .line 485
    .line 486
    .line 487
    move-result-wide v38

    .line 488
    move-wide/from16 v40, v4

    .line 489
    .line 490
    div-long v3, v38, v20

    .line 491
    .line 492
    move-wide/from16 v38, v12

    .line 493
    .line 494
    long-to-double v12, v8

    .line 495
    cmpl-double v5, v12, v22

    .line 496
    .line 497
    if-nez v5, :cond_17

    .line 498
    .line 499
    move-wide/from16 v3, v22

    .line 500
    .line 501
    goto :goto_11

    .line 502
    :cond_17
    long-to-double v3, v3

    .line 503
    mul-double/2addr v3, v0

    .line 504
    div-double/2addr v3, v12

    .line 505
    :goto_11
    invoke-virtual {v7, v11, v3, v4, v14}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 506
    .line 507
    .line 508
    :goto_12
    add-int/lit8 v2, v2, 0x1

    .line 509
    .line 510
    move/from16 v11, v36

    .line 511
    .line 512
    move-object/from16 v3, v37

    .line 513
    .line 514
    move-wide/from16 v12, v38

    .line 515
    .line 516
    move-wide/from16 v4, v40

    .line 517
    .line 518
    goto :goto_10

    .line 519
    :cond_18
    :goto_13
    move-object/from16 v37, v3

    .line 520
    .line 521
    move-wide/from16 v40, v4

    .line 522
    .line 523
    move-wide/from16 v38, v12

    .line 524
    .line 525
    goto :goto_14

    .line 526
    :cond_19
    move/from16 v19, v2

    .line 527
    .line 528
    goto :goto_13

    .line 529
    :goto_14
    add-int/lit8 v6, v6, 0x1

    .line 530
    .line 531
    move-object/from16 v8, p2

    .line 532
    .line 533
    move-wide/from16 v9, p3

    .line 534
    .line 535
    move-object/from16 v0, v17

    .line 536
    .line 537
    move-object/from16 v1, v18

    .line 538
    .line 539
    move/from16 v2, v19

    .line 540
    .line 541
    move-object/from16 v3, v37

    .line 542
    .line 543
    move-wide/from16 v12, v38

    .line 544
    .line 545
    move-wide/from16 v4, v40

    .line 546
    .line 547
    goto/16 :goto_e

    .line 548
    .line 549
    :cond_1a
    move-wide/from16 v40, v4

    .line 550
    .line 551
    move-wide/from16 v38, v12

    .line 552
    .line 553
    move-wide v0, v15

    .line 554
    sub-long v4, v40, v38

    .line 555
    .line 556
    const/4 v2, 0x2

    .line 557
    if-ne v14, v2, :cond_1b

    .line 558
    .line 559
    move-wide/from16 v2, v31

    .line 560
    .line 561
    long-to-double v2, v2

    .line 562
    mul-double v2, v2, v28

    .line 563
    .line 564
    sub-double/2addr v2, v0

    .line 565
    cmpg-double v6, v2, v22

    .line 566
    .line 567
    move v15, v14

    .line 568
    if-gez v6, :cond_22

    .line 569
    .line 570
    move-wide/from16 v2, v22

    .line 571
    .line 572
    goto/16 :goto_19

    .line 573
    .line 574
    :cond_1b
    cmp-long v2, v40, v24

    .line 575
    .line 576
    if-eqz v2, :cond_1c

    .line 577
    .line 578
    long-to-double v2, v4

    .line 579
    mul-double v26, v26, v2

    .line 580
    .line 581
    move-wide/from16 v12, v40

    .line 582
    .line 583
    long-to-double v2, v12

    .line 584
    div-double v26, v26, v2

    .line 585
    .line 586
    add-double v26, v26, v22

    .line 587
    .line 588
    move-wide/from16 v2, v26

    .line 589
    .line 590
    goto :goto_15

    .line 591
    :cond_1c
    move-wide/from16 v2, v22

    .line 592
    .line 593
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    .line 594
    .line 595
    .line 596
    move-result-object v6

    .line 597
    if-eqz v6, :cond_1e

    .line 598
    .line 599
    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 600
    .line 601
    .line 602
    move-result-object v7

    .line 603
    const/4 v8, 0x0

    .line 604
    invoke-virtual {v7, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 605
    .line 606
    .line 607
    move-result-wide v9

    .line 608
    invoke-virtual {v6}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    .line 609
    .line 610
    .line 611
    move-result-object v6

    .line 612
    invoke-virtual {v6, v8}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    .line 613
    .line 614
    .line 615
    move-result-wide v6

    .line 616
    move-object/from16 v8, p0

    .line 617
    .line 618
    iget-object v11, v8, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 619
    .line 620
    if-eqz v11, :cond_1f

    .line 621
    .line 622
    iget-object v12, v8, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 623
    .line 624
    if-nez v12, :cond_1d

    .line 625
    .line 626
    goto :goto_16

    .line 627
    :cond_1d
    move v15, v14

    .line 628
    iget-wide v13, v11, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 629
    .line 630
    long-to-double v9, v9

    .line 631
    mul-double/2addr v13, v9

    .line 632
    iget-wide v9, v12, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 633
    .line 634
    long-to-double v6, v6

    .line 635
    mul-double/2addr v9, v6

    .line 636
    add-double v6, v9, v13

    .line 637
    .line 638
    goto :goto_17

    .line 639
    :cond_1e
    move-object/from16 v8, p0

    .line 640
    .line 641
    :cond_1f
    :goto_16
    move v15, v14

    .line 642
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 643
    .line 644
    :goto_17
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 645
    .line 646
    .line 647
    move-result v9

    .line 648
    if-eqz v9, :cond_21

    .line 649
    .line 650
    move-object/from16 v9, p2

    .line 651
    .line 652
    move-wide/from16 v10, p3

    .line 653
    .line 654
    const/4 v12, 0x0

    .line 655
    invoke-virtual {v9, v10, v11, v12}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    .line 656
    .line 657
    .line 658
    move-result-wide v6

    .line 659
    div-long v6, v6, v20

    .line 660
    .line 661
    iget-object v13, v8, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 662
    .line 663
    iget-wide v13, v13, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 664
    .line 665
    long-to-double v6, v6

    .line 666
    mul-double/2addr v13, v6

    .line 667
    move v6, v12

    .line 668
    move/from16 v7, v34

    .line 669
    .line 670
    :goto_18
    if-ge v6, v7, :cond_20

    .line 671
    .line 672
    invoke-virtual {v9, v6, v10, v11, v12}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    .line 673
    .line 674
    .line 675
    move-result-wide v16

    .line 676
    div-long v9, v16, v20

    .line 677
    .line 678
    iget-object v11, v8, Lcom/android/server/power/stats/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 679
    .line 680
    aget-object v11, v11, v6

    .line 681
    .line 682
    iget-wide v11, v11, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->mAveragePowerMahPerMs:D

    .line 683
    .line 684
    long-to-double v9, v9

    .line 685
    mul-double/2addr v11, v9

    .line 686
    add-double/2addr v13, v11

    .line 687
    add-int/lit8 v6, v6, 0x1

    .line 688
    .line 689
    move-object/from16 v9, p2

    .line 690
    .line 691
    move-wide/from16 v10, p3

    .line 692
    .line 693
    const/4 v12, 0x0

    .line 694
    goto :goto_18

    .line 695
    :cond_20
    move-wide v6, v13

    .line 696
    :cond_21
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 697
    .line 698
    .line 699
    move-result v8

    .line 700
    if-nez v8, :cond_22

    .line 701
    .line 702
    add-double/2addr v2, v6

    .line 703
    :cond_22
    :goto_19
    cmpl-double v6, v2, v22

    .line 704
    .line 705
    if-nez v6, :cond_23

    .line 706
    .line 707
    cmpl-double v6, v0, v22

    .line 708
    .line 709
    if-eqz v6, :cond_24

    .line 710
    .line 711
    :cond_23
    move-object/from16 v6, p1

    .line 712
    .line 713
    const/4 v7, 0x0

    .line 714
    invoke-virtual {v6, v7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 715
    .line 716
    .line 717
    move-result-object v7

    .line 718
    add-long v4, v4, v38

    .line 719
    .line 720
    const/16 v8, 0x8

    .line 721
    .line 722
    invoke-virtual {v7, v8, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 723
    .line 724
    .line 725
    move-result-object v4

    .line 726
    check-cast v4, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 727
    .line 728
    add-double/2addr v2, v0

    .line 729
    move v5, v15

    .line 730
    invoke-virtual {v4, v8, v2, v3, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 731
    .line 732
    .line 733
    const/4 v2, 0x1

    .line 734
    invoke-virtual {v6, v2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 735
    .line 736
    .line 737
    move-result-object v2

    .line 738
    move-wide/from16 v12, v38

    .line 739
    .line 740
    invoke-virtual {v2, v8, v12, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    check-cast v2, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 745
    .line 746
    invoke-virtual {v2, v8, v0, v1, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 747
    .line 748
    .line 749
    :cond_24
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/16 p0, 0x8

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
