.class public final Lcom/android/server/audio/SoundEffectsHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultResources:Ljava/util/List;

.field public final mEffects:[I

.field public final mPlayerAvailableCb:Ljava/util/function/Consumer;

.field public mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

.field public final mResources:Ljava/util/List;

.field public final mSfxAttenuationDb:I

.field public mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

.field public final mSfxLogger:Lcom/android/server/utils/EventLogger;

.field public final mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

.field public mSoundPool:Landroid/media/SoundPool;

.field public mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

.field public mSystemSoundFromSoundTheme:Ljava/lang/String;

.field public mThemeTouchSoundPath:Ljava/lang/String;

.field public mUpdateSystemSound:Z


# direct methods
.method public static -$$Nest$monLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_16

    .line 6
    .line 7
    iget-object p0, v0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 8
    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    goto/16 :goto_e

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    if-eqz p1, :cond_16

    .line 22
    .line 23
    invoke-interface {p1, v1}, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;->run(Z)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_e

    .line 27
    .line 28
    :cond_1
    const-string/jumbo v0, "effects loading started"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroid/media/SoundPool$Builder;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    .line 45
    .line 46
    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 47
    .line 48
    .line 49
    const/16 v4, 0xd

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPlayerAvailableCb:Ljava/util/function/Consumer;

    .line 74
    .line 75
    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const-string v4, "AS.SfxHelper"

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-boolean v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    .line 90
    .line 91
    if-eqz v5, :cond_2

    .line 92
    .line 93
    iput-boolean v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    .line 94
    .line 95
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 96
    .line 97
    check-cast v5, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-nez v5, :cond_3

    .line 104
    .line 105
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 106
    .line 107
    check-cast v5, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 114
    .line 115
    check-cast v5, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-nez v5, :cond_3

    .line 122
    .line 123
    goto/16 :goto_9

    .line 124
    .line 125
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 126
    .line 127
    check-cast v5, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    iget-object v6, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 134
    .line 135
    new-instance v7, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 136
    .line 137
    const-string v8, "Effect_Tick.ogg"

    .line 138
    .line 139
    invoke-direct {v7, v8}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    check-cast v6, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    iget-object v6, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    .line 148
    .line 149
    invoke-static {v6, v5}, Ljava/util/Arrays;->fill([II)V

    .line 150
    .line 151
    .line 152
    const/4 v5, 0x0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_4

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->getSoundThemeXmlParser()Landroid/content/res/XmlResourceParser;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    goto :goto_1

    .line 168
    :catchall_0
    move-exception p0

    .line 169
    goto/16 :goto_f

    .line 170
    .line 171
    :catch_0
    move-exception v0

    .line 172
    goto/16 :goto_5

    .line 173
    .line 174
    :catch_1
    move-exception v0

    .line 175
    goto/16 :goto_7

    .line 176
    .line 177
    :catch_2
    move-exception v0

    .line 178
    goto/16 :goto_8

    .line 179
    .line 180
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const v7, 0x1170001

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 190
    .line 191
    .line 192
    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_1
    :try_start_1
    const-string v7, "audio_assets"

    .line 194
    .line 195
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string/jumbo v7, "version"

    .line 199
    .line 200
    .line 201
    invoke-interface {v0, v5, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    new-instance v8, Ljava/util/HashMap;

    .line 206
    .line 207
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v9, "1.0"

    .line 211
    .line 212
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_d

    .line 217
    .line 218
    :cond_5
    :goto_2
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    if-nez v7, :cond_6

    .line 226
    .line 227
    goto/16 :goto_3

    .line 228
    .line 229
    :cond_6
    const-string/jumbo v9, "group"

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    if-eqz v9, :cond_7

    .line 237
    .line 238
    const-string/jumbo v7, "name"

    .line 239
    .line 240
    .line 241
    invoke-interface {v0, v5, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    const-string/jumbo v9, "touch_sounds"

    .line 246
    .line 247
    .line 248
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v9

    .line 252
    if-nez v9, :cond_5

    .line 253
    .line 254
    new-instance v9, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    const-string v10, "Unsupported group name: "

    .line 260
    .line 261
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :catchall_1
    move-exception p0

    .line 276
    move-object v5, v0

    .line 277
    goto/16 :goto_f

    .line 278
    .line 279
    :catch_3
    move-exception v3

    .line 280
    move-object v5, v0

    .line 281
    move-object v0, v3

    .line 282
    goto/16 :goto_5

    .line 283
    .line 284
    :catch_4
    move-exception v3

    .line 285
    move-object v5, v0

    .line 286
    move-object v0, v3

    .line 287
    goto/16 :goto_7

    .line 288
    .line 289
    :catch_5
    move-exception v3

    .line 290
    move-object v5, v0

    .line 291
    move-object v0, v3

    .line 292
    goto/16 :goto_8

    .line 293
    .line 294
    :cond_7
    const-string v9, "asset"

    .line 295
    .line 296
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    if-eqz v7, :cond_9

    .line 301
    .line 302
    const-string/jumbo v7, "id"

    .line 303
    .line 304
    .line 305
    invoke-interface {v0, v5, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    const-string/jumbo v9, "file"

    .line 310
    .line 311
    .line 312
    invoke-interface {v0, v5, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v9
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 316
    :try_start_2
    const-class v10, Landroid/media/AudioManager;

    .line 317
    .line 318
    invoke-virtual {v10, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    invoke-virtual {v10, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 323
    .line 324
    .line 325
    move-result v10

    .line 326
    invoke-static {v10}, Lcom/samsung/android/media/AudioFxHelper;->getPlaySoundTypeForSEP(I)I

    .line 327
    .line 328
    .line 329
    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 330
    :try_start_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    .line 332
    .line 333
    move-result-object v11

    .line 334
    invoke-virtual {v8, v11, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    check-cast v11, Ljava/lang/Integer;

    .line 339
    .line 340
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 341
    .line 342
    .line 343
    move-result v11

    .line 344
    add-int/2addr v11, v1

    .line 345
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v12

    .line 349
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object v13

    .line 353
    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    if-le v11, v1, :cond_8

    .line 357
    .line 358
    new-instance v11, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .line 362
    .line 363
    const-string v12, "Duplicate definition for sound ID: "

    .line 364
    .line 365
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v7

    .line 375
    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    :cond_8
    invoke-virtual {p0, v9}, Lcom/android/server/audio/SoundEffectsHelper;->findOrAddResourceByFileName(Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    aput v7, v6, v10

    .line 383
    .line 384
    sget-boolean v7, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_EXTENSION_SITUATION_VOLUME:Z

    .line 385
    .line 386
    if-eqz v7, :cond_5

    .line 387
    .line 388
    invoke-static {v10}, Lcom/samsung/android/media/AudioFxHelper;->isPreDefinedEffectKey(I)Z

    .line 389
    .line 390
    .line 391
    move-result v7

    .line 392
    if-nez v7, :cond_5

    .line 393
    .line 394
    iget-object v7, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 395
    .line 396
    aget v9, v6, v10

    .line 397
    .line 398
    check-cast v7, Ljava/util/ArrayList;

    .line 399
    .line 400
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v7

    .line 404
    check-cast v7, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 405
    .line 406
    iput-boolean v1, v7, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mHasSituationVolume:Z

    .line 407
    .line 408
    goto/16 :goto_2

    .line 409
    .line 410
    :catch_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .line 414
    .line 415
    const-string v10, "Invalid sound ID: "

    .line 416
    .line 417
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    goto/16 :goto_2

    .line 431
    .line 432
    :cond_9
    :goto_3
    invoke-static {v8}, Lcom/android/server/audio/SoundEffectsHelper;->allNavigationRepeatSoundsParsed(Ljava/util/Map;)Z

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    const/16 v6, 0xb

    .line 437
    .line 438
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    invoke-virtual {v8, v6, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    check-cast v3, Ljava/lang/Integer;

    .line 447
    .line 448
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    if-lez v3, :cond_a

    .line 453
    .line 454
    move v3, v1

    .line 455
    goto :goto_4

    .line 456
    :cond_a
    move v3, v2

    .line 457
    :goto_4
    if-nez v5, :cond_b

    .line 458
    .line 459
    if-eqz v3, :cond_d

    .line 460
    .line 461
    :cond_b
    iget-object v6, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    .line 462
    .line 463
    const-class v7, Landroid/media/AudioManager;

    .line 464
    .line 465
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v6

    .line 469
    check-cast v6, Landroid/media/AudioManager;

    .line 470
    .line 471
    if-eqz v6, :cond_c

    .line 472
    .line 473
    if-eqz v5, :cond_c

    .line 474
    .line 475
    invoke-virtual {v6, v1}, Landroid/media/AudioManager;->setNavigationRepeatSoundEffectsEnabled(Z)V

    .line 476
    .line 477
    .line 478
    :cond_c
    if-eqz v6, :cond_d

    .line 479
    .line 480
    if-eqz v3, :cond_d

    .line 481
    .line 482
    invoke-virtual {v6, v1}, Landroid/media/AudioManager;->setHomeSoundEffectEnabled(Z)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 483
    .line 484
    .line 485
    :cond_d
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 486
    .line 487
    .line 488
    goto :goto_9

    .line 489
    :goto_5
    :try_start_4
    const-string v3, "I/O exception reading sound assets"

    .line 490
    .line 491
    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 492
    .line 493
    .line 494
    if-eqz v5, :cond_e

    .line 495
    .line 496
    :goto_6
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 497
    .line 498
    .line 499
    goto :goto_9

    .line 500
    :goto_7
    :try_start_5
    const-string v3, "XML parser exception reading sound assets"

    .line 501
    .line 502
    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    .line 504
    .line 505
    if-eqz v5, :cond_e

    .line 506
    .line 507
    goto :goto_6

    .line 508
    :goto_8
    const-string v3, "audio assets file not found"

    .line 509
    .line 510
    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 511
    .line 512
    .line 513
    if-eqz v5, :cond_e

    .line 514
    .line 515
    goto :goto_6

    .line 516
    :cond_e
    :goto_9
    new-instance v0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 517
    .line 518
    invoke-direct {v0, p0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    .line 519
    .line 520
    .line 521
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 522
    .line 523
    new-instance v3, Lcom/android/server/audio/SoundEffectsHelper$1;

    .line 524
    .line 525
    const/4 v5, 0x0

    .line 526
    invoke-direct {v3, p0, v5}, Lcom/android/server/audio/SoundEffectsHelper$1;-><init>(Lcom/android/server/audio/SoundEffectsHelper;I)V

    .line 527
    .line 528
    .line 529
    iget-object v0, v0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 530
    .line 531
    check-cast v0, Ljava/util/ArrayList;

    .line 532
    .line 533
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 537
    .line 538
    if-eqz p1, :cond_f

    .line 539
    .line 540
    iget-object v0, v0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 541
    .line 542
    check-cast v0, Ljava/util/ArrayList;

    .line 543
    .line 544
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    goto :goto_a

    .line 548
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    .line 550
    .line 551
    :goto_a
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 552
    .line 553
    check-cast p1, Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 556
    .line 557
    .line 558
    move-result-object p1

    .line 559
    move v0, v2

    .line 560
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 561
    .line 562
    .line 563
    move-result v3

    .line 564
    if-eqz v3, :cond_14

    .line 565
    .line 566
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    check-cast v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 571
    .line 572
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    .line 573
    .line 574
    if-eqz v5, :cond_11

    .line 575
    .line 576
    const-string v6, "/media/audio/ui/"

    .line 577
    .line 578
    if-eqz v5, :cond_10

    .line 579
    .line 580
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 581
    .line 582
    const-string v7, "Open_theme"

    .line 583
    .line 584
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 585
    .line 586
    .line 587
    move-result v5

    .line 588
    if-eqz v5, :cond_10

    .line 589
    .line 590
    new-instance v5, Ljava/lang/StringBuilder;

    .line 591
    .line 592
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    .line 594
    .line 595
    iget-object v7, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 596
    .line 597
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    iget-object v7, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    .line 601
    .line 602
    check-cast v7, Ljava/util/ArrayList;

    .line 603
    .line 604
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v7

    .line 608
    check-cast v7, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 609
    .line 610
    iget-object v7, v7, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 611
    .line 612
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v5

    .line 619
    goto :goto_c

    .line 620
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    .line 621
    .line 622
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    .line 624
    .line 625
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 626
    .line 627
    .line 628
    move-result-object v7

    .line 629
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    iget-object v7, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 636
    .line 637
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v5

    .line 644
    :goto_c
    new-instance v7, Ljava/io/File;

    .line 645
    .line 646
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    .line 650
    .line 651
    .line 652
    move-result v7

    .line 653
    if-nez v7, :cond_12

    .line 654
    .line 655
    new-instance v5, Ljava/lang/StringBuilder;

    .line 656
    .line 657
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    .line 659
    .line 660
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 661
    .line 662
    .line 663
    move-result-object v7

    .line 664
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    iget-object v6, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 671
    .line 672
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v5

    .line 679
    goto :goto_d

    .line 680
    :cond_11
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v5

    .line 684
    :cond_12
    :goto_d
    iget-object v6, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 685
    .line 686
    invoke-virtual {v6, v5, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 687
    .line 688
    .line 689
    move-result v6

    .line 690
    if-lez v6, :cond_13

    .line 691
    .line 692
    iput v6, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 693
    .line 694
    iput-boolean v2, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 695
    .line 696
    add-int/lit8 v0, v0, 0x1

    .line 697
    .line 698
    goto/16 :goto_b

    .line 699
    .line 700
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    const-string/jumbo v6, "effect "

    .line 703
    .line 704
    .line 705
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    const-string v6, " rejected by SoundPool"

    .line 712
    .line 713
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v3

    .line 720
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    .line 724
    .line 725
    const-string v6, "SoundPool could not load file: "

    .line 726
    .line 727
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v3

    .line 737
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    .line 739
    .line 740
    goto/16 :goto_b

    .line 741
    .line 742
    :cond_14
    if-lez v0, :cond_15

    .line 743
    .line 744
    const/4 v9, 0x0

    .line 745
    const/16 v10, 0x3a98

    .line 746
    .line 747
    const/4 v6, 0x3

    .line 748
    const/4 v7, 0x0

    .line 749
    const/4 v8, 0x0

    .line 750
    move-object v5, p0

    .line 751
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILcom/android/server/audio/AudioService$LoadSoundEffectReply;I)V

    .line 752
    .line 753
    .line 754
    goto :goto_e

    .line 755
    :cond_15
    const-string/jumbo p1, "effects loading completed, no effects to load"

    .line 756
    .line 757
    .line 758
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 762
    .line 763
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 764
    .line 765
    .line 766
    :cond_16
    :goto_e
    return-void

    .line 767
    :goto_f
    if-eqz v5, :cond_17

    .line 768
    .line 769
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 770
    .line 771
    .line 772
    :cond_17
    throw p0
.end method

.method public static -$$Nest$smcleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "MediaPlayer IllegalStateException: "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v0, "AS.SfxHelper"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 5
    .line 6
    const/16 v1, 0x21

    .line 7
    .line 8
    const-string v2, "Sound Effects Loading"

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/utils/EventLogger;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 21
    .line 22
    const/16 v0, 0x17

    .line 23
    .line 24
    new-array v0, v0, [I

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v2, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const v4, 0x10e0157

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iput v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxAttenuationDb:I

    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPlayerAvailableCb:Ljava/util/function/Consumer;

    .line 61
    .line 62
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    .line 63
    .line 64
    if-eqz p2, :cond_8

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string/jumbo v3, "theme_touch_sound"

    .line 71
    .line 72
    .line 73
    const/4 v4, -0x2

    .line 74
    invoke-static {p2, v3, v4}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iput-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 79
    .line 80
    const-string/jumbo v3, "system_sound"

    .line 81
    .line 82
    .line 83
    invoke-static {p2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iput-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 88
    .line 89
    const-string/jumbo v3, "prev_system_sound"

    .line 90
    .line 91
    .line 92
    invoke-static {p2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    iput-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 97
    .line 98
    const-string p2, "AS.SfxHelper"

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_0

    .line 105
    .line 106
    goto/16 :goto_7

    .line 107
    .line 108
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    new-instance v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 113
    .line 114
    const-string v5, "Effect_Tick.ogg"

    .line 115
    .line 116
    invoke-direct {v4, v5}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 123
    .line 124
    .line 125
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const v0, 0x1170001

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 133
    .line 134
    .line 135
    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :try_start_1
    const-string v0, "audio_assets"

    .line 137
    .line 138
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string/jumbo v0, "version"

    .line 142
    .line 143
    .line 144
    invoke-interface {p1, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const-string v2, "1.0"

    .line 149
    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-nez v0, :cond_2

    .line 164
    .line 165
    goto/16 :goto_1

    .line 166
    .line 167
    :cond_2
    const-string/jumbo v2, "group"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_3

    .line 175
    .line 176
    const-string/jumbo v0, "name"

    .line 177
    .line 178
    .line 179
    invoke-interface {p1, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const-string/jumbo v2, "touch_sounds"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-nez v2, :cond_1

    .line 191
    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    const-string v3, "Unsupported group name: "

    .line 198
    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :catchall_0
    move-exception p0

    .line 214
    move-object v1, p1

    .line 215
    goto/16 :goto_6

    .line 216
    .line 217
    :catch_0
    move-exception v0

    .line 218
    move-object v1, p1

    .line 219
    goto :goto_2

    .line 220
    :catch_1
    move-exception v0

    .line 221
    move-object v1, p1

    .line 222
    goto :goto_4

    .line 223
    :catch_2
    move-exception v0

    .line 224
    move-object v1, p1

    .line 225
    goto :goto_5

    .line 226
    :cond_3
    const-string v2, "asset"

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_6

    .line 233
    .line 234
    const-string/jumbo v0, "file"

    .line 235
    .line 236
    .line 237
    invoke-interface {p1, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    .line 242
    .line 243
    check-cast v2, Ljava/util/ArrayList;

    .line 244
    .line 245
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_5

    .line 254
    .line 255
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 260
    .line 261
    iget-object v3, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 262
    .line 263
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-eqz v3, :cond_4

    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_5
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    .line 271
    .line 272
    new-instance v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 273
    .line 274
    invoke-direct {v3, v0}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    check-cast v2, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    .line 281
    .line 282
    goto :goto_0

    .line 283
    :cond_6
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 284
    .line 285
    .line 286
    goto :goto_7

    .line 287
    :catchall_1
    move-exception p0

    .line 288
    goto :goto_6

    .line 289
    :catch_3
    move-exception v0

    .line 290
    goto :goto_2

    .line 291
    :catch_4
    move-exception v0

    .line 292
    goto :goto_4

    .line 293
    :catch_5
    move-exception v0

    .line 294
    goto :goto_5

    .line 295
    :goto_2
    :try_start_2
    const-string p1, "I/O exception reading touch sound assets"

    .line 296
    .line 297
    invoke-static {p2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 298
    .line 299
    .line 300
    if-eqz v1, :cond_8

    .line 301
    .line 302
    :goto_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 303
    .line 304
    .line 305
    goto :goto_7

    .line 306
    :goto_4
    :try_start_3
    const-string p1, "XML parser exception reading touch sound assets"

    .line 307
    .line 308
    invoke-static {p2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .line 310
    .line 311
    if-eqz v1, :cond_8

    .line 312
    .line 313
    goto :goto_3

    .line 314
    :goto_5
    const-string p1, "audio assets file not found"

    .line 315
    .line 316
    invoke-static {p2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 317
    .line 318
    .line 319
    if-eqz v1, :cond_8

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :goto_6
    if-eqz v1, :cond_7

    .line 323
    .line 324
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 325
    .line 326
    .line 327
    :cond_7
    throw p0

    .line 328
    :cond_8
    :goto_7
    new-instance p1, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    .line 329
    .line 330
    invoke-direct {p1, p0}, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    .line 331
    .line 332
    .line 333
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    .line 334
    .line 335
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 336
    .line 337
    .line 338
    monitor-enter p0

    .line 339
    :goto_8
    :try_start_4
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 340
    .line 341
    if-nez p1, :cond_9

    .line 342
    .line 343
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 344
    .line 345
    .line 346
    goto :goto_8

    .line 347
    :catchall_2
    move-exception p1

    .line 348
    goto :goto_9

    .line 349
    :catch_6
    :try_start_6
    const-string p1, "AS.SfxHelper"

    .line 350
    .line 351
    new-instance p2, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string v0, "Interrupted while waiting "

    .line 357
    .line 358
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v0, " to start"

    .line 371
    .line 372
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    goto :goto_8

    .line 383
    :cond_9
    monitor-exit p0

    .line 384
    return-void

    .line 385
    :goto_9
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 386
    throw p1
.end method

.method public static allNavigationRepeatSoundsParsed(Ljava/util/Map;)Z
    .locals 4

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast p0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v3, 0xd

    .line 25
    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    add-int/2addr v3, v0

    .line 41
    const/16 v0, 0xe

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v0, v3

    .line 58
    const/16 v3, 0xf

    .line 59
    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    add-int/2addr p0, v0

    .line 75
    const/4 v0, 0x4

    .line 76
    if-ne p0, v0, :cond_0

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    :cond_0
    return v1
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "  Message handler (watch for unhandled messages):"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 11
    .line 12
    new-instance v1, Landroid/util/PrintWriterPrinter;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "  "

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "  Message handler is null"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "  Default attenuation (dB): "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxAttenuationDb:I

    .line 36
    .line 37
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/utils/EventLogger;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final findOrAddResourceByFileName(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 3
    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 13
    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    return v0

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 35
    .line 36
    check-cast v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 43
    .line 44
    new-instance v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 45
    .line 46
    invoke-direct {v1, p1}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    check-cast p0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return v0
.end method

.method public final getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    .line 2
    .line 3
    const-string v1, "/media/audio/ui/"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "Open_theme"

    .line 10
    .line 11
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object p0, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v0, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object p1, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :cond_1
    return-object p0
.end method

.method public final getSoundThemeXmlParser()Landroid/content/res/XmlResourceParser;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Calm"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v2, 0x1170002

    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "Fun"

    .line 18
    .line 19
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const v4, 0x1170003

    .line 24
    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :goto_0
    move v2, v4

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 31
    .line 32
    const-string v5, "Retro"

    .line 33
    .line 34
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const v6, 0x1170004

    .line 39
    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    :goto_1
    move v2, v6

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 46
    .line 47
    const-string v7, "Open_theme"

    .line 48
    .line 49
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_5
    const v2, 0x1170001

    .line 83
    .line 84
    .line 85
    :goto_2
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method

.method public final loadSoundEffects(Lcom/android/server/audio/AudioService$LoadSoundEffectReply;)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v4, p1

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILcom/android/server/audio/AudioService$LoadSoundEffectReply;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final logEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/utils/EventLogger;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onUnloadSoundEffects()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v1, Lcom/android/server/audio/SoundEffectsHelper$1;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/server/audio/SoundEffectsHelper$1;-><init>(Lcom/android/server/audio/SoundEffectsHelper;I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 17
    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    :cond_1
    const-string/jumbo v0, "effects unloading started"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 30
    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 48
    .line 49
    iget v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 54
    .line 55
    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 56
    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    iput v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 60
    .line 61
    iput-boolean v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 71
    .line 72
    const-string/jumbo v0, "effects unloading completed"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final playSoundEffect(II)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILcom/android/server/audio/AudioService$LoadSoundEffectReply;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final sendMsg(IIILcom/android/server/audio/AudioService$LoadSoundEffectReply;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    int-to-long p2, p5

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final unloadSoundEffects()V
    .locals 6

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v4, 0x0

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p0

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILcom/android/server/audio/AudioService$LoadSoundEffectReply;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
