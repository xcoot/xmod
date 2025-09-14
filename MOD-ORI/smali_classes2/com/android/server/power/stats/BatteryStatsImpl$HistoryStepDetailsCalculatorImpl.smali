.class public final Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsHistory$HistoryStepDetailsCalculator;


# instance fields
.field public mCurStepCpuSystemTimeMs:J

.field public mCurStepCpuUserTimeMs:J

.field public mCurStepStatIOWaitTimeMs:J

.field public mCurStepStatIdleTimeMs:J

.field public mCurStepStatIrqTimeMs:J

.field public mCurStepStatSoftIrqTimeMs:J

.field public mCurStepStatSystemTimeMs:J

.field public mCurStepStatUserTimeMs:J

.field public final mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field public mHasHistoryStepDetails:Z

.field public mLastStepCpuSystemTimeMs:J

.field public mLastStepCpuUserTimeMs:J

.field public mLastStepStatIOWaitTimeMs:J

.field public mLastStepStatIdleTimeMs:J

.field public mLastStepStatIrqTimeMs:J

.field public mLastStepStatSoftIrqTimeMs:J

.field public mLastStepStatSystemTimeMs:J

.field public mLastStepStatUserTimeMs:J

.field public mUpdateRequested:Z

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 5
    .line 6
    new-instance p1, Landroid/os/BatteryStats$HistoryStepDetails;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/os/BatteryStats$HistoryStepDetails;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mHasHistoryStepDetails:Z

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuUserTimeMs:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuSystemTimeMs:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatUserTimeMs:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSystemTimeMs:J

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIOWaitTimeMs:J

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIrqTimeMs:J

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSoftIrqTimeMs:J

    .line 33
    .line 34
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    .line 35
    .line 36
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIdleTimeMs:J

    .line 37
    .line 38
    return-void
.end method

