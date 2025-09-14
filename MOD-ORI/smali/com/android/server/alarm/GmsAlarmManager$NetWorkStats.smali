.class public final Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final data:Ljava/util/ArrayList;

.field public mCount:J

.field public final mLock:Ljava/lang/Object;

.field public mTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mTime:J

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/Object;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final addStartTime(J)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const-wide/32 v3, 0xa4cb800

    .line 16
    .line 17
    .line 18
    sub-long/2addr v1, v3

    .line 19
    invoke-virtual {p0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->removeLastData(J)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    monitor-exit p1

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final dump(J)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide/32 v1, 0x5265c00

    .line 4
    .line 5
    .line 6
    sub-long v3, p1, v1

    .line 7
    .line 8
    const-wide/16 v5, 0x0

    .line 9
    .line 10
    iput-wide v5, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 11
    .line 12
    iget-object v7, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v7

    .line 15
    cmp-long v8, v3, v5

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    if-gtz v8, :cond_2

    .line 19
    .line 20
    :try_start_0
    iget-object v1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-long v1, v1

    .line 27
    iput-wide v1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 28
    .line 29
    move-wide v1, v5

    .line 30
    :goto_0
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v9, v3, :cond_1

    .line 37
    .line 38
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 45
    .line 46
    iget-wide v3, v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    .line 47
    .line 48
    cmp-long v3, v3, v5

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 59
    .line 60
    iget-wide v3, v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    .line 61
    .line 62
    add-long/2addr v1, v3

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-lez v3, :cond_9

    .line 77
    .line 78
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    add-int/lit8 v4, v4, -0x1

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 91
    .line 92
    iget-wide v3, v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    .line 93
    .line 94
    cmp-long v3, v3, v5

    .line 95
    .line 96
    if-nez v3, :cond_9

    .line 97
    .line 98
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    add-int/lit8 v4, v4, -0x1

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 111
    .line 112
    iget-wide v3, v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 113
    .line 114
    sub-long v3, p1, v3

    .line 115
    .line 116
    add-long/2addr v1, v3

    .line 117
    goto/16 :goto_6

    .line 118
    .line 119
    :cond_2
    move v10, v9

    .line 120
    move-wide v8, v5

    .line 121
    :goto_2
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    const-wide/16 v12, 0x1

    .line 128
    .line 129
    if-ge v10, v11, :cond_6

    .line 130
    .line 131
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 138
    .line 139
    iget-wide v14, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    .line 140
    .line 141
    cmp-long v11, v14, v5

    .line 142
    .line 143
    if-eqz v11, :cond_5

    .line 144
    .line 145
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 152
    .line 153
    iget-wide v14, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    .line 154
    .line 155
    sub-long/2addr v14, v3

    .line 156
    cmp-long v11, v14, v5

    .line 157
    .line 158
    if-lez v11, :cond_5

    .line 159
    .line 160
    iget-wide v14, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 161
    .line 162
    add-long/2addr v14, v12

    .line 163
    iput-wide v14, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 164
    .line 165
    cmp-long v11, v8, v5

    .line 166
    .line 167
    if-nez v11, :cond_4

    .line 168
    .line 169
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 176
    .line 177
    iget-wide v11, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 178
    .line 179
    cmp-long v11, v11, v3

    .line 180
    .line 181
    if-gez v11, :cond_3

    .line 182
    .line 183
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 190
    .line 191
    iget-wide v11, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    .line 192
    .line 193
    sub-long/2addr v11, v3

    .line 194
    :goto_3
    add-long/2addr v8, v11

    .line 195
    goto :goto_4

    .line 196
    :cond_3
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 203
    .line 204
    iget-wide v11, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    .line 205
    .line 206
    iget-object v13, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    check-cast v13, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 213
    .line 214
    iget-wide v13, v13, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 215
    .line 216
    sub-long/2addr v11, v13

    .line 217
    goto :goto_3

    .line 218
    :cond_4
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 225
    .line 226
    iget-wide v11, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    .line 227
    .line 228
    add-long/2addr v8, v11

    .line 229
    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_6
    iget-object v10, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    if-lez v10, :cond_8

    .line 239
    .line 240
    iget-object v10, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 243
    .line 244
    .line 245
    move-result v11

    .line 246
    add-int/lit8 v11, v11, -0x1

    .line 247
    .line 248
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    check-cast v10, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 253
    .line 254
    iget-wide v10, v10, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    .line 255
    .line 256
    cmp-long v5, v10, v5

    .line 257
    .line 258
    if-nez v5, :cond_8

    .line 259
    .line 260
    iget-object v5, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    add-int/lit8 v6, v6, -0x1

    .line 267
    .line 268
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    check-cast v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 273
    .line 274
    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 275
    .line 276
    cmp-long v3, v5, v3

    .line 277
    .line 278
    if-gez v3, :cond_7

    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_7
    iget-object v1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    add-int/lit8 v2, v2, -0x1

    .line 288
    .line 289
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    check-cast v1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 294
    .line 295
    iget-wide v1, v1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 296
    .line 297
    sub-long v1, p1, v1

    .line 298
    .line 299
    add-long/2addr v1, v8

    .line 300
    :goto_5
    iget-wide v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 301
    .line 302
    add-long/2addr v3, v12

    .line 303
    iput-wide v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_8
    move-wide v1, v8

    .line 307
    :cond_9
    :goto_6
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    const-wide/32 v3, 0x36ee80

    .line 309
    .line 310
    .line 311
    div-long v5, v1, v3

    .line 312
    .line 313
    mul-long/2addr v3, v5

    .line 314
    sub-long v3, v1, v3

    .line 315
    .line 316
    const-wide/32 v7, 0xea60

    .line 317
    .line 318
    .line 319
    div-long/2addr v3, v7

    .line 320
    div-long/2addr v1, v7

    .line 321
    iput-wide v1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mTime:J

    .line 322
    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string/jumbo v2, "h "

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string/jumbo v2, "m("

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    iget-wide v2, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 347
    .line 348
    const-string v0, "X)"

    .line 349
    .line 350
    invoke-static {v1, v2, v3, v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    return-object v0

    .line 355
    :goto_7
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    throw v0
.end method

.method public final removeLastData(J)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-ge v4, v5, :cond_2

    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 28
    .line 29
    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    .line 30
    .line 31
    cmp-long v5, v5, v0

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    iget-object v5, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 42
    .line 43
    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    .line 44
    .line 45
    cmp-long v5, v5, p1

    .line 46
    .line 47
    if-lez v5, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_3

    .line 52
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v4, -0x1

    .line 56
    :goto_1
    move p1, v3

    .line 57
    :goto_2
    if-ge p1, v4, :cond_3

    .line 58
    .line 59
    iget-object p2, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    add-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    monitor-exit v2

    .line 68
    return-void

    .line 69
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method

.method public final setEndTime(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 29
    .line 30
    iput-wide p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    .line 31
    .line 32
    iget-wide v1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 33
    .line 34
    sub-long/2addr p1, v1

    .line 35
    iput-wide p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method
