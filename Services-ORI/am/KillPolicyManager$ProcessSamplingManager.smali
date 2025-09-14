.class public final Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurrentState:I

.field public mIsSampleDevice:Z

.field public mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

.field public mSkipCount:I

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final activate(Landroid/content/Context;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    const-string v3, " )"

    .line 7
    .line 8
    const-string v4, " mSkipCount="

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const-string v6, "ActivityManager_kpm"

    .line 12
    .line 13
    if-nez v0, :cond_5

    .line 14
    .line 15
    sget-object v0, Lcom/android/server/am/KillPolicyManager$DeviceInfoHelper;->URI_ISSUE_TRACKER:Landroid/net/Uri;

    .line 16
    .line 17
    const-string/jumbo v0, "sem_ssdid"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/samsung/android/ssdid/SemSsdidManagerService;

    .line 25
    .line 26
    const/4 v8, -0x1

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/ssdid/SemSsdidManagerService;->getSsdid()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    if-nez v9, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-gez v0, :cond_1

    .line 46
    .line 47
    neg-int v0, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v0, v8

    .line 50
    :cond_1
    :goto_0
    if-ne v0, v8, :cond_2

    .line 51
    .line 52
    goto/16 :goto_9

    .line 53
    .line 54
    :cond_2
    new-instance v8, Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    .line 55
    .line 56
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v9, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v9, v8, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    .line 65
    .line 66
    iput-object v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    .line 67
    .line 68
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    const-string v9, "KOREA"

    .line 73
    .line 74
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-nez v9, :cond_3

    .line 79
    .line 80
    const-string v9, "USA"

    .line 81
    .line 82
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_4

    .line 87
    .line 88
    :cond_3
    rem-int/lit8 v0, v0, 0x64

    .line 89
    .line 90
    const/16 v8, 0x1e

    .line 91
    .line 92
    if-ge v0, v8, :cond_4

    .line 93
    .line 94
    move v0, v5

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const/4 v0, 0x0

    .line 97
    :goto_1
    iput-boolean v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mIsSampleDevice:Z

    .line 98
    .line 99
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    .line 100
    .line 101
    iput v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v8, "Process sampler initialized! ( mIsSampleDevice="

    .line 106
    .line 107
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-boolean v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mIsSampleDevice:Z

    .line 111
    .line 112
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    .line 119
    .line 120
    invoke-static {v0, v8, v3, v6}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    if-nez p1, :cond_6

    .line 124
    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->deactivate()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_6
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    .line 130
    .line 131
    sget-object v0, Lcom/android/server/am/KillPolicyManager$DeviceInfoHelper;->URI_ISSUE_TRACKER:Landroid/net/Uri;

    .line 132
    .line 133
    const-string v0, ""

    .line 134
    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    sget-object v10, Lcom/android/server/am/KillPolicyManager$DeviceInfoHelper;->URI_ISSUE_TRACKER:Landroid/net/Uri;

    .line 140
    .line 141
    const/4 v11, 0x0

    .line 142
    invoke-virtual {v9, v10, v11, v11, v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    const/4 v10, 0x2

    .line 147
    if-nez v9, :cond_7

    .line 148
    .line 149
    :try_start_0
    const-string v0, "Cannot find the issue tracker provider."

    .line 150
    .line 151
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    move-object v1, v0

    .line 157
    goto/16 :goto_a

    .line 158
    .line 159
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    if-ge v11, v5, :cond_9

    .line 164
    .line 165
    const-string v0, "Cannot find any userdata in the issue tracker provider."

    .line 166
    .line 167
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .line 169
    .line 170
    :cond_8
    :goto_2
    const/4 v14, 0x0

    .line 171
    goto/16 :goto_6

    .line 172
    .line 173
    :cond_9
    :try_start_1
    const-string/jumbo v11, "model"

    .line 174
    .line 175
    .line 176
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    const-string/jumbo v12, "useMode"

    .line 181
    .line 182
    .line 183
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    const-string/jumbo v13, "ro.product.model"

    .line 188
    .line 189
    .line 190
    invoke-static {v13, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    if-nez v0, :cond_8

    .line 199
    .line 200
    const/4 v14, 0x0

    .line 201
    :goto_3
    if-eq v14, v10, :cond_c

    .line 202
    .line 203
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_c

    .line 208
    .line 209
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v15

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v7, "Find an issue tracker info.model="

    .line 223
    .line 224
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v7, ", curModel="

    .line 231
    .line 232
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v7, ", curUseMode="

    .line 239
    .line 240
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_b

    .line 258
    .line 259
    const-string v0, "UT"

    .line 260
    .line 261
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_a

    .line 266
    .line 267
    move v14, v10

    .line 268
    goto :goto_4

    .line 269
    :cond_a
    const-string v0, "NR"

    .line 270
    .line 271
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    if-eqz v0, :cond_b

    .line 276
    .line 277
    move v14, v5

    .line 278
    goto :goto_4

    .line 279
    :catch_0
    move-exception v0

    .line 280
    goto :goto_5

    .line 281
    :cond_b
    :goto_4
    const/4 v2, 0x6

    .line 282
    goto :goto_3

    .line 283
    :catch_1
    move-exception v0

    .line 284
    const/4 v14, 0x0

    .line 285
    :goto_5
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    .line 291
    .line 292
    :cond_c
    :goto_6
    if-eqz v9, :cond_d

    .line 293
    .line 294
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 295
    .line 296
    .line 297
    :cond_d
    if-ne v14, v10, :cond_e

    .line 298
    .line 299
    move v0, v5

    .line 300
    goto :goto_7

    .line 301
    :cond_e
    const/4 v0, 0x0

    .line 302
    :goto_7
    iput-boolean v0, v8, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mIsUserTrialDevice:Z

    .line 303
    .line 304
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    .line 305
    .line 306
    iget-boolean v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mIsUserTrialDevice:Z

    .line 307
    .line 308
    if-nez v0, :cond_f

    .line 309
    .line 310
    iget-boolean v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mIsSampleDevice:Z

    .line 311
    .line 312
    if-nez v2, :cond_f

    .line 313
    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->deactivate()V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :cond_f
    if-eqz v0, :cond_10

    .line 319
    .line 320
    const/4 v2, 0x0

    .line 321
    goto :goto_8

    .line 322
    :cond_10
    const/4 v2, 0x6

    .line 323
    :goto_8
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    .line 324
    .line 325
    const-string v7, " maxSkip="

    .line 326
    .line 327
    const-string v8, " isUserTrial="

    .line 328
    .line 329
    if-ge v0, v2, :cond_11

    .line 330
    .line 331
    add-int/2addr v0, v5

    .line 332
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    .line 333
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    const-string v5, "Skipped process sampling. ( mIsSampleDevice="

    .line 337
    .line 338
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iget-boolean v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mIsSampleDevice:Z

    .line 342
    .line 343
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    .line 350
    .line 351
    iget-boolean v5, v5, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mIsUserTrialDevice:Z

    .line 352
    .line 353
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    iget v4, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    .line 360
    .line 361
    invoke-static {v4, v2, v7, v3, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->deactivate()V

    .line 369
    .line 370
    .line 371
    goto :goto_9

    .line 372
    :cond_11
    const/4 v5, 0x0

    .line 373
    iput v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    .line 374
    .line 375
    iput v10, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    .line 376
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    const-string v5, "Process sampler activated! ( mIsSampleDevice="

    .line 380
    .line 381
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-boolean v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mIsSampleDevice:Z

    .line 385
    .line 386
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    .line 393
    .line 394
    iget-boolean v5, v5, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mIsUserTrialDevice:Z

    .line 395
    .line 396
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    iget v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    .line 403
    .line 404
    invoke-static {v1, v2, v7, v3, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    :goto_9
    return-void

    .line 412
    :goto_a
    if-eqz v9, :cond_12

    .line 413
    .line 414
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 415
    .line 416
    .line 417
    goto :goto_b

    .line 418
    :catchall_1
    move-exception v0

    .line 419
    move-object v2, v0

    .line 420
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 421
    .line 422
    .line 423
    :cond_12
    :goto_b
    throw v1
.end method

.method public final deactivate()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    .line 16
    .line 17
    const-string p0, "ActivityManager_kpm"

    .line 18
    .line 19
    const-string v0, "Process sampler deactivated!"

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final report(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v2, v3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    .line 12
    .line 13
    iput-object v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mProcessSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto/16 :goto_b

    .line 25
    .line 26
    :cond_1
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 27
    .line 28
    const-string v4, "ActivityManager_kpm"

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    const-string/jumbo v0, "it has \'zero\' samples."

    .line 33
    .line 34
    .line 35
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto/16 :goto_b

    .line 39
    .line 40
    :cond_2
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 41
    .line 42
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v6, "TYPE"

    .line 46
    .line 47
    const/4 v7, 0x5

    .line 48
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string v6, "DRAM"

    .line 52
    .line 53
    iget v7, v0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    .line 54
    .line 55
    mul-int/lit16 v7, v7, 0x400

    .line 56
    .line 57
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    const-string v6, "SWPT"

    .line 61
    .line 62
    iget v7, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 63
    .line 64
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    const-string v6, "UPTM"

    .line 68
    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v7

    .line 73
    const-wide/16 v9, 0x3e8

    .line 74
    .line 75
    div-long/2addr v7, v9

    .line 76
    const-wide/16 v9, 0x3c

    .line 77
    .line 78
    div-long/2addr v7, v9

    .line 79
    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    const-string v6, "KVER"

    .line 83
    .line 84
    const-string v7, "4.7"

    .line 85
    .line 86
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    new-instance v6, Lorg/json/JSONArray;

    .line 90
    .line 91
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 95
    .line 96
    const/4 v8, 0x1

    .line 97
    const/4 v9, 0x0

    .line 98
    if-eqz v7, :cond_9

    .line 99
    .line 100
    sget-object v7, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 101
    .line 102
    array-length v10, v7

    .line 103
    move v11, v9

    .line 104
    :goto_0
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 105
    .line 106
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    .line 107
    .line 108
    const-wide/16 v16, 0x0

    .line 109
    .line 110
    if-ge v11, v10, :cond_4

    .line 111
    .line 112
    aget-object v2, v7, v11

    .line 113
    .line 114
    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 115
    .line 116
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_3

    .line 121
    .line 122
    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, [J

    .line 129
    .line 130
    aget-wide v16, v2, v9

    .line 131
    .line 132
    aget-wide v19, v2, v8

    .line 133
    .line 134
    move/from16 v21, v10

    .line 135
    .line 136
    add-long v9, v16, v19

    .line 137
    .line 138
    long-to-double v9, v9

    .line 139
    div-double/2addr v9, v14

    .line 140
    add-double/2addr v9, v12

    .line 141
    double-to-long v9, v9

    .line 142
    const/4 v12, 0x3

    .line 143
    aget-wide v16, v2, v12

    .line 144
    .line 145
    move-wide/from16 v12, v16

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :catch_0
    move-object v2, v4

    .line 149
    :catch_1
    :goto_1
    const/4 v1, 0x0

    .line 150
    goto/16 :goto_9

    .line 151
    .line 152
    :cond_3
    move/from16 v21, v10

    .line 153
    .line 154
    move-wide/from16 v9, v16

    .line 155
    .line 156
    move-wide v12, v9

    .line 157
    :goto_2
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v2, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 162
    .line 163
    .line 164
    add-int/lit8 v11, v11, 0x1

    .line 165
    .line 166
    move/from16 v10, v21

    .line 167
    .line 168
    const/4 v3, 0x2

    .line 169
    const/4 v9, 0x0

    .line 170
    goto :goto_0

    .line 171
    :cond_4
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 172
    .line 173
    array-length v7, v2

    .line 174
    const/4 v9, 0x0

    .line 175
    :goto_3
    if-ge v9, v7, :cond_6

    .line 176
    .line 177
    aget-object v10, v2, v9

    .line 178
    .line 179
    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 180
    .line 181
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    if-eqz v11, :cond_5

    .line 186
    .line 187
    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    check-cast v10, [J

    .line 194
    .line 195
    aget-wide v10, v10, v8

    .line 196
    .line 197
    long-to-double v10, v10

    .line 198
    div-double/2addr v10, v14

    .line 199
    add-double/2addr v10, v12

    .line 200
    double-to-long v10, v10

    .line 201
    goto :goto_4

    .line 202
    :cond_5
    move-wide/from16 v10, v16

    .line 203
    .line 204
    :goto_4
    invoke-virtual {v6, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 205
    .line 206
    .line 207
    add-int/lit8 v9, v9, 0x1

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_6
    sget-object v2, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 211
    .line 212
    array-length v7, v2

    .line 213
    const/4 v9, 0x0

    .line 214
    :goto_5
    if-ge v9, v7, :cond_8

    .line 215
    .line 216
    aget-object v10, v2, v9

    .line 217
    .line 218
    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 219
    .line 220
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v11

    .line 224
    if-eqz v11, :cond_7

    .line 225
    .line 226
    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 227
    .line 228
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    check-cast v10, [J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .line 234
    move-object/from16 v18, v4

    .line 235
    .line 236
    const/4 v11, 0x2

    .line 237
    :try_start_1
    aget-wide v3, v10, v11

    .line 238
    .line 239
    long-to-double v3, v3

    .line 240
    div-double/2addr v3, v14

    .line 241
    add-double/2addr v3, v12

    .line 242
    double-to-long v3, v3

    .line 243
    goto :goto_6

    .line 244
    :catch_2
    move-object/from16 v2, v18

    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_7
    move-object/from16 v18, v4

    .line 248
    .line 249
    const/4 v11, 0x2

    .line 250
    move-wide/from16 v3, v16

    .line 251
    .line 252
    :goto_6
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 253
    .line 254
    .line 255
    add-int/lit8 v9, v9, 0x1

    .line 256
    .line 257
    move-object/from16 v4, v18

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_8
    move-object/from16 v18, v4

    .line 261
    .line 262
    const/4 v11, 0x2

    .line 263
    goto :goto_7

    .line 264
    :cond_9
    move v11, v3

    .line 265
    move-object/from16 v18, v4

    .line 266
    .line 267
    :goto_7
    const-string v2, "PRST"

    .line 268
    .line 269
    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    .line 271
    .line 272
    new-instance v2, Lorg/json/JSONArray;

    .line 273
    .line 274
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 275
    .line 276
    .line 277
    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mProcessSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    .line 278
    .line 279
    if-eqz v3, :cond_b

    .line 280
    .line 281
    iget-object v4, v3, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mProcessSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    .line 288
    .line 289
    iget-boolean v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mIsUserTrialDevice:Z

    .line 290
    .line 291
    xor-int/2addr v1, v8

    .line 292
    invoke-virtual {v3, v4, v1}, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->sampleAdjPriority(IZ)Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    move v3, v11

    .line 297
    const/4 v9, 0x0

    .line 298
    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-ge v9, v4, :cond_b

    .line 303
    .line 304
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    check-cast v4, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;

    .line 309
    .line 310
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->toJsonArray()Lorg/json/JSONArray;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    if-lez v9, :cond_a

    .line 315
    .line 316
    add-int/lit8 v3, v3, 0x1

    .line 317
    .line 318
    :cond_a
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    add-int/2addr v3, v6

    .line 327
    const/16 v6, 0x4c2c

    .line 328
    .line 329
    if-gt v3, v6, :cond_b

    .line 330
    .line 331
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 332
    .line 333
    .line 334
    add-int/lit8 v9, v9, 0x1

    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_b
    const-string v1, "PRS"

    .line 338
    .line 339
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    .line 341
    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string v3, "ProcessSampleCount="

    .line 348
    .line 349
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v3, " ProcessSamplesJsonStringSize="

    .line 360
    .line 361
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 379
    move-object/from16 v2, v18

    .line 380
    .line 381
    :try_start_2
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 388
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    sub-int/2addr v3, v8

    .line 393
    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 397
    goto :goto_a

    .line 398
    :catch_3
    :goto_9
    const-string/jumbo v3, "failed to create the KPUT"

    .line 399
    .line 400
    .line 401
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    :goto_a
    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    :goto_b
    return-void
.end method
