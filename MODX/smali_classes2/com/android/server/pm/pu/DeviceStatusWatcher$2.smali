.class public final Lcom/android/server/pm/pu/DeviceStatusWatcher$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$2;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDexoptDone(Lcom/android/server/art/model/DexoptResult;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/art/model/DexoptResult;->getReason()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "bg-dexopt"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$2;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v2, "PU_StatusWatcher"

    .line 22
    .line 23
    const-string v3, "Calculate metrics"

    .line 24
    .line 25
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    .line 29
    .line 30
    iget-object v3, v1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-string/jumbo v4, "usagestats"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Landroid/app/usage/UsageStatsManager;

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    iget-wide v6, v1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStartTimeMs:J

    .line 46
    .line 47
    invoke-virtual {v3, v6, v7, v4, v5}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    new-instance v4, Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v5, "Launched apps:"

    .line 57
    .line 58
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Landroid/app/usage/UsageStats;

    .line 80
    .line 81
    iget v6, v5, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 82
    .line 83
    if-nez v6, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v7, ", count: "

    .line 106
    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v5, v5, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 111
    .line 112
    invoke-static {v6, v5, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    iget-object v5, v1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    .line 121
    .line 122
    iget-object v5, v5, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    const-string v6, "Hot app list:"

    .line 129
    .line 130
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    iget-object v6, v1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    .line 134
    .line 135
    iget-object v6, v6, Lcom/android/server/pm/pu/HotAppsWrapper;->mApps:Ljava/util/List;

    .line 136
    .line 137
    invoke-static {v6}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    const/4 v7, 0x0

    .line 142
    const/4 v8, 0x0

    .line 143
    move v9, v7

    .line 144
    move v10, v8

    .line 145
    move v11, v10

    .line 146
    move v12, v11

    .line 147
    move v8, v9

    .line 148
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 149
    .line 150
    .line 151
    move-result v13

    .line 152
    const-string v14, ", recall: "

    .line 153
    .line 154
    const-string v15, ", precision: "

    .line 155
    .line 156
    const-string v0, ", prefixCount: "

    .line 157
    .line 158
    if-eqz v13, :cond_5

    .line 159
    .line 160
    add-int/lit8 v12, v12, 0x1

    .line 161
    .line 162
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v13

    .line 166
    check-cast v13, Lcom/android/server/pm/pu/ProfileUtilizationService$App;

    .line 167
    .line 168
    move-object/from16 p1, v6

    .line 169
    .line 170
    iget-object v6, v13, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->packageName:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    move-object/from16 v16, v4

    .line 177
    .line 178
    const-string v4, ") "

    .line 179
    .line 180
    iget-object v13, v13, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->packageName:Ljava/lang/String;

    .line 181
    .line 182
    if-eqz v6, :cond_3

    .line 183
    .line 184
    add-int/lit8 v10, v10, 0x1

    .line 185
    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v4, " - predicted and launched"

    .line 201
    .line 202
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v4, " - predicted"

    .line 228
    .line 229
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    :goto_2
    int-to-float v4, v10

    .line 240
    int-to-float v6, v12

    .line 241
    div-float v6, v4, v6

    .line 242
    .line 243
    int-to-float v13, v3

    .line 244
    div-float/2addr v4, v13

    .line 245
    const/high16 v13, 0x40000000    # 2.0f

    .line 246
    .line 247
    mul-float/2addr v13, v6

    .line 248
    mul-float/2addr v13, v4

    .line 249
    add-float v17, v6, v4

    .line 250
    .line 251
    div-float v13, v13, v17

    .line 252
    .line 253
    cmpl-float v17, v13, v7

    .line 254
    .line 255
    if-lez v17, :cond_4

    .line 256
    .line 257
    move v9, v4

    .line 258
    move v8, v6

    .line 259
    move v11, v12

    .line 260
    move/from16 v17, v13

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_4
    move/from16 v17, v7

    .line 264
    .line 265
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    move/from16 v18, v8

    .line 268
    .line 269
    const-string v8, "Current f1Score: "

    .line 270
    .line 271
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    move-object/from16 v0, p0

    .line 303
    .line 304
    move-object/from16 v6, p1

    .line 305
    .line 306
    move-object/from16 v4, v16

    .line 307
    .line 308
    move/from16 v7, v17

    .line 309
    .line 310
    move/from16 v8, v18

    .line 311
    .line 312
    goto/16 :goto_1

    .line 313
    .line 314
    :cond_5
    const-string v4, "Predicted and launched apps: "

    .line 315
    .line 316
    const-string v6, "\nPredicted apps: "

    .line 317
    .line 318
    const-string v12, "\nLaunched apps: "

    .line 319
    .line 320
    invoke-static {v10, v5, v4, v6, v12}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v3, "\nBest f1Score: "

    .line 328
    .line 329
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    iget-object v1, v1, Lcom/android/server/pm/pu/ProfileUtilizationService;->mStorage:Lcom/android/server/pm/pu/ProfileUtilizationStorage;

    .line 365
    .line 366
    iget-object v1, v1, Lcom/android/server/pm/pu/ProfileUtilizationStorage;->mSharedPrefsDumps:Landroid/content/SharedPreferences;

    .line 367
    .line 368
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    const-string v2, "Metrics"

    .line 373
    .line 374
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 375
    .line 376
    .line 377
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 378
    .line 379
    .line 380
    move-object/from16 v0, p0

    .line 381
    .line 382
    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher$2;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    iget-object v0, v0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mDexoptDoneHandler:Lcom/android/server/pm/pu/DeviceStatusWatcher$2;

    .line 392
    .line 393
    invoke-virtual {v1, v0}, Lcom/android/server/art/ArtManagerLocal;->removeDexoptDoneCallback(Lcom/android/server/art/ArtManagerLocal$DexoptDoneCallback;)V

    .line 394
    .line 395
    .line 396
    return-void
.end method
