.class public final Lcom/android/server/battery/batteryInfo/AsocData;
.super Lcom/android/server/battery/batteryInfo/BaseData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final updateAndSet()V
    .locals 12

    .line 1
    const-string v0, "/sys/class/power_supply/battery/fg_asoc"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/battery/BattUtils;->readNodeAsLong$1(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-string v3, "[updateAndSet]asocFromDriver:"

    .line 8
    .line 9
    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    move v5, v3

    .line 20
    :goto_0
    iget v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    .line 21
    .line 22
    if-ge v5, v6, :cond_5

    .line 23
    .line 24
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v6, [Ljava/lang/Long;

    .line 27
    .line 28
    iget-object v7, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v7}, Lcom/android/server/battery/BattUtils;->readNodeAsLong$1(Ljava/lang/String;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    aput-object v7, v6, v5

    .line 45
    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v7, "[updateAndSet]currentValue:"

    .line 49
    .line 50
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v7, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v7, [Ljava/lang/Long;

    .line 56
    .line 57
    aget-object v7, v7, v5

    .line 58
    .line 59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v6, [Ljava/lang/Long;

    .line 72
    .line 73
    aget-object v6, v6, v5

    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v6

    .line 79
    const-wide/16 v8, 0x0

    .line 80
    .line 81
    cmp-long v6, v6, v8

    .line 82
    .line 83
    const-string v7, "[updateAndSet]Authentification false => skip writing asoc_"

    .line 84
    .line 85
    if-gez v6, :cond_2

    .line 86
    .line 87
    cmp-long v6, v1, v8

    .line 88
    .line 89
    if-gez v6, :cond_0

    .line 90
    .line 91
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v6, [Ljava/lang/Long;

    .line 94
    .line 95
    const-wide/16 v10, -0x1

    .line 96
    .line 97
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    aput-object v10, v6, v5

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_0
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v6, [Ljava/lang/Long;

    .line 107
    .line 108
    const-wide/16 v10, 0x64

    .line 109
    .line 110
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    aput-object v10, v6, v5

    .line 115
    .line 116
    :goto_1
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    check-cast v6, Ljava/lang/String;

    .line 123
    .line 124
    iget-object v10, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v10, [Ljava/lang/Long;

    .line 127
    .line 128
    aget-object v10, v10, v5

    .line 129
    .line 130
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 131
    .line 132
    .line 133
    move-result-wide v10

    .line 134
    invoke-static {v10, v11, v6}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-nez v6, :cond_2

    .line 144
    .line 145
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 146
    .line 147
    aget-boolean v6, v6, v5

    .line 148
    .line 149
    if-eqz v6, :cond_1

    .line 150
    .line 151
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    check-cast v6, Ljava/lang/String;

    .line 158
    .line 159
    iget-object v10, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v10, [Ljava/lang/Long;

    .line 162
    .line 163
    aget-object v10, v10, v5

    .line 164
    .line 165
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 166
    .line 167
    .line 168
    move-result-wide v10

    .line 169
    invoke-static {v10, v11, v6}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_1
    invoke-static {v5, v7, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_2
    :goto_2
    cmp-long v6, v1, v8

    .line 177
    .line 178
    if-ltz v6, :cond_4

    .line 179
    .line 180
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v6, [Ljava/lang/Long;

    .line 183
    .line 184
    aget-object v6, v6, v5

    .line 185
    .line 186
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 187
    .line 188
    .line 189
    move-result-wide v8

    .line 190
    cmp-long v6, v1, v8

    .line 191
    .line 192
    if-gez v6, :cond_4

    .line 193
    .line 194
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v6, [Ljava/lang/Long;

    .line 197
    .line 198
    aget-object v6, v6, v5

    .line 199
    .line 200
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 201
    .line 202
    .line 203
    move-result-wide v8

    .line 204
    sub-long/2addr v8, v1

    .line 205
    const-wide/16 v10, 0xa

    .line 206
    .line 207
    cmp-long v6, v8, v10

    .line 208
    .line 209
    if-gez v6, :cond_4

    .line 210
    .line 211
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v6, [Ljava/lang/Long;

    .line 214
    .line 215
    aget-object v8, v6, v5

    .line 216
    .line 217
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 218
    .line 219
    .line 220
    move-result-wide v8

    .line 221
    const-wide/16 v10, 0x1

    .line 222
    .line 223
    sub-long/2addr v8, v10

    .line 224
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    aput-object v8, v6, v5

    .line 229
    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v8, "[updateAndSet]updated asocValue:"

    .line 233
    .line 234
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-object v8, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v8, [Ljava/lang/Long;

    .line 240
    .line 241
    aget-object v8, v8, v5

    .line 242
    .line 243
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    check-cast v6, Ljava/lang/String;

    .line 260
    .line 261
    iget-object v8, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v8, [Ljava/lang/Long;

    .line 264
    .line 265
    aget-object v8, v8, v5

    .line 266
    .line 267
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 268
    .line 269
    .line 270
    move-result-wide v8

    .line 271
    invoke-static {v8, v9, v6}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 277
    .line 278
    .line 279
    move-result v6

    .line 280
    if-nez v6, :cond_4

    .line 281
    .line 282
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    .line 283
    .line 284
    aget-boolean v6, v6, v5

    .line 285
    .line 286
    if-eqz v6, :cond_3

    .line 287
    .line 288
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    check-cast v6, Ljava/lang/String;

    .line 295
    .line 296
    iget-object v7, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v7, [Ljava/lang/Long;

    .line 299
    .line 300
    aget-object v7, v7, v5

    .line 301
    .line 302
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 303
    .line 304
    .line 305
    move-result-wide v7

    .line 306
    invoke-static {v7, v8, v6}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_3
    invoke-static {v5, v7, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 314
    .line 315
    goto/16 :goto_0

    .line 316
    .line 317
    :cond_5
    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v1, [Ljava/lang/Long;

    .line 320
    .line 321
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    new-instance v2, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda1;

    .line 326
    .line 327
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-interface {v1}, Ljava/util/stream/LongStream;->min()Ljava/util/OptionalLong;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v1}, Ljava/util/OptionalLong;->getAsLong()J

    .line 339
    .line 340
    .line 341
    move-result-wide v1

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    const-string v6, "[updateAndSet]mCurrentValues:"

    .line 345
    .line 346
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-object v6, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 350
    .line 351
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v6, "=> minAsoc:"

    .line 359
    .line 360
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    invoke-static {v1, v2, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    .line 374
    .line 375
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    const-string v1, "[loggingHistoryInEfs]mCurrentValues[0]:"

    .line 379
    .line 380
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    .line 384
    .line 385
    check-cast p0, [Ljava/lang/Long;

    .line 386
    .line 387
    aget-object p0, p0, v3

    .line 388
    .line 389
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    return-void
.end method
