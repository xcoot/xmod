.class public final Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final mAutofillIds:[Landroid/view/autofill/AutofillId;

.field public final mCategoryIds:[Ljava/lang/String;

.field public final mCommitReason:I

.field public final mDetectedFieldClassifications:Ljava/util/ArrayList;

.field public final mDetectedFieldIds:Ljava/util/ArrayList;

.field public final mSaveDialogNotShowReason:I

.field public mSession:Lcom/android/server/autofill/Session;

.field public final mUserValues:[Ljava/lang/String;

.field public final mViewsSize:I


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSession:Lcom/android/server/autofill/Session;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSaveDialogNotShowReason:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mCommitReason:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mViewsSize:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mAutofillIds:[Landroid/view/autofill/AutofillId;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mUserValues:[Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mCategoryIds:[Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mDetectedFieldIds:Ljava/util/ArrayList;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mDetectedFieldClassifications:Ljava/util/ArrayList;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSession:Lcom/android/server/autofill/Session;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const-string v0, "LogFieldClassificationScoreOnResultListener"

    .line 10
    .line 11
    const-string/jumbo v1, "session is null when calling onResult()"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget v3, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSaveDialogNotShowReason:I

    .line 19
    .line 20
    iget v4, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mCommitReason:I

    .line 21
    .line 22
    iget v5, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mViewsSize:I

    .line 23
    .line 24
    iget-object v6, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mAutofillIds:[Landroid/view/autofill/AutofillId;

    .line 25
    .line 26
    iget-object v7, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mUserValues:[Ljava/lang/String;

    .line 27
    .line 28
    iget-object v8, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mCategoryIds:[Ljava/lang/String;

    .line 29
    .line 30
    iget-object v9, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mDetectedFieldIds:Ljava/util/ArrayList;

    .line 31
    .line 32
    iget-object v10, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mDetectedFieldClassifications:Ljava/util/ArrayList;

    .line 33
    .line 34
    const-string v11, "AutofillSession"

    .line 35
    .line 36
    const/4 v12, 0x0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const-string/jumbo v0, "setFieldClassificationScore(): no results"

    .line 44
    .line 45
    .line 46
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v13, v2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v13

    .line 52
    :try_start_0
    invoke-virtual {v2, v12, v12, v3, v4}, Lcom/android/server/autofill/Session;->logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 53
    .line 54
    .line 55
    monitor-exit v13

    .line 56
    :goto_0
    move-object v2, v12

    .line 57
    goto/16 :goto_a

    .line 58
    .line 59
    :catchall_0
    move-exception v0

    .line 60
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw v0

    .line 62
    :cond_2
    const-string/jumbo v13, "scores"

    .line 63
    .line 64
    .line 65
    const-class v14, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    .line 66
    .line 67
    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    check-cast v13, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    .line 72
    .line 73
    if-nez v13, :cond_3

    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v3, "No field classification score on "

    .line 78
    .line 79
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const/4 v14, 0x0

    .line 94
    const/4 v15, 0x0

    .line 95
    :goto_1
    if-ge v14, v5, :cond_e

    .line 96
    .line 97
    :try_start_1
    aget-object v15, v6, v14
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 98
    .line 99
    move/from16 v16, v5

    .line 100
    .line 101
    move-object v0, v12

    .line 102
    const/4 v12, 0x0

    .line 103
    :goto_2
    :try_start_2
    array-length v5, v7

    .line 104
    if-ge v12, v5, :cond_a

    .line 105
    .line 106
    aget-object v5, v8, v12

    .line 107
    .line 108
    move-object/from16 v17, v6

    .line 109
    .line 110
    iget-object v6, v13, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    .line 111
    .line 112
    aget-object v6, v6, v14

    .line 113
    .line 114
    aget v6, v6, v12
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    .line 116
    const/16 v18, 0x0

    .line 117
    .line 118
    cmpl-float v18, v6, v18

    .line 119
    .line 120
    move-object/from16 v19, v8

    .line 121
    .line 122
    const-string v8, " and id "

    .line 123
    .line 124
    if-lez v18, :cond_8

    .line 125
    .line 126
    if-nez v0, :cond_4

    .line 127
    .line 128
    :try_start_3
    new-instance v0, Landroid/util/ArrayMap;

    .line 129
    .line 130
    array-length v1, v7

    .line 131
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :catch_0
    move-exception v0

    .line 136
    move v15, v12

    .line 137
    goto/16 :goto_8

    .line 138
    .line 139
    :cond_4
    :goto_3
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Ljava/lang/Float;

    .line 144
    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 148
    .line 149
    .line 150
    move-result v18

    .line 151
    cmpl-float v18, v18, v6

    .line 152
    .line 153
    if-lez v18, :cond_6

    .line 154
    .line 155
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 156
    .line 157
    if-eqz v5, :cond_5

    .line 158
    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string/jumbo v8, "skipping score "

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v6, " because it\'s less than "

    .line 174
    .line 175
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :cond_5
    move-object/from16 v18, v7

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_6
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 192
    .line 193
    if-eqz v1, :cond_7

    .line 194
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    move-object/from16 v18, v7

    .line 201
    .line 202
    const-string v7, "adding score "

    .line 203
    .line 204
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v7, " at index "

    .line 211
    .line 212
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_7
    move-object/from16 v18, v7

    .line 233
    .line 234
    :goto_4
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v0, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_8
    move-object/from16 v18, v7

    .line 243
    .line 244
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 245
    .line 246
    if-eqz v1, :cond_9

    .line 247
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string/jumbo v5, "skipping score 0 at index "

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    :cond_9
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 276
    .line 277
    move-object/from16 v1, p0

    .line 278
    .line 279
    move-object/from16 v6, v17

    .line 280
    .line 281
    move-object/from16 v7, v18

    .line 282
    .line 283
    move-object/from16 v8, v19

    .line 284
    .line 285
    goto/16 :goto_2

    .line 286
    .line 287
    :cond_a
    move-object/from16 v17, v6

    .line 288
    .line 289
    move-object/from16 v18, v7

    .line 290
    .line 291
    move-object/from16 v19, v8

    .line 292
    .line 293
    if-nez v0, :cond_c

    .line 294
    .line 295
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 296
    .line 297
    if-eqz v0, :cond_b

    .line 298
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string/jumbo v1, "no score for autofillId="

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    :cond_b
    move v15, v12

    .line 321
    goto :goto_7

    .line 322
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 329
    .line 330
    .line 331
    const/4 v5, 0x0

    .line 332
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    if-ge v5, v6, :cond_d

    .line 337
    .line 338
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    check-cast v6, Ljava/lang/String;

    .line 343
    .line 344
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    check-cast v7, Ljava/lang/Float;

    .line 349
    .line 350
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    new-instance v8, Landroid/service/autofill/FieldClassification$Match;

    .line 355
    .line 356
    invoke-direct {v8, v6, v7}, Landroid/service/autofill/FieldClassification$Match;-><init>(Ljava/lang/String;F)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    add-int/lit8 v5, v5, 0x1

    .line 363
    .line 364
    goto :goto_6

    .line 365
    :catch_1
    move-exception v0

    .line 366
    move v15, v5

    .line 367
    goto :goto_8

    .line 368
    :cond_d
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    new-instance v0, Landroid/service/autofill/FieldClassification;

    .line 372
    .line 373
    invoke-direct {v0, v1}, Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 377
    .line 378
    .line 379
    move v15, v5

    .line 380
    :goto_7
    add-int/lit8 v14, v14, 0x1

    .line 381
    .line 382
    const/4 v12, 0x0

    .line 383
    move-object/from16 v1, p0

    .line 384
    .line 385
    move/from16 v5, v16

    .line 386
    .line 387
    move-object/from16 v6, v17

    .line 388
    .line 389
    move-object/from16 v7, v18

    .line 390
    .line 391
    move-object/from16 v8, v19

    .line 392
    .line 393
    goto/16 :goto_1

    .line 394
    .line 395
    :catch_2
    move-exception v0

    .line 396
    :goto_8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    filled-new-array {v1, v3, v13, v0}, [Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    const-string v3, "Error accessing FC score at [%d, %d] (%s): %s"

    .line 409
    .line 410
    invoke-virtual {v2, v0, v3, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    :goto_9
    const/4 v2, 0x0

    .line 414
    move-object/from16 v1, p0

    .line 415
    .line 416
    goto :goto_a

    .line 417
    :cond_e
    iget-object v1, v2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 418
    .line 419
    monitor-enter v1

    .line 420
    :try_start_5
    invoke-virtual {v2, v9, v10, v3, v4}, Lcom/android/server/autofill/Session;->logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 421
    .line 422
    .line 423
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 424
    goto :goto_9

    .line 425
    :goto_a
    iput-object v2, v1, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSession:Lcom/android/server/autofill/Session;

    .line 426
    .line 427
    return-void

    .line 428
    :catchall_1
    move-exception v0

    .line 429
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 430
    throw v0
.end method
