.class public final Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mAssetCopier:Lcom/samsung/android/localeoverlaymanager/SevenZFileCopier;

.field public final mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;Lcom/samsung/android/localeoverlaymanager/SevenZFileCopier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mAssetCopier:Lcom/samsung/android/localeoverlaymanager/SevenZFileCopier;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doCopy(Landroid/content/res/AssetManager;Ljava/util/Set;Z)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "localeapks_zipped_v2"

    .line 6
    .line 7
    const-string v4, "localeapks_zipped"

    .line 8
    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    const-string v5, "/data/overlays/current_locale_apks/files/"

    .line 12
    .line 13
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    const-string v7, "ApkExtractorRunnable"

    .line 21
    .line 22
    if-nez v6, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v8, "createLocaleOverlayDir: Unable to create Dir - "

    .line 33
    .line 34
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/16 v6, 0x1fd

    .line 49
    .line 50
    const/4 v8, -0x1

    .line 51
    const/16 v9, 0x3e8

    .line 52
    .line 53
    invoke-static {v0, v6, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    const/4 v6, 0x1

    .line 57
    :try_start_0
    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    array-length v8, v0

    .line 64
    if-nez v8, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    array-length v8, v0

    .line 68
    if-ne v8, v6, :cond_3

    .line 69
    .line 70
    const/4 v8, 0x0

    .line 71
    aget-object v0, v0, v8

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    const/4 v0, 0x2

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move v0, v6

    .line 84
    :goto_1
    move v8, v0

    .line 85
    goto :goto_4

    .line 86
    :cond_4
    :goto_2
    return-void

    .line 87
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v9, "Couldn\'t copy for localeapks_zipped "

    .line 90
    .line 91
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move v8, v6

    .line 109
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v9, "doCopy() called with: assetManager = ["

    .line 112
    .line 113
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v9, "], localeLangs = "

    .line 120
    .line 121
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    move-object/from16 v9, p2

    .line 125
    .line 126
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v10, " version = "

    .line 130
    .line 131
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v10, " package = "

    .line 138
    .line 139
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v10, v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 143
    .line 144
    iget-object v10, v10, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mTargetPackage:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/localeoverlaymanager/Utils;->handleNewLocaleCodes(Ljava/util/Set;)V

    .line 157
    .line 158
    .line 159
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_12

    .line 168
    .line 169
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/String;

    .line 174
    .line 175
    if-nez v0, :cond_5

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    const/4 v11, 0x3

    .line 183
    if-ne v10, v11, :cond_6

    .line 184
    .line 185
    sget-object v10, Lcom/samsung/android/localeoverlaymanager/OverlayConstants;->ISO_639_2_TO_639_1_MAPPING:Ljava/util/Map;

    .line 186
    .line 187
    check-cast v10, Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Ljava/lang/String;

    .line 194
    .line 195
    :cond_6
    if-nez v0, :cond_7

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    iget-object v11, v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 204
    .line 205
    iget-object v11, v11, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mTargetPackage:Ljava/lang/String;

    .line 206
    .line 207
    const-string v12, "."

    .line 208
    .line 209
    invoke-static {v10, v11, v12, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    const-string v0, ".apk"

    .line 214
    .line 215
    invoke-static {v5, v10, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    new-instance v11, Ljava/io/File;

    .line 220
    .line 221
    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    const-string v13, " Package Name = "

    .line 229
    .line 230
    if-eqz v12, :cond_9

    .line 231
    .line 232
    if-eqz p3, :cond_8

    .line 233
    .line 234
    invoke-static {v11}, Lcom/samsung/android/localeoverlaymanager/Utils;->deleteFile(Ljava/io/File;)V

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_8
    iget-object v0, v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 239
    .line 240
    iget-object v0, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractedLocaleApks:Ljava/util/Set;

    .line 241
    .line 242
    check-cast v0, Ljava/util/HashSet;

    .line 243
    .line 244
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v11, "Package already exists, skipping extraction TID = "

    .line 250
    .line 251
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 255
    .line 256
    .line 257
    move-result-object v11

    .line 258
    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    .line 259
    .line 260
    .line 261
    move-result-wide v11

    .line 262
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v7, v0}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_9
    :goto_6
    const-string v12, "/"

    .line 280
    .line 281
    if-ne v8, v6, :cond_a

    .line 282
    .line 283
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    goto :goto_7

    .line 302
    :catch_1
    move-exception v0

    .line 303
    move-object v12, v4

    .line 304
    goto/16 :goto_d

    .line 305
    .line 306
    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    :goto_7
    :try_start_2
    iget-object v14, v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mAssetCopier:Lcom/samsung/android/localeoverlaymanager/SevenZFileCopier;

    .line 325
    .line 326
    invoke-virtual {v14, v2, v12, v10, v11}, Lcom/samsung/android/localeoverlaymanager/SevenZFileCopier;->copyFile(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 327
    .line 328
    .line 329
    iget-object v14, v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 330
    .line 331
    iget-object v14, v14, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 332
    .line 333
    if-eqz v14, :cond_b

    .line 334
    .line 335
    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v14

    .line 339
    check-cast v14, Landroid/content/Context;

    .line 340
    .line 341
    goto :goto_8

    .line 342
    :catch_2
    move-exception v0

    .line 343
    goto/16 :goto_d

    .line 344
    .line 345
    :cond_b
    const/4 v14, 0x0

    .line 346
    :goto_8
    iget-object v15, v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 347
    .line 348
    iget-object v15, v15, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mTargetPackage:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 349
    .line 350
    const/16 v16, 0x1

    .line 351
    .line 352
    if-nez v14, :cond_c

    .line 353
    .line 354
    goto :goto_c

    .line 355
    :cond_c
    :try_start_3
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 356
    .line 357
    .line 358
    move-result-object v14

    .line 359
    const-wide/16 v17, 0x1000

    .line 360
    .line 361
    invoke-static/range {v17 .. v18}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    invoke-virtual {v14, v0, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 366
    .line 367
    .line 368
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 369
    goto :goto_9

    .line 370
    :catch_3
    move-exception v0

    .line 371
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    const-string v14, "Error while getting package Info "

    .line 374
    .line 375
    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    const-string v14, "LOMUtils"

    .line 379
    .line 380
    invoke-static {v0, v6, v14}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const/4 v0, 0x0

    .line 384
    :goto_9
    if-eqz v0, :cond_10

    .line 385
    .line 386
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 387
    .line 388
    const/4 v14, 0x0

    .line 389
    if-eqz v6, :cond_d

    .line 390
    .line 391
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 392
    .line 393
    .line 394
    move-result v6

    .line 395
    if-nez v6, :cond_d

    .line 396
    .line 397
    move/from16 v6, v16

    .line 398
    .line 399
    goto :goto_a

    .line 400
    :cond_d
    move v6, v14

    .line 401
    :goto_a
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    .line 402
    .line 403
    .line 404
    move-result v17

    .line 405
    if-eqz v17, :cond_e

    .line 406
    .line 407
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    goto :goto_b

    .line 414
    :cond_e
    move v0, v14

    .line 415
    :goto_b
    if-nez v6, :cond_10

    .line 416
    .line 417
    if-nez v0, :cond_f

    .line 418
    .line 419
    goto :goto_c

    .line 420
    :cond_f
    move/from16 v16, v14

    .line 421
    .line 422
    :cond_10
    :goto_c
    if-eqz v16, :cond_11

    .line 423
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .line 428
    .line 429
    const-string v6, "Overlay file is invalid. Deleting file "

    .line 430
    .line 431
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-static {v7, v0}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-static {v11}, Lcom/samsung/android/localeoverlaymanager/Utils;->deleteFile(Ljava/io/File;)V

    .line 445
    .line 446
    .line 447
    const/4 v6, 0x1

    .line 448
    goto/16 :goto_5

    .line 449
    .line 450
    :catch_4
    move-exception v0

    .line 451
    const/4 v6, 0x1

    .line 452
    goto :goto_d

    .line 453
    :cond_11
    iget-object v0, v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 454
    .line 455
    iget-object v0, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractedLocaleApks:Ljava/util/Set;

    .line 456
    .line 457
    check-cast v0, Ljava/util/HashSet;

    .line 458
    .line 459
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 463
    .line 464
    const/4 v6, 0x1

    .line 465
    :try_start_5
    iput-boolean v6, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mForceEnable:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 466
    .line 467
    goto/16 :goto_5

    .line 468
    .line 469
    :goto_d
    new-instance v11, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    const-string v14, "Extraction unsuccessful TID = "

    .line 472
    .line 473
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 477
    .line 478
    .line 479
    move-result-object v14

    .line 480
    invoke-virtual {v14}, Ljava/lang/Thread;->getId()J

    .line 481
    .line 482
    .line 483
    move-result-wide v14

    .line 484
    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    const-string v10, ", error: "

    .line 494
    .line 495
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v10

    .line 502
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v10

    .line 509
    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .line 511
    .line 512
    invoke-static {v10}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logToFile(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->syncLogFile()V

    .line 516
    .line 517
    .line 518
    new-instance v10, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string v11, "Couldn\'t copy "

    .line 521
    .line 522
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    const-string v11, " "

    .line 529
    .line 530
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .line 546
    .line 547
    goto/16 :goto_5

    .line 548
    .line 549
    :cond_12
    const-string v0, "doCopy: Finished"

    .line 550
    .line 551
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .line 553
    .line 554
    return-void
.end method

.method public final run()V
    .locals 8

    .line 1
    const-string/jumbo v0, "run() called.  Path : "

    .line 2
    .line 3
    .line 4
    const-string v1, "aInfo is null : "

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v3, "run() called.  mExtractionTask: "

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "ApkExtractorRunnable"

    .line 24
    .line 25
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/content/Context;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 42
    :goto_0
    if-eqz v2, :cond_2

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 46
    .line 47
    iget-object v5, v5, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mTargetPackage:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-wide/16 v6, 0x0

    .line 54
    .line 55
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-object v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 86
    .line 87
    invoke-virtual {v1, v0, v4}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->handleState(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;I)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    new-instance v1, Landroid/content/res/AssetManager$Builder;

    .line 115
    .line 116
    invoke-direct {v1}, Landroid/content/res/AssetManager$Builder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager$Builder;->addApkAssets(Landroid/content/res/ApkAssets;)Landroid/content/res/AssetManager$Builder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/content/res/AssetManager$Builder;->build()Landroid/content/res/AssetManager;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 127
    .line 128
    iget-object v2, v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mLocaleLanguages:Ljava/util/Set;

    .line 129
    .line 130
    iget-boolean v1, v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mShouldReplace:Z

    .line 131
    .line 132
    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->doCopy(Landroid/content/res/AssetManager;Ljava/util/Set;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v2, "Package not found "

    .line 139
    .line 140
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v1, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 152
    .line 153
    invoke-virtual {v0, p0, v4}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->handleState(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;I)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 163
    .line 164
    const/4 v1, 0x1

    .line 165
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->handleState(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;I)V

    .line 166
    .line 167
    .line 168
    return-void
.end method