.method public final getHistoryStepDetails()Landroid/os/BatteryStats$HistoryStepDetails;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-boolean v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mUpdateRequested:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    if-nez v0, :cond_7

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mUpdateRequested:Z

    .line 12
    .line 13
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mExternalSync:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 16
    .line 17
    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleCpuSyncDueToWakelockChange(J)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPlatformIdleStateCallback:Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;

    .line 23
    .line 24
    if-eqz v0, :cond_7

    .line 25
    .line 26
    iget-object v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 27
    .line 28
    check-cast v0, Lcom/android/server/am/BatteryStatsService;

    .line 29
    .line 30
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v6

    .line 33
    :try_start_0
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 34
    .line 35
    if-eqz v7, :cond_6

    .line 36
    .line 37
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    .line 38
    .line 39
    check-cast v7, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-nez v7, :cond_6

    .line 46
    .line 47
    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    .line 48
    .line 49
    check-cast v7, Ljava/util/HashMap;

    .line 50
    .line 51
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-eqz v7, :cond_0

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Lcom/android/server/powerstats/PowerStatsService$LocalService;

    .line 61
    .line 62
    new-array v7, v2, [I

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Lcom/android/server/powerstats/PowerStatsService$LocalService;->getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    .line 70
    const-wide/16 v8, 0x7d0

    .line 71
    .line 72
    invoke-virtual {v6, v8, v9, v7}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, [Landroid/hardware/power/stats/StateResidencyResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    .line 78
    if-eqz v6, :cond_5

    .line 79
    .line 80
    array-length v7, v6

    .line 81
    if-nez v7, :cond_1

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v8, "SubsystemPowerState"

    .line 88
    .line 89
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const v8, 0x8000

    .line 93
    .line 94
    .line 95
    move v9, v2

    .line 96
    :goto_0
    array-length v10, v6

    .line 97
    if-ge v9, v10, :cond_4

    .line 98
    .line 99
    aget-object v10, v6, v9

    .line 100
    .line 101
    new-instance v11, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v12, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v13, " subsystem_"

    .line 109
    .line 110
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    new-instance v12, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v13, " name="

    .line 126
    .line 127
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    .line 131
    .line 132
    iget v14, v10, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    .line 133
    .line 134
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    check-cast v13, Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    check-cast v13, Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    move v12, v2

    .line 157
    :goto_1
    iget-object v13, v10, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    .line 158
    .line 159
    array-length v14, v13

    .line 160
    if-ge v12, v14, :cond_2

    .line 161
    .line 162
    aget-object v13, v13, v12

    .line 163
    .line 164
    new-instance v14, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v15, " state_"

    .line 167
    .line 168
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v14

    .line 178
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    new-instance v14, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v15, " name="

    .line 184
    .line 185
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    .line 189
    .line 190
    iget v3, v10, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    .line 191
    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v15, Ljava/util/HashMap;

    .line 197
    .line 198
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    check-cast v3, Ljava/util/Map;

    .line 203
    .line 204
    iget v4, v13, Landroid/hardware/power/stats/StateResidency;->id:I

    .line 205
    .line 206
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    check-cast v3, Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v4, " time="

    .line 229
    .line 230
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-wide v14, v13, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    .line 234
    .line 235
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v4, " count="

    .line 248
    .line 249
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-wide v14, v13, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    .line 253
    .line 254
    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string v4, " last entry="

    .line 267
    .line 268
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-wide v13, v13, Landroid/hardware/power/stats/StateResidency;->lastEntryTimestampMs:J

    .line 272
    .line 273
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    add-int/lit8 v12, v12, 0x1

    .line 284
    .line 285
    const-wide/16 v3, 0x0

    .line 286
    .line 287
    goto/16 :goto_1

    .line 288
    .line 289
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-gt v3, v8, :cond_3

    .line 294
    .line 295
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    sub-int/2addr v8, v3

    .line 300
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    add-int/lit8 v9, v9, 0x1

    .line 304
    .line 305
    const-wide/16 v3, 0x0

    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :cond_3
    const-string v0, "BatteryStatsService"

    .line 310
    .line 311
    const-string v3, "getSubsystemLowPowerStats: buffer not enough"

    .line 312
    .line 313
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    goto :goto_4

    .line 321
    :cond_5
    :goto_2
    const-string v0, "Empty"

    .line 322
    .line 323
    goto :goto_4

    .line 324
    :catch_0
    move-exception v0

    .line 325
    const-string v3, "BatteryStatsService"

    .line 326
    .line 327
    const-string v4, "Failed to getStateResidencyAsync"

    .line 328
    .line 329
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .line 331
    .line 332
    const-string v0, "Empty"

    .line 333
    .line 334
    goto :goto_4

    .line 335
    :catchall_0
    move-exception v0

    .line 336
    goto :goto_5

    .line 337
    :cond_6
    :goto_3
    :try_start_2
    const-string v0, "Empty"

    .line 338
    .line 339
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    :goto_4
    iput-object v0, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    .line 341
    .line 342
    goto :goto_6

    .line 343
    :goto_5
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    throw v0

    .line 345
    :cond_7
    :goto_6
    iget-boolean v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mHasHistoryStepDetails:Z

    .line 346
    .line 347
    if-nez v0, :cond_9

    .line 348
    .line 349
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 350
    .line 351
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 352
    .line 353
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    :goto_7
    if-ge v2, v0, :cond_8

    .line 358
    .line 359
    iget-object v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 360
    .line 361
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 362
    .line 363
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    check-cast v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 368
    .line 369
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    add-int/lit8 v2, v2, 0x1

    .line 373
    .line 374
    goto :goto_7

    .line 375
    :cond_8
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    .line 376
    .line 377
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuUserTimeMs:J

    .line 378
    .line 379
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    .line 380
    .line 381
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuSystemTimeMs:J

    .line 382
    .line 383
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    .line 384
    .line 385
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatUserTimeMs:J

    .line 386
    .line 387
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    .line 388
    .line 389
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSystemTimeMs:J

    .line 390
    .line 391
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    .line 392
    .line 393
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIOWaitTimeMs:J

    .line 394
    .line 395
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    .line 396
    .line 397
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIrqTimeMs:J

    .line 398
    .line 399
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    .line 400
    .line 401
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSoftIrqTimeMs:J

    .line 402
    .line 403
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    .line 404
    .line 405
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIdleTimeMs:J

    .line 406
    .line 407
    const/4 v0, 0x0

    .line 408
    return-object v0

    .line 409
    :cond_9
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 410
    .line 411
    iget-wide v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    .line 412
    .line 413
    iget-wide v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuUserTimeMs:J

    .line 414
    .line 415
    sub-long/2addr v3, v5

    .line 416
    long-to-int v3, v3

    .line 417
    iput v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    .line 418
    .line 419
    iget-wide v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    .line 420
    .line 421
    iget-wide v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuSystemTimeMs:J

    .line 422
    .line 423
    sub-long/2addr v3, v5

    .line 424
    long-to-int v3, v3

    .line 425
    iput v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    .line 426
    .line 427
    iget-wide v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    .line 428
    .line 429
    iget-wide v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatUserTimeMs:J

    .line 430
    .line 431
    sub-long/2addr v3, v5

    .line 432
    long-to-int v3, v3

    .line 433
    iput v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    .line 434
    .line 435
    iget-wide v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    .line 436
    .line 437
    iget-wide v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSystemTimeMs:J

    .line 438
    .line 439
    sub-long/2addr v3, v5

    .line 440
    long-to-int v3, v3

    .line 441
    iput v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    .line 442
    .line 443
    iget-wide v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    .line 444
    .line 445
    iget-wide v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIOWaitTimeMs:J

    .line 446
    .line 447
    sub-long/2addr v3, v5

    .line 448
    long-to-int v3, v3

    .line 449
    iput v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    .line 450
    .line 451
    iget-wide v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    .line 452
    .line 453
    iget-wide v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIrqTimeMs:J

    .line 454
    .line 455
    sub-long/2addr v3, v5

    .line 456
    long-to-int v3, v3

    .line 457
    iput v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    .line 458
    .line 459
    iget-wide v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    .line 460
    .line 461
    iget-wide v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSoftIrqTimeMs:J

    .line 462
    .line 463
    sub-long/2addr v3, v5

    .line 464
    long-to-int v3, v3

    .line 465
    iput v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    .line 466
    .line 467
    iget-wide v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    .line 468
    .line 469
    iget-wide v5, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIdleTimeMs:J

    .line 470
    .line 471
    sub-long/2addr v3, v5

    .line 472
    long-to-int v3, v3

    .line 473
    iput v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    .line 474
    .line 475
    const/4 v3, -0x1

    .line 476
    iput v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 477
    .line 478
    iput v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 479
    .line 480
    iput v3, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 481
    .line 482
    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 483
    .line 484
    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 485
    .line 486
    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 487
    .line 488
    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 489
    .line 490
    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 491
    .line 492
    iput v2, v0, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 493
    .line 494
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 495
    .line 496
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 497
    .line 498
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    :goto_8
    if-ge v2, v0, :cond_d

    .line 503
    .line 504
    iget-object v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 505
    .line 506
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    .line 507
    .line 508
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    check-cast v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 513
    .line 514
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    .line 516
    .line 517
    const-wide/16 v4, 0x0

    .line 518
    .line 519
    long-to-int v6, v4

    .line 520
    add-int v7, v6, v6

    .line 521
    .line 522
    iget-object v8, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 523
    .line 524
    iget v9, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 525
    .line 526
    iget v10, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 527
    .line 528
    add-int/2addr v9, v10

    .line 529
    if-gt v7, v9, :cond_a

    .line 530
    .line 531
    goto :goto_9

    .line 532
    :cond_a
    iget v9, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 533
    .line 534
    iget v10, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 535
    .line 536
    add-int v11, v9, v10

    .line 537
    .line 538
    if-gt v7, v11, :cond_b

    .line 539
    .line 540
    iget v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    .line 541
    .line 542
    iput v3, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 543
    .line 544
    iput v6, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 545
    .line 546
    iput v6, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 547
    .line 548
    goto :goto_9

    .line 549
    :cond_b
    iget v11, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 550
    .line 551
    iput v11, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    .line 552
    .line 553
    iput v9, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    .line 554
    .line 555
    iput v10, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    .line 556
    .line 557
    iget v9, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 558
    .line 559
    iget v10, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 560
    .line 561
    add-int v11, v9, v10

    .line 562
    .line 563
    if-gt v7, v11, :cond_c

    .line 564
    .line 565
    iget v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    .line 566
    .line 567
    iput v3, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 568
    .line 569
    iput v6, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 570
    .line 571
    iput v6, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 572
    .line 573
    goto :goto_9

    .line 574
    :cond_c
    iget v7, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 575
    .line 576
    iput v7, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    .line 577
    .line 578
    iput v9, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    .line 579
    .line 580
    iput v10, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    .line 581
    .line 582
    iget v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    .line 583
    .line 584
    iput v3, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    .line 585
    .line 586
    iput v6, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    .line 587
    .line 588
    iput v6, v8, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    .line 589
    .line 590
    :goto_9
    add-int/lit8 v2, v2, 0x1

    .line 591
    .line 592
    goto :goto_8

    .line 593
    :cond_d
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuUserTimeMs:J

    .line 594
    .line 595
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuUserTimeMs:J

    .line 596
    .line 597
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepCpuSystemTimeMs:J

    .line 598
    .line 599
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepCpuSystemTimeMs:J

    .line 600
    .line 601
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatUserTimeMs:J

    .line 602
    .line 603
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatUserTimeMs:J

    .line 604
    .line 605
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSystemTimeMs:J

    .line 606
    .line 607
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSystemTimeMs:J

    .line 608
    .line 609
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIOWaitTimeMs:J

    .line 610
    .line 611
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIOWaitTimeMs:J

    .line 612
    .line 613
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIrqTimeMs:J

    .line 614
    .line 615
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIrqTimeMs:J

    .line 616
    .line 617
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatSoftIrqTimeMs:J

    .line 618
    .line 619
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatSoftIrqTimeMs:J

    .line 620
    .line 621
    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mCurStepStatIdleTimeMs:J

    .line 622
    .line 623
    iput-wide v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mLastStepStatIdleTimeMs:J

    .line 624
    .line 625
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$HistoryStepDetailsCalculatorImpl;->mDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 626
    .line 627
    return-object v0
.end method
