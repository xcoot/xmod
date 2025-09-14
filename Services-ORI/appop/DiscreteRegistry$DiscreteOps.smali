.class public final Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mChainIdOffset:I

.field public mLargestChainId:I

.field public mUids:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/appop/DiscreteRegistry;


# direct methods
.method public static -$$Nest$mclearHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 41
    .line 42
    iget-object p2, p2, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_0

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public static -$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p7

    .line 4
    .line 5
    move-object/from16 v2, p9

    .line 6
    .line 7
    and-int/lit8 v4, p5, 0x1

    .line 8
    .line 9
    if-eqz v4, :cond_0

    .line 10
    .line 11
    new-instance v4, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    move/from16 v6, p6

    .line 21
    .line 22
    invoke-virtual {v0, v6}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iput-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 30
    .line 31
    :cond_0
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    add-int/lit8 v4, v4, -0x1

    .line 38
    .line 39
    :goto_0
    if-ltz v4, :cond_10

    .line 40
    .line 41
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 48
    .line 49
    iget-object v6, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    and-int/lit8 v7, p5, 0x2

    .line 62
    .line 63
    if-eqz v7, :cond_1

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    new-instance v7, Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v7, v1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iput-object v7, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 81
    .line 82
    :cond_1
    iget-object v7, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 83
    .line 84
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    add-int/lit8 v7, v7, -0x1

    .line 89
    .line 90
    move v13, v7

    .line 91
    :goto_1
    if-ltz v13, :cond_e

    .line 92
    .line 93
    iget-object v7, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 94
    .line 95
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    move-object v14, v7

    .line 100
    check-cast v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 101
    .line 102
    iget-object v7, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    move-object v15, v7

    .line 109
    check-cast v15, Ljava/lang/String;

    .line 110
    .line 111
    iget-object v7, v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 112
    .line 113
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    add-int/lit8 v7, v7, -0x1

    .line 118
    .line 119
    move v12, v7

    .line 120
    :goto_2
    if-ltz v12, :cond_c

    .line 121
    .line 122
    iget-object v7, v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 123
    .line 124
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    check-cast v7, Ljava/lang/Integer;

    .line 129
    .line 130
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    and-int/lit8 v8, p5, 0x8

    .line 135
    .line 136
    if-eqz v8, :cond_3

    .line 137
    .line 138
    invoke-static {v7}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    move-object/from16 v11, p8

    .line 143
    .line 144
    invoke-static {v11, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-nez v7, :cond_4

    .line 149
    .line 150
    iget-object v7, v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 151
    .line 152
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move/from16 p6, v4

    .line 156
    .line 157
    move/from16 v21, v6

    .line 158
    .line 159
    move v3, v12

    .line 160
    move-object/from16 v20, v15

    .line 161
    .line 162
    :cond_2
    :goto_3
    const/4 v0, -0x1

    .line 163
    goto/16 :goto_7

    .line 164
    .line 165
    :cond_3
    move-object/from16 v11, p8

    .line 166
    .line 167
    :cond_4
    iget-object v7, v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 168
    .line 169
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    move-object v10, v7

    .line 174
    check-cast v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 175
    .line 176
    iget-object v7, v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 177
    .line 178
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    check-cast v7, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v16

    .line 188
    and-int/lit8 v7, p5, 0x4

    .line 189
    .line 190
    if-eqz v7, :cond_5

    .line 191
    .line 192
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    new-instance v7, Landroid/util/ArrayMap;

    .line 196
    .line 197
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v10, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    invoke-virtual {v7, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    iput-object v7, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 208
    .line 209
    :cond_5
    iget-object v7, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 210
    .line 211
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    add-int/lit8 v7, v7, -0x1

    .line 216
    .line 217
    move v9, v7

    .line 218
    :goto_4
    if-ltz v9, :cond_b

    .line 219
    .line 220
    iget-object v7, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 221
    .line 222
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    move-object v8, v7

    .line 227
    check-cast v8, Ljava/lang/String;

    .line 228
    .line 229
    iget-object v7, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 230
    .line 231
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    check-cast v7, Ljava/util/List;

    .line 236
    .line 237
    iget-object v3, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 238
    .line 239
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    check-cast v3, Ljava/lang/String;

    .line 244
    .line 245
    sget-object v17, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteOps:[I

    .line 246
    .line 247
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    new-instance v2, Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .line 255
    .line 256
    const/16 v17, 0x0

    .line 257
    .line 258
    move/from16 p6, v4

    .line 259
    .line 260
    move/from16 v4, v17

    .line 261
    .line 262
    :goto_5
    if-ge v4, v1, :cond_9

    .line 263
    .line 264
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v17

    .line 268
    move/from16 v18, v1

    .line 269
    .line 270
    move-object/from16 v1, v17

    .line 271
    .line 272
    check-cast v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 273
    .line 274
    move-object/from16 v17, v7

    .line 275
    .line 276
    iget v7, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 277
    .line 278
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    move-object/from16 v0, p11

    .line 283
    .line 284
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v7

    .line 288
    move-object/from16 v19, v7

    .line 289
    .line 290
    check-cast v19, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    .line 291
    .line 292
    if-eqz v19, :cond_6

    .line 293
    .line 294
    move-object/from16 v7, v19

    .line 295
    .line 296
    move-object v0, v8

    .line 297
    move-object v8, v15

    .line 298
    move-object/from16 v20, v15

    .line 299
    .line 300
    move v15, v9

    .line 301
    move v9, v6

    .line 302
    move/from16 v21, v6

    .line 303
    .line 304
    move-object v6, v10

    .line 305
    move-object v10, v3

    .line 306
    move/from16 v11, v16

    .line 307
    .line 308
    move-object/from16 v22, v3

    .line 309
    .line 310
    move v3, v12

    .line 311
    move-object v12, v1

    .line 312
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    if-nez v7, :cond_7

    .line 317
    .line 318
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    if-eqz v7, :cond_7

    .line 323
    .line 324
    iget v7, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 325
    .line 326
    const/4 v8, -0x1

    .line 327
    if-eq v7, v8, :cond_7

    .line 328
    .line 329
    goto :goto_6

    .line 330
    :cond_6
    move-object/from16 v22, v3

    .line 331
    .line 332
    move/from16 v21, v6

    .line 333
    .line 334
    move-object v0, v8

    .line 335
    move-object v6, v10

    .line 336
    move v3, v12

    .line 337
    move-object/from16 v20, v15

    .line 338
    .line 339
    move v15, v9

    .line 340
    :cond_7
    iget v7, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 341
    .line 342
    and-int v7, v7, p10

    .line 343
    .line 344
    if-eqz v7, :cond_8

    .line 345
    .line 346
    iget-wide v7, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 347
    .line 348
    iget-wide v9, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 349
    .line 350
    add-long/2addr v7, v9

    .line 351
    cmp-long v7, v7, p1

    .line 352
    .line 353
    if-lez v7, :cond_8

    .line 354
    .line 355
    cmp-long v7, v9, p3

    .line 356
    .line 357
    if-gez v7, :cond_8

    .line 358
    .line 359
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 363
    .line 364
    move-object/from16 v11, p8

    .line 365
    .line 366
    move-object v8, v0

    .line 367
    move v12, v3

    .line 368
    move-object v10, v6

    .line 369
    move v9, v15

    .line 370
    move-object/from16 v7, v17

    .line 371
    .line 372
    move/from16 v1, v18

    .line 373
    .line 374
    move-object/from16 v15, v20

    .line 375
    .line 376
    move/from16 v6, v21

    .line 377
    .line 378
    move-object/from16 v3, v22

    .line 379
    .line 380
    move-object/from16 v0, p0

    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_9
    move/from16 v21, v6

    .line 384
    .line 385
    move-object v0, v8

    .line 386
    move-object v6, v10

    .line 387
    move v3, v12

    .line 388
    move-object/from16 v20, v15

    .line 389
    .line 390
    move v15, v9

    .line 391
    iget-object v1, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 392
    .line 393
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-nez v0, :cond_a

    .line 401
    .line 402
    iget-object v0, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 403
    .line 404
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    :cond_a
    const/4 v0, -0x1

    .line 408
    add-int/lit8 v9, v15, -0x1

    .line 409
    .line 410
    move-object/from16 v0, p0

    .line 411
    .line 412
    move/from16 v4, p6

    .line 413
    .line 414
    move-object/from16 v1, p7

    .line 415
    .line 416
    move-object/from16 v11, p8

    .line 417
    .line 418
    move-object/from16 v2, p9

    .line 419
    .line 420
    move v12, v3

    .line 421
    move-object v10, v6

    .line 422
    move-object/from16 v15, v20

    .line 423
    .line 424
    move/from16 v6, v21

    .line 425
    .line 426
    goto/16 :goto_4

    .line 427
    .line 428
    :cond_b
    move/from16 p6, v4

    .line 429
    .line 430
    move/from16 v21, v6

    .line 431
    .line 432
    move v3, v12

    .line 433
    move-object/from16 v20, v15

    .line 434
    .line 435
    iget-object v0, v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 436
    .line 437
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 442
    .line 443
    iget-object v0, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 444
    .line 445
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    if-eqz v0, :cond_2

    .line 450
    .line 451
    iget-object v0, v14, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 452
    .line 453
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    goto/16 :goto_3

    .line 457
    .line 458
    :goto_7
    add-int/lit8 v12, v3, -0x1

    .line 459
    .line 460
    move-object/from16 v0, p0

    .line 461
    .line 462
    move/from16 v4, p6

    .line 463
    .line 464
    move-object/from16 v1, p7

    .line 465
    .line 466
    move-object/from16 v2, p9

    .line 467
    .line 468
    move-object/from16 v15, v20

    .line 469
    .line 470
    move/from16 v6, v21

    .line 471
    .line 472
    goto/16 :goto_2

    .line 473
    .line 474
    :cond_c
    move/from16 p6, v4

    .line 475
    .line 476
    move/from16 v21, v6

    .line 477
    .line 478
    iget-object v0, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 479
    .line 480
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 485
    .line 486
    iget-object v0, v0, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 487
    .line 488
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-eqz v0, :cond_d

    .line 493
    .line 494
    iget-object v0, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 495
    .line 496
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    :cond_d
    const/4 v0, -0x1

    .line 500
    add-int/2addr v13, v0

    .line 501
    move-object/from16 v0, p0

    .line 502
    .line 503
    move/from16 v4, p6

    .line 504
    .line 505
    move-object/from16 v1, p7

    .line 506
    .line 507
    move-object/from16 v2, p9

    .line 508
    .line 509
    move/from16 v6, v21

    .line 510
    .line 511
    goto/16 :goto_1

    .line 512
    .line 513
    :cond_e
    move/from16 p6, v4

    .line 514
    .line 515
    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 516
    .line 517
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    check-cast v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 522
    .line 523
    iget-object v1, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 524
    .line 525
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    if-eqz v1, :cond_f

    .line 530
    .line 531
    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 532
    .line 533
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    :cond_f
    const/4 v1, -0x1

    .line 537
    add-int/2addr v4, v1

    .line 538
    move-object/from16 v1, p7

    .line 539
    .line 540
    move-object/from16 v2, p9

    .line 541
    .line 542
    goto/16 :goto_0

    .line 543
    .line 544
    :cond_10
    return-void
.end method

.method public static -$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;J)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v1, :cond_4

    .line 11
    .line 12
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 19
    .line 20
    iget-object v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/4 v6, 0x0

    .line 27
    :goto_1
    if-ge v6, v5, :cond_3

    .line 28
    .line 29
    iget-object v7, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    check-cast v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 36
    .line 37
    iget-object v8, v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    const/4 v9, 0x0

    .line 44
    :goto_2
    if-ge v9, v8, :cond_2

    .line 45
    .line 46
    iget-object v10, v7, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    check-cast v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 53
    .line 54
    iget-object v11, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    const/4 v12, 0x0

    .line 61
    :goto_3
    if-ge v12, v11, :cond_1

    .line 62
    .line 63
    iget-object v13, v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    check-cast v13, Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v14

    .line 75
    const/4 v15, 0x0

    .line 76
    :goto_4
    if-ge v15, v14, :cond_0

    .line 77
    .line 78
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v16

    .line 82
    move-object/from16 v2, v16

    .line 83
    .line 84
    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 85
    .line 86
    new-instance v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 87
    .line 88
    move-object/from16 v16, v4

    .line 89
    .line 90
    move/from16 v26, v5

    .line 91
    .line 92
    iget-wide v4, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 93
    .line 94
    sub-long v20, v4, p1

    .line 95
    .line 96
    iget v4, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 97
    .line 98
    iget v5, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 99
    .line 100
    move-object/from16 v27, v7

    .line 101
    .line 102
    move/from16 v28, v8

    .line 103
    .line 104
    iget-wide v7, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 105
    .line 106
    move/from16 v29, v1

    .line 107
    .line 108
    iget v1, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    .line 109
    .line 110
    iget v2, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 111
    .line 112
    move-object/from16 v17, v0

    .line 113
    .line 114
    move/from16 v18, v1

    .line 115
    .line 116
    move/from16 v19, v2

    .line 117
    .line 118
    move-wide/from16 v22, v7

    .line 119
    .line 120
    move/from16 v24, v4

    .line 121
    .line 122
    move/from16 v25, v5

    .line 123
    .line 124
    invoke-direct/range {v17 .. v25}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;-><init>(IIJJII)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v13, v15, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    add-int/lit8 v15, v15, 0x1

    .line 131
    .line 132
    move-object/from16 v0, p0

    .line 133
    .line 134
    move-object/from16 v4, v16

    .line 135
    .line 136
    move/from16 v5, v26

    .line 137
    .line 138
    move-object/from16 v7, v27

    .line 139
    .line 140
    move/from16 v8, v28

    .line 141
    .line 142
    move/from16 v1, v29

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_0
    move/from16 v29, v1

    .line 146
    .line 147
    move-object/from16 v16, v4

    .line 148
    .line 149
    move/from16 v26, v5

    .line 150
    .line 151
    move-object/from16 v27, v7

    .line 152
    .line 153
    move/from16 v28, v8

    .line 154
    .line 155
    add-int/lit8 v12, v12, 0x1

    .line 156
    .line 157
    move-object/from16 v0, p0

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_1
    move/from16 v29, v1

    .line 161
    .line 162
    move-object/from16 v16, v4

    .line 163
    .line 164
    move/from16 v26, v5

    .line 165
    .line 166
    move-object/from16 v27, v7

    .line 167
    .line 168
    move/from16 v28, v8

    .line 169
    .line 170
    add-int/lit8 v9, v9, 0x1

    .line 171
    .line 172
    move-object/from16 v0, p0

    .line 173
    .line 174
    goto/16 :goto_2

    .line 175
    .line 176
    :cond_2
    move/from16 v29, v1

    .line 177
    .line 178
    move-object/from16 v16, v4

    .line 179
    .line 180
    move/from16 v26, v5

    .line 181
    .line 182
    add-int/lit8 v6, v6, 0x1

    .line 183
    .line 184
    move-object/from16 v0, p0

    .line 185
    .line 186
    goto/16 :goto_1

    .line 187
    .line 188
    :cond_3
    move/from16 v29, v1

    .line 189
    .line 190
    add-int/lit8 v3, v3, 0x1

    .line 191
    .line 192
    move-object/from16 v0, p0

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_4
    return-void
.end method

.method public static -$$Nest$mreadFromFile(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/File;J)V
    .locals 7

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const-string v1, "Dropping unsupported discrete history "

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 6
    .line 7
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    .line 9
    .line 10
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string/jumbo v4, "h"

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo v4, "v"

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-interface {v3, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v6, 0x1

    .line 29
    if-ne v4, v6, :cond_2

    .line 30
    .line 31
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :cond_0
    :goto_0
    invoke-static {v3, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    const-string/jumbo v4, "u"

    .line 42
    .line 43
    .line 44
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    const-string/jumbo v4, "ui"

    .line 55
    .line 56
    .line 57
    const/4 v6, -0x1

    .line 58
    invoke-interface {v3, v5, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {p0, v4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4, v3, p2, p3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_2
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    :goto_2
    :try_start_4
    sget-object p2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteOps:[I

    .line 95
    .line 96
    const-string p2, "DiscreteRegistry"

    .line 97
    .line 98
    new-instance p3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v1, "Failed to read file "

    .line 104
    .line 105
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catchall_1
    move-exception p0

    .line 148
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 149
    .line 150
    .line 151
    :catch_0
    throw p0

    .line 152
    :catch_1
    :goto_3
    return-void
.end method

.method public static -$$Nest$mwriteToStream(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/FileOutputStream;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v2, "h"

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 20
    .line 21
    .line 22
    const-string/jumbo v4, "v"

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v4, "lc"

    .line 30
    .line 31
    .line 32
    iget v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 33
    .line 34
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    .line 36
    .line 37
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v6, 0x0

    .line 44
    :goto_0
    if-ge v6, v4, :cond_8

    .line 45
    .line 46
    const-string/jumbo v7, "u"

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v3, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    .line 51
    .line 52
    iget-object v8, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    check-cast v8, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    const-string/jumbo v9, "ui"

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, v3, v9, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    .line 69
    .line 70
    iget-object v8, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    check-cast v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 77
    .line 78
    iget-object v9, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    const/4 v10, 0x0

    .line 85
    :goto_1
    if-ge v10, v9, :cond_7

    .line 86
    .line 87
    const-string/jumbo v11, "p"

    .line 88
    .line 89
    .line 90
    invoke-interface {v1, v3, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    .line 92
    .line 93
    iget-object v12, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 94
    .line 95
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v12

    .line 99
    check-cast v12, Ljava/lang/String;

    .line 100
    .line 101
    const-string/jumbo v13, "pn"

    .line 102
    .line 103
    .line 104
    invoke-interface {v1, v3, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    .line 106
    .line 107
    iget-object v12, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 108
    .line 109
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    check-cast v12, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 114
    .line 115
    iget-object v13, v12, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 116
    .line 117
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    const/4 v14, 0x0

    .line 122
    :goto_2
    if-ge v14, v13, :cond_6

    .line 123
    .line 124
    const-string/jumbo v15, "o"

    .line 125
    .line 126
    .line 127
    invoke-interface {v1, v3, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    .line 129
    .line 130
    iget-object v5, v12, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 131
    .line 132
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    const-string/jumbo v0, "op"

    .line 143
    .line 144
    .line 145
    invoke-interface {v1, v3, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    .line 147
    .line 148
    iget-object v0, v12, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 149
    .line 150
    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 155
    .line 156
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 157
    .line 158
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    const/4 v3, 0x0

    .line 163
    :goto_3
    if-ge v3, v5, :cond_5

    .line 164
    .line 165
    move/from16 v17, v4

    .line 166
    .line 167
    const-string v4, "a"

    .line 168
    .line 169
    move/from16 v18, v5

    .line 170
    .line 171
    const/4 v5, 0x0

    .line 172
    invoke-interface {v1, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    .line 174
    .line 175
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 176
    .line 177
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    check-cast v5, Ljava/lang/String;

    .line 182
    .line 183
    if-eqz v5, :cond_0

    .line 184
    .line 185
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 186
    .line 187
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    check-cast v5, Ljava/lang/String;

    .line 192
    .line 193
    move-object/from16 v19, v8

    .line 194
    .line 195
    const-string v8, "at"

    .line 196
    .line 197
    move/from16 v20, v9

    .line 198
    .line 199
    const/4 v9, 0x0

    .line 200
    invoke-interface {v1, v9, v8, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_0
    move-object/from16 v19, v8

    .line 205
    .line 206
    move/from16 v20, v9

    .line 207
    .line 208
    const/4 v9, 0x0

    .line 209
    :goto_4
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 210
    .line 211
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    check-cast v5, Ljava/util/List;

    .line 216
    .line 217
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    const/4 v9, 0x0

    .line 222
    :goto_5
    if-ge v9, v8, :cond_4

    .line 223
    .line 224
    move-object/from16 v21, v0

    .line 225
    .line 226
    const-string/jumbo v0, "e"

    .line 227
    .line 228
    .line 229
    move/from16 v22, v8

    .line 230
    .line 231
    const/4 v8, 0x0

    .line 232
    invoke-interface {v1, v8, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    .line 234
    .line 235
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v16

    .line 239
    move-object/from16 v8, v16

    .line 240
    .line 241
    check-cast v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 242
    .line 243
    move-object/from16 v16, v12

    .line 244
    .line 245
    move/from16 v23, v13

    .line 246
    .line 247
    iget-wide v12, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 248
    .line 249
    move-object/from16 v24, v5

    .line 250
    .line 251
    const-string/jumbo v5, "nt"

    .line 252
    .line 253
    .line 254
    move-object/from16 v25, v2

    .line 255
    .line 256
    const/4 v2, 0x0

    .line 257
    invoke-interface {v1, v2, v5, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    .line 259
    .line 260
    const-wide/16 v12, -0x1

    .line 261
    .line 262
    move v5, v3

    .line 263
    iget-wide v2, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 264
    .line 265
    cmp-long v12, v2, v12

    .line 266
    .line 267
    if-eqz v12, :cond_1

    .line 268
    .line 269
    const-string/jumbo v12, "nd"

    .line 270
    .line 271
    .line 272
    const/4 v13, 0x0

    .line 273
    invoke-interface {v1, v13, v12, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_1
    const/4 v13, 0x0

    .line 278
    :goto_6
    iget v2, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 279
    .line 280
    if-eqz v2, :cond_2

    .line 281
    .line 282
    const-string v3, "af"

    .line 283
    .line 284
    invoke-interface {v1, v13, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    .line 286
    .line 287
    :cond_2
    const/4 v2, -0x1

    .line 288
    iget v3, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 289
    .line 290
    if-eq v3, v2, :cond_3

    .line 291
    .line 292
    const-string/jumbo v2, "ci"

    .line 293
    .line 294
    .line 295
    invoke-interface {v1, v13, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    .line 297
    .line 298
    :cond_3
    const-string/jumbo v2, "us"

    .line 299
    .line 300
    .line 301
    iget v3, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    .line 302
    .line 303
    invoke-interface {v1, v13, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 304
    .line 305
    .line 306
    const-string/jumbo v2, "f"

    .line 307
    .line 308
    .line 309
    iget v3, v8, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 310
    .line 311
    invoke-interface {v1, v13, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 312
    .line 313
    .line 314
    invoke-interface {v1, v13, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    .line 316
    .line 317
    add-int/lit8 v9, v9, 0x1

    .line 318
    .line 319
    move v3, v5

    .line 320
    move-object/from16 v12, v16

    .line 321
    .line 322
    move-object/from16 v0, v21

    .line 323
    .line 324
    move/from16 v8, v22

    .line 325
    .line 326
    move/from16 v13, v23

    .line 327
    .line 328
    move-object/from16 v5, v24

    .line 329
    .line 330
    move-object/from16 v2, v25

    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_4
    move-object/from16 v21, v0

    .line 334
    .line 335
    move-object/from16 v25, v2

    .line 336
    .line 337
    move v5, v3

    .line 338
    move-object/from16 v16, v12

    .line 339
    .line 340
    move/from16 v23, v13

    .line 341
    .line 342
    const/4 v13, 0x0

    .line 343
    invoke-interface {v1, v13, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    .line 345
    .line 346
    add-int/lit8 v3, v5, 0x1

    .line 347
    .line 348
    move/from16 v4, v17

    .line 349
    .line 350
    move/from16 v5, v18

    .line 351
    .line 352
    move-object/from16 v8, v19

    .line 353
    .line 354
    move/from16 v9, v20

    .line 355
    .line 356
    move/from16 v13, v23

    .line 357
    .line 358
    goto/16 :goto_3

    .line 359
    .line 360
    :cond_5
    move-object/from16 v25, v2

    .line 361
    .line 362
    move/from16 v17, v4

    .line 363
    .line 364
    move-object/from16 v19, v8

    .line 365
    .line 366
    move/from16 v20, v9

    .line 367
    .line 368
    move-object/from16 v16, v12

    .line 369
    .line 370
    move/from16 v23, v13

    .line 371
    .line 372
    const/4 v13, 0x0

    .line 373
    invoke-interface {v1, v13, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    .line 375
    .line 376
    add-int/lit8 v14, v14, 0x1

    .line 377
    .line 378
    move-object/from16 v0, p0

    .line 379
    .line 380
    move-object v3, v13

    .line 381
    move/from16 v13, v23

    .line 382
    .line 383
    goto/16 :goto_2

    .line 384
    .line 385
    :cond_6
    move-object/from16 v25, v2

    .line 386
    .line 387
    move-object v13, v3

    .line 388
    move/from16 v17, v4

    .line 389
    .line 390
    move-object/from16 v19, v8

    .line 391
    .line 392
    move/from16 v20, v9

    .line 393
    .line 394
    invoke-interface {v1, v13, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    .line 396
    .line 397
    add-int/lit8 v10, v10, 0x1

    .line 398
    .line 399
    move-object/from16 v0, p0

    .line 400
    .line 401
    goto/16 :goto_1

    .line 402
    .line 403
    :cond_7
    move-object/from16 v25, v2

    .line 404
    .line 405
    move-object v13, v3

    .line 406
    move/from16 v17, v4

    .line 407
    .line 408
    invoke-interface {v1, v13, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 409
    .line 410
    .line 411
    add-int/lit8 v6, v6, 0x1

    .line 412
    .line 413
    move-object/from16 v0, p0

    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :cond_8
    move-object v0, v2

    .line 418
    move-object v13, v3

    .line 419
    invoke-interface {v1, v13, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    .line 421
    .line 422
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 423
    .line 424
    .line 425
    return-void
.end method

.method public constructor <init>(Lcom/android/server/appop/DiscreteRegistry;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 12
    .line 13
    iput p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mChainIdOffset:I

    .line 14
    .line 15
    iput p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final addDiscreteAccess(IIIIIIJJLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p6

    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    if-eq v1, v2, :cond_2

    .line 6
    .line 7
    iget v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mChainIdOffset:I

    .line 8
    .line 9
    add-int/2addr v2, v1

    .line 10
    iget v3, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 11
    .line 12
    if-le v2, v3, :cond_0

    .line 13
    .line 14
    iput v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-gez v2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 21
    .line 22
    mul-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    iput v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mChainIdOffset:I

    .line 25
    .line 26
    :cond_1
    :goto_0
    move v1, p2

    .line 27
    move v11, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    move v11, v1

    .line 30
    move v1, p2

    .line 31
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object/from16 v1, p11

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move v1, p1

    .line 42
    invoke-virtual {v0, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object/from16 v1, p12

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    :goto_2
    if-lez v1, :cond_3

    .line 57
    .line 58
    add-int/lit8 v2, v1, -0x1

    .line 59
    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 65
    .line 66
    iget-wide v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 67
    .line 68
    sget-wide v5, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    .line 69
    .line 70
    div-long/2addr v3, v5

    .line 71
    mul-long/2addr v3, v5

    .line 72
    div-long v7, p7, v5

    .line 73
    .line 74
    mul-long/2addr v7, v5

    .line 75
    cmp-long v3, v3, v7

    .line 76
    .line 77
    if-gez v3, :cond_4

    .line 78
    .line 79
    :cond_3
    move v5, p3

    .line 80
    move/from16 v4, p4

    .line 81
    .line 82
    move/from16 v10, p5

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_4
    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 86
    .line 87
    move v5, p3

    .line 88
    if-ne v3, v5, :cond_6

    .line 89
    .line 90
    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    .line 91
    .line 92
    move/from16 v4, p4

    .line 93
    .line 94
    if-ne v3, v4, :cond_5

    .line 95
    .line 96
    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 97
    .line 98
    move/from16 v10, p5

    .line 99
    .line 100
    if-ne v3, v10, :cond_7

    .line 101
    .line 102
    iget v3, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    .line 103
    .line 104
    if-ne v3, v11, :cond_7

    .line 105
    .line 106
    invoke-static/range {p9 .. p10}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smdiscretizeDuration(J)J

    .line 107
    .line 108
    .line 109
    move-result-wide v6

    .line 110
    iget-wide v2, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 111
    .line 112
    invoke-static {v2, v3}, Lcom/android/server/appop/DiscreteRegistry;->-$$Nest$smdiscretizeDuration(J)J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    cmp-long v2, v6, v2

    .line 117
    .line 118
    if-eqz v2, :cond_8

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_5
    :goto_3
    move/from16 v10, p5

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_6
    move/from16 v4, p4

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :goto_5
    new-instance v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 131
    .line 132
    move-object v3, v2

    .line 133
    move/from16 v4, p4

    .line 134
    .line 135
    move v5, p3

    .line 136
    move-wide/from16 v6, p7

    .line 137
    .line 138
    move-wide/from16 v8, p9

    .line 139
    .line 140
    move/from16 v10, p5

    .line 141
    .line 142
    invoke-direct/range {v3 .. v11}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;-><init>(IIJJII)V

    .line 143
    .line 144
    .line 145
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_8
    return-void
.end method

.method public final getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v0
.end method

.method public final merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 6
    .line 7
    iget v3, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 8
    .line 9
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iput v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    if-ge v4, v2, :cond_8

    .line 23
    .line 24
    iget-object v5, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget-object v6, v1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 43
    .line 44
    invoke-virtual {v0, v5}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->getOrCreateDiscreteUidOps(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget-object v7, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    const/4 v8, 0x0

    .line 55
    :goto_1
    if-ge v8, v7, :cond_7

    .line 56
    .line 57
    iget-object v9, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    check-cast v9, Ljava/lang/String;

    .line 64
    .line 65
    iget-object v10, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    check-cast v10, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 72
    .line 73
    invoke-virtual {v5, v9}, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    iget-object v11, v10, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    const/4 v12, 0x0

    .line 84
    :goto_2
    if-ge v12, v11, :cond_6

    .line 85
    .line 86
    iget-object v13, v10, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 87
    .line 88
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    check-cast v13, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    iget-object v14, v10, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 99
    .line 100
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v14

    .line 104
    check-cast v14, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 105
    .line 106
    invoke-virtual {v9, v13}, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->getOrCreateDiscreteOp(I)Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    iget-object v15, v14, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 111
    .line 112
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    const/4 v3, 0x0

    .line 117
    :goto_3
    if-ge v3, v15, :cond_5

    .line 118
    .line 119
    iget-object v0, v14, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 120
    .line 121
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/lang/String;

    .line 126
    .line 127
    iget-object v1, v14, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 128
    .line 129
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Ljava/util/List;

    .line 134
    .line 135
    move/from16 v16, v2

    .line 136
    .line 137
    invoke-virtual {v13, v0}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    move-object/from16 v17, v5

    .line 142
    .line 143
    iget-object v5, v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 144
    .line 145
    sget-object v18, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteOps:[I

    .line 146
    .line 147
    move-object/from16 v18, v6

    .line 148
    .line 149
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    move/from16 v19, v7

    .line 154
    .line 155
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    move-object/from16 v20, v9

    .line 160
    .line 161
    new-instance v9, Ljava/util/ArrayList;

    .line 162
    .line 163
    move-object/from16 v21, v10

    .line 164
    .line 165
    add-int v10, v6, v7

    .line 166
    .line 167
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .line 169
    .line 170
    move/from16 v22, v11

    .line 171
    .line 172
    const/4 v10, 0x0

    .line 173
    const/4 v11, 0x0

    .line 174
    :goto_4
    if-lt v10, v6, :cond_1

    .line 175
    .line 176
    if-ge v11, v7, :cond_0

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_0
    invoke-virtual {v5, v0, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    add-int/lit8 v3, v3, 0x1

    .line 183
    .line 184
    move-object/from16 v0, p0

    .line 185
    .line 186
    move-object/from16 v1, p1

    .line 187
    .line 188
    move/from16 v2, v16

    .line 189
    .line 190
    move-object/from16 v5, v17

    .line 191
    .line 192
    move-object/from16 v6, v18

    .line 193
    .line 194
    move/from16 v7, v19

    .line 195
    .line 196
    move-object/from16 v9, v20

    .line 197
    .line 198
    move-object/from16 v10, v21

    .line 199
    .line 200
    move/from16 v11, v22

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_1
    :goto_5
    if-ne v10, v6, :cond_2

    .line 204
    .line 205
    add-int/lit8 v23, v11, 0x1

    .line 206
    .line 207
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    check-cast v11, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 212
    .line 213
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move/from16 v11, v23

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_2
    if-ne v11, v7, :cond_3

    .line 220
    .line 221
    add-int/lit8 v23, v10, 0x1

    .line 222
    .line 223
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    check-cast v10, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 228
    .line 229
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move/from16 v10, v23

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_3
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v23

    .line 239
    move-object/from16 v24, v0

    .line 240
    .line 241
    move-object/from16 v0, v23

    .line 242
    .line 243
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 244
    .line 245
    move-object/from16 v23, v5

    .line 246
    .line 247
    move/from16 v25, v6

    .line 248
    .line 249
    iget-wide v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 250
    .line 251
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 256
    .line 257
    move-object/from16 v27, v13

    .line 258
    .line 259
    move-object/from16 v26, v14

    .line 260
    .line 261
    iget-wide v13, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 262
    .line 263
    cmp-long v0, v5, v13

    .line 264
    .line 265
    if-gez v0, :cond_4

    .line 266
    .line 267
    add-int/lit8 v0, v10, 0x1

    .line 268
    .line 269
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    check-cast v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 274
    .line 275
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move v10, v0

    .line 279
    :goto_6
    move-object/from16 v5, v23

    .line 280
    .line 281
    move-object/from16 v0, v24

    .line 282
    .line 283
    move/from16 v6, v25

    .line 284
    .line 285
    move-object/from16 v14, v26

    .line 286
    .line 287
    move-object/from16 v13, v27

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_4
    add-int/lit8 v0, v11, 0x1

    .line 291
    .line 292
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    check-cast v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 297
    .line 298
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move v11, v0

    .line 302
    goto :goto_6

    .line 303
    :cond_5
    move/from16 v16, v2

    .line 304
    .line 305
    move-object/from16 v17, v5

    .line 306
    .line 307
    move-object/from16 v18, v6

    .line 308
    .line 309
    move/from16 v19, v7

    .line 310
    .line 311
    move-object/from16 v20, v9

    .line 312
    .line 313
    move-object/from16 v21, v10

    .line 314
    .line 315
    move/from16 v22, v11

    .line 316
    .line 317
    add-int/lit8 v12, v12, 0x1

    .line 318
    .line 319
    move-object/from16 v0, p0

    .line 320
    .line 321
    move-object/from16 v1, p1

    .line 322
    .line 323
    goto/16 :goto_2

    .line 324
    .line 325
    :cond_6
    move/from16 v16, v2

    .line 326
    .line 327
    move-object/from16 v17, v5

    .line 328
    .line 329
    move-object/from16 v18, v6

    .line 330
    .line 331
    move/from16 v19, v7

    .line 332
    .line 333
    add-int/lit8 v8, v8, 0x1

    .line 334
    .line 335
    move-object/from16 v0, p0

    .line 336
    .line 337
    move-object/from16 v1, p1

    .line 338
    .line 339
    goto/16 :goto_1

    .line 340
    .line 341
    :cond_7
    move/from16 v16, v2

    .line 342
    .line 343
    add-int/lit8 v4, v4, 0x1

    .line 344
    .line 345
    move-object/from16 v0, p0

    .line 346
    .line 347
    move-object/from16 v1, p1

    .line 348
    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :cond_8
    return-void
.end method
