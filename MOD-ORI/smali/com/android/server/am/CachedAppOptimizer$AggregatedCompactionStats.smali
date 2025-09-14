.class public abstract Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mFullCompactPerformed:J

.field public mFullCompactRequested:J

.field public mMaxCompactEfficiency:D

.field public mProcCompactionsMiscThrottled:J

.field public mProcCompactionsNoPidThrottled:J

.field public mProcCompactionsOomAdjThrottled:J

.field public mProcCompactionsRSSThrottled:J

.field public mProcCompactionsTimeThrottled:J

.field public mSomeCompactPerformed:J

.field public mSomeCompactRequested:J

.field public mSumOrigAnonRss:J

.field public mTotalAnonMemFreedKBs:J

.field public mTotalCpuTimeMillis:J

.field public mTotalDeltaAnonRssKBs:J

.field public mTotalZramConsumedKBs:J


# virtual methods
.method public final addMemStats(JJJJJ)V
    .locals 4

    .line 1
    long-to-double v0, p5

    .line 2
    long-to-double v2, p7

    .line 3
    div-double/2addr v0, v2

    .line 4
    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mMaxCompactEfficiency:D

    .line 5
    .line 6
    cmpl-double v2, v0, v2

    .line 7
    .line 8
    if-lez v2, :cond_0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mMaxCompactEfficiency:D

    .line 11
    .line 12
    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalDeltaAnonRssKBs:J

    .line 13
    .line 14
    add-long/2addr v0, p1

    .line 15
    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalDeltaAnonRssKBs:J

    .line 16
    .line 17
    iget-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalZramConsumedKBs:J

    .line 18
    .line 19
    add-long/2addr p1, p3

    .line 20
    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalZramConsumedKBs:J

    .line 21
    .line 22
    iget-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    .line 23
    .line 24
    add-long/2addr p1, p5

    .line 25
    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    .line 26
    .line 27
    iget-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSumOrigAnonRss:J

    .line 28
    .line 29
    add-long/2addr p1, p7

    .line 30
    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSumOrigAnonRss:J

    .line 31
    .line 32
    iget-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalCpuTimeMillis:J

    .line 33
    .line 34
    add-long/2addr p1, p9

    .line 35
    iput-wide p1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalCpuTimeMillis:J

    .line 36
    .line 37
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 12
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactRequested:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactRequested:J

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 7
    .line 8
    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 9
    .line 10
    add-long/2addr v2, v4

    .line 11
    const-string v4, "    Performed / Requested:"

    .line 12
    .line 13
    const-string v5, "      Some: ("

    .line 14
    .line 15
    invoke-static {p1, v4, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 20
    .line 21
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v5, "/"

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactRequested:J

    .line 30
    .line 31
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v6, ")"

    .line 35
    .line 36
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v7, "      Full: ("

    .line 49
    .line 50
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 54
    .line 55
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactRequested:J

    .line 62
    .line 63
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactRequested:J

    .line 77
    .line 78
    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSomeCompactPerformed:J

    .line 79
    .line 80
    sub-long/2addr v4, v6

    .line 81
    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactRequested:J

    .line 82
    .line 83
    iget-wide v8, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 84
    .line 85
    sub-long/2addr v6, v8

    .line 86
    const-wide/16 v8, 0x0

    .line 87
    .line 88
    cmp-long v10, v4, v8

    .line 89
    .line 90
    if-gtz v10, :cond_0

    .line 91
    .line 92
    cmp-long v10, v6, v8

    .line 93
    .line 94
    if-lez v10, :cond_1

    .line 95
    .line 96
    :cond_0
    const-string v10, "    Throttled:"

    .line 97
    .line 98
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v11, "       Some: "

    .line 104
    .line 105
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v4, " Full: "

    .line 112
    .line 113
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v4, "    Throttled by Type:"

    .line 127
    .line 128
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sub-long v2, v0, v2

    .line 132
    .line 133
    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 134
    .line 135
    sub-long v4, v2, v4

    .line 136
    .line 137
    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 138
    .line 139
    sub-long/2addr v4, v6

    .line 140
    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 141
    .line 142
    sub-long/2addr v4, v6

    .line 143
    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 144
    .line 145
    sub-long/2addr v4, v6

    .line 146
    iget-wide v6, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 147
    .line 148
    sub-long/2addr v4, v6

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v7, "       NoPid: "

    .line 152
    .line 153
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-wide v10, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    .line 157
    .line 158
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v7, " OomAdj: "

    .line 162
    .line 163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-wide v10, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    .line 167
    .line 168
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v7, " Time: "

    .line 172
    .line 173
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-wide v10, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    .line 177
    .line 178
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v7, " RSS: "

    .line 182
    .line 183
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-wide v10, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    .line 187
    .line 188
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v7, " Misc: "

    .line 192
    .line 193
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-wide v10, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    .line 197
    .line 198
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v7, " Unaccounted: "

    .line 202
    .line 203
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    long-to-double v2, v2

    .line 217
    long-to-double v0, v0

    .line 218
    div-double/2addr v2, v0

    .line 219
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 220
    .line 221
    mul-double/2addr v2, v0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v1, "    Throttle Percentage: "

    .line 225
    .line 226
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 240
    .line 241
    cmp-long v0, v0, v8

    .line 242
    .line 243
    if-lez v0, :cond_3

    .line 244
    .line 245
    const-string v0, "    -----Memory Stats----"

    .line 246
    .line 247
    const-string v1, "    Total Delta Anon RSS (KB) : "

    .line 248
    .line 249
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalDeltaAnonRssKBs:J

    .line 254
    .line 255
    const-string v3, "    Total Physical ZRAM Consumed (KB): "

    .line 256
    .line 257
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalZramConsumedKBs:J

    .line 262
    .line 263
    const-string v3, "    Total Anon Memory Freed (KB): "

    .line 264
    .line 265
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    .line 270
    .line 271
    const-string v3, "    Avg Compaction Efficiency (Anon Freed/Anon RSS): "

    .line 272
    .line 273
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    .line 278
    .line 279
    long-to-double v1, v1

    .line 280
    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mSumOrigAnonRss:J

    .line 281
    .line 282
    long-to-double v3, v3

    .line 283
    div-double/2addr v1, v3

    .line 284
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const-string v1, "    Max Compaction Efficiency: "

    .line 292
    .line 293
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mMaxCompactEfficiency:D

    .line 298
    .line 299
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v1, "    Avg Compression Ratio (1 - ZRAM Consumed/DeltaAnonRSS): "

    .line 312
    .line 313
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalZramConsumedKBs:J

    .line 317
    .line 318
    long-to-double v1, v1

    .line 319
    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalDeltaAnonRssKBs:J

    .line 320
    .line 321
    long-to-double v3, v3

    .line 322
    div-double/2addr v1, v3

    .line 323
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 324
    .line 325
    sub-double/2addr v3, v1

    .line 326
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mFullCompactPerformed:J

    .line 337
    .line 338
    cmp-long v2, v0, v8

    .line 339
    .line 340
    if-lez v2, :cond_2

    .line 341
    .line 342
    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    .line 343
    .line 344
    div-long v8, v2, v0

    .line 345
    .line 346
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v1, "    Avg Anon Mem Freed/Compaction (KB) : "

    .line 349
    .line 350
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalCpuTimeMillis:J

    .line 364
    .line 365
    long-to-double v0, v0

    .line 366
    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer$AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    .line 367
    .line 368
    long-to-double v2, v2

    .line 369
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 370
    .line 371
    div-double/2addr v2, v4

    .line 372
    div-double/2addr v0, v2

    .line 373
    new-instance p0, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    const-string v2, "    Compaction Cost (ms/MB): "

    .line 376
    .line 377
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    :cond_3
    return-void
.end method
