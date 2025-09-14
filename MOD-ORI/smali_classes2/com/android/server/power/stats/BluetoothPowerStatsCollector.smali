.class public final Lcom/android/server/power/stats/BluetoothPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBluetoothStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;

.field public mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

.field public mDeviceStats:[J

.field public mEnergyConsumerIds:[I

.field public final mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

.field public mIsInitialized:Z

.field public mLastConsumedEnergyUws:[J

.field public mLastIdleTime:J

.field public mLastRxTime:J

.field public mLastTxTime:J

.field public mLastVoltageMv:I

.field public mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

.field public mPowerStats:Lcom/android/internal/os/PowerStats;

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
    const/4 v0, 0x2

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
    const/4 v0, 0x0

    .line 25
    new-array v0, v0, [I

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 28
    .line 29
    new-instance v0, Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final collectStats()Lcom/android/internal/os/PowerStats;
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    iget-boolean v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mIsInitialized:Z

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const-wide/16 v3, -0x1

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-object v5

    .line 17
    :cond_1
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;

    .line 18
    .line 19
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 20
    .line 21
    iput-object v6, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 22
    .line 23
    new-instance v7, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v7, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V

    .line 26
    .line 27
    .line 28
    iput-object v7, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;

    .line 31
    .line 32
    iput-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;

    .line 33
    .line 34
    invoke-virtual {v6, v2, v5}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->getEnergyConsumerIds(ILjava/lang/String;)[I

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 39
    .line 40
    array-length v0, v0

    .line 41
    new-array v0, v0, [J

    .line 42
    .line 43
    iput-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastConsumedEnergyUws:[J

    .line 44
    .line 45
    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/android/server/power/stats/PowerStatsLayout;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 54
    .line 55
    const-string/jumbo v6, "rx"

    .line 56
    .line 57
    .line 58
    const/4 v7, 0x0

    .line 59
    invoke-virtual {v0, v2, v7, v6}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    iput v6, v0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 64
    .line 65
    const-string/jumbo v6, "tx"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2, v7, v6}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    iput v6, v0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 73
    .line 74
    const-string v6, "idle"

    .line 75
    .line 76
    invoke-virtual {v0, v2, v7, v6}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    iput v6, v0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 81
    .line 82
    const-string/jumbo v6, "scan"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2, v2, v6}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    iput v8, v0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 90
    .line 91
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 92
    .line 93
    iget-object v8, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 94
    .line 95
    array-length v8, v8

    .line 96
    invoke-virtual {v0, v8}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 100
    .line 101
    const-string/jumbo v8, "usage"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2, v2, v8}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    iput v8, v0, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceDurationPosition:I

    .line 109
    .line 110
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 113
    .line 114
    .line 115
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 116
    .line 117
    const-string/jumbo v8, "rx-B"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2, v7, v8}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    iput v8, v0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    .line 125
    .line 126
    const-string/jumbo v8, "tx-B"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v2, v7, v8}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    iput v7, v0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    .line 134
    .line 135
    invoke-virtual {v0, v2, v2, v6}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    iput v6, v0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    .line 140
    .line 141
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 142
    .line 143
    const/4 v6, 0x5

    .line 144
    const-string/jumbo v7, "power"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    iput v6, v0, Lcom/android/server/power/stats/PowerStatsLayout;->mUidPowerEstimatePosition:I

    .line 152
    .line 153
    new-instance v13, Landroid/os/PersistableBundle;

    .line 154
    .line 155
    invoke-direct {v13}, Landroid/os/PersistableBundle;-><init>()V

    .line 156
    .line 157
    .line 158
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 159
    .line 160
    invoke-virtual {v0, v13}, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Lcom/android/internal/os/PowerStats$Descriptor;

    .line 164
    .line 165
    iget-object v6, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 166
    .line 167
    iget v9, v6, Lcom/android/server/power/stats/PowerStatsLayout;->mDeviceStatsArrayLength:I

    .line 168
    .line 169
    iget v12, v6, Lcom/android/server/power/stats/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 170
    .line 171
    const/4 v11, 0x0

    .line 172
    const/4 v8, 0x2

    .line 173
    const/4 v10, 0x0

    .line 174
    move-object v7, v0

    .line 175
    invoke-direct/range {v7 .. v13}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 176
    .line 177
    .line 178
    new-instance v6, Lcom/android/internal/os/PowerStats;

    .line 179
    .line 180
    invoke-direct {v6, v0}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 181
    .line 182
    .line 183
    iput-object v6, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 184
    .line 185
    iget-object v0, v6, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 186
    .line 187
    iput-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    .line 188
    .line 189
    iput-boolean v2, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mIsInitialized:Z

    .line 190
    .line 191
    :goto_0
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 192
    .line 193
    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 196
    .line 197
    .line 198
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 199
    .line 200
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 201
    .line 202
    .line 203
    iget-object v6, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;

    .line 204
    .line 205
    new-instance v7, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 206
    .line 207
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 208
    .line 209
    .line 210
    new-instance v8, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;

    .line 211
    .line 212
    invoke-direct {v8, v0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 213
    .line 214
    .line 215
    iget-object v6, v6, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 216
    .line 217
    const-wide/16 v9, 0x0

    .line 218
    .line 219
    if-nez v6, :cond_2

    .line 220
    .line 221
    goto/16 :goto_4

    .line 222
    .line 223
    :cond_2
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    if-nez v6, :cond_3

    .line 228
    .line 229
    goto/16 :goto_4

    .line 230
    .line 231
    :cond_3
    invoke-virtual {v6, v7, v8}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    .line 232
    .line 233
    .line 234
    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 235
    .line 236
    const-wide/16 v7, 0x4e20

    .line 237
    .line 238
    invoke-virtual {v0, v7, v8, v6}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .line 244
    move-object v5, v0

    .line 245
    goto :goto_1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v6, "BluetoothPowerStatsCollector"

    .line 248
    .line 249
    const-string v7, "Cannot acquire BluetoothActivityEnergyInfo"

    .line 250
    .line 251
    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .line 253
    .line 254
    :goto_1
    if-nez v5, :cond_4

    .line 255
    .line 256
    goto/16 :goto_4

    .line 257
    .line 258
    :cond_4
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    .line 259
    .line 260
    .line 261
    move-result-wide v6

    .line 262
    iget-wide v11, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastRxTime:J

    .line 263
    .line 264
    sub-long v11, v6, v11

    .line 265
    .line 266
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 267
    .line 268
    .line 269
    move-result-wide v11

    .line 270
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 271
    .line 272
    iget-object v8, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    .line 273
    .line 274
    iget v0, v0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceRxTimePosition:I

    .line 275
    .line 276
    aput-wide v11, v8, v0

    .line 277
    .line 278
    iput-wide v6, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastRxTime:J

    .line 279
    .line 280
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    .line 281
    .line 282
    .line 283
    move-result-wide v6

    .line 284
    iget-wide v13, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastTxTime:J

    .line 285
    .line 286
    sub-long v13, v6, v13

    .line 287
    .line 288
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 289
    .line 290
    .line 291
    move-result-wide v13

    .line 292
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 293
    .line 294
    iget-object v8, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    .line 295
    .line 296
    iget v0, v0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceTxTimePosition:I

    .line 297
    .line 298
    aput-wide v13, v8, v0

    .line 299
    .line 300
    iput-wide v6, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastTxTime:J

    .line 301
    .line 302
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    .line 303
    .line 304
    .line 305
    move-result-wide v6

    .line 306
    iget-wide v3, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastIdleTime:J

    .line 307
    .line 308
    sub-long v3, v6, v3

    .line 309
    .line 310
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 311
    .line 312
    .line 313
    move-result-wide v3

    .line 314
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 315
    .line 316
    iget-object v8, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    .line 317
    .line 318
    iget v0, v0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceIdleTimePosition:I

    .line 319
    .line 320
    aput-wide v3, v8, v0

    .line 321
    .line 322
    iput-wide v6, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastIdleTime:J

    .line 323
    .line 324
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 325
    .line 326
    add-long/2addr v11, v13

    .line 327
    add-long/2addr v11, v3

    .line 328
    iput-wide v11, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 329
    .line 330
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    sub-int/2addr v3, v2

    .line 339
    :goto_2
    if-ltz v3, :cond_6

    .line 340
    .line 341
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    check-cast v4, Landroid/bluetooth/UidTraffic;

    .line 346
    .line 347
    invoke-virtual {v4}, Landroid/bluetooth/UidTraffic;->getUid()I

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    iget-object v6, v1, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 352
    .line 353
    invoke-virtual {v6, v5}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    iget-object v6, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 358
    .line 359
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    check-cast v6, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    .line 364
    .line 365
    if-nez v6, :cond_5

    .line 366
    .line 367
    new-instance v6, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    .line 368
    .line 369
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 370
    .line 371
    .line 372
    iget-object v7, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 373
    .line 374
    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    :cond_5
    iget-wide v7, v6, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    .line 378
    .line 379
    invoke-virtual {v4}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    .line 380
    .line 381
    .line 382
    move-result-wide v11

    .line 383
    add-long/2addr v11, v7

    .line 384
    iput-wide v11, v6, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    .line 385
    .line 386
    iget-wide v7, v6, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    .line 387
    .line 388
    invoke-virtual {v4}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    .line 389
    .line 390
    .line 391
    move-result-wide v4

    .line 392
    add-long/2addr v4, v7

    .line 393
    iput-wide v4, v6, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    .line 394
    .line 395
    add-int/lit8 v3, v3, -0x1

    .line 396
    .line 397
    goto :goto_2

    .line 398
    :cond_6
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 399
    .line 400
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    sub-int/2addr v0, v2

    .line 405
    :goto_3
    if-ltz v0, :cond_a

    .line 406
    .line 407
    iget-object v3, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 408
    .line 409
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    check-cast v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    .line 414
    .line 415
    iget-wide v4, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    .line 416
    .line 417
    iget-wide v6, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastRxCount:J

    .line 418
    .line 419
    sub-long/2addr v4, v6

    .line 420
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 421
    .line 422
    .line 423
    move-result-wide v4

    .line 424
    iget-wide v6, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    .line 425
    .line 426
    iput-wide v6, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastRxCount:J

    .line 427
    .line 428
    iput-wide v9, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->rxCount:J

    .line 429
    .line 430
    iget-wide v6, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    .line 431
    .line 432
    iget-wide v11, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastTxCount:J

    .line 433
    .line 434
    sub-long/2addr v6, v11

    .line 435
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 436
    .line 437
    .line 438
    move-result-wide v6

    .line 439
    iget-wide v11, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    .line 440
    .line 441
    iput-wide v11, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastTxCount:J

    .line 442
    .line 443
    iput-wide v9, v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->txCount:J

    .line 444
    .line 445
    cmp-long v3, v4, v9

    .line 446
    .line 447
    if-nez v3, :cond_7

    .line 448
    .line 449
    cmp-long v3, v6, v9

    .line 450
    .line 451
    if-eqz v3, :cond_9

    .line 452
    .line 453
    :cond_7
    iget-object v3, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 454
    .line 455
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    iget-object v8, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 460
    .line 461
    iget-object v8, v8, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 462
    .line 463
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v8

    .line 467
    check-cast v8, [J

    .line 468
    .line 469
    if-nez v8, :cond_8

    .line 470
    .line 471
    iget-object v8, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 472
    .line 473
    iget v8, v8, Lcom/android/server/power/stats/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 474
    .line 475
    new-array v8, v8, [J

    .line 476
    .line 477
    iget-object v11, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 478
    .line 479
    iget-object v11, v11, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 480
    .line 481
    invoke-virtual {v11, v3, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    :cond_8
    iget-object v3, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 485
    .line 486
    iget v11, v3, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidRxBytesPosition:I

    .line 487
    .line 488
    aput-wide v4, v8, v11

    .line 489
    .line 490
    iget v3, v3, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidTxBytesPosition:I

    .line 491
    .line 492
    aput-wide v6, v8, v3

    .line 493
    .line 494
    :cond_9
    add-int/lit8 v0, v0, -0x1

    .line 495
    .line 496
    goto :goto_3

    .line 497
    :cond_a
    :goto_4
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;

    .line 498
    .line 499
    new-instance v3, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$$ExternalSyntheticLambda0;

    .line 500
    .line 501
    invoke-direct {v3, p0}, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BluetoothPowerStatsCollector;)V

    .line 502
    .line 503
    .line 504
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 505
    .line 506
    monitor-enter v4

    .line 507
    :try_start_1
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 508
    .line 509
    invoke-static {v0, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$mretrieveBluetoothScanTimesLocked(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BluetoothPowerStatsCollector$$ExternalSyntheticLambda0;)V

    .line 510
    .line 511
    .line 512
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 514
    .line 515
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    sub-int/2addr v0, v2

    .line 520
    move-wide v3, v9

    .line 521
    :goto_5
    if-ltz v0, :cond_e

    .line 522
    .line 523
    iget-object v5, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 524
    .line 525
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    check-cast v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;

    .line 530
    .line 531
    iget-wide v6, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    .line 532
    .line 533
    cmp-long v8, v6, v9

    .line 534
    .line 535
    if-nez v8, :cond_b

    .line 536
    .line 537
    goto :goto_6

    .line 538
    :cond_b
    iget-wide v11, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastScanTime:J

    .line 539
    .line 540
    sub-long/2addr v6, v11

    .line 541
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 542
    .line 543
    .line 544
    move-result-wide v6

    .line 545
    iget-wide v11, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    .line 546
    .line 547
    iput-wide v11, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->lastScanTime:J

    .line 548
    .line 549
    iput-wide v9, v5, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$UidStats;->scanTime:J

    .line 550
    .line 551
    cmp-long v5, v6, v9

    .line 552
    .line 553
    if-eqz v5, :cond_d

    .line 554
    .line 555
    iget-object v5, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 556
    .line 557
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    iget-object v8, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 562
    .line 563
    iget-object v8, v8, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 564
    .line 565
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v8

    .line 569
    check-cast v8, [J

    .line 570
    .line 571
    if-nez v8, :cond_c

    .line 572
    .line 573
    iget-object v8, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 574
    .line 575
    iget v8, v8, Lcom/android/server/power/stats/PowerStatsLayout;->mUidStatsArrayLength:I

    .line 576
    .line 577
    new-array v8, v8, [J

    .line 578
    .line 579
    iget-object v11, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 580
    .line 581
    iget-object v11, v11, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    .line 582
    .line 583
    invoke-virtual {v11, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    :cond_c
    iget-object v5, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 587
    .line 588
    iget v5, v5, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mUidScanTimePosition:I

    .line 589
    .line 590
    aput-wide v6, v8, v5

    .line 591
    .line 592
    add-long/2addr v3, v6

    .line 593
    :cond_d
    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 594
    .line 595
    goto :goto_5

    .line 596
    :cond_e
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 597
    .line 598
    iget-object v5, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mDeviceStats:[J

    .line 599
    .line 600
    iget v0, v0, Lcom/android/server/power/stats/BluetoothPowerStatsLayout;->mDeviceScanTimePosition:I

    .line 601
    .line 602
    aput-wide v3, v5, v0

    .line 603
    .line 604
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 605
    .line 606
    array-length v0, v0

    .line 607
    if-eqz v0, :cond_14

    .line 608
    .line 609
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mVoltageSupplier:Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    .line 610
    .line 611
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;->getAsInt()I

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    if-gtz v0, :cond_f

    .line 616
    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    const-string v3, "Unexpected battery voltage ("

    .line 620
    .line 621
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    const-string v0, " mV) when querying energy consumers"

    .line 628
    .line 629
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    const-string v2, "BluetoothPowerStatsCollector"

    .line 637
    .line 638
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .line 640
    .line 641
    goto :goto_a

    .line 642
    :cond_f
    iget v3, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastVoltageMv:I

    .line 643
    .line 644
    if-eqz v3, :cond_10

    .line 645
    .line 646
    add-int/2addr v3, v0

    .line 647
    div-int/lit8 v3, v3, 0x2

    .line 648
    .line 649
    goto :goto_7

    .line 650
    :cond_10
    move v3, v0

    .line 651
    :goto_7
    iput v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastVoltageMv:I

    .line 652
    .line 653
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    .line 654
    .line 655
    iget-object v4, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mEnergyConsumerIds:[I

    .line 656
    .line 657
    invoke-virtual {v0, v4}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;->getConsumedEnergyUws([I)[J

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    if-nez v0, :cond_11

    .line 662
    .line 663
    goto :goto_a

    .line 664
    :cond_11
    array-length v4, v0

    .line 665
    sub-int/2addr v4, v2

    .line 666
    :goto_8
    if-ltz v4, :cond_14

    .line 667
    .line 668
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastConsumedEnergyUws:[J

    .line 669
    .line 670
    aget-wide v5, v2, v4

    .line 671
    .line 672
    const-wide/16 v7, -0x1

    .line 673
    .line 674
    cmp-long v2, v5, v7

    .line 675
    .line 676
    if-eqz v2, :cond_12

    .line 677
    .line 678
    aget-wide v11, v0, v4

    .line 679
    .line 680
    sub-long/2addr v11, v5

    .line 681
    goto :goto_9

    .line 682
    :cond_12
    move-wide v11, v9

    .line 683
    :goto_9
    cmp-long v2, v11, v9

    .line 684
    .line 685
    if-gez v2, :cond_13

    .line 686
    .line 687
    move-wide v11, v9

    .line 688
    :cond_13
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/BluetoothPowerStatsLayout;

    .line 689
    .line 690
    iget-object v5, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 691
    .line 692
    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 693
    .line 694
    invoke-static {v3, v11, v12}, Lcom/android/server/power/stats/PowerStatsCollector;->uJtoUc(IJ)J

    .line 695
    .line 696
    .line 697
    move-result-wide v11

    .line 698
    invoke-virtual {v2, v5, v4, v11, v12}, Lcom/android/server/power/stats/PowerStatsLayout;->setConsumedEnergy([JIJ)V

    .line 699
    .line 700
    .line 701
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mLastConsumedEnergyUws:[J

    .line 702
    .line 703
    aget-wide v5, v0, v4

    .line 704
    .line 705
    aput-wide v5, v2, v4

    .line 706
    .line 707
    add-int/lit8 v4, v4, -0x1

    .line 708
    .line 709
    goto :goto_8

    .line 710
    :cond_14
    :goto_a
    iget-object v0, v1, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 711
    .line 712
    return-object v0

    .line 713
    :catchall_0
    move-exception v0

    .line 714
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 715
    throw v0
.end method

.method public final onUidRemoved(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
