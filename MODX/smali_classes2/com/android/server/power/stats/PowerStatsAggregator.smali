.class public final Lcom/android/server/power/stats/PowerStatsAggregator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig;

.field public mCurrentBatteryState:I

.field public mCurrentScreenState:I

.field public final mEnabledComponents:Landroid/util/SparseBooleanArray;

.field public final mHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field public mStats:Lcom/android/server/power/stats/AggregatedPowerStats;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig;Lcom/android/internal/os/BatteryStatsHistory;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    const/16 v1, 0x1d

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsAggregator;->mCurrentBatteryState:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsAggregator;->mCurrentScreenState:I

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsAggregator;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final aggregatePowerStats(JJLjava/util/function/Consumer;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v0, p5

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v4, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    new-instance v4, Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 13
    .line 14
    iget-object v5, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig;

    .line 15
    .line 16
    iget-object v6, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    .line 17
    .line 18
    invoke-direct {v4, v5, v6}, Lcom/android/server/power/stats/AggregatedPowerStats;-><init>(Lcom/android/server/power/stats/AggregatedPowerStatsConfig;Landroid/util/SparseBooleanArray;)V

    .line 19
    .line 20
    .line 21
    iput-object v4, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto/16 :goto_f

    .line 26
    .line 27
    :cond_0
    :goto_0
    iget-object v4, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    move v6, v5

    .line 31
    :goto_1
    iget-object v7, v4, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-ge v6, v7, :cond_3

    .line 38
    .line 39
    iget-object v7, v4, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    check-cast v7, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 46
    .line 47
    iget-object v8, v7, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/PowerStatsProcessor;

    .line 48
    .line 49
    if-nez v8, :cond_2

    .line 50
    .line 51
    iget-object v8, v7, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;

    .line 52
    .line 53
    iget-object v8, v8, Lcom/android/server/power/stats/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    .line 54
    .line 55
    if-nez v8, :cond_1

    .line 56
    .line 57
    sget-object v8, Lcom/android/server/power/stats/AggregatedPowerStatsConfig;->NO_OP_PROCESSOR:Lcom/android/server/power/stats/AggregatedPowerStatsConfig$1;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    invoke-interface {v8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    check-cast v8, Lcom/android/server/power/stats/PowerStatsProcessor;

    .line 65
    .line 66
    :goto_2
    iput-object v8, v7, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/PowerStatsProcessor;

    .line 67
    .line 68
    :cond_2
    iget-object v8, v7, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/PowerStatsProcessor;

    .line 69
    .line 70
    invoke-virtual {v8, v7, v2, v3}, Lcom/android/server/power/stats/PowerStatsProcessor;->start(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    const-wide/16 v6, 0x0

    .line 77
    .line 78
    cmp-long v4, v2, v6

    .line 79
    .line 80
    if-lez v4, :cond_4

    .line 81
    .line 82
    move-wide v10, v2

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    const-wide/16 v10, -0x1

    .line 85
    .line 86
    :goto_3
    iget-object v4, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 87
    .line 88
    move-wide/from16 v12, p3

    .line 89
    .line 90
    invoke-virtual {v4, v2, v3, v12, v13}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    .line 91
    .line 92
    .line 93
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const/4 v3, -0x1

    .line 95
    move v4, v3

    .line 96
    move v12, v5

    .line 97
    :goto_4
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-eqz v13, :cond_16

    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    if-nez v12, :cond_6

    .line 108
    .line 109
    iget-object v12, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 110
    .line 111
    iget-wide v13, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 112
    .line 113
    iget-wide v7, v6, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 114
    .line 115
    invoke-virtual {v12, v13, v14, v7, v8}, Lcom/android/server/power/stats/AggregatedPowerStats;->addClockUpdate(JJ)V

    .line 116
    .line 117
    .line 118
    const-wide/16 v7, -0x1

    .line 119
    .line 120
    cmp-long v9, v10, v7

    .line 121
    .line 122
    if-nez v9, :cond_5

    .line 123
    .line 124
    iget-wide v10, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :catchall_1
    move-exception v0

    .line 128
    move-object v3, v0

    .line 129
    goto/16 :goto_d

    .line 130
    .line 131
    :cond_5
    :goto_5
    const/4 v12, 0x1

    .line 132
    goto :goto_6

    .line 133
    :cond_6
    const-wide/16 v7, -0x1

    .line 134
    .line 135
    iget-byte v9, v6, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 136
    .line 137
    const/4 v13, 0x5

    .line 138
    if-eq v9, v13, :cond_7

    .line 139
    .line 140
    const/4 v13, 0x7

    .line 141
    if-ne v9, v13, :cond_8

    .line 142
    .line 143
    :cond_7
    iget-object v9, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 144
    .line 145
    iget-wide v13, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 146
    .line 147
    iget-wide v7, v6, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 148
    .line 149
    invoke-virtual {v9, v13, v14, v7, v8}, Lcom/android/server/power/stats/AggregatedPowerStats;->addClockUpdate(JJ)V

    .line 150
    .line 151
    .line 152
    :cond_8
    :goto_6
    iget-wide v7, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 153
    .line 154
    iget v9, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 155
    .line 156
    const/high16 v13, 0x80000

    .line 157
    .line 158
    and-int/2addr v9, v13

    .line 159
    if-eqz v9, :cond_9

    .line 160
    .line 161
    const/4 v9, 0x1

    .line 162
    goto :goto_7

    .line 163
    :cond_9
    move v9, v5

    .line 164
    :goto_7
    iget v13, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mCurrentBatteryState:I

    .line 165
    .line 166
    if-eq v9, v13, :cond_a

    .line 167
    .line 168
    iget-object v13, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 169
    .line 170
    invoke-virtual {v13, v5, v9, v7, v8}, Lcom/android/server/power/stats/AggregatedPowerStats;->setDeviceState(IIJ)V

    .line 171
    .line 172
    .line 173
    iput v9, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mCurrentBatteryState:I

    .line 174
    .line 175
    :cond_a
    iget v9, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 176
    .line 177
    const/high16 v13, 0x100000

    .line 178
    .line 179
    and-int/2addr v9, v13

    .line 180
    if-eqz v9, :cond_b

    .line 181
    .line 182
    move v9, v5

    .line 183
    goto :goto_8

    .line 184
    :cond_b
    const/4 v9, 0x1

    .line 185
    :goto_8
    iget v13, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mCurrentScreenState:I

    .line 186
    .line 187
    if-eq v9, v13, :cond_c

    .line 188
    .line 189
    iget-object v13, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 190
    .line 191
    iget-wide v14, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 192
    .line 193
    const/4 v5, 0x1

    .line 194
    invoke-virtual {v13, v5, v9, v14, v15}, Lcom/android/server/power/stats/AggregatedPowerStats;->setDeviceState(IIJ)V

    .line 195
    .line 196
    .line 197
    iput v9, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mCurrentScreenState:I

    .line 198
    .line 199
    :cond_c
    iget v5, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 200
    .line 201
    const/high16 v9, 0x20c00000

    .line 202
    .line 203
    and-int/2addr v5, v9

    .line 204
    const v13, 0x48200180    # 163846.0f

    .line 205
    .line 206
    .line 207
    if-ne v5, v3, :cond_d

    .line 208
    .line 209
    iget v5, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 210
    .line 211
    and-int/2addr v5, v13

    .line 212
    if-eq v5, v4, :cond_f

    .line 213
    .line 214
    :cond_d
    iget-object v3, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 215
    .line 216
    const/4 v4, 0x0

    .line 217
    :goto_9
    iget-object v5, v3, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 218
    .line 219
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-ge v4, v5, :cond_e

    .line 224
    .line 225
    iget-object v5, v3, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 226
    .line 227
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    check-cast v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 232
    .line 233
    iget-object v14, v5, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/PowerStatsProcessor;

    .line 234
    .line 235
    invoke-virtual {v14, v5, v6}, Lcom/android/server/power/stats/PowerStatsProcessor;->noteStateChange(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V

    .line 236
    .line 237
    .line 238
    add-int/lit8 v4, v4, 0x1

    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_e
    iget v3, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 242
    .line 243
    and-int/2addr v3, v9

    .line 244
    iget v4, v6, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 245
    .line 246
    and-int/2addr v4, v13

    .line 247
    :cond_f
    iget-object v5, v6, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 248
    .line 249
    if-eqz v5, :cond_10

    .line 250
    .line 251
    iget-object v9, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 252
    .line 253
    iget v13, v5, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    .line 254
    .line 255
    iget v5, v5, Landroid/os/BatteryStats$ProcessStateChange;->processState:I

    .line 256
    .line 257
    iget-wide v14, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 258
    .line 259
    invoke-virtual {v9, v13, v5, v14, v15}, Lcom/android/server/power/stats/AggregatedPowerStats;->setUidState(IIJ)V

    .line 260
    .line 261
    .line 262
    :cond_10
    iget-object v5, v6, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 263
    .line 264
    if-eqz v5, :cond_15

    .line 265
    .line 266
    iget-object v9, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 267
    .line 268
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    iget-object v13, v5, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 272
    .line 273
    iget v13, v13, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    .line 274
    .line 275
    iget-object v9, v9, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 276
    .line 277
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    check-cast v9, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 282
    .line 283
    if-eqz v9, :cond_11

    .line 284
    .line 285
    iget-object v9, v9, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 286
    .line 287
    if-eqz v9, :cond_14

    .line 288
    .line 289
    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 290
    .line 291
    invoke-virtual {v9, v5}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-eqz v5, :cond_11

    .line 296
    .line 297
    goto :goto_b

    .line 298
    :cond_11
    cmp-long v5, v7, v10

    .line 299
    .line 300
    if-lez v5, :cond_13

    .line 301
    .line 302
    iget-object v5, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 303
    .line 304
    sub-long v9, v7, v10

    .line 305
    .line 306
    iput-wide v9, v5, Lcom/android/server/power/stats/AggregatedPowerStats;->mDurationMs:J

    .line 307
    .line 308
    const/4 v9, 0x0

    .line 309
    :goto_a
    iget-object v10, v5, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 310
    .line 311
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 312
    .line 313
    .line 314
    move-result v10

    .line 315
    if-ge v9, v10, :cond_12

    .line 316
    .line 317
    iget-object v10, v5, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 318
    .line 319
    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    check-cast v10, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 324
    .line 325
    iget-object v11, v10, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/PowerStatsProcessor;

    .line 326
    .line 327
    invoke-virtual {v11, v10, v7, v8}, Lcom/android/server/power/stats/PowerStatsProcessor;->finish(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V

    .line 328
    .line 329
    .line 330
    add-int/lit8 v9, v9, 0x1

    .line 331
    .line 332
    goto :goto_a

    .line 333
    :cond_12
    iget-object v5, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 334
    .line 335
    invoke-interface {v0, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    :cond_13
    iget-object v5, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 339
    .line 340
    invoke-virtual {v5}, Lcom/android/server/power/stats/AggregatedPowerStats;->reset()V

    .line 341
    .line 342
    .line 343
    iget-object v5, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 344
    .line 345
    iget-wide v7, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 346
    .line 347
    iget-wide v9, v6, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 348
    .line 349
    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/android/server/power/stats/AggregatedPowerStats;->addClockUpdate(JJ)V

    .line 350
    .line 351
    .line 352
    iget-wide v10, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 353
    .line 354
    move-wide v7, v10

    .line 355
    :cond_14
    :goto_b
    iget-object v5, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 356
    .line 357
    iget-object v9, v6, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 358
    .line 359
    iget-wide v13, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 360
    .line 361
    invoke-virtual {v5, v9, v13, v14}, Lcom/android/server/power/stats/AggregatedPowerStats;->addPowerStats(Lcom/android/internal/os/PowerStats;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 362
    .line 363
    .line 364
    :cond_15
    move-wide v6, v7

    .line 365
    const/4 v5, 0x0

    .line 366
    goto/16 :goto_4

    .line 367
    .line 368
    :cond_16
    :try_start_2
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 369
    .line 370
    .line 371
    cmp-long v2, v6, v10

    .line 372
    .line 373
    if-lez v2, :cond_18

    .line 374
    .line 375
    iget-object v2, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 376
    .line 377
    sub-long v3, v6, v10

    .line 378
    .line 379
    iput-wide v3, v2, Lcom/android/server/power/stats/AggregatedPowerStats;->mDurationMs:J

    .line 380
    .line 381
    const/4 v5, 0x0

    .line 382
    :goto_c
    iget-object v3, v2, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 383
    .line 384
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    if-ge v5, v3, :cond_17

    .line 389
    .line 390
    iget-object v3, v2, Lcom/android/server/power/stats/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 391
    .line 392
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    check-cast v3, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;

    .line 397
    .line 398
    iget-object v4, v3, Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/PowerStatsProcessor;

    .line 399
    .line 400
    invoke-virtual {v4, v3, v6, v7}, Lcom/android/server/power/stats/PowerStatsProcessor;->finish(Lcom/android/server/power/stats/PowerComponentAggregatedPowerStats;J)V

    .line 401
    .line 402
    .line 403
    add-int/lit8 v5, v5, 0x1

    .line 404
    .line 405
    goto :goto_c

    .line 406
    :cond_17
    iget-object v2, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 407
    .line 408
    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    :cond_18
    iget-object v0, v1, Lcom/android/server/power/stats/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/AggregatedPowerStats;

    .line 412
    .line 413
    invoke-virtual {v0}, Lcom/android/server/power/stats/AggregatedPowerStats;->reset()V

    .line 414
    .line 415
    .line 416
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    return-void

    .line 418
    :goto_d
    if-eqz v2, :cond_19

    .line 419
    .line 420
    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 421
    .line 422
    .line 423
    goto :goto_e

    .line 424
    :catchall_2
    move-exception v0

    .line 425
    move-object v2, v0

    .line 426
    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 427
    .line 428
    .line 429
    :cond_19
    :goto_e
    throw v3

    .line 430
    :goto_f
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 431
    throw v0
.end method
