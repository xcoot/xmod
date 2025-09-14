.class public final Lcom/android/server/enterprise/application/ProcessStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LOAD_AVERAGE_FORMAT:[I

.field public static final PROCESS_FULL_STATS_FORMAT:[I

.field public static final PROCESS_STATS_FORMAT:[I

.field public static final SYSTEM_CPU_FORMAT:[I

.field public static final sLoadComparator:Lcom/android/server/enterprise/application/ProcessStats$1;


# instance fields
.field public mBaseIdleTime:J

.field public mBaseIrqTime:J

.field public mBaseSystemTime:J

.field public mBaseUserTime:J

.field public final mBuffer:[B

.field public mCurPids:[I

.field public mCurThreadPids:[I

.field public mCurrentSampleTime:J

.field public mFirst:Z

.field public final mIncludeThreads:Z

.field public mLoad1:F

.field public mLoad15:F

.field public mLoad5:F

.field public final mLoadAverageData:[F

.field public final mProcStats:Ljava/util/ArrayList;

.field public final mProcessFullStatsData:[J

.field public final mProcessFullStatsStringData:[Ljava/lang/String;

.field public final mProcessStatsData:[J

.field public mRelIdleTime:I

.field public mRelIrqTime:I

.field public mRelSystemTime:I

.field public mRelUserTime:I

.field public final mSystemCpuData:[J

.field public final mWorkingProcs:Ljava/util/ArrayList;

.field public mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    .line 9
    .line 10
    const/16 v0, 0x16

    .line 11
    .line 12
    new-array v0, v0, [I

    .line 13
    .line 14
    fill-array-data v0, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    fill-array-data v0, :array_2

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    .line 27
    .line 28
    const/16 v0, 0x4020

    .line 29
    .line 30
    filled-new-array {v0, v0, v0}, [I

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    .line 35
    .line 36
    new-instance v0, Lcom/android/server/enterprise/application/ProcessStats$1;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Lcom/android/server/enterprise/application/ProcessStats$1;

    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [J

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessStatsData:[J

    .line 8
    .line 9
    const/4 v0, 0x6

    .line 10
    new-array v1, v0, [Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 13
    .line 14
    new-array v0, v0, [J

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsData:[J

    .line 17
    .line 18
    const/4 v0, 0x7

    .line 19
    new-array v0, v0, [J

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSystemCpuData:[J

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    new-array v0, v0, [F

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoadAverageData:[F

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    .line 30
    .line 31
    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    .line 32
    .line 33
    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    .line 51
    .line 52
    const/16 v0, 0x1000

    .line 53
    .line 54
    new-array v0, v0, [B

    .line 55
    .line 56
    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    .line 57
    .line 58
    new-instance p0, Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 61
    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 37

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p2

    .line 4
    .line 5
    move-object/from16 v0, p1

    .line 6
    .line 7
    move-object/from16 v1, p4

    .line 8
    .line 9
    move-object/from16 v8, p5

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    if-nez v9, :cond_0

    .line 16
    .line 17
    const/4 v11, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    array-length v0, v9

    .line 20
    move v11, v0

    .line 21
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    move v12, v0

    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v13, 0x0

    .line 28
    :goto_1
    const-string v1, ": "

    .line 29
    .line 30
    const-string v2, "ProcessStats"

    .line 31
    .line 32
    if-ge v13, v11, :cond_1

    .line 33
    .line 34
    aget v15, v9, v13

    .line 35
    .line 36
    if-gez v15, :cond_2

    .line 37
    .line 38
    :cond_1
    move-object/from16 v17, v9

    .line 39
    .line 40
    move/from16 v23, v12

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    goto/16 :goto_f

    .line 44
    .line 45
    :cond_2
    if-ge v0, v12, :cond_3

    .line 46
    .line 47
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 52
    .line 53
    move-object v5, v4

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    const/4 v5, 0x0

    .line 56
    :goto_2
    const-string v4, " majfaults="

    .line 57
    .line 58
    const-string v14, " minfaults="

    .line 59
    .line 60
    const-string v3, " stime="

    .line 61
    .line 62
    move-object/from16 v16, v3

    .line 63
    .line 64
    const-string v3, " utime="

    .line 65
    .line 66
    move-object/from16 v17, v3

    .line 67
    .line 68
    const-string v3, " pid="

    .line 69
    .line 70
    move-object/from16 v18, v3

    .line 71
    .line 72
    const-string v3, "Load"

    .line 73
    .line 74
    const/16 v19, 0x3

    .line 75
    .line 76
    const/16 v20, 0x2

    .line 77
    .line 78
    const-string v10, " pid "

    .line 79
    .line 80
    const-string/jumbo v21, "thread"

    .line 81
    .line 82
    .line 83
    const-string/jumbo v22, "process"

    .line 84
    .line 85
    .line 86
    if-eqz v5, :cond_b

    .line 87
    .line 88
    move-object/from16 v23, v3

    .line 89
    .line 90
    iget v3, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    .line 91
    .line 92
    if-ne v3, v15, :cond_a

    .line 93
    .line 94
    move/from16 v24, v3

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    iput-boolean v3, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    .line 98
    .line 99
    iput-boolean v3, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 100
    .line 101
    add-int/lit8 v25, v0, 0x1

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v3, "Existing "

    .line 106
    .line 107
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    if-gez v7, :cond_4

    .line 111
    .line 112
    move-object/from16 v3, v22

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    move-object/from16 v3, v21

    .line 116
    .line 117
    :goto_3
    invoke-static {v15, v3, v10, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    iget-boolean v0, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    .line 131
    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 135
    .line 136
    .line 137
    iget-object v0, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sget-object v1, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    .line 144
    .line 145
    iget-object v2, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcessStatsData:[J

    .line 146
    .line 147
    const/4 v3, 0x0

    .line 148
    invoke-static {v0, v1, v3, v2, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_6

    .line 153
    .line 154
    :cond_5
    :goto_4
    move-object/from16 v17, v9

    .line 155
    .line 156
    move/from16 v16, v11

    .line 157
    .line 158
    move/from16 v23, v12

    .line 159
    .line 160
    move/from16 v18, v13

    .line 161
    .line 162
    goto/16 :goto_6

    .line 163
    .line 164
    :cond_6
    move-object/from16 p4, v4

    .line 165
    .line 166
    const/4 v0, 0x0

    .line 167
    aget-wide v3, v2, v0

    .line 168
    .line 169
    move-wide/from16 v21, v3

    .line 170
    .line 171
    const/4 v1, 0x1

    .line 172
    aget-wide v3, v2, v1

    .line 173
    .line 174
    move-wide/from16 v26, v3

    .line 175
    .line 176
    aget-wide v3, v2, v20

    .line 177
    .line 178
    aget-wide v1, v2, v19

    .line 179
    .line 180
    move-wide/from16 v19, v1

    .line 181
    .line 182
    iget-wide v0, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 183
    .line 184
    cmp-long v0, v3, v0

    .line 185
    .line 186
    if-nez v0, :cond_7

    .line 187
    .line 188
    iget-wide v0, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    .line 189
    .line 190
    cmp-long v0, v19, v0

    .line 191
    .line 192
    if-nez v0, :cond_7

    .line 193
    .line 194
    const/4 v0, 0x0

    .line 195
    iput v0, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 196
    .line 197
    iput v0, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 198
    .line 199
    iget-boolean v1, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    .line 200
    .line 201
    if-eqz v1, :cond_5

    .line 202
    .line 203
    iput-boolean v0, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_7
    iget-boolean v0, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    .line 207
    .line 208
    if-nez v0, :cond_8

    .line 209
    .line 210
    const/4 v0, 0x1

    .line 211
    iput-boolean v0, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    .line 212
    .line 213
    :cond_8
    if-gez v7, :cond_9

    .line 214
    .line 215
    iget-object v0, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v6, v5, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object v10, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    .line 221
    .line 222
    if-eqz v10, :cond_9

    .line 223
    .line 224
    iget-object v2, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    .line 225
    .line 226
    iget-object v1, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    .line 227
    .line 228
    const/16 v28, 0x0

    .line 229
    .line 230
    move-object/from16 v0, p0

    .line 231
    .line 232
    move-wide/from16 v29, v19

    .line 233
    .line 234
    move-object/from16 v19, v2

    .line 235
    .line 236
    move v2, v15

    .line 237
    move-wide v7, v3

    .line 238
    move-object/from16 v15, v16

    .line 239
    .line 240
    move-object/from16 v4, v17

    .line 241
    .line 242
    move-wide/from16 v31, v26

    .line 243
    .line 244
    move-object/from16 v17, v9

    .line 245
    .line 246
    move/from16 v16, v11

    .line 247
    .line 248
    move-object/from16 v11, v18

    .line 249
    .line 250
    move-object/from16 v9, v23

    .line 251
    .line 252
    move/from16 v18, v13

    .line 253
    .line 254
    move/from16 v13, v24

    .line 255
    .line 256
    move/from16 v3, v28

    .line 257
    .line 258
    move-object/from16 v33, p4

    .line 259
    .line 260
    move-object/from16 v34, v4

    .line 261
    .line 262
    move-object/from16 v4, v19

    .line 263
    .line 264
    move/from16 v23, v12

    .line 265
    .line 266
    move-object v12, v5

    .line 267
    move-object v5, v10

    .line 268
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    iput-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_9
    move-object/from16 v33, p4

    .line 276
    .line 277
    move-wide v7, v3

    .line 278
    move-object/from16 v15, v16

    .line 279
    .line 280
    move-object/from16 v34, v17

    .line 281
    .line 282
    move-wide/from16 v29, v19

    .line 283
    .line 284
    move-wide/from16 v31, v26

    .line 285
    .line 286
    move-object/from16 v17, v9

    .line 287
    .line 288
    move/from16 v16, v11

    .line 289
    .line 290
    move-object/from16 v11, v18

    .line 291
    .line 292
    move-object/from16 v9, v23

    .line 293
    .line 294
    move/from16 v23, v12

    .line 295
    .line 296
    move/from16 v18, v13

    .line 297
    .line 298
    move/from16 v13, v24

    .line 299
    .line 300
    move-object v12, v5

    .line 301
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    const-string v1, "Stats changed "

    .line 304
    .line 305
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object v1, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 309
    .line 310
    move-object/from16 v5, v34

    .line 311
    .line 312
    invoke-static {v13, v1, v11, v5, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v1, "-"

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    iget-wide v2, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 324
    .line 325
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    move-wide/from16 v2, v29

    .line 329
    .line 330
    invoke-static {v0, v15, v2, v3, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 331
    .line 332
    .line 333
    iget-wide v4, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    .line 334
    .line 335
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    move-wide/from16 v4, v21

    .line 339
    .line 340
    invoke-static {v0, v14, v4, v5, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-wide v10, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    .line 344
    .line 345
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    move-wide/from16 v10, v31

    .line 349
    .line 350
    move-object/from16 v13, v33

    .line 351
    .line 352
    invoke-static {v0, v13, v10, v11, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget-wide v13, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    .line 356
    .line 357
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    iget-wide v0, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 368
    .line 369
    sub-long v0, v7, v0

    .line 370
    .line 371
    long-to-int v0, v0

    .line 372
    iput v0, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 373
    .line 374
    iget-wide v0, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    .line 375
    .line 376
    sub-long v0, v2, v0

    .line 377
    .line 378
    long-to-int v0, v0

    .line 379
    iput v0, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 380
    .line 381
    iput-wide v7, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 382
    .line 383
    iput-wide v2, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    .line 384
    .line 385
    iput-wide v4, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    .line 386
    .line 387
    iput-wide v10, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    .line 388
    .line 389
    const/4 v0, 0x1

    .line 390
    iput-boolean v0, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 391
    .line 392
    :goto_6
    move/from16 v12, p2

    .line 393
    .line 394
    move-object/from16 v8, p5

    .line 395
    .line 396
    move/from16 v13, v18

    .line 397
    .line 398
    move/from16 v0, v25

    .line 399
    .line 400
    :goto_7
    const/4 v3, 0x1

    .line 401
    goto/16 :goto_e

    .line 402
    .line 403
    :cond_a
    move-object/from16 v7, v16

    .line 404
    .line 405
    move/from16 v16, v11

    .line 406
    .line 407
    move-object/from16 v11, v18

    .line 408
    .line 409
    move/from16 v18, v13

    .line 410
    .line 411
    move-object v13, v4

    .line 412
    move/from16 v36, v12

    .line 413
    .line 414
    move-object v12, v5

    .line 415
    move-object/from16 v5, v17

    .line 416
    .line 417
    move-object/from16 v17, v9

    .line 418
    .line 419
    move-object/from16 v9, v23

    .line 420
    .line 421
    move/from16 v23, v36

    .line 422
    .line 423
    goto :goto_8

    .line 424
    :cond_b
    move/from16 v23, v12

    .line 425
    .line 426
    move-object/from16 v7, v16

    .line 427
    .line 428
    move-object v12, v5

    .line 429
    move/from16 v16, v11

    .line 430
    .line 431
    move-object/from16 v5, v17

    .line 432
    .line 433
    move-object/from16 v11, v18

    .line 434
    .line 435
    move-object/from16 v17, v9

    .line 436
    .line 437
    move/from16 v18, v13

    .line 438
    .line 439
    move-object v9, v3

    .line 440
    move-object v13, v4

    .line 441
    :goto_8
    if-eqz v12, :cond_c

    .line 442
    .line 443
    iget v3, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    .line 444
    .line 445
    if-le v3, v15, :cond_d

    .line 446
    .line 447
    :cond_c
    move/from16 v12, p2

    .line 448
    .line 449
    move-object/from16 v8, p5

    .line 450
    .line 451
    goto :goto_a

    .line 452
    :cond_d
    const/4 v3, 0x0

    .line 453
    iput v3, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 454
    .line 455
    iput v3, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 456
    .line 457
    const/4 v3, 0x1

    .line 458
    iput-boolean v3, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    .line 459
    .line 460
    iput-boolean v3, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 461
    .line 462
    move-object/from16 v8, p5

    .line 463
    .line 464
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    add-int/lit8 v3, v23, -0x1

    .line 468
    .line 469
    new-instance v4, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    const-string v5, "Removed "

    .line 472
    .line 473
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    move/from16 v5, p2

    .line 477
    .line 478
    if-gez v5, :cond_e

    .line 479
    .line 480
    move-object/from16 v7, v22

    .line 481
    .line 482
    goto :goto_9

    .line 483
    :cond_e
    move-object/from16 v7, v21

    .line 484
    .line 485
    :goto_9
    invoke-static {v15, v7, v10, v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    add-int/lit8 v13, v18, -0x1

    .line 499
    .line 500
    move/from16 v23, v3

    .line 501
    .line 502
    move v12, v5

    .line 503
    goto :goto_7

    .line 504
    :goto_a
    new-instance v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 505
    .line 506
    invoke-direct {v4, v15, v12}, Lcom/android/server/enterprise/application/ProcessStats$Stats;-><init>(II)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v8, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    add-int/lit8 v24, v0, 0x1

    .line 513
    .line 514
    add-int/lit8 v23, v23, 0x1

    .line 515
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    const-string v3, "New "

    .line 519
    .line 520
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    if-gez v12, :cond_f

    .line 524
    .line 525
    move-object/from16 v3, v22

    .line 526
    .line 527
    goto :goto_b

    .line 528
    :cond_f
    move-object/from16 v3, v21

    .line 529
    .line 530
    :goto_b
    invoke-static {v15, v3, v10, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .line 542
    .line 543
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 544
    .line 545
    .line 546
    iget-object v0, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    sget-object v1, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    .line 553
    .line 554
    iget-object v3, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 555
    .line 556
    iget-object v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsData:[J

    .line 557
    .line 558
    move-object/from16 v34, v5

    .line 559
    .line 560
    const/4 v5, 0x0

    .line 561
    invoke-static {v0, v1, v3, v10, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-eqz v0, :cond_10

    .line 566
    .line 567
    const/4 v0, 0x1

    .line 568
    iput-boolean v0, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    .line 569
    .line 570
    const/4 v1, 0x0

    .line 571
    aget-object v2, v3, v1

    .line 572
    .line 573
    iput-object v2, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 574
    .line 575
    aget-wide v1, v10, v0

    .line 576
    .line 577
    iput-wide v1, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    .line 578
    .line 579
    aget-wide v0, v10, v20

    .line 580
    .line 581
    iput-wide v0, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    .line 582
    .line 583
    aget-wide v0, v10, v19

    .line 584
    .line 585
    iput-wide v0, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 586
    .line 587
    const/4 v0, 0x4

    .line 588
    aget-wide v0, v10, v0

    .line 589
    .line 590
    iput-wide v0, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    .line 591
    .line 592
    goto :goto_c

    .line 593
    :cond_10
    const-string v0, "Skipping unknown process pid "

    .line 594
    .line 595
    invoke-static {v15, v0, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    const-string v0, "<unknown>"

    .line 599
    .line 600
    iput-object v0, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 601
    .line 602
    const-wide/16 v0, 0x0

    .line 603
    .line 604
    iput-wide v0, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    .line 605
    .line 606
    iput-wide v0, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 607
    .line 608
    iput-wide v0, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    .line 609
    .line 610
    iput-wide v0, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    .line 611
    .line 612
    :goto_c
    if-gez v12, :cond_12

    .line 613
    .line 614
    iget-object v0, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    .line 615
    .line 616
    invoke-virtual {v6, v4, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    iget-object v5, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    .line 620
    .line 621
    if-eqz v5, :cond_11

    .line 622
    .line 623
    iget-object v10, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    .line 624
    .line 625
    iget-object v1, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    .line 626
    .line 627
    const/4 v3, 0x1

    .line 628
    move-object/from16 v0, p0

    .line 629
    .line 630
    move v2, v15

    .line 631
    move-object/from16 v35, v4

    .line 632
    .line 633
    move-object v4, v10

    .line 634
    move-object/from16 v10, v34

    .line 635
    .line 636
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    iput-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    .line 641
    .line 642
    move-object/from16 v0, v35

    .line 643
    .line 644
    goto :goto_d

    .line 645
    :cond_11
    move-object/from16 v10, v34

    .line 646
    .line 647
    move-object v0, v4

    .line 648
    goto :goto_d

    .line 649
    :cond_12
    move-object v0, v4

    .line 650
    move-object/from16 v10, v34

    .line 651
    .line 652
    iget-boolean v1, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    .line 653
    .line 654
    if-eqz v1, :cond_13

    .line 655
    .line 656
    iget-object v1, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 657
    .line 658
    iput-object v1, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 659
    .line 660
    :cond_13
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 661
    .line 662
    const-string v2, "Stats added "

    .line 663
    .line 664
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    iget-object v2, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 668
    .line 669
    invoke-static {v15, v2, v11, v10, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 670
    .line 671
    .line 672
    iget-wide v2, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 673
    .line 674
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    iget-wide v2, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    .line 681
    .line 682
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    iget-wide v2, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    .line 689
    .line 690
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    iget-wide v2, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    .line 697
    .line 698
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .line 707
    .line 708
    const/4 v1, 0x0

    .line 709
    iput v1, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 710
    .line 711
    iput v1, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 712
    .line 713
    const/4 v3, 0x1

    .line 714
    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    .line 715
    .line 716
    if-nez p3, :cond_14

    .line 717
    .line 718
    iget-boolean v1, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    .line 719
    .line 720
    if-eqz v1, :cond_14

    .line 721
    .line 722
    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 723
    .line 724
    :cond_14
    move/from16 v13, v18

    .line 725
    .line 726
    move/from16 v0, v24

    .line 727
    .line 728
    :goto_e
    add-int/2addr v13, v3

    .line 729
    move v7, v12

    .line 730
    move/from16 v11, v16

    .line 731
    .line 732
    move-object/from16 v9, v17

    .line 733
    .line 734
    move/from16 v12, v23

    .line 735
    .line 736
    goto/16 :goto_1

    .line 737
    .line 738
    :goto_f
    move/from16 v12, v23

    .line 739
    .line 740
    :goto_10
    if-ge v0, v12, :cond_15

    .line 741
    .line 742
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v4

    .line 746
    check-cast v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 747
    .line 748
    const/4 v5, 0x0

    .line 749
    iput v5, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 750
    .line 751
    iput v5, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 752
    .line 753
    iput-boolean v3, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    .line 754
    .line 755
    iput-boolean v3, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 756
    .line 757
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    add-int/lit8 v12, v12, -0x1

    .line 761
    .line 762
    new-instance v6, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    const-string v7, "Removed pid "

    .line 765
    .line 766
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    iget v7, v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    .line 770
    .line 771
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v4

    .line 784
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    .line 786
    .line 787
    goto :goto_10

    .line 788
    :cond_15
    return-object v17
.end method

.method public final countWorkingStats()I
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Lcom/android/server/enterprise/application/ProcessStats$1;

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    if-ge v2, v0, :cond_3

    .line 22
    .line 23
    iget-object v5, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 30
    .line 31
    iget-boolean v6, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 32
    .line 33
    if-eqz v6, :cond_2

    .line 34
    .line 35
    iget-object v6, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iget-object v6, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    .line 41
    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-le v6, v4, :cond_2

    .line 49
    .line 50
    iget-object v4, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 53
    .line 54
    .line 55
    iget-object v4, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    move v6, v1

    .line 62
    :goto_1
    if-ge v6, v4, :cond_1

    .line 63
    .line 64
    iget-object v7, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    check-cast v7, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 71
    .line 72
    iget-boolean v8, v7, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 73
    .line 74
    if-eqz v8, :cond_0

    .line 75
    .line 76
    iget-object v8, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    iget-object v4, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    .line 96
    .line 97
    iput-boolean v4, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    .line 98
    .line 99
    :cond_4
    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    return p0
.end method

.method public final getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "app_process"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "<pre-initialized>"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_8

    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    .line 24
    .line 25
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 31
    .line 32
    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    .line 34
    .line 35
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 40
    .line 41
    .line 42
    if-lez p2, :cond_3

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    move v5, v4

    .line 46
    :goto_0
    if-ge v5, p2, :cond_2

    .line 47
    .line 48
    aget-byte v6, p0, v5

    .line 49
    .line 50
    if-nez v6, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    move-object v2, v3

    .line 58
    goto :goto_3

    .line 59
    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {p2, p0, v4, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 65
    .line 66
    .line 67
    :catch_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 68
    .line 69
    .line 70
    move-object v2, p2

    .line 71
    goto :goto_6

    .line 72
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 73
    .line 74
    .line 75
    :catch_1
    :cond_4
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 76
    .line 77
    .line 78
    goto :goto_6

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    goto :goto_3

    .line 81
    :catch_2
    move-object v3, v2

    .line 82
    goto :goto_4

    .line 83
    :catch_3
    move-object v3, v2

    .line 84
    goto :goto_5

    .line 85
    :goto_3
    if-eqz v2, :cond_5

    .line 86
    .line 87
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 88
    .line 89
    .line 90
    :catch_4
    :cond_5
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :catch_5
    :goto_4
    if-eqz v3, :cond_4

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catch_6
    :goto_5
    if-eqz v3, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :goto_6
    if-eqz v2, :cond_7

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    const/4 p2, 0x1

    .line 107
    if-le p0, p2, :cond_7

    .line 108
    .line 109
    const-string p0, "/"

    .line 110
    .line 111
    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-lez p0, :cond_6

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    sub-int/2addr v0, p2

    .line 122
    if-ge p0, v0, :cond_6

    .line 123
    .line 124
    add-int/2addr p0, p2

    .line 125
    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    goto :goto_7

    .line 130
    :cond_6
    move-object v0, v2

    .line 131
    :cond_7
    :goto_7
    if-nez v0, :cond_8

    .line 132
    .line 133
    iget-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 134
    .line 135
    :cond_8
    iget-object p0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 136
    .line 137
    if-eqz p0, :cond_9

    .line 138
    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-nez p0, :cond_a

    .line 144
    .line 145
    :cond_9
    iput-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 146
    .line 147
    :cond_a
    return-void
.end method

.method public final update()V
    .locals 20

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "Update: "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v7, "ProcessStats"

    .line 18
    .line 19
    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    .line 27
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/android/server/enterprise/application/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    .line 32
    .line 33
    const-string v1, "/proc/stat"

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    iget-object v2, v6, Lcom/android/server/enterprise/application/ProcessStats;->mSystemCpuData:[J

    .line 37
    .line 38
    invoke-static {v1, v0, v8, v2, v8}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v9, 0x2

    .line 43
    const/4 v10, 0x1

    .line 44
    const/4 v11, 0x0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    aget-wide v0, v2, v11

    .line 48
    .line 49
    aget-wide v3, v2, v10

    .line 50
    .line 51
    add-long/2addr v0, v3

    .line 52
    aget-wide v3, v2, v9

    .line 53
    .line 54
    const/4 v5, 0x3

    .line 55
    aget-wide v12, v2, v5

    .line 56
    .line 57
    const/4 v14, 0x4

    .line 58
    aget-wide v15, v2, v14

    .line 59
    .line 60
    const/4 v15, 0x5

    .line 61
    aget-wide v8, v2, v15

    .line 62
    .line 63
    const/16 v17, 0x6

    .line 64
    .line 65
    aget-wide v18, v2, v17

    .line 66
    .line 67
    iget-wide v14, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseUserTime:J

    .line 68
    .line 69
    sub-long v14, v0, v14

    .line 70
    .line 71
    long-to-int v14, v14

    .line 72
    iput v14, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    .line 73
    .line 74
    iget-wide v14, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSystemTime:J

    .line 75
    .line 76
    sub-long v14, v3, v14

    .line 77
    .line 78
    long-to-int v14, v14

    .line 79
    iput v14, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    .line 80
    .line 81
    iget-wide v14, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIrqTime:J

    .line 82
    .line 83
    sub-long v14, v8, v14

    .line 84
    .line 85
    long-to-int v14, v14

    .line 86
    iput v14, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    .line 87
    .line 88
    iget-wide v14, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIdleTime:J

    .line 89
    .line 90
    sub-long v14, v12, v14

    .line 91
    .line 92
    long-to-int v14, v14

    .line 93
    iput v14, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    .line 94
    .line 95
    new-instance v14, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v15, "Total U:"

    .line 98
    .line 99
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    aget-wide v5, v2, v11

    .line 103
    .line 104
    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v5, " N:"

    .line 108
    .line 109
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    aget-wide v5, v2, v10

    .line 113
    .line 114
    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v5, " S:"

    .line 118
    .line 119
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const/4 v6, 0x2

    .line 123
    aget-wide v10, v2, v6

    .line 124
    .line 125
    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v6, " I:"

    .line 129
    .line 130
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const/4 v10, 0x3

    .line 134
    aget-wide v10, v2, v10

    .line 135
    .line 136
    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v10, " W:"

    .line 140
    .line 141
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const/4 v10, 0x4

    .line 145
    aget-wide v10, v2, v10

    .line 146
    .line 147
    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v10, " Q:"

    .line 151
    .line 152
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    move-wide/from16 v18, v12

    .line 156
    .line 157
    const/4 v11, 0x5

    .line 158
    aget-wide v11, v2, v11

    .line 159
    .line 160
    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v11, " O:"

    .line 164
    .line 165
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    aget-wide v11, v2, v17

    .line 169
    .line 170
    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    const-string v11, "Load"

    .line 178
    .line 179
    invoke-static {v11, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v12, "Rel U:"

    .line 185
    .line 186
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    move-object/from16 v12, p0

    .line 190
    .line 191
    iget v13, v12, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    .line 192
    .line 193
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget v5, v12, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    .line 200
    .line 201
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget v5, v12, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    .line 208
    .line 209
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget v5, v12, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    .line 216
    .line 217
    invoke-static {v2, v5, v11}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iput-wide v0, v12, Lcom/android/server/enterprise/application/ProcessStats;->mBaseUserTime:J

    .line 221
    .line 222
    iput-wide v3, v12, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSystemTime:J

    .line 223
    .line 224
    iput-wide v8, v12, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIrqTime:J

    .line 225
    .line 226
    move-wide/from16 v0, v18

    .line 227
    .line 228
    iput-wide v0, v12, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIdleTime:J

    .line 229
    .line 230
    goto :goto_0

    .line 231
    :cond_0
    move-object v12, v6

    .line 232
    :goto_0
    iget-boolean v3, v12, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    .line 233
    .line 234
    iget-object v4, v12, Lcom/android/server/enterprise/application/ProcessStats;->mCurPids:[I

    .line 235
    .line 236
    iget-object v5, v12, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 237
    .line 238
    const-string v1, "/proc"

    .line 239
    .line 240
    const/4 v2, -0x1

    .line 241
    move-object/from16 v0, p0

    .line 242
    .line 243
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iput-object v0, v12, Lcom/android/server/enterprise/application/ProcessStats;->mCurPids:[I

    .line 248
    .line 249
    sget-object v0, Lcom/android/server/enterprise/application/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    .line 250
    .line 251
    const-string v1, "/proc/loadavg"

    .line 252
    .line 253
    iget-object v2, v12, Lcom/android/server/enterprise/application/ProcessStats;->mLoadAverageData:[F

    .line 254
    .line 255
    const/4 v3, 0x0

    .line 256
    invoke-static {v1, v0, v3, v3, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_2

    .line 261
    .line 262
    const/4 v0, 0x0

    .line 263
    aget v1, v2, v0

    .line 264
    .line 265
    const/4 v0, 0x1

    .line 266
    aget v0, v2, v0

    .line 267
    .line 268
    const/4 v3, 0x2

    .line 269
    aget v2, v2, v3

    .line 270
    .line 271
    iget v3, v12, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    .line 272
    .line 273
    cmpl-float v3, v1, v3

    .line 274
    .line 275
    if-nez v3, :cond_1

    .line 276
    .line 277
    iget v3, v12, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    .line 278
    .line 279
    cmpl-float v3, v0, v3

    .line 280
    .line 281
    if-nez v3, :cond_1

    .line 282
    .line 283
    iget v3, v12, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    .line 284
    .line 285
    cmpl-float v3, v2, v3

    .line 286
    .line 287
    if-eqz v3, :cond_2

    .line 288
    .line 289
    :cond_1
    iput v1, v12, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    .line 290
    .line 291
    iput v0, v12, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    .line 292
    .line 293
    iput v2, v12, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    .line 294
    .line 295
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v1, "*** TIME TO COLLECT STATS: "

    .line 298
    .line 299
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 303
    .line 304
    .line 305
    move-result-wide v1

    .line 306
    iget-wide v3, v12, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    .line 307
    .line 308
    sub-long/2addr v1, v3

    .line 309
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    const/4 v0, 0x0

    .line 320
    iput-boolean v0, v12, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    .line 321
    .line 322
    iput-boolean v0, v12, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    .line 323
    .line 324
    return-void
.end method
