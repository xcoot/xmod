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

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 8
    iput-wide v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mTime:J

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/lang/Object;

    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    .line 24
    return-void
.end method


# virtual methods
.method public final addStartTime(J)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 8
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    move-result-wide v1

    .line 15
    const-wide/32 v3, 0xa4cb800

    .line 18
    sub-long/2addr v1, v3

    .line 19
    invoke-virtual {p0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->removeLastData(J)V

    .line 22
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 3
    const-wide/32 v1, 0x5265c00

    .line 6
    sub-long v3, p1, v1

    .line 8
    const-wide/16 v5, 0x0

    .line 10
    iput-wide v5, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 12
    iget-object v7, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v7

    .line 15
    cmp-long v8, v3, v5

    .line 17
    const/4 v9, 0x0

    .line 18
    if-gtz v8, :cond_2

    .line 20
    :try_start_0
    iget-object v1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 25
    move-result v1

    .line 26
    int-to-long v1, v1

    .line 27
    iput-wide v1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 29
    move-wide v1, v5

    .line 30
    :goto_0
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v3

    .line 36
    if-ge v9, v3, :cond_1

    .line 38
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 46
    iget-wide v3, v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    .line 48
    cmp-long v3, v3, v5

    .line 50
    if-eqz v3, :cond_0

    .line 52
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 60
    iget-wide v3, v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    .line 62
    add-long/2addr v1, v3

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto/16 :goto_7

    .line 67
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 75
    move-result v3

    .line 76
    if-lez v3, :cond_9

    .line 78
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 83
    move-result v4

    .line 84
    add-int/lit8 v4, v4, -0x1

    .line 86
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 92
    iget-wide v3, v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    .line 94
    cmp-long v3, v3, v5

    .line 96
    if-nez v3, :cond_9

    .line 98
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 103
    move-result v4

    .line 104
    add-int/lit8 v4, v4, -0x1

    .line 106
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 112
    iget-wide v3, v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 114
    sub-long v3, p1, v3

    .line 116
    add-long/2addr v1, v3

    .line 117
    goto/16 :goto_6

    .line 119
    :cond_2
    move v10, v9

    .line 120
    move-wide v8, v5

    .line 121
    :goto_2
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 126
    move-result v11

    .line 127
    const-wide/16 v12, 0x1

    .line 129
    if-ge v10, v11, :cond_6

    .line 131
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    move-result-object v11

    .line 137
    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 139
    iget-wide v14, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    .line 141
    cmp-long v11, v14, v5

    .line 143
    if-eqz v11, :cond_5

    .line 145
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object v11

    .line 151
    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 153
    iget-wide v14, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    .line 155
    sub-long/2addr v14, v3

    .line 156
    cmp-long v11, v14, v5

    .line 158
    if-lez v11, :cond_5

    .line 160
    iget-wide v14, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 162
    add-long/2addr v14, v12

    .line 163
    iput-wide v14, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 165
    cmp-long v11, v8, v5

    .line 167
    if-nez v11, :cond_4

    .line 169
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    move-result-object v11

    .line 175
    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 177
    iget-wide v11, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 179
    cmp-long v11, v11, v3

    .line 181
    if-gez v11, :cond_3

    .line 183
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    move-result-object v11

    .line 189
    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 191
    iget-wide v11, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

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

    .line 198
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object v11

    .line 202
    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 204
    iget-wide v11, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    .line 206
    iget-object v13, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 208
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 211
    move-result-object v13

    .line 212
    check-cast v13, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 214
    iget-wide v13, v13, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 216
    sub-long/2addr v11, v13

    .line 217
    goto :goto_3

    .line 218
    :cond_4
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 220
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 223
    move-result-object v11

    .line 224
    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 226
    iget-wide v11, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    .line 228
    add-long/2addr v8, v11

    .line 229
    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 231
    goto :goto_2

    .line 232
    :cond_6
    iget-object v10, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 234
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 237
    move-result v10

    .line 238
    if-lez v10, :cond_8

    .line 240
    iget-object v10, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 242
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 245
    move-result v11

    .line 246
    add-int/lit8 v11, v11, -0x1

    .line 248
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    move-result-object v10

    .line 252
    check-cast v10, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 254
    iget-wide v10, v10, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    .line 256
    cmp-long v5, v10, v5

    .line 258
    if-nez v5, :cond_8

    .line 260
    iget-object v5, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 262
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 265
    move-result v6

    .line 266
    add-int/lit8 v6, v6, -0x1

    .line 268
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 271
    move-result-object v5

    .line 272
    check-cast v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 274
    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 276
    cmp-long v3, v5, v3

    .line 278
    if-gez v3, :cond_7

    .line 280
    goto :goto_5

    .line 281
    :cond_7
    iget-object v1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 286
    move-result v2

    .line 287
    add-int/lit8 v2, v2, -0x1

    .line 289
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    move-result-object v1

    .line 293
    check-cast v1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 295
    iget-wide v1, v1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 297
    sub-long v1, p1, v1

    .line 299
    add-long/2addr v1, v8

    .line 300
    :goto_5
    iget-wide v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 302
    add-long/2addr v3, v12

    .line 303
    iput-wide v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

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

    .line 311
    div-long v5, v1, v3

    .line 313
    mul-long/2addr v3, v5

    .line 314
    sub-long v3, v1, v3

    .line 316
    const-wide/32 v7, 0xea60

    .line 319
    div-long/2addr v3, v7

    .line 320
    div-long/2addr v1, v7

    .line 321
    iput-wide v1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mTime:J

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    .line 325
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 331
    const-string/jumbo v2, "h "

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 340
    const-string/jumbo v2, "m("

    .line 343
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-wide v2, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    .line 348
    const-string v0, "X)"

    .line 350
    invoke-static {v1, v2, v3, v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

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

    .line 3
    cmp-long v2, p1, v0

    .line 5
    if-gez v2, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

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

    .line 15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v5

    .line 19
    if-ge v4, v5, :cond_2

    .line 21
    iget-object v5, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 29
    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    .line 31
    cmp-long v5, v5, v0

    .line 33
    if-eqz v5, :cond_1

    .line 35
    iget-object v5, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 43
    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    .line 45
    cmp-long v5, v5, p1

    .line 47
    if-lez v5, :cond_1

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

    .line 59
    iget-object p2, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 64
    add-int/lit8 p1, p1, 0x1

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

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

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

    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 24
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    .line 30
    iput-wide p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    .line 32
    iget-wide v1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    .line 34
    sub-long/2addr p1, v1

    .line 35
    iput-wide p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

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
