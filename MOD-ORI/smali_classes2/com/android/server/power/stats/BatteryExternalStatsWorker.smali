.class public final Lcom/android/server/power/stats/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBatteryLevelSync:Ljava/util/concurrent/Future;

.field public mCurrentFuture:Ljava/util/concurrent/Future;

.field public mCurrentReason:Ljava/lang/String;

.field public mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

.field public mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

.field public final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

.field public mLastCollectionTimeStamp:J

.field public mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

.field public mOnBattery:Z

.field public mOnBatteryScreenOff:Z

.field public mPerDisplayScreenStates:[I

.field public mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

.field public mProcessStateSync:Ljava/util/concurrent/Future;

.field public mScreenState:I

.field public final mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mSyncTask:Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

.field public mTelephony:Landroid/telephony/TelephonyManager;

.field public mUpdateFlags:I

.field public mUseLatestStates:Z

.field public mWakelockChangesUpdate:Ljava/util/concurrent/Future;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWorkerLock:Ljava/lang/Object;

.field public final mWriteTask:Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;


# direct methods
.method public static -$$Nest$mupdateExternalStatsLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;IZZ[IZ)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v3}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v4, "BatteryExternalStatsWorker"

    .line 14
    .line 15
    const-string/jumbo v5, "update stats : "

    .line 16
    .line 17
    .line 18
    const-string v6, " ("

    .line 19
    .line 20
    const-string v7, ")"

    .line 21
    .line 22
    move-object/from16 v14, p1

    .line 23
    .line 24
    invoke-static {v2, v5, v14, v6, v7}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getEnergyConsumersLocked(I)Ljava/util/concurrent/CompletableFuture;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    and-int/lit8 v5, v2, 0x2

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 40
    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    new-instance v5, Landroid/os/SynchronousResultReceiver;

    .line 50
    .line 51
    const-string/jumbo v7, "wifi"

    .line 52
    .line 53
    .line 54
    invoke-direct {v5, v7}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 58
    .line 59
    new-instance v8, Lcom/android/server/power/stats/BatteryExternalStatsWorker$3;

    .line 60
    .line 61
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v9, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;

    .line 65
    .line 66
    invoke-direct {v9, v5}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;-><init>(Landroid/os/SynchronousResultReceiver;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 70
    .line 71
    .line 72
    const-string v7, "BatteryExternalStatsWorker"

    .line 73
    .line 74
    const-string v8, "Fetch WiFi data"

    .line 75
    .line 76
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move-object v5, v3

    .line 81
    :goto_0
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 82
    .line 83
    monitor-enter v7

    .line 84
    :try_start_0
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 85
    .line 86
    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 87
    .line 88
    .line 89
    const-string v8, "BatteryExternalStatsWorker"

    .line 90
    .line 91
    const-string v9, "Update Rail Energy data"

    .line 92
    .line 93
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    monitor-exit v7

    .line 97
    const/4 v7, 0x1

    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw v0

    .line 102
    :cond_1
    move-object v5, v3

    .line 103
    const/4 v7, 0x0

    .line 104
    :goto_1
    and-int/lit8 v8, v2, 0x8

    .line 105
    .line 106
    if-eqz v8, :cond_3

    .line 107
    .line 108
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 109
    .line 110
    iget-object v8, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mBluetoothPowerStatsCollector:Lcom/android/server/power/stats/BluetoothPowerStatsCollector;

    .line 111
    .line 112
    iget-boolean v9, v8, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 113
    .line 114
    if-eqz v9, :cond_2

    .line 115
    .line 116
    invoke-virtual {v8}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    if-eqz v8, :cond_3

    .line 125
    .line 126
    new-instance v9, Landroid/os/SynchronousResultReceiver;

    .line 127
    .line 128
    const-string v10, "bluetooth"

    .line 129
    .line 130
    invoke-direct {v9, v10}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 136
    .line 137
    .line 138
    new-instance v11, Lcom/android/server/power/stats/BatteryExternalStatsWorker$4;

    .line 139
    .line 140
    invoke-direct {v11, v9}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$4;-><init>(Landroid/os/SynchronousResultReceiver;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    .line 144
    .line 145
    .line 146
    const-string v8, "BatteryExternalStatsWorker"

    .line 147
    .line 148
    const-string v10, "Fetch Bluetooth data"

    .line 149
    .line 150
    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_3
    :goto_2
    move-object v9, v3

    .line 155
    :goto_3
    and-int/lit8 v8, v2, 0x4

    .line 156
    .line 157
    if-eqz v8, :cond_6

    .line 158
    .line 159
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 160
    .line 161
    iget-object v8, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileRadioPowerStatsCollector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;

    .line 162
    .line 163
    iget-boolean v10, v8, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    .line 164
    .line 165
    if-eqz v10, :cond_4

    .line 166
    .line 167
    invoke-virtual {v8}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_4
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 172
    .line 173
    if-eqz v8, :cond_5

    .line 174
    .line 175
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 178
    .line 179
    .line 180
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 181
    .line 182
    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 183
    .line 184
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 185
    .line 186
    .line 187
    new-instance v11, Lcom/android/server/power/stats/BatteryExternalStatsWorker$5;

    .line 188
    .line 189
    invoke-direct {v11, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$5;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8, v10, v11}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 193
    .line 194
    .line 195
    const-string v8, "BatteryExternalStatsWorker"

    .line 196
    .line 197
    const-string v10, "Fetch modem data"

    .line 198
    .line 199
    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    :cond_5
    :goto_4
    if-nez v7, :cond_6

    .line 203
    .line 204
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 205
    .line 206
    monitor-enter v7

    .line 207
    :try_start_1
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 208
    .line 209
    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 210
    .line 211
    .line 212
    const-string v8, "BatteryExternalStatsWorker"

    .line 213
    .line 214
    const-string v10, "Update Rail Energy data"

    .line 215
    .line 216
    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    monitor-exit v7

    .line 220
    goto :goto_5

    .line 221
    :catchall_1
    move-exception v0

    .line 222
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    throw v0

    .line 224
    :cond_6
    :goto_5
    and-int/lit8 v7, v2, 0x10

    .line 225
    .line 226
    if-eqz v7, :cond_7

    .line 227
    .line 228
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 229
    .line 230
    invoke-virtual {v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->fillLowPowerStats()V

    .line 231
    .line 232
    .line 233
    :cond_7
    invoke-static {v5}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    check-cast v5, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 238
    .line 239
    invoke-static {v9}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    move-object v15, v8

    .line 244
    check-cast v15, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 245
    .line 246
    const-wide/16 v8, 0x7d0

    .line 247
    .line 248
    :try_start_2
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 249
    .line 250
    invoke-virtual {v0, v8, v9, v10}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 255
    .line 256
    move-object/from16 v17, v0

    .line 257
    .line 258
    goto :goto_9

    .line 259
    :catch_0
    move-exception v0

    .line 260
    goto :goto_6

    .line 261
    :catch_1
    move-exception v0

    .line 262
    goto :goto_7

    .line 263
    :goto_6
    const-string v10, "BatteryExternalStatsWorker"

    .line 264
    .line 265
    new-instance v11, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v12, "exception reading modem stats: "

    .line 268
    .line 269
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    goto :goto_8

    .line 287
    :goto_7
    const-string v10, "BatteryExternalStatsWorker"

    .line 288
    .line 289
    const-string/jumbo v11, "timeout or interrupt reading modem stats: "

    .line 290
    .line 291
    .line 292
    invoke-static {v0, v11, v10}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :goto_8
    move-object/from16 v17, v3

    .line 296
    .line 297
    :goto_9
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    .line 298
    .line 299
    if-eqz v0, :cond_9

    .line 300
    .line 301
    if-nez v4, :cond_8

    .line 302
    .line 303
    goto :goto_e

    .line 304
    :cond_8
    iget-object v10, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 305
    .line 306
    monitor-enter v10

    .line 307
    :try_start_3
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 308
    .line 309
    iget v11, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryVoltageMv:I

    .line 310
    .line 311
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 312
    :try_start_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 313
    .line 314
    invoke-virtual {v4, v8, v9, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    check-cast v0, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2

    .line 319
    .line 320
    goto :goto_d

    .line 321
    :catch_2
    move-exception v0

    .line 322
    goto :goto_a

    .line 323
    :catch_3
    move-exception v0

    .line 324
    goto :goto_c

    .line 325
    :goto_a
    const-string v4, "BatteryExternalStatsWorker"

    .line 326
    .line 327
    new-instance v8, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    const-string v9, "exception reading getEnergyConsumedAsync: "

    .line 330
    .line 331
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    :goto_b
    move-object v0, v3

    .line 349
    goto :goto_d

    .line 350
    :goto_c
    const-string v4, "BatteryExternalStatsWorker"

    .line 351
    .line 352
    const-string/jumbo v8, "timeout or interrupt reading getEnergyConsumedAsync: "

    .line 353
    .line 354
    .line 355
    invoke-static {v0, v8, v4}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    goto :goto_b

    .line 359
    :goto_d
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    .line 360
    .line 361
    invoke-virtual {v4, v0, v11}, Lcom/android/server/power/stats/EnergyConsumerSnapshot;->updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    goto :goto_f

    .line 366
    :catchall_2
    move-exception v0

    .line 367
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 368
    throw v0

    .line 369
    :cond_9
    :goto_e
    move-object v0, v3

    .line 370
    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 371
    .line 372
    .line 373
    move-result-wide v11

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 375
    .line 376
    .line 377
    move-result-wide v27

    .line 378
    const-wide/16 v8, 0x3e8

    .line 379
    .line 380
    mul-long v9, v11, v8

    .line 381
    .line 382
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 383
    .line 384
    monitor-enter v4

    .line 385
    :try_start_6
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 386
    .line 387
    iget-object v8, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 388
    .line 389
    const/16 v13, 0xe

    .line 390
    .line 391
    const/16 v16, 0x0

    .line 392
    .line 393
    move-object/from16 v19, v4

    .line 394
    .line 395
    move-wide v3, v9

    .line 396
    move-wide v9, v11

    .line 397
    move-wide/from16 v29, v11

    .line 398
    .line 399
    move-wide/from16 v11, v27

    .line 400
    .line 401
    move-object/from16 v14, p1

    .line 402
    .line 403
    move-object v6, v15

    .line 404
    move/from16 v15, v16

    .line 405
    .line 406
    :try_start_7
    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    .line 407
    .line 408
    .line 409
    and-int/lit8 v8, v2, 0x1

    .line 410
    .line 411
    if-eqz v8, :cond_c

    .line 412
    .line 413
    if-eqz p6, :cond_a

    .line 414
    .line 415
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 416
    .line 417
    iget-object v9, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 418
    .line 419
    iget-boolean v9, v9, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 420
    .line 421
    iget-object v8, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 422
    .line 423
    iget-boolean v8, v8, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 424
    .line 425
    goto :goto_10

    .line 426
    :catchall_3
    move-exception v0

    .line 427
    goto/16 :goto_19

    .line 428
    .line 429
    :cond_a
    move/from16 v9, p3

    .line 430
    .line 431
    move/from16 v8, p4

    .line 432
    .line 433
    :goto_10
    if-nez v0, :cond_b

    .line 434
    .line 435
    const/4 v10, 0x0

    .line 436
    goto :goto_11

    .line 437
    :cond_b
    iget-object v10, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cpuClusterChargeUC:[J

    .line 438
    .line 439
    :goto_11
    iget-object v11, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 440
    .line 441
    invoke-virtual {v11, v9, v8, v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuTimeLocked(ZZ[J)V

    .line 442
    .line 443
    .line 444
    const-string v8, "BatteryExternalStatsWorker"

    .line 445
    .line 446
    const-string v9, "Update CPU state"

    .line 447
    .line 448
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    :cond_c
    const/16 v8, 0x7f

    .line 452
    .line 453
    and-int/2addr v2, v8

    .line 454
    if-ne v2, v8, :cond_d

    .line 455
    .line 456
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 457
    .line 458
    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateKernelWakelocksLocked(J)V

    .line 459
    .line 460
    .line 461
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 462
    .line 463
    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked(J)V

    .line 464
    .line 465
    .line 466
    const-string v2, "BatteryExternalStatsWorker"

    .line 467
    .line 468
    const-string v8, "Update Kernel wakelock & memory state"

    .line 469
    .line 470
    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    :cond_d
    if-eqz v7, :cond_e

    .line 474
    .line 475
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 476
    .line 477
    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateRpmStatsLocked(J)V

    .line 478
    .line 479
    .line 480
    const-string v2, "BatteryExternalStatsWorker"

    .line 481
    .line 482
    const-string v3, "Update RPM state"

    .line 483
    .line 484
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    :cond_e
    const-wide/16 v2, -0x1

    .line 488
    .line 489
    if-eqz v0, :cond_11

    .line 490
    .line 491
    iget-object v4, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->displayChargeUC:[J

    .line 492
    .line 493
    if-eqz v4, :cond_f

    .line 494
    .line 495
    array-length v7, v4

    .line 496
    if-lez v7, :cond_f

    .line 497
    .line 498
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 499
    .line 500
    move-object/from16 v8, p5

    .line 501
    .line 502
    move-wide/from16 v13, v29

    .line 503
    .line 504
    invoke-virtual {v7, v4, v8, v13, v14}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateDisplayEnergyConsumerStatsLocked([J[IJ)V

    .line 505
    .line 506
    .line 507
    const-string v4, "BatteryExternalStatsWorker"

    .line 508
    .line 509
    const-string v7, "Update energy state (display)"

    .line 510
    .line 511
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    goto :goto_12

    .line 515
    :cond_f
    move-wide/from16 v13, v29

    .line 516
    .line 517
    :goto_12
    iget-wide v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->gnssChargeUC:J

    .line 518
    .line 519
    cmp-long v4, v7, v2

    .line 520
    .line 521
    if-eqz v4, :cond_10

    .line 522
    .line 523
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 524
    .line 525
    invoke-virtual {v4, v7, v8, v13, v14}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateGnssEnergyConsumerStatsLocked(JJ)V

    .line 526
    .line 527
    .line 528
    const-string v4, "BatteryExternalStatsWorker"

    .line 529
    .line 530
    const-string v7, "Update energy state (gnss)"

    .line 531
    .line 532
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    :cond_10
    iget-wide v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->cameraChargeUC:J

    .line 536
    .line 537
    cmp-long v4, v7, v2

    .line 538
    .line 539
    if-eqz v4, :cond_12

    .line 540
    .line 541
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 542
    .line 543
    invoke-virtual {v4, v7, v8, v13, v14}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCameraEnergyConsumerStatsLocked(JJ)V

    .line 544
    .line 545
    .line 546
    const-string v4, "BatteryExternalStatsWorker"

    .line 547
    .line 548
    const-string v7, "Update energy state (camera)"

    .line 549
    .line 550
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    goto :goto_13

    .line 554
    :cond_11
    move-wide/from16 v13, v29

    .line 555
    .line 556
    :cond_12
    :goto_13
    if-eqz v0, :cond_14

    .line 557
    .line 558
    iget-object v4, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    .line 559
    .line 560
    if-eqz v4, :cond_14

    .line 561
    .line 562
    const/4 v4, 0x0

    .line 563
    :goto_14
    iget-object v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherTotalChargeUC:[J

    .line 564
    .line 565
    array-length v8, v7

    .line 566
    if-ge v4, v8, :cond_13

    .line 567
    .line 568
    aget-wide v7, v7, v4

    .line 569
    .line 570
    iget-object v9, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    .line 571
    .line 572
    aget-object v9, v9, v4

    .line 573
    .line 574
    iget-object v10, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 575
    .line 576
    invoke-virtual {v10, v4, v7, v8, v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCustomEnergyConsumerStatsLocked(IJLandroid/util/SparseLongArray;)V

    .line 577
    .line 578
    .line 579
    add-int/lit8 v4, v4, 0x1

    .line 580
    .line 581
    goto :goto_14

    .line 582
    :cond_13
    const-string v4, "BatteryExternalStatsWorker"

    .line 583
    .line 584
    const-string v7, "Update energy state (others)"

    .line 585
    .line 586
    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .line 588
    .line 589
    :cond_14
    if-eqz v6, :cond_17

    .line 590
    .line 591
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    .line 592
    .line 593
    .line 594
    move-result v4

    .line 595
    if-eqz v4, :cond_16

    .line 596
    .line 597
    if-eqz v0, :cond_15

    .line 598
    .line 599
    iget-wide v7, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->bluetoothChargeUC:J

    .line 600
    .line 601
    move-wide v11, v7

    .line 602
    goto :goto_15

    .line 603
    :cond_15
    move-wide v11, v2

    .line 604
    :goto_15
    iget-object v9, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 605
    .line 606
    move-object v10, v6

    .line 607
    move-wide v7, v13

    .line 608
    move-wide/from16 v15, v27

    .line 609
    .line 610
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJJ)V

    .line 611
    .line 612
    .line 613
    const-string v4, "BatteryExternalStatsWorker"

    .line 614
    .line 615
    const-string v6, "Update bluetooth state"

    .line 616
    .line 617
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .line 619
    .line 620
    goto :goto_16

    .line 621
    :cond_16
    move-wide v7, v13

    .line 622
    const-string v4, "BatteryExternalStatsWorker"

    .line 623
    .line 624
    new-instance v9, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .line 628
    .line 629
    const-string v10, "bluetooth info is invalid: "

    .line 630
    .line 631
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v6

    .line 641
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .line 643
    .line 644
    goto :goto_16

    .line 645
    :cond_17
    move-wide v7, v13

    .line 646
    :goto_16
    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 647
    const-string v4, "BatteryExternalStatsWorker"

    .line 648
    .line 649
    const-string/jumbo v6, "mStats lock released"

    .line 650
    .line 651
    .line 652
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .line 654
    .line 655
    if-eqz v5, :cond_1a

    .line 656
    .line 657
    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    .line 658
    .line 659
    .line 660
    move-result v4

    .line 661
    if-eqz v4, :cond_19

    .line 662
    .line 663
    if-eqz v0, :cond_18

    .line 664
    .line 665
    iget-wide v9, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->wifiChargeUC:J

    .line 666
    .line 667
    move-wide/from16 v20, v9

    .line 668
    .line 669
    goto :goto_17

    .line 670
    :cond_18
    move-wide/from16 v20, v2

    .line 671
    .line 672
    :goto_17
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    .line 673
    .line 674
    const-class v6, Landroid/app/usage/NetworkStatsManager;

    .line 675
    .line 676
    iget-object v4, v4, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->mContext:Landroid/content/Context;

    .line 677
    .line 678
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v4

    .line 682
    move-object/from16 v26, v4

    .line 683
    .line 684
    check-cast v26, Landroid/app/usage/NetworkStatsManager;

    .line 685
    .line 686
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 687
    .line 688
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 689
    .line 690
    .line 691
    move-result-object v19

    .line 692
    move-object/from16 v18, v4

    .line 693
    .line 694
    move-wide/from16 v22, v7

    .line 695
    .line 696
    move-wide/from16 v24, v27

    .line 697
    .line 698
    invoke-virtual/range {v18 .. v26}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    .line 699
    .line 700
    .line 701
    const-string v4, "BatteryExternalStatsWorker"

    .line 702
    .line 703
    const-string v5, "Update wifi state"

    .line 704
    .line 705
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .line 707
    .line 708
    goto :goto_18

    .line 709
    :cond_19
    const-string v4, "BatteryExternalStatsWorker"

    .line 710
    .line 711
    new-instance v6, Ljava/lang/StringBuilder;

    .line 712
    .line 713
    const-string/jumbo v9, "wifi info is invalid: "

    .line 714
    .line 715
    .line 716
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v5

    .line 726
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    .line 728
    .line 729
    :cond_1a
    :goto_18
    if-eqz v17, :cond_1c

    .line 730
    .line 731
    if-eqz v0, :cond_1b

    .line 732
    .line 733
    iget-wide v2, v0, Lcom/android/server/power/stats/EnergyConsumerSnapshot$EnergyConsumerDeltaData;->mobileRadioChargeUC:J

    .line 734
    .line 735
    :cond_1b
    move-wide/from16 v18, v2

    .line 736
    .line 737
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    .line 738
    .line 739
    const-class v2, Landroid/app/usage/NetworkStatsManager;

    .line 740
    .line 741
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;->mContext:Landroid/content/Context;

    .line 742
    .line 743
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    move-object/from16 v24, v0

    .line 748
    .line 749
    check-cast v24, Landroid/app/usage/NetworkStatsManager;

    .line 750
    .line 751
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 752
    .line 753
    move-object/from16 v16, v0

    .line 754
    .line 755
    move-wide/from16 v20, v7

    .line 756
    .line 757
    move-wide/from16 v22, v27

    .line 758
    .line 759
    invoke-virtual/range {v16 .. v24}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    .line 760
    .line 761
    .line 762
    const-string v0, "BatteryExternalStatsWorker"

    .line 763
    .line 764
    const-string v1, "Update modem state"

    .line 765
    .line 766
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    .line 768
    .line 769
    :cond_1c
    const-string v0, "BatteryExternalStatsWorker"

    .line 770
    .line 771
    const-string v1, "done updateExternalStatsLocked"

    .line 772
    .line 773
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    .line 775
    .line 776
    return-void

    .line 777
    :catchall_4
    move-exception v0

    .line 778
    move-object/from16 v19, v4

    .line 779
    .line 780
    :goto_19
    :try_start_8
    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 781
    throw v0
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 25
    .line 26
    new-instance v1, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    .line 44
    .line 45
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mSyncTask:Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    .line 52
    .line 53
    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-direct {v0, p0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWriteTask:Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mInjector:Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    .line 62
    .line 63
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 64
    .line 65
    return-void
.end method

.method public static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-wide/16 v1, 0x7d0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    .line 20
    .line 21
    const-string v2, "controller_activity"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    return-object p0

    .line 30
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string/jumbo v2, "timeout reading "

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p0, " stats"

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v1, "BatteryExternalStatsWorker"

    .line 55
    .line 56
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_1
    return-object v0
.end method

.method public static getSupportedEnergyBuckets(Landroid/util/SparseArray;)[Z
    .locals 6

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Z

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroid/hardware/power/stats/EnergyConsumer;

    .line 18
    .line 19
    iget-byte v4, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    packed-switch v4, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :pswitch_0
    const/16 v4, 0x8

    .line 27
    .line 28
    aput-boolean v5, v0, v4

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :pswitch_1
    const/4 v4, 0x4

    .line 32
    aput-boolean v5, v0, v4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :pswitch_2
    const/4 v4, 0x7

    .line 36
    aput-boolean v5, v0, v4

    .line 37
    .line 38
    const/16 v4, 0x9

    .line 39
    .line 40
    aput-boolean v5, v0, v4

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :pswitch_3
    const/4 v4, 0x6

    .line 44
    aput-boolean v5, v0, v4

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :pswitch_4
    aput-boolean v5, v0, v2

    .line 48
    .line 49
    aput-boolean v5, v0, v5

    .line 50
    .line 51
    const/4 v4, 0x2

    .line 52
    aput-boolean v5, v0, v4

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_5
    const/4 v4, 0x3

    .line 56
    aput-boolean v5, v0, v4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :pswitch_6
    const/4 v4, 0x5

    .line 60
    aput-boolean v5, v0, v4

    .line 61
    .line 62
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return-object v0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, [I

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1, p0}, Landroid/util/IntArray;->addAll([I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final cancelSyncDueToProcessStateChange()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mProcessStateSync:Ljava/util/concurrent/Future;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mProcessStateSync:Ljava/util/concurrent/Future;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method public extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 10
    .line 11
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 16
    .line 17
    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v4

    .line 21
    sub-long/2addr v2, v4

    .line 22
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v4

    .line 28
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 29
    .line 30
    invoke-virtual {v6}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v6

    .line 34
    iget-object v8, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 35
    .line 36
    invoke-virtual {v8}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    iget-object v10, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 41
    .line 42
    invoke-virtual {v10}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v10

    .line 46
    iget-object v12, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 47
    .line 48
    invoke-virtual {v12}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    .line 49
    .line 50
    .line 51
    move-result-wide v12

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v15

    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    .line 57
    .line 58
    .line 59
    move-result v17

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v18

    .line 64
    sub-long v18, v18, v8

    .line 65
    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v8

    .line 70
    sub-long/2addr v8, v10

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v10

    .line 75
    sub-long/2addr v10, v6

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    sub-long/2addr v6, v4

    .line 81
    const-wide/16 v4, 0x0

    .line 82
    .line 83
    cmp-long v14, v18, v4

    .line 84
    .line 85
    if-ltz v14, :cond_2

    .line 86
    .line 87
    cmp-long v14, v8, v4

    .line 88
    .line 89
    if-ltz v14, :cond_2

    .line 90
    .line 91
    cmp-long v14, v6, v4

    .line 92
    .line 93
    if-ltz v14, :cond_2

    .line 94
    .line 95
    cmp-long v14, v10, v4

    .line 96
    .line 97
    if-gez v14, :cond_1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    .line 101
    .line 102
    .line 103
    move-result-wide v2

    .line 104
    sub-long/2addr v2, v12

    .line 105
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 106
    .line 107
    .line 108
    move-result-wide v2

    .line 109
    const/4 v4, 0x0

    .line 110
    move-wide/from16 v26, v2

    .line 111
    .line 112
    move-wide/from16 v22, v6

    .line 113
    .line 114
    move-wide/from16 v20, v8

    .line 115
    .line 116
    move-wide/from16 v24, v10

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v8

    .line 127
    add-long/2addr v8, v6

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v6

    .line 132
    add-long/2addr v6, v8

    .line 133
    const-wide/16 v8, 0x2ee

    .line 134
    .line 135
    add-long/2addr v2, v8

    .line 136
    cmp-long v2, v6, v2

    .line 137
    .line 138
    if-gtz v2, :cond_3

    .line 139
    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    .line 141
    .line 142
    .line 143
    move-result-wide v4

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    .line 145
    .line 146
    .line 147
    move-result-wide v2

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    .line 149
    .line 150
    .line 151
    move-result-wide v6

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    .line 153
    .line 154
    .line 155
    move-result-wide v8

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide v10

    .line 160
    move-wide/from16 v28, v4

    .line 161
    .line 162
    move-wide v4, v6

    .line 163
    move-wide/from16 v6, v28

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_3
    move-wide v2, v4

    .line 167
    move-wide v6, v2

    .line 168
    move-wide v8, v6

    .line 169
    move-wide v10, v8

    .line 170
    :goto_1
    const/4 v12, 0x1

    .line 171
    move-wide/from16 v20, v2

    .line 172
    .line 173
    move-wide/from16 v18, v4

    .line 174
    .line 175
    move-wide/from16 v26, v6

    .line 176
    .line 177
    move-wide/from16 v24, v8

    .line 178
    .line 179
    move-wide/from16 v22, v10

    .line 180
    .line 181
    move v4, v12

    .line 182
    :goto_2
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastWifiInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 183
    .line 184
    new-instance v0, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 185
    .line 186
    move-object v14, v0

    .line 187
    invoke-direct/range {v14 .. v27}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJJ)V

    .line 188
    .line 189
    .line 190
    if-eqz v4, :cond_4

    .line 191
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v2, "WiFi energy data was reset, new WiFi energy data is "

    .line 195
    .line 196
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const-string v2, "BatteryExternalStatsWorker"

    .line 207
    .line 208
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    :cond_4
    return-object v0
.end method

.method public getEnergyConsumersLocked(I)Ljava/util/concurrent/CompletableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerSnapshot:Lcom/android/server/power/stats/EnergyConsumerSnapshot;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v2, 0x7f

    .line 12
    .line 13
    if-ne p1, v2, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    new-array p0, p0, [I

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/android/server/powerstats/PowerStatsService$LocalService;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance v0, Landroid/util/IntArray;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 26
    .line 27
    .line 28
    and-int/lit8 v2, p1, 0x8

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    and-int/lit8 v2, p1, 0x1

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 42
    .line 43
    .line 44
    :cond_3
    and-int/lit8 v2, p1, 0x20

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    .line 48
    const/4 v2, 0x3

    .line 49
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 50
    .line 51
    .line 52
    :cond_4
    and-int/lit8 v2, p1, 0x4

    .line 53
    .line 54
    if-eqz v2, :cond_5

    .line 55
    .line 56
    const/4 v2, 0x5

    .line 57
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 58
    .line 59
    .line 60
    :cond_5
    and-int/lit8 v2, p1, 0x2

    .line 61
    .line 62
    if-eqz v2, :cond_6

    .line 63
    .line 64
    const/4 v2, 0x6

    .line 65
    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 66
    .line 67
    .line 68
    :cond_6
    and-int/lit8 p1, p1, 0x40

    .line 69
    .line 70
    if-eqz p1, :cond_7

    .line 71
    .line 72
    const/4 p1, 0x7

    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->addEnergyConsumerIdLocked(Landroid/util/IntArray;I)V

    .line 74
    .line 75
    .line 76
    :cond_7
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_8

    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_8
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsService$LocalService;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_9
    :goto_0
    return-object v1
.end method

.method public final populateEnergyConsumerSubsystemMapsLocked()Landroid/util/SparseArray;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    array-length v2, v0

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    .line 25
    .line 26
    array-length v2, v0

    .line 27
    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 33
    .line 34
    .line 35
    array-length v3, v0

    .line 36
    const/4 v4, 0x0

    .line 37
    move v5, v4

    .line 38
    :goto_0
    if-ge v5, v3, :cond_4

    .line 39
    .line 40
    aget-object v6, v0, v5

    .line 41
    .line 42
    iget v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    .line 43
    .line 44
    if-eqz v7, :cond_2

    .line 45
    .line 46
    iget-byte v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 47
    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    const/4 v8, 0x2

    .line 51
    if-eq v7, v8, :cond_2

    .line 52
    .line 53
    const/4 v8, 0x3

    .line 54
    if-eq v7, v8, :cond_2

    .line 55
    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v8, "EnergyConsumer \'"

    .line 59
    .line 60
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v8, "\' has unexpected ordinal "

    .line 69
    .line 70
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    .line 74
    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v8, " for type "

    .line 79
    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-byte v6, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 84
    .line 85
    const-string v8, "BatteryExternalStatsWorker"

    .line 86
    .line 87
    invoke-static {v7, v6, v8}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iget v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    .line 92
    .line 93
    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-byte v7, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 97
    .line 98
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    check-cast v7, Landroid/util/IntArray;

    .line 103
    .line 104
    if-nez v7, :cond_3

    .line 105
    .line 106
    new-instance v7, Landroid/util/IntArray;

    .line 107
    .line 108
    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    .line 109
    .line 110
    .line 111
    iget-byte v8, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 112
    .line 113
    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    iget v6, v6, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    .line 117
    .line 118
    invoke-virtual {v7, v6}, Landroid/util/IntArray;->add(I)V

    .line 119
    .line 120
    .line 121
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    new-instance v0, Landroid/util/SparseArray;

    .line 125
    .line 126
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 131
    .line 132
    .line 133
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 134
    .line 135
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    :goto_2
    if-ge v4, v0, :cond_5

    .line 140
    .line 141
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    check-cast v5, Landroid/util/IntArray;

    .line 150
    .line 151
    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mEnergyConsumerTypeToIdMap:Landroid/util/SparseArray;

    .line 156
    .line 157
    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v4, v4, 0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_5
    :goto_3
    return-object v1
.end method

.method public final scheduleCpuSyncDueToWakelockChange(J)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 3
    .line 4
    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v1, v2, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public final scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string/jumbo p1, "worker shutdown"

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    if-eqz p1, :cond_2

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    cmp-long v0, p3, v0

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object p1

    .line 36
    :cond_2
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    .line 38
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    .line 40
    invoke-interface {p0, p2, p3, p4, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 41
    .line 42
    .line 43
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-object p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public final declared-synchronized scheduleRunnable(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    const-string v0, "Couldn\'t schedule "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    move-exception v1

    .line 13
    :try_start_1
    const-string v2, "BatteryExternalStatsWorker"

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v2, p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :goto_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit p0

    .line 33
    throw p1
.end method

.method public final declared-synchronized scheduleSync(ILjava/lang/String;)Ljava/util/concurrent/Future;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSyncLocked(ILjava/lang/String;)Ljava/util/concurrent/Future;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-object p1

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method public final scheduleSyncLocked(ILjava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string/jumbo p1, "worker shutdown"

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iput p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 27
    .line 28
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 29
    .line 30
    :try_start_0
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mSyncTask:Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;

    .line 33
    .line 34
    invoke-interface {p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_1
    :goto_0
    iget p2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 48
    .line 49
    or-int/2addr p1, p2

    .line 50
    iput p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 53
    .line 54
    return-object p0
.end method
