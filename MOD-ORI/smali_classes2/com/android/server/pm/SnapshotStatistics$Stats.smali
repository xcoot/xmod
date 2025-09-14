.class public final Lcom/android/server/pm/SnapshotStatistics$Stats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBigBuilds:I

.field public mMaxBuildTimeUs:I

.field public mMaxUsedCount:I

.field public mShortLived:I

.field public final mStartTimeUs:J

.field public mStopTimeUs:J

.field public final mTimes:[I

.field public mTotalBuilds:I

.field public mTotalTimeUs:J

.field public mTotalUsed:I

.field public final mUsed:[I

.field public final synthetic this$0:Lcom/android/server/pm/SnapshotStatistics;


# direct methods
.method public static -$$Nest$mdump(Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/io/PrintWriter;JZLjava/lang/String;)V
    .locals 14

    .line 1
    move-object v6, p0

    .line 2
    move-object v7, p1

    .line 3
    move-object/from16 v0, p5

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "stats"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string v5, "Summary stats"

    .line 18
    .line 19
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    move-wide/from16 v2, p2

    .line 22
    .line 23
    move/from16 v4, p4

    .line 24
    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;JZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-eqz p4, :cond_0

    .line 29
    .line 30
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 31
    .line 32
    const-string v3, "BigBlds"

    .line 33
    .line 34
    const-string v4, "ShortLvd"

    .line 35
    .line 36
    const-string v1, "TotBlds"

    .line 37
    .line 38
    const-string v2, "TotUsed"

    .line 39
    .line 40
    const-string v5, "TotTime"

    .line 41
    .line 42
    const-string v6, "MaxTime"

    .line 43
    .line 44
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "  %10s  %10s  %10s  %10s  %10s  %10s"

    .line 49
    .line 50
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 55
    .line 56
    iget v1, v6, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    iget v1, v6, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    iget v1, v6, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    .line 69
    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    iget v1, v6, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    iget-wide v1, v6, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    .line 81
    .line 82
    const-wide/16 v3, 0x3e8

    .line 83
    .line 84
    div-long/2addr v1, v3

    .line 85
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    iget v1, v6, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    .line 90
    .line 91
    div-int/lit16 v1, v1, 0x3e8

    .line 92
    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v2, "  %10d  %10d  %10d  %10d  %10d  %10d"

    .line 102
    .line 103
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 104
    .line 105
    .line 106
    :goto_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_7

    .line 110
    .line 111
    :cond_1
    const-string/jumbo v1, "times"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const-string v8, "  %10d"

    .line 119
    .line 120
    const-string v9, "  %10s"

    .line 121
    .line 122
    iget-object v10, v6, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    .line 123
    .line 124
    const/4 v11, 0x0

    .line 125
    if-eqz v1, :cond_5

    .line 126
    .line 127
    const-string v5, "Build times"

    .line 128
    .line 129
    move-object v0, p0

    .line 130
    move-object v1, p1

    .line 131
    move-wide/from16 v2, p2

    .line 132
    .line 133
    move/from16 v4, p4

    .line 134
    .line 135
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;JZLjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    if-eqz p4, :cond_3

    .line 139
    .line 140
    iget-object v0, v10, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    .line 143
    .line 144
    :goto_1
    array-length v1, v0

    .line 145
    if-ge v11, v1, :cond_2

    .line 146
    .line 147
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 148
    .line 149
    aget v2, v0, v11

    .line 150
    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    const-string v3, "<= %dms"

    .line 160
    .line 161
    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {p1, v1, v9, v2}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 170
    .line 171
    .line 172
    add-int/lit8 v11, v11, 0x1

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 176
    .line 177
    array-length v2, v0

    .line 178
    add-int/lit8 v2, v2, -0x1

    .line 179
    .line 180
    aget v0, v0, v2

    .line 181
    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const-string v2, "> %dms"

    .line 191
    .line 192
    invoke-static {v2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p1, v1, v9, v0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_3
    :goto_2
    iget-object v0, v6, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    .line 205
    .line 206
    array-length v1, v0

    .line 207
    if-ge v11, v1, :cond_4

    .line 208
    .line 209
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 210
    .line 211
    aget v0, v0, v11

    .line 212
    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {p1, v1, v8, v0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 222
    .line 223
    .line 224
    add-int/lit8 v11, v11, 0x1

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_4
    :goto_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_7

    .line 231
    .line 232
    :cond_5
    const-string/jumbo v1, "usage"

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_9

    .line 240
    .line 241
    const-string v5, "Use counters"

    .line 242
    .line 243
    move-object v0, p0

    .line 244
    move-object v1, p1

    .line 245
    move-wide/from16 v2, p2

    .line 246
    .line 247
    move/from16 v4, p4

    .line 248
    .line 249
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SnapshotStatistics$Stats;->dumpPrefix(Ljava/io/PrintWriter;JZLjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    if-eqz p4, :cond_7

    .line 253
    .line 254
    iget-object v0, v10, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 255
    .line 256
    iget-object v0, v0, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mUserKey:[I

    .line 257
    .line 258
    :goto_4
    array-length v1, v0

    .line 259
    if-ge v11, v1, :cond_6

    .line 260
    .line 261
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 262
    .line 263
    aget v2, v0, v11

    .line 264
    .line 265
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    const-string v3, "<= %d"

    .line 274
    .line 275
    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {p1, v1, v9, v2}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 284
    .line 285
    .line 286
    add-int/lit8 v11, v11, 0x1

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_6
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 290
    .line 291
    array-length v2, v0

    .line 292
    add-int/lit8 v2, v2, -0x1

    .line 293
    .line 294
    aget v0, v0, v2

    .line 295
    .line 296
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    const-string v2, "> %d"

    .line 305
    .line 306
    invoke-static {v2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {p1, v1, v9, v0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 315
    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_7
    :goto_5
    iget-object v0, v6, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    .line 319
    .line 320
    array-length v1, v0

    .line 321
    if-ge v11, v1, :cond_8

    .line 322
    .line 323
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 324
    .line 325
    aget v0, v0, v11

    .line 326
    .line 327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {p1, v1, v8, v0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 336
    .line 337
    .line 338
    add-int/lit8 v11, v11, 0x1

    .line 339
    .line 340
    goto :goto_5

    .line 341
    :cond_8
    :goto_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 342
    .line 343
    .line 344
    :goto_7
    return-void

    .line 345
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 346
    .line 347
    const-string/jumbo v2, "unrecognized choice: "

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v1
.end method

.method public static -$$Nest$mrebuild(Lcom/android/server/pm/SnapshotStatistics$Stats;IIIIZZ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    .line 8
    .line 9
    aget v1, v0, p3

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    aput v1, v0, p3

    .line 14
    .line 15
    if-ltz p2, :cond_0

    .line 16
    .line 17
    iget p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 18
    .line 19
    add-int/2addr p3, p2

    .line 20
    iput p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 21
    .line 22
    iget-object p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    .line 23
    .line 24
    aget v0, p3, p4

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    aput v0, p3, p4

    .line 29
    .line 30
    :cond_0
    iget-wide p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    .line 31
    .line 32
    int-to-long v0, p1

    .line 33
    add-long/2addr p3, v0

    .line 34
    iput-wide p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    .line 35
    .line 36
    if-eqz p5, :cond_1

    .line 37
    .line 38
    iget p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    .line 39
    .line 40
    add-int/lit8 p3, p3, 0x1

    .line 41
    .line 42
    iput p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    .line 43
    .line 44
    :cond_1
    if-eqz p6, :cond_2

    .line 45
    .line 46
    iget p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    .line 47
    .line 48
    add-int/lit8 p3, p3, 0x1

    .line 49
    .line 50
    iput p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    .line 51
    .line 52
    :cond_2
    iget p3, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    .line 53
    .line 54
    if-ge p3, p1, :cond_3

    .line 55
    .line 56
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    .line 57
    .line 58
    :cond_3
    iget p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    .line 59
    .line 60
    if-ge p1, p2, :cond_4

    .line 61
    .line 62
    iput p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    .line 63
    .line 64
    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SnapshotStatistics;J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 4
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 5
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    .line 6
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    .line 7
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    .line 8
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    .line 9
    iput v2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    .line 10
    iput-wide p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    .line 11
    iget-object p2, p1, Lcom/android/server/pm/SnapshotStatistics;->mTimeBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    .line 12
    iget p2, p2, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mCount:I

    .line 13
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    .line 14
    iget-object p1, p1, Lcom/android/server/pm/SnapshotStatistics;->mUseBins:Lcom/android/server/pm/SnapshotStatistics$BinMap;

    iget p1, p1, Lcom/android/server/pm/SnapshotStatistics$BinMap;->mCount:I

    .line 15
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    .line 18
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 20
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 21
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    .line 22
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    .line 23
    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    .line 24
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    .line 25
    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    .line 26
    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    .line 27
    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    .line 28
    iget-object p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTimes:[I

    .line 29
    iget-object p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mUsed:[I

    .line 30
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalBuilds:I

    .line 31
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalUsed:I

    .line 32
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mBigBuilds:I

    .line 33
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mShortLived:I

    .line 34
    iget-wide v0, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    iput-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mTotalTimeUs:J

    .line 35
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxBuildTimeUs:I

    .line 36
    iget p1, p2, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    iput p1, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mMaxUsedCount:I

    return-void
.end method

.method public static durationToString(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/32 v0, 0xf4240

    .line 2
    .line 3
    .line 4
    div-long/2addr p0, v0

    .line 5
    long-to-int p0, p0

    .line 6
    div-int/lit8 p1, p0, 0x3c

    .line 7
    .line 8
    rem-int/lit8 p0, p0, 0x3c

    .line 9
    .line 10
    div-int/lit8 v0, p1, 0x3c

    .line 11
    .line 12
    rem-int/lit8 p1, p1, 0x3c

    .line 13
    .line 14
    div-int/lit8 v1, v0, 0x18

    .line 15
    .line 16
    rem-int/lit8 v0, v0, 0x18

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    filled-new-array {v1, v0, p1, p0}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "%2d:%02d:%02d:%02d"

    .line 41
    .line 42
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_0
    const-string v1, ""

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    filled-new-array {v1, v0, p1, p0}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string p1, "%2s %02d:%02d:%02d"

    .line 68
    .line 69
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    filled-new-array {v1, v1, p1, p0}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string p1, "%2s %2s %2d:%02d"

    .line 87
    .line 88
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method


# virtual methods
.method public final dumpPrefix(Ljava/io/PrintWriter;JZLjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 9
    .line 10
    const-string p2, "%-23s"

    .line 11
    .line 12
    filled-new-array {p5}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p1, p0, p2, p3}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 21
    .line 22
    iget-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStartTimeUs:J

    .line 23
    .line 24
    sub-long v0, p2, v0

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/android/server/pm/SnapshotStatistics$Stats;->durationToString(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p5

    .line 30
    filled-new-array {p5}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p5

    .line 34
    const-string v0, "%11s"

    .line 35
    .line 36
    invoke-virtual {p1, p4, v0, p5}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 37
    .line 38
    .line 39
    iget-wide v0, p0, Lcom/android/server/pm/SnapshotStatistics$Stats;->mStopTimeUs:J

    .line 40
    .line 41
    const-wide/16 v2, 0x0

    .line 42
    .line 43
    cmp-long p0, v0, v2

    .line 44
    .line 45
    const-string p5, " %11s"

    .line 46
    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    sub-long/2addr p2, v0

    .line 50
    invoke-static {p2, p3}, Lcom/android/server/pm/SnapshotStatistics$Stats;->durationToString(J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p1, p4, p5, p0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string/jumbo p0, "now"

    .line 63
    .line 64
    .line 65
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p1, p4, p5, p0}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method
