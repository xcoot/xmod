.class public final Lcom/android/server/power/batterysaver/BatterySavingStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAdaptiveBatterySaverEnabledCount:I

.field public mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public mBatterySaverEnabledCount:I

.field public mCurrentState:I

.field public mLastAdaptiveBatterySaverDisabledTime:J

.field public mLastAdaptiveBatterySaverEnabledTime:J

.field public mLastBatterySaverDisabledTime:J

.field public mLastBatterySaverEnabledTime:J

.field public final mLock:Ljava/lang/Object;

.field final mStats:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 6
    .line 7
    new-instance v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    .line 20
    .line 21
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 22
    .line 23
    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    .line 24
    .line 25
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    .line 26
    .line 27
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    const-class p1, Landroid/os/BatteryManagerInternal;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/os/BatteryManagerInternal;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 40
    .line 41
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "BS="

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    and-int/lit8 v1, p0, 0x3

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ",I="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    shr-int/lit8 v1, p0, 0x2

    .line 22
    .line 23
    and-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ",D="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    shr-int/lit8 v1, p0, 0x3

    .line 34
    .line 35
    and-int/lit8 v1, v1, 0x3

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ",P="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    shr-int/lit8 p0, p0, 0x5

    .line 46
    .line 47
    and-int/lit8 p0, p0, 0x1

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_0
    const-string p0, "NotInitialized"

    .line 58
    .line 59
    return-object p0
.end method

