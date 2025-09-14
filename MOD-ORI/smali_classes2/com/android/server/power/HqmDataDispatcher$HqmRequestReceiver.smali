.class public final Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/HqmDataDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/power/HqmDataDispatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;->this$0:Lcom/android/server/power/HqmDataDispatcher;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;->this$0:Lcom/android/server/power/HqmDataDispatcher;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    .line 7
    .line 8
    invoke-direct {p2}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    move v3, v0

    .line 15
    move-wide v4, v1

    .line 16
    move-wide v6, v4

    .line 17
    :goto_0
    iget-object v8, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    if-ge v3, v8, :cond_0

    .line 24
    .line 25
    iget-object v8, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    check-cast v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 32
    .line 33
    iget-wide v8, v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    .line 34
    .line 35
    add-long/2addr v6, v8

    .line 36
    iget-object v8, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    check-cast v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 43
    .line 44
    iget-wide v8, v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    .line 45
    .line 46
    add-long/2addr v4, v8

    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v3, "LOD"

    .line 51
    .line 52
    invoke-virtual {p2, v4, v5, v3}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v3, "LOCNT"

    .line 56
    .line 57
    invoke-virtual {p2, v6, v7, v3}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v3, 0x3

    .line 61
    new-array v4, v3, [J

    .line 62
    .line 63
    move v5, v0

    .line 64
    :goto_1
    iget-object v6, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-ge v5, v6, :cond_2

    .line 71
    .line 72
    move v6, v0

    .line 73
    :goto_2
    if-ge v6, v3, :cond_1

    .line 74
    .line 75
    aget-wide v7, v4, v6

    .line 76
    .line 77
    iget-object v9, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 78
    .line 79
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 84
    .line 85
    iget-object v9, v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    .line 86
    .line 87
    aget-wide v9, v9, v6

    .line 88
    .line 89
    add-long/2addr v7, v9

    .line 90
    aput-wide v7, v4, v6

    .line 91
    .line 92
    add-int/lit8 v6, v6, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    const-string v5, "LBLD"

    .line 99
    .line 100
    aget-wide v6, v4, v0

    .line 101
    .line 102
    invoke-virtual {p2, v6, v7, v5}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v5, "LBMD"

    .line 106
    .line 107
    const/4 v6, 0x1

    .line 108
    aget-wide v6, v4, v6

    .line 109
    .line 110
    invoke-virtual {p2, v6, v7, v5}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const/4 v5, 0x2

    .line 114
    aget-wide v6, v4, v5

    .line 115
    .line 116
    const-string v4, "LBHD"

    .line 117
    .line 118
    invoke-virtual {p2, v6, v7, v4}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    .line 122
    .line 123
    if-eqz v4, :cond_5

    .line 124
    .line 125
    move v4, v0

    .line 126
    move-wide v6, v1

    .line 127
    :goto_3
    iget-object v8, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 128
    .line 129
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-ge v4, v8, :cond_4

    .line 134
    .line 135
    iget-object v8, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 136
    .line 137
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    check-cast v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 142
    .line 143
    iget v8, v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mDisplayType:I

    .line 144
    .line 145
    if-nez v8, :cond_3

    .line 146
    .line 147
    iget-object v8, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 148
    .line 149
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    check-cast v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 154
    .line 155
    iget-object v8, v8, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    .line 156
    .line 157
    aget-wide v8, v8, v5

    .line 158
    .line 159
    add-long/2addr v6, v8

    .line 160
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    const-string v4, "LBHD_M"

    .line 164
    .line 165
    invoke-virtual {p2, v6, v7, v4}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_5
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

    .line 169
    .line 170
    if-eqz v4, :cond_8

    .line 171
    .line 172
    move v4, v0

    .line 173
    move-wide v5, v1

    .line 174
    :goto_4
    iget-object v7, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 175
    .line 176
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    if-ge v4, v7, :cond_7

    .line 181
    .line 182
    iget-object v7, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 183
    .line 184
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    check-cast v7, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 189
    .line 190
    iget v7, v7, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mDisplayType:I

    .line 191
    .line 192
    if-nez v7, :cond_6

    .line 193
    .line 194
    iget-object v7, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 195
    .line 196
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    check-cast v7, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 201
    .line 202
    iget-wide v7, v7, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    .line 203
    .line 204
    add-long/2addr v5, v7

    .line 205
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_7
    const-string v4, "LBHD_HIGHEST"

    .line 209
    .line 210
    invoke-virtual {p2, v5, v6, v4}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_8
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SCREEN_CURTAIN:Z

    .line 214
    .line 215
    if-eqz v4, :cond_b

    .line 216
    .line 217
    move v4, v0

    .line 218
    move-wide v5, v1

    .line 219
    move-wide v7, v5

    .line 220
    :goto_5
    iget-object v9, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 221
    .line 222
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    if-ge v4, v9, :cond_a

    .line 227
    .line 228
    iget-object v9, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 229
    .line 230
    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    check-cast v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 235
    .line 236
    iget v9, v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mDisplayType:I

    .line 237
    .line 238
    if-nez v9, :cond_9

    .line 239
    .line 240
    iget-object v9, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 241
    .line 242
    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    check-cast v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 247
    .line 248
    iget-wide v9, v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    .line 249
    .line 250
    add-long/2addr v7, v9

    .line 251
    iget-object v9, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 252
    .line 253
    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    check-cast v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 258
    .line 259
    iget-wide v9, v9, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainDuration:J

    .line 260
    .line 261
    add-long/2addr v5, v9

    .line 262
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_a
    const-string v4, "SC_DUR"

    .line 266
    .line 267
    invoke-virtual {p2, v5, v6, v4}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const-string v4, "SC_CNT"

    .line 271
    .line 272
    invoke-virtual {p2, v7, v8, v4}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(JLjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :cond_b
    const-string v4, "DPLD"

    .line 276
    .line 277
    iget-object p2, p2, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->mJsonObj:Lorg/json/JSONObject;

    .line 278
    .line 279
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    const-string v5, "\\{"

    .line 284
    .line 285
    const-string v6, ""

    .line 286
    .line 287
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    const-string v5, "\\}"

    .line 292
    .line 293
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    invoke-virtual {p1, v4, p2}, Lcom/android/server/power/HqmDataDispatcher;->sendDataSetToHqm(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    move p2, v0

    .line 301
    :goto_6
    iget-object v4, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 302
    .line 303
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-ge p2, v4, :cond_d

    .line 308
    .line 309
    iget-object v4, p1, Lcom/android/server/power/HqmDataDispatcher;->mDisplayStats:Landroid/util/SparseArray;

    .line 310
    .line 311
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    check-cast v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    .line 316
    .line 317
    iput-wide v1, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    .line 318
    .line 319
    iput-wide v1, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    .line 320
    .line 321
    const/4 v5, -0x1

    .line 322
    iput v5, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    .line 323
    .line 324
    move v5, v0

    .line 325
    :goto_7
    if-ge v5, v3, :cond_c

    .line 326
    .line 327
    iget-object v6, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    .line 328
    .line 329
    aput-wide v1, v6, v5

    .line 330
    .line 331
    add-int/lit8 v5, v5, 0x1

    .line 332
    .line 333
    goto :goto_7

    .line 334
    :cond_c
    iput-wide v1, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainCount:J

    .line 335
    .line 336
    iput-wide v1, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenCurtainDuration:J

    .line 337
    .line 338
    iput-wide v1, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    .line 339
    .line 340
    iput-boolean v0, v4, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    .line 341
    .line 342
    add-int/lit8 p2, p2, 0x1

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_d
    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher$HqmRequestReceiver;->this$0:Lcom/android/server/power/HqmDataDispatcher;

    .line 346
    .line 347
    iget-object p1, p0, Lcom/android/server/power/HqmDataDispatcher;->mContext:Landroid/content/Context;

    .line 348
    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    const-string/jumbo p2, "screen_brightness_mode"

    .line 354
    .line 355
    .line 356
    const/4 v1, -0x2

    .line 357
    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 358
    .line 359
    .line 360
    move-result p2

    .line 361
    const-string/jumbo v2, "screen_brightness"

    .line 362
    .line 363
    .line 364
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    new-instance v0, Lorg/json/JSONObject;

    .line 369
    .line 370
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 371
    .line 372
    .line 373
    const-string v1, "MODE"

    .line 374
    .line 375
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    :try_start_0
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .line 381
    .line 382
    goto :goto_8

    .line 383
    :catch_0
    move-exception p2

    .line 384
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 385
    .line 386
    .line 387
    :goto_8
    const-string p2, "LEVEL"

    .line 388
    .line 389
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    :try_start_1
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 394
    .line 395
    .line 396
    goto :goto_9

    .line 397
    :catch_1
    move-exception p1

    .line 398
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 399
    .line 400
    .line 401
    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    const-string p2, "\\{"

    .line 406
    .line 407
    const-string v0, ""

    .line 408
    .line 409
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    const-string p2, "\\}"

    .line 414
    .line 415
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    const-string p2, "DPSI"

    .line 420
    .line 421
    invoke-virtual {p0, p2, p1}, Lcom/android/server/power/HqmDataDispatcher;->sendDataSetToHqm(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    return-void
.end method
