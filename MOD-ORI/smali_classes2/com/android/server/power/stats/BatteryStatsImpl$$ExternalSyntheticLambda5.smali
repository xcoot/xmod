.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:[I

.field public final synthetic f$9:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;JJZZZII[ILcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$1:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$2:J

    .line 9
    .line 10
    iput-boolean p6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$3:Z

    .line 11
    .line 12
    iput-boolean p7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$4:Z

    .line 13
    .line 14
    iput-boolean p8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$5:Z

    .line 15
    .line 16
    iput p9, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$6:I

    .line 17
    .line 18
    iput p10, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$7:I

    .line 19
    .line 20
    iput-object p11, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$8:[I

    .line 21
    .line 22
    iput-object p12, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$9:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$1:J

    .line 6
    .line 7
    iget-wide v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$2:J

    .line 8
    .line 9
    iget-boolean v7, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$3:Z

    .line 10
    .line 11
    iget-boolean v8, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$4:Z

    .line 12
    .line 13
    iget-boolean v9, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$5:Z

    .line 14
    .line 15
    iget v10, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$6:I

    .line 16
    .line 17
    iget v11, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$7:I

    .line 18
    .line 19
    iget-object v12, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$8:[I

    .line 20
    .line 21
    iget-object v15, v0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda5;->f$9:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;

    .line 22
    .line 23
    move-object/from16 v14, p2

    .line 24
    .line 25
    check-cast v14, [J

    .line 26
    .line 27
    move/from16 v0, p1

    .line 28
    .line 29
    invoke-virtual {v6, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Landroid/os/Process;->isIsolated(I)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto/16 :goto_7

    .line 40
    .line 41
    :cond_0
    iget-object v0, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    .line 42
    .line 43
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 44
    .line 45
    .line 46
    move-result v13

    .line 47
    invoke-virtual {v0, v13}, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->exists(I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    goto/16 :goto_7

    .line 54
    .line 55
    :cond_1
    move-object v0, v6

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    iget-object v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 65
    .line 66
    if-nez v3, :cond_2

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    array-length v3, v3

    .line 71
    :goto_0
    array-length v4, v14

    .line 72
    if-eq v3, v4, :cond_4

    .line 73
    .line 74
    :cond_3
    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 75
    .line 76
    .line 77
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 78
    .line 79
    iget-object v3, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 80
    .line 81
    invoke-direct {v1, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 85
    .line 86
    :cond_4
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 87
    .line 88
    invoke-virtual {v1, v14, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->addCountLocked([JZ)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    iget-object v3, v1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 96
    .line 97
    if-nez v3, :cond_5

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    goto :goto_1

    .line 101
    :cond_5
    array-length v3, v3

    .line 102
    :goto_1
    array-length v4, v14

    .line 103
    if-eq v3, v4, :cond_7

    .line 104
    .line 105
    :cond_6
    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 106
    .line 107
    .line 108
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 109
    .line 110
    iget-object v3, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 111
    .line 112
    invoke-direct {v1, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 113
    .line 114
    .line 115
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 116
    .line 117
    :cond_7
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;

    .line 118
    .line 119
    invoke-virtual {v1, v14, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounterArray;->addCountLocked([JZ)V

    .line 120
    .line 121
    .line 122
    if-eqz v9, :cond_12

    .line 123
    .line 124
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 125
    .line 126
    if-eqz v1, :cond_8

    .line 127
    .line 128
    array-length v3, v1

    .line 129
    if-eq v3, v10, :cond_9

    .line 130
    .line 131
    :cond_8
    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([[Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 132
    .line 133
    .line 134
    new-array v1, v10, [[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 135
    .line 136
    iput-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 137
    .line 138
    :cond_9
    if-lez v11, :cond_a

    .line 139
    .line 140
    iget-object v1, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mWakeLockAllocationsUs:[[J

    .line 141
    .line 142
    if-nez v1, :cond_a

    .line 143
    .line 144
    new-array v1, v10, [[J

    .line 145
    .line 146
    iput-object v1, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mWakeLockAllocationsUs:[[J

    .line 147
    .line 148
    :cond_a
    const/4 v1, 0x0

    .line 149
    const/4 v3, 0x0

    .line 150
    :goto_2
    if-ge v1, v10, :cond_12

    .line 151
    .line 152
    iget-object v4, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 153
    .line 154
    aget v5, v12, v1

    .line 155
    .line 156
    invoke-virtual {v4, v5}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 161
    .line 162
    aget-object v5, v5, v1

    .line 163
    .line 164
    if-eqz v5, :cond_b

    .line 165
    .line 166
    array-length v8, v5

    .line 167
    array-length v9, v4

    .line 168
    if-eq v8, v9, :cond_c

    .line 169
    .line 170
    :cond_b
    invoke-static {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->detachIfNotNull([Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 171
    .line 172
    .line 173
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 174
    .line 175
    array-length v8, v4

    .line 176
    new-array v8, v8, [Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 177
    .line 178
    aput-object v8, v5, v1

    .line 179
    .line 180
    :cond_c
    if-lez v11, :cond_d

    .line 181
    .line 182
    iget-object v5, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mWakeLockAllocationsUs:[[J

    .line 183
    .line 184
    aget-object v8, v5, v1

    .line 185
    .line 186
    if-nez v8, :cond_d

    .line 187
    .line 188
    array-length v8, v4

    .line 189
    new-array v8, v8, [J

    .line 190
    .line 191
    aput-object v8, v5, v1

    .line 192
    .line 193
    :cond_d
    iget-object v5, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 194
    .line 195
    aget-object v5, v5, v1

    .line 196
    .line 197
    const/4 v8, 0x0

    .line 198
    :goto_3
    array-length v9, v4

    .line 199
    if-ge v8, v9, :cond_11

    .line 200
    .line 201
    aget-object v9, v5, v8

    .line 202
    .line 203
    if-nez v9, :cond_e

    .line 204
    .line 205
    new-instance v9, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    .line 206
    .line 207
    iget-object v13, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 208
    .line 209
    invoke-direct {v9, v13}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 210
    .line 211
    .line 212
    aput-object v9, v5, v8

    .line 213
    .line 214
    :cond_e
    iget-object v9, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mWakeLockAllocationsUs:[[J

    .line 215
    .line 216
    const-wide/16 v16, 0x3e8

    .line 217
    .line 218
    if-eqz v9, :cond_f

    .line 219
    .line 220
    aget-wide v18, v14, v3

    .line 221
    .line 222
    const-wide/32 v20, 0xc350

    .line 223
    .line 224
    .line 225
    mul-long v20, v20, v18

    .line 226
    .line 227
    const-wide/16 v22, 0x64

    .line 228
    .line 229
    div-long v20, v20, v22

    .line 230
    .line 231
    aget-object v9, v9, v1

    .line 232
    .line 233
    aget-wide v22, v9, v8

    .line 234
    .line 235
    mul-long v18, v18, v16

    .line 236
    .line 237
    sub-long v18, v18, v20

    .line 238
    .line 239
    add-long v18, v18, v22

    .line 240
    .line 241
    aput-wide v18, v9, v8

    .line 242
    .line 243
    :goto_4
    move/from16 p1, v3

    .line 244
    .line 245
    move-wide/from16 v2, v20

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_f
    aget-wide v18, v14, v3

    .line 249
    .line 250
    mul-long v20, v18, v16

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :goto_5
    aget-object v9, v5, v8

    .line 254
    .line 255
    invoke-virtual {v9, v2, v3, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(JZ)V

    .line 256
    .line 257
    .line 258
    if-eqz v15, :cond_10

    .line 259
    .line 260
    div-long v17, v2, v16

    .line 261
    .line 262
    move-object v13, v15

    .line 263
    move-object v2, v14

    .line 264
    move-object v14, v0

    .line 265
    move-object v3, v15

    .line 266
    move v15, v1

    .line 267
    move/from16 v16, v8

    .line 268
    .line 269
    invoke-virtual/range {v13 .. v18}, Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;->addCpuClusterSpeedDurationsMs(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;IIJ)V

    .line 270
    .line 271
    .line 272
    goto :goto_6

    .line 273
    :cond_10
    move-object v2, v14

    .line 274
    move-object v3, v15

    .line 275
    :goto_6
    add-int/lit8 v9, p1, 0x1

    .line 276
    .line 277
    add-int/lit8 v8, v8, 0x1

    .line 278
    .line 279
    move-object v14, v2

    .line 280
    move-object v15, v3

    .line 281
    move v3, v9

    .line 282
    goto :goto_3

    .line 283
    :cond_11
    move/from16 p1, v3

    .line 284
    .line 285
    move-object v2, v14

    .line 286
    move-object v3, v15

    .line 287
    add-int/lit8 v1, v1, 0x1

    .line 288
    .line 289
    move/from16 v3, p1

    .line 290
    .line 291
    goto/16 :goto_2

    .line 292
    .line 293
    :cond_12
    :goto_7
    return-void
.end method