.method public static statesToIndex(IIII)I
    .locals 0

    .line 1
    and-int/lit8 p0, p0, 0x3

    .line 2
    .line 3
    and-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    shl-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    or-int/2addr p0, p1

    .line 8
    and-int/lit8 p1, p2, 0x3

    .line 9
    .line 10
    shl-int/lit8 p1, p1, 0x3

    .line 11
    .line 12
    or-int/2addr p0, p1

    .line 13
    and-int/lit8 p1, p3, 0x1

    .line 14
    .line 15
    shl-int/lit8 p1, p1, 0x5

    .line 16
    .line 17
    or-int/2addr p0, p1

    .line 18
    return p0
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 14

    .line 1
    const-string v0, "Battery saving stats:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 21
    .line 22
    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 23
    .line 24
    .line 25
    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v6, "Battery Saver is currently: "

    .line 29
    .line 30
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 34
    .line 35
    and-int/lit8 v6, v6, 0x3

    .line 36
    .line 37
    if-eqz v6, :cond_2

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    if-eq v6, v7, :cond_1

    .line 41
    .line 42
    const/4 v7, 0x2

    .line 43
    if-eq v6, v7, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v6, "ADAPTIVE"

    .line 47
    .line 48
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_1
    const-string v6, "ON"

    .line 56
    .line 57
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const-string v6, "OFF"

    .line 62
    .line 63
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 67
    .line 68
    .line 69
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    .line 70
    .line 71
    const-wide/16 v8, 0x0

    .line 72
    .line 73
    cmp-long v6, v6, v8

    .line 74
    .line 75
    if-lez v6, :cond_3

    .line 76
    .line 77
    const-string v6, "Last ON time: "

    .line 78
    .line 79
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v6, Ljava/util/Date;

    .line 83
    .line 84
    sub-long v10, v1, v3

    .line 85
    .line 86
    iget-wide v12, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    .line 87
    .line 88
    add-long/2addr v10, v12

    .line 89
    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v6, " "

    .line 100
    .line 101
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    .line 105
    .line 106
    invoke-static {v6, v7, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 113
    .line 114
    cmp-long v6, v6, v8

    .line 115
    .line 116
    if-lez v6, :cond_4

    .line 117
    .line 118
    const-string v6, "Last OFF time: "

    .line 119
    .line 120
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    new-instance v6, Ljava/util/Date;

    .line 124
    .line 125
    sub-long v10, v1, v3

    .line 126
    .line 127
    iget-wide v12, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 128
    .line 129
    add-long/2addr v10, v12

    .line 130
    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v6, " "

    .line 141
    .line 142
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 146
    .line 147
    invoke-static {v6, v7, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 151
    .line 152
    .line 153
    :cond_4
    const-string v6, "Times full enabled: "

    .line 154
    .line 155
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 159
    .line 160
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 161
    .line 162
    .line 163
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    .line 164
    .line 165
    cmp-long v6, v6, v8

    .line 166
    .line 167
    if-lez v6, :cond_5

    .line 168
    .line 169
    const-string v6, "Last ADAPTIVE ON time: "

    .line 170
    .line 171
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance v6, Ljava/util/Date;

    .line 175
    .line 176
    sub-long v10, v1, v3

    .line 177
    .line 178
    iget-wide v12, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    .line 179
    .line 180
    add-long/2addr v10, v12

    .line 181
    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v6, " "

    .line 192
    .line 193
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    .line 197
    .line 198
    invoke-static {v6, v7, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 202
    .line 203
    .line 204
    :cond_5
    iget-wide v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    .line 205
    .line 206
    cmp-long v6, v6, v8

    .line 207
    .line 208
    if-lez v6, :cond_6

    .line 209
    .line 210
    const-string v6, "Last ADAPTIVE OFF time: "

    .line 211
    .line 212
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance v6, Ljava/util/Date;

    .line 216
    .line 217
    sub-long/2addr v1, v3

    .line 218
    iget-wide v7, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    .line 219
    .line 220
    add-long/2addr v1, v7

    .line 221
    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    const-string v1, " "

    .line 232
    .line 233
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    .line 237
    .line 238
    invoke-static {v1, v2, v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 242
    .line 243
    .line 244
    :cond_6
    const-string v1, "Times adaptive enabled: "

    .line 245
    .line 246
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    .line 250
    .line 251
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 258
    .line 259
    .line 260
    const-string v1, "Drain stats:"

    .line 261
    .line 262
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const-string v1, "                   Battery saver OFF                          ON"

    .line 266
    .line 267
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const-string v5, "NonIntr"

    .line 271
    .line 272
    const-string v7, "NonDoze"

    .line 273
    .line 274
    const/4 v4, 0x0

    .line 275
    const/4 v6, 0x0

    .line 276
    move-object v2, p0

    .line 277
    move-object v3, p1

    .line 278
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const-string v11, "   Intr"

    .line 282
    .line 283
    const-string v13, "       "

    .line 284
    .line 285
    const/4 v10, 0x1

    .line 286
    const/4 v12, 0x0

    .line 287
    move-object v8, p0

    .line 288
    move-object v9, p1

    .line 289
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 290
    .line 291
    .line 292
    const-string v4, "NonIntr"

    .line 293
    .line 294
    const-string v6, "Deep   "

    .line 295
    .line 296
    const/4 v3, 0x0

    .line 297
    const/4 v5, 0x2

    .line 298
    move-object v1, p0

    .line 299
    move-object v2, p1

    .line 300
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 301
    .line 302
    .line 303
    const-string v10, "   Intr"

    .line 304
    .line 305
    const-string v12, "       "

    .line 306
    .line 307
    const/4 v9, 0x1

    .line 308
    const/4 v11, 0x2

    .line 309
    move-object v7, p0

    .line 310
    move-object v8, p1

    .line 311
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 312
    .line 313
    .line 314
    const-string v4, "NonIntr"

    .line 315
    .line 316
    const-string v6, "Light  "

    .line 317
    .line 318
    const/4 v3, 0x0

    .line 319
    const/4 v5, 0x1

    .line 320
    move-object v1, p0

    .line 321
    move-object v2, p1

    .line 322
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 323
    .line 324
    .line 325
    const-string v10, "   Intr"

    .line 326
    .line 327
    const-string v12, "       "

    .line 328
    .line 329
    const/4 v9, 0x1

    .line 330
    const/4 v11, 0x1

    .line 331
    move-object v7, p0

    .line 332
    move-object v8, p1

    .line 333
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 334
    .line 335
    .line 336
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    throw p0
.end method

.method public final dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p5, " "

    .line 5
    .line 6
    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p3, ": "

    .line 13
    .line 14
    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-static {p3, p2, p4, p3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(IIII)I

    .line 19
    .line 20
    .line 21
    move-result p5

    .line 22
    invoke-virtual {p0, p5}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    .line 23
    .line 24
    .line 25
    move-result-object p5

    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-static {v0, p2, p4, p3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(IIII)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p0, p2}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget-wide p2, p5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    .line 36
    .line 37
    const-wide/32 v0, 0xea60

    .line 38
    .line 39
    .line 40
    div-long/2addr p2, v0

    .line 41
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget p2, p5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    .line 46
    .line 47
    div-int/lit16 p2, p2, 0x3e8

    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget p2, p5, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 54
    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p5}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    .line 60
    .line 61
    .line 62
    move-result-wide p2

    .line 63
    const-wide p4, 0x408f400000000000L    # 1000.0

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    div-double/2addr p2, p4

    .line 69
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iget-wide p2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    .line 74
    .line 75
    div-long/2addr p2, v0

    .line 76
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    iget p2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    .line 81
    .line 82
    div-int/lit16 p2, p2, 0x3e8

    .line 83
    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    iget p2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 89
    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    .line 95
    .line 96
    .line 97
    move-result-wide p2

    .line 98
    div-double/2addr p2, p4

    .line 99
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string p2, "%6dm %6dmAh(%3d%%) %8.1fmAh/h     %6dm %6dmAh(%3d%%) %8.1fmAh/h"

    .line 108
    .line 109
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-object v1

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public injectBatteryLevel()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Landroid/os/BatteryManagerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "BatterySavingStats"

    .line 18
    .line 19
    const-string v1, "BatteryManagerInternal not initialized"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 25
    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryChargeCounter()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public injectBatteryPercent()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Landroid/os/BatteryManagerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "BatterySavingStats"

    .line 18
    .line 19
    const-string v1, "BatteryManagerInternal not initialized"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 25
    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public injectCurrentTime()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final transitionStateLocked(I)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 6
    .line 7
    if-ne v2, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryLevel()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryPercent()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    iget v6, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    if-gez v6, :cond_1

    .line 26
    .line 27
    move v8, v7

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    and-int/lit8 v8, v6, 0x3

    .line 30
    .line 31
    :goto_0
    if-gez v1, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    and-int/lit8 v7, v1, 0x3

    .line 35
    .line 36
    :goto_1
    const/4 v9, 0x1

    .line 37
    if-eq v8, v7, :cond_7

    .line 38
    .line 39
    if-eqz v7, :cond_5

    .line 40
    .line 41
    const/4 v10, 0x2

    .line 42
    if-eq v7, v9, :cond_4

    .line 43
    .line 44
    if-eq v7, v10, :cond_3

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    iget v7, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    .line 48
    .line 49
    add-int/2addr v7, v9

    .line 50
    iput v7, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    .line 51
    .line 52
    iput-wide v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    .line 53
    .line 54
    if-ne v8, v9, :cond_7

    .line 55
    .line 56
    iput-wide v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    iget v7, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 60
    .line 61
    add-int/2addr v7, v9

    .line 62
    iput v7, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 63
    .line 64
    iput-wide v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    .line 65
    .line 66
    if-ne v8, v10, :cond_7

    .line 67
    .line 68
    iput-wide v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    if-ne v8, v9, :cond_6

    .line 72
    .line 73
    iput-wide v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_6
    iput-wide v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    .line 77
    .line 78
    :cond_7
    :goto_2
    if-gez v6, :cond_8

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_8
    invoke-virtual {v0, v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    iget-wide v7, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    .line 89
    .line 90
    sub-long v7, v2, v7

    .line 91
    .line 92
    iget v10, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    .line 93
    .line 94
    sub-int/2addr v10, v4

    .line 95
    iget v11, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    .line 96
    .line 97
    sub-int/2addr v11, v5

    .line 98
    iget-wide v12, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    .line 99
    .line 100
    add-long/2addr v12, v7

    .line 101
    iput-wide v12, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    .line 102
    .line 103
    iget v14, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    .line 104
    .line 105
    add-int/2addr v14, v10

    .line 106
    iput v14, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    .line 107
    .line 108
    iget v15, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 109
    .line 110
    add-int/2addr v15, v11

    .line 111
    iput v15, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 112
    .line 113
    iget v6, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 114
    .line 115
    and-int/lit8 v16, v6, 0x3

    .line 116
    .line 117
    shr-int/lit8 v17, v6, 0x2

    .line 118
    .line 119
    and-int/lit8 v9, v17, 0x1

    .line 120
    .line 121
    shr-int/lit8 v6, v6, 0x3

    .line 122
    .line 123
    and-int/lit8 v6, v6, 0x3

    .line 124
    .line 125
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v17

    .line 129
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v18

    .line 133
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v19

    .line 137
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v20

    .line 141
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v21

    .line 145
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v22

    .line 149
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object v23

    .line 153
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v24

    .line 157
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v25

    .line 161
    filled-new-array/range {v17 .. v25}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    const/16 v7, 0x6afe

    .line 166
    .line 167
    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 168
    .line 169
    .line 170
    :goto_3
    iput v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 171
    .line 172
    if-gez v1, :cond_9

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput v4, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    .line 180
    .line 181
    iput v5, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    .line 182
    .line 183
    iput-wide v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    .line 184
    .line 185
    :goto_4
    return-void
.end method
