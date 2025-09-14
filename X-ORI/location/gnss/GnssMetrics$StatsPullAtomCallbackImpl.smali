.class public final Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssMetrics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    const/16 v2, 0x275a

    .line 8
    .line 9
    const/4 v10, 0x0

    .line 10
    if-eq v1, v2, :cond_2

    .line 11
    .line 12
    const/16 v2, 0x2775

    .line 13
    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMetrics;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/location/gnss/hal/GnssNative;->requestPowerStatsBlocking()Lcom/android/server/location/gnss/GnssPowerStats;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const/4 v10, 0x1

    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    const/16 v3, 0xa

    .line 30
    .line 31
    new-array v4, v3, [D

    .line 32
    .line 33
    iget-object v5, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mOtherModesEnergyMilliJoule:[D

    .line 34
    .line 35
    array-length v6, v5

    .line 36
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-static {v5, v10, v4, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    iget-wide v5, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeUncertaintyNanos:D

    .line 44
    .line 45
    double-to-long v5, v5

    .line 46
    iget-wide v7, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mTotalEnergyMilliJoule:D

    .line 47
    .line 48
    const-wide v31, 0x408f400000000000L    # 1000.0

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    mul-double v7, v7, v31

    .line 54
    .line 55
    double-to-long v7, v7

    .line 56
    iget-wide v11, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandTrackingModeEnergyMilliJoule:D

    .line 57
    .line 58
    mul-double v11, v11, v31

    .line 59
    .line 60
    double-to-long v13, v11

    .line 61
    iget-wide v11, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandTrackingModeEnergyMilliJoule:D

    .line 62
    .line 63
    mul-double v11, v11, v31

    .line 64
    .line 65
    double-to-long v11, v11

    .line 66
    iget-wide v2, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandAcquisitionModeEnergyMilliJoule:D

    .line 67
    .line 68
    mul-double v2, v2, v31

    .line 69
    .line 70
    double-to-long v2, v2

    .line 71
    move-wide v15, v11

    .line 72
    iget-wide v10, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandAcquisitionModeEnergyMilliJoule:D

    .line 73
    .line 74
    mul-double v10, v10, v31

    .line 75
    .line 76
    double-to-long v11, v10

    .line 77
    move-wide/from16 v34, v15

    .line 78
    .line 79
    const/4 v10, 0x0

    .line 80
    aget-wide v15, v4, v10

    .line 81
    .line 82
    move-wide/from16 v36, v11

    .line 83
    .line 84
    mul-double v10, v15, v31

    .line 85
    .line 86
    double-to-long v10, v10

    .line 87
    move-wide/from16 v38, v13

    .line 88
    .line 89
    move-wide v13, v10

    .line 90
    const/4 v0, 0x1

    .line 91
    aget-wide v10, v4, v0

    .line 92
    .line 93
    mul-double v10, v10, v31

    .line 94
    .line 95
    double-to-long v10, v10

    .line 96
    move-wide v15, v10

    .line 97
    const/4 v0, 0x2

    .line 98
    aget-wide v10, v4, v0

    .line 99
    .line 100
    mul-double v10, v10, v31

    .line 101
    .line 102
    double-to-long v10, v10

    .line 103
    move-wide/from16 v17, v10

    .line 104
    .line 105
    const/4 v0, 0x3

    .line 106
    aget-wide v10, v4, v0

    .line 107
    .line 108
    mul-double v10, v10, v31

    .line 109
    .line 110
    double-to-long v10, v10

    .line 111
    move-wide/from16 v19, v10

    .line 112
    .line 113
    const/4 v0, 0x4

    .line 114
    aget-wide v10, v4, v0

    .line 115
    .line 116
    mul-double v10, v10, v31

    .line 117
    .line 118
    double-to-long v10, v10

    .line 119
    move-wide/from16 v21, v10

    .line 120
    .line 121
    const/4 v0, 0x5

    .line 122
    aget-wide v10, v4, v0

    .line 123
    .line 124
    mul-double v10, v10, v31

    .line 125
    .line 126
    double-to-long v10, v10

    .line 127
    move-wide/from16 v23, v10

    .line 128
    .line 129
    const/4 v0, 0x6

    .line 130
    aget-wide v10, v4, v0

    .line 131
    .line 132
    mul-double v10, v10, v31

    .line 133
    .line 134
    double-to-long v10, v10

    .line 135
    move-wide/from16 v25, v10

    .line 136
    .line 137
    const/4 v0, 0x7

    .line 138
    aget-wide v10, v4, v0

    .line 139
    .line 140
    mul-double v10, v10, v31

    .line 141
    .line 142
    double-to-long v10, v10

    .line 143
    move-wide/from16 v27, v10

    .line 144
    .line 145
    const/16 v0, 0x8

    .line 146
    .line 147
    aget-wide v10, v4, v0

    .line 148
    .line 149
    mul-double v10, v10, v31

    .line 150
    .line 151
    double-to-long v10, v10

    .line 152
    move-wide/from16 v29, v10

    .line 153
    .line 154
    const/16 v0, 0x9

    .line 155
    .line 156
    aget-wide v10, v4, v0

    .line 157
    .line 158
    mul-double v10, v10, v31

    .line 159
    .line 160
    double-to-long v10, v10

    .line 161
    move-wide/from16 v31, v10

    .line 162
    .line 163
    move/from16 v0, p1

    .line 164
    .line 165
    move-wide v10, v2

    .line 166
    move-wide v1, v5

    .line 167
    move-wide v3, v7

    .line 168
    move-wide/from16 v5, v38

    .line 169
    .line 170
    move-wide/from16 v7, v34

    .line 171
    .line 172
    move-object v12, v9

    .line 173
    const/16 v33, 0x0

    .line 174
    .line 175
    move-wide v9, v10

    .line 176
    move-wide/from16 v11, v36

    .line 177
    .line 178
    invoke-static/range {v0 .. v32}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJJJJJJJ)Landroid/util/StatsEvent;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    move-object/from16 v15, p2

    .line 183
    .line 184
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move/from16 v10, v33

    .line 188
    .line 189
    :goto_0
    return v10

    .line 190
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 191
    .line 192
    const-string v2, "Unknown tagId = "

    .line 193
    .line 194
    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v0

    .line 202
    :cond_2
    move-object v15, v9

    .line 203
    move/from16 v33, v10

    .line 204
    .line 205
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssMetrics$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/location/gnss/GnssMetrics;

    .line 206
    .line 207
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssMetrics;->mLocationFailureReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 208
    .line 209
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    int-to-long v3, v3

    .line 214
    monitor-enter v2

    .line 215
    :try_start_0
    iget-wide v5, v2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 216
    .line 217
    monitor-exit v2

    .line 218
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssMetrics;->mTimeToFirstFixMilliSReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 219
    .line 220
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    int-to-long v7, v7

    .line 225
    monitor-enter v2

    .line 226
    :try_start_1
    iget-wide v9, v2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 227
    .line 228
    monitor-exit v2

    .line 229
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssMetrics;->mPositionAccuracyMetersReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 230
    .line 231
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 232
    .line 233
    .line 234
    move-result v11

    .line 235
    int-to-long v11, v11

    .line 236
    monitor-enter v2

    .line 237
    :try_start_2
    iget-wide v13, v2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 238
    .line 239
    monitor-exit v2

    .line 240
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssMetrics;->mTopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 241
    .line 242
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    move-wide/from16 v16, v13

    .line 247
    .line 248
    int-to-long v13, v1

    .line 249
    monitor-enter v2

    .line 250
    move-wide/from16 v18, v13

    .line 251
    .line 252
    :try_start_3
    iget-wide v13, v2, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 253
    .line 254
    monitor-exit v2

    .line 255
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssMetrics;->mL5TopFourAverageCn0DbmHzReportsStatistics:Lcom/android/server/location/gnss/GnssMetrics$Statistics;

    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->getCount()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    move-wide/from16 v29, v13

    .line 262
    .line 263
    int-to-long v13, v2

    .line 264
    monitor-enter v1

    .line 265
    move-wide/from16 v31, v13

    .line 266
    .line 267
    :try_start_4
    iget-wide v13, v1, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 268
    .line 269
    monitor-exit v1

    .line 270
    iget-wide v1, v0, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReports:J

    .line 271
    .line 272
    move-wide/from16 v21, v1

    .line 273
    .line 274
    iget-wide v1, v0, Lcom/android/server/location/gnss/GnssMetrics;->mSvStatusReportsUsedInFix:J

    .line 275
    .line 276
    move-wide/from16 v23, v1

    .line 277
    .line 278
    iget-wide v1, v0, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReports:J

    .line 279
    .line 280
    move-wide/from16 v25, v1

    .line 281
    .line 282
    iget-wide v0, v0, Lcom/android/server/location/gnss/GnssMetrics;->mL5SvStatusReportsUsedInFix:J

    .line 283
    .line 284
    move-wide/from16 v27, v0

    .line 285
    .line 286
    move/from16 v0, p1

    .line 287
    .line 288
    move-wide v1, v3

    .line 289
    move-wide v3, v5

    .line 290
    move-wide v5, v7

    .line 291
    move-wide v7, v9

    .line 292
    move-wide v9, v11

    .line 293
    move-wide/from16 v11, v16

    .line 294
    .line 295
    move-wide/from16 v16, v29

    .line 296
    .line 297
    move-wide/from16 v29, v31

    .line 298
    .line 299
    move-wide/from16 v31, v13

    .line 300
    .line 301
    move-wide/from16 v13, v18

    .line 302
    .line 303
    move-wide/from16 v15, v16

    .line 304
    .line 305
    move-wide/from16 v17, v29

    .line 306
    .line 307
    move-wide/from16 v19, v31

    .line 308
    .line 309
    invoke-static/range {v0 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJJJJJ)Landroid/util/StatsEvent;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    move-object/from16 v1, p2

    .line 314
    .line 315
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    return v33

    .line 319
    :catchall_0
    move-exception v0

    .line 320
    move-object v2, v0

    .line 321
    monitor-exit v1

    .line 322
    throw v2

    .line 323
    :catchall_1
    move-exception v0

    .line 324
    move-object v1, v0

    .line 325
    monitor-exit v2

    .line 326
    throw v1

    .line 327
    :catchall_2
    move-exception v0

    .line 328
    move-object v1, v0

    .line 329
    monitor-exit v2

    .line 330
    throw v1

    .line 331
    :catchall_3
    move-exception v0

    .line 332
    move-object v1, v0

    .line 333
    monitor-exit v2

    .line 334
    throw v1

    .line 335
    :catchall_4
    move-exception v0

    .line 336
    move-object v1, v0

    .line 337
    monitor-exit v2

    .line 338
    throw v1
.end method
