.class public final synthetic Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CustomizedBinderCallsStatsInternal;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, v0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/CustomizedBinderCallsStatsInternal;

    .line 6
    .line 7
    iget v0, v0, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;->f$1:I

    .line 8
    .line 9
    iget-object v4, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 10
    .line 11
    const/4 v5, 0x5

    .line 12
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    iput-wide v4, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    .line 20
    .line 21
    iget-wide v4, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    .line 22
    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    cmp-long v4, v4, v6

    .line 26
    .line 27
    const-string v5, "CustomizedBinderCallsStatsInternal"

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v8

    .line 35
    iget-wide v10, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    .line 36
    .line 37
    sub-long/2addr v8, v10

    .line 38
    const-wide/32 v10, 0x1b7740

    .line 39
    .line 40
    .line 41
    cmp-long v4, v8, v10

    .line 42
    .line 43
    if-ltz v4, :cond_1

    .line 44
    .line 45
    :cond_0
    const-string/jumbo v4, "should write the current data!!"

    .line 46
    .line 47
    .line 48
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-instance v8, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda2;

    .line 56
    .line 57
    invoke-direct {v8, v3}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/CustomizedBinderCallsStatsInternal;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v8

    .line 67
    iput-wide v8, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    .line 68
    .line 69
    :cond_1
    const/16 v4, 0x14

    .line 70
    .line 71
    if-lt v0, v4, :cond_7

    .line 72
    .line 73
    iget-object v4, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 74
    .line 75
    const/16 v8, 0x5a

    .line 76
    .line 77
    invoke-virtual {v4, v8}, Lcom/android/internal/os/BinderCallsStats;->getHeaviestApplicationUid(I)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_7

    .line 82
    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string/jumbo v9, "heavy binder caller : "

    .line 86
    .line 87
    .line 88
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v9, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v9, "("

    .line 97
    .line 98
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v9, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    .line 102
    .line 103
    const-string v10, ")"

    .line 104
    .line 105
    invoke-static {v8, v9, v10, v5}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-wide v8, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    .line 109
    .line 110
    cmp-long v6, v8, v6

    .line 111
    .line 112
    if-eqz v6, :cond_2

    .line 113
    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 115
    .line 116
    .line 117
    move-result-wide v6

    .line 118
    iget-wide v8, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    .line 119
    .line 120
    sub-long/2addr v6, v8

    .line 121
    const-wide/32 v8, 0x5265c00

    .line 122
    .line 123
    .line 124
    cmp-long v6, v6, v8

    .line 125
    .line 126
    if-ltz v6, :cond_7

    .line 127
    .line 128
    :cond_2
    iget-object v6, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    .line 129
    .line 130
    if-nez v6, :cond_3

    .line 131
    .line 132
    const-class v6, Landroid/app/ActivityManagerInternal;

    .line 133
    .line 134
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Landroid/app/ActivityManagerInternal;

    .line 139
    .line 140
    iput-object v6, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    .line 141
    .line 142
    :cond_3
    iget-object v7, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    .line 143
    .line 144
    new-instance v8, Landroid/content/Intent;

    .line 145
    .line 146
    const-string/jumbo v6, "com.sec.android.sdhms.action.APP_ERROR"

    .line 147
    .line 148
    .line 149
    invoke-direct {v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v6, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    .line 153
    .line 154
    const-string/jumbo v9, "pkgName"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    const-string/jumbo v6, "userId"

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    const-string/jumbo v6, "uid"

    .line 167
    .line 168
    .line 169
    iget v9, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    .line 170
    .line 171
    invoke-virtual {v8, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    const-string/jumbo v6, "type"

    .line 175
    .line 176
    .line 177
    const-string/jumbo v9, "excessive_binder"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    const-string/jumbo v6, "com.sec.android.sdhms"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    .line 188
    .line 189
    const/4 v12, 0x0

    .line 190
    const/4 v13, 0x0

    .line 191
    const/4 v9, 0x0

    .line 192
    const/4 v10, 0x0

    .line 193
    const/4 v11, 0x0

    .line 194
    const/4 v14, 0x0

    .line 195
    const/4 v15, 0x0

    .line 196
    invoke-virtual/range {v7 .. v15}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 197
    .line 198
    .line 199
    iget-object v6, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    const-string v7, "HqmManagerService"

    .line 202
    .line 203
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    move-object v7, v6

    .line 208
    check-cast v7, Landroid/os/SemHqmManager;

    .line 209
    .line 210
    if-eqz v7, :cond_5

    .line 211
    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string v9, "\"PKG\":\""

    .line 220
    .line 221
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v9, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v9, "\","

    .line 230
    .line 231
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    new-instance v8, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v10, "\"SSCPU\":\""

    .line 244
    .line 245
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string v8, "\"RATIO\":\""

    .line 264
    .line 265
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget v8, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mRatio:F

    .line 269
    .line 270
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    const-string v10, "%.2f"

    .line 279
    .line 280
    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    iget-object v8, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    .line 302
    .line 303
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 304
    .line 305
    .line 306
    move-result v8

    .line 307
    add-int/2addr v8, v0

    .line 308
    add-int/lit8 v0, v8, 0xa

    .line 309
    .line 310
    const/16 v9, 0x3e8

    .line 311
    .line 312
    const-string v10, "\""

    .line 313
    .line 314
    const-string v11, "\"EXTRA\":\""

    .line 315
    .line 316
    if-le v0, v9, :cond_4

    .line 317
    .line 318
    add-int/lit16 v8, v8, -0x3de

    .line 319
    .line 320
    iget-object v0, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    new-instance v9, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object v4, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    .line 332
    .line 333
    sub-int/2addr v0, v8

    .line 334
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    goto :goto_0

    .line 352
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget-object v4, v4, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v4, "Data is : "

    .line 375
    .line 376
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v15

    .line 397
    const-string v13, ""

    .line 398
    .line 399
    const-string v14, ""

    .line 400
    .line 401
    const/4 v8, 0x0

    .line 402
    const-string v9, "AP"

    .line 403
    .line 404
    const-string v10, "HBCA"

    .line 405
    .line 406
    const-string/jumbo v11, "sm"

    .line 407
    .line 408
    .line 409
    const-string v12, "0.0"

    .line 410
    .line 411
    const-string v16, ""

    .line 412
    .line 413
    invoke-virtual/range {v7 .. v16}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    if-nez v0, :cond_6

    .line 418
    .line 419
    const-string v0, "Failed to send anomaly application info. to HWParam"

    .line 420
    .line 421
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    goto :goto_1

    .line 425
    :cond_5
    const-string v0, "Cannot get HqmManagerService !!!"

    .line 426
    .line 427
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    :cond_6
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 431
    .line 432
    .line 433
    move-result-wide v6

    .line 434
    iput-wide v6, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    .line 435
    .line 436
    :cond_7
    iget-object v0, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 437
    .line 438
    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->isNeededResetData()Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_8

    .line 443
    .line 444
    const-string v0, "Clear all data"

    .line 445
    .line 446
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    iget-object v0, v3, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 450
    .line 451
    new-array v3, v1, [Z

    .line 452
    .line 453
    aput-boolean v1, v3, v2

    .line 454
    .line 455
    invoke-virtual {v0, v3}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 456
    .line 457
    .line 458
    :cond_8
    return-void
.end method
