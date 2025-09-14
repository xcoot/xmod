.class public final Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;
.super Lcom/android/server/am/BaseAppStateDurations;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 26

    .line 1
    if-eqz p2, :cond_1e

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_13

    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1d

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_12

    .line 20
    .line 21
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 40
    .line 41
    new-instance v4, Ljava/util/LinkedList;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 47
    .line 48
    invoke-direct {v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-wide v6, v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 52
    .line 53
    iget-wide v8, v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 54
    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, 0x0

    .line 57
    const/4 v15, 0x0

    .line 58
    const-wide/16 v16, 0x0

    .line 59
    .line 60
    const-wide/16 v18, 0x0

    .line 61
    .line 62
    :goto_0
    const-wide v20, 0x7fffffffffffffffL

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    cmp-long v22, v6, v20

    .line 68
    .line 69
    if-nez v22, :cond_3

    .line 70
    .line 71
    cmp-long v22, v8, v20

    .line 72
    .line 73
    if-eqz v22, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    return-object v4

    .line 77
    :cond_3
    :goto_1
    const/16 v22, 0x1

    .line 78
    .line 79
    if-nez v13, :cond_5

    .line 80
    .line 81
    if-eqz v14, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    const/4 v10, 0x0

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    :goto_2
    move/from16 v10, v22

    .line 87
    .line 88
    :goto_3
    cmp-long v23, v6, v8

    .line 89
    .line 90
    if-nez v23, :cond_c

    .line 91
    .line 92
    if-eqz v13, :cond_6

    .line 93
    .line 94
    iget-object v8, v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 95
    .line 96
    invoke-virtual {v5, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 97
    .line 98
    .line 99
    :cond_6
    if-eqz v14, :cond_7

    .line 100
    .line 101
    iget-object v8, v3, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 102
    .line 103
    invoke-virtual {v5, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 104
    .line 105
    .line 106
    :cond_7
    if-eqz v15, :cond_9

    .line 107
    .line 108
    if-nez v13, :cond_8

    .line 109
    .line 110
    if-eqz v14, :cond_9

    .line 111
    .line 112
    :cond_8
    sub-long v6, v6, v18

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_9
    const-wide/16 v6, 0x0

    .line 116
    .line 117
    :goto_4
    add-long v16, v16, v6

    .line 118
    .line 119
    xor-int/lit8 v13, v13, 0x1

    .line 120
    .line 121
    xor-int/lit8 v14, v14, 0x1

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_a

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    check-cast v6, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 134
    .line 135
    iget-wide v7, v6, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_a
    move-object v6, v2

    .line 139
    move-wide/from16 v7, v20

    .line 140
    .line 141
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-eqz v9, :cond_b

    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 152
    .line 153
    iget-wide v11, v3, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 154
    .line 155
    move-wide/from16 v20, v11

    .line 156
    .line 157
    :cond_b
    move-wide/from16 v24, v7

    .line 158
    .line 159
    :goto_6
    move-wide/from16 v8, v20

    .line 160
    .line 161
    move-wide/from16 v20, v24

    .line 162
    .line 163
    goto :goto_a

    .line 164
    :cond_c
    if-gez v23, :cond_10

    .line 165
    .line 166
    if-eqz v13, :cond_d

    .line 167
    .line 168
    iget-object v11, v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 169
    .line 170
    invoke-virtual {v5, v11}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 171
    .line 172
    .line 173
    :cond_d
    if-eqz v15, :cond_e

    .line 174
    .line 175
    if-eqz v13, :cond_e

    .line 176
    .line 177
    sub-long v6, v6, v18

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_e
    const-wide/16 v6, 0x0

    .line 181
    .line 182
    :goto_7
    add-long v16, v16, v6

    .line 183
    .line 184
    xor-int/lit8 v13, v13, 0x1

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_f

    .line 191
    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    check-cast v6, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 197
    .line 198
    iget-wide v11, v6, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 199
    .line 200
    move-wide/from16 v20, v11

    .line 201
    .line 202
    goto :goto_a

    .line 203
    :cond_f
    move-object v6, v2

    .line 204
    goto :goto_a

    .line 205
    :cond_10
    if-eqz v14, :cond_11

    .line 206
    .line 207
    iget-object v11, v3, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 208
    .line 209
    invoke-virtual {v5, v11}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 210
    .line 211
    .line 212
    :cond_11
    if-eqz v15, :cond_12

    .line 213
    .line 214
    if-eqz v14, :cond_12

    .line 215
    .line 216
    sub-long v8, v8, v18

    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_12
    const-wide/16 v8, 0x0

    .line 220
    .line 221
    :goto_8
    add-long v16, v16, v8

    .line 222
    .line 223
    xor-int/lit8 v14, v14, 0x1

    .line 224
    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-eqz v8, :cond_13

    .line 230
    .line 231
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    check-cast v8, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 236
    .line 237
    iget-wide v11, v8, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 238
    .line 239
    move-wide/from16 v20, v11

    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_13
    move-object v8, v3

    .line 243
    :goto_9
    move-wide/from16 v24, v6

    .line 244
    .line 245
    move-object v6, v2

    .line 246
    move-object v2, v3

    .line 247
    move-object v3, v8

    .line 248
    goto :goto_6

    .line 249
    :goto_a
    if-eqz v13, :cond_14

    .line 250
    .line 251
    if-eqz v14, :cond_14

    .line 252
    .line 253
    move/from16 v15, v22

    .line 254
    .line 255
    goto :goto_b

    .line 256
    :cond_14
    const/4 v15, 0x0

    .line 257
    :goto_b
    if-nez v13, :cond_15

    .line 258
    .line 259
    if-eqz v14, :cond_16

    .line 260
    .line 261
    :cond_15
    iget-wide v11, v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 262
    .line 263
    move-wide/from16 v18, v11

    .line 264
    .line 265
    :cond_16
    if-nez v13, :cond_18

    .line 266
    .line 267
    if-eqz v14, :cond_17

    .line 268
    .line 269
    goto :goto_c

    .line 270
    :cond_17
    const/4 v7, 0x0

    .line 271
    goto :goto_d

    .line 272
    :cond_18
    :goto_c
    move/from16 v7, v22

    .line 273
    .line 274
    :goto_d
    if-eq v10, v7, :cond_1c

    .line 275
    .line 276
    invoke-virtual {v2}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->clone()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    check-cast v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 281
    .line 282
    if-eqz v10, :cond_1b

    .line 283
    .line 284
    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    check-cast v7, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 289
    .line 290
    iget-wide v10, v7, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 291
    .line 292
    move-object/from16 p1, v0

    .line 293
    .line 294
    move-object v12, v1

    .line 295
    iget-wide v0, v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 296
    .line 297
    sub-long/2addr v0, v10

    .line 298
    add-long v10, v0, v16

    .line 299
    .line 300
    const-wide/16 v22, 0x0

    .line 301
    .line 302
    cmp-long v16, v10, v22

    .line 303
    .line 304
    if-eqz v16, :cond_19

    .line 305
    .line 306
    long-to-double v0, v0

    .line 307
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 308
    .line 309
    mul-double v0, v0, v16

    .line 310
    .line 311
    long-to-double v10, v10

    .line 312
    div-double/2addr v0, v10

    .line 313
    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scaleInternal(D)V

    .line 314
    .line 315
    .line 316
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 317
    .line 318
    invoke-direct {v0, v5}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 319
    .line 320
    .line 321
    iput-object v7, v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 322
    .line 323
    iput-object v2, v7, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 324
    .line 325
    iput-object v0, v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 326
    .line 327
    goto :goto_e

    .line 328
    :cond_19
    sget-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 329
    .line 330
    iput-object v7, v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 331
    .line 332
    iput-object v2, v7, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mPeer:Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 333
    .line 334
    iput-object v0, v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 335
    .line 336
    :goto_e
    sget-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 337
    .line 338
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 339
    .line 340
    iget-object v7, v5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 341
    .line 342
    array-length v10, v1

    .line 343
    const/4 v11, 0x0

    .line 344
    invoke-static {v1, v11, v7, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    .line 346
    .line 347
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 348
    .line 349
    if-eqz v1, :cond_1a

    .line 350
    .line 351
    array-length v1, v1

    .line 352
    new-array v1, v1, [D

    .line 353
    .line 354
    iput-object v1, v5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 355
    .line 356
    iget-object v0, v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 357
    .line 358
    array-length v7, v0

    .line 359
    invoke-static {v0, v11, v1, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    .line 361
    .line 362
    goto :goto_f

    .line 363
    :cond_1a
    const/4 v0, 0x0

    .line 364
    iput-object v0, v5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 365
    .line 366
    :goto_f
    move-wide/from16 v16, v22

    .line 367
    .line 368
    goto :goto_10

    .line 369
    :cond_1b
    move-object/from16 p1, v0

    .line 370
    .line 371
    move-object v12, v1

    .line 372
    const/4 v11, 0x0

    .line 373
    const-wide/16 v22, 0x0

    .line 374
    .line 375
    :goto_10
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    goto :goto_11

    .line 379
    :cond_1c
    move-object/from16 p1, v0

    .line 380
    .line 381
    move-object v12, v1

    .line 382
    const/4 v11, 0x0

    .line 383
    const-wide/16 v22, 0x0

    .line 384
    .line 385
    :goto_11
    move-object/from16 v0, p1

    .line 386
    .line 387
    move-object v2, v6

    .line 388
    move-object v1, v12

    .line 389
    move-wide/from16 v6, v20

    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_1d
    :goto_12
    invoke-virtual/range {p2 .. p2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    check-cast v0, Ljava/util/LinkedList;

    .line 398
    .line 399
    return-object v0

    .line 400
    :cond_1e
    :goto_13
    return-object p1
.end method

.method public final addEvent(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;I)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v6, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, v6

    .line 7
    move v1, p1

    .line 8
    move-wide v2, p2

    .line 9
    move-object v4, p4

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;-><init>(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v6, p5}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 18
    .line 19
    aget-object v0, v0, p5

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 28
    .line 29
    :goto_0
    move-object v6, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    if-eqz v6, :cond_3

    .line 34
    .line 35
    iget-boolean v0, v6, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    new-instance v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 41
    .line 42
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 46
    .line 47
    invoke-direct {v1, p4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 48
    .line 49
    .line 50
    iget-object p4, v6, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 51
    .line 52
    invoke-virtual {v1, p4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 53
    .line 54
    .line 55
    new-instance v5, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 56
    .line 57
    invoke-direct {v5, v1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 58
    .line 59
    .line 60
    move-object v1, v0

    .line 61
    move v2, p1

    .line 62
    move-wide v3, p2

    .line 63
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;-><init>(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_2
    return-void
.end method

.method public final getBatteryUsageSince(IJJ)Landroid/util/Pair;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    if-ge v1, v3, :cond_1

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    shl-int/2addr v3, v1

    .line 14
    and-int/2addr v3, p1

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;->add(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-eqz v0, :cond_7

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_2

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_2
    new-instance p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v0, 0x0

    .line 45
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;

    .line 56
    .line 57
    iget-wide v1, v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 58
    .line 59
    cmp-long v3, v1, p2

    .line 60
    .line 61
    if-ltz v3, :cond_3

    .line 62
    .line 63
    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-static {p4, p5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->getBatteryUsage(JJ)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 77
    .line 78
    .line 79
    iget-wide v1, v0, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;->mTimestamp:J

    .line 80
    .line 81
    cmp-long v1, p4, v1

    .line 82
    .line 83
    if-gtz v1, :cond_3

    .line 84
    .line 85
    :cond_5
    new-instance p1, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 86
    .line 87
    invoke-direct {p1, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 88
    .line 89
    .line 90
    iget-boolean p0, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mIsStart:Z

    .line 91
    .line 92
    if-eqz p0, :cond_6

    .line 93
    .line 94
    iget-object p0, v0, Lcom/android/server/am/AppBatteryExemptionTracker$UidStateEventWithBattery;->mBatteryUsage:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_6
    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 98
    .line 99
    :goto_2
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    goto :goto_4

    .line 104
    :cond_7
    :goto_3
    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 105
    .line 106
    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    :goto_4
    return-object p0
.end method
