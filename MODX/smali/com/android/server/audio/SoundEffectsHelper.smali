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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    if-eqz p1, :cond_16

    .line 7
    iget-object p0, v0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    goto/16 :goto_e

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 21
    if-eqz p1, :cond_16

    .line 23
    invoke-interface {p1, v1}, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;->run(Z)V

    .line 26
    goto/16 :goto_e

    .line 28
    :cond_1
    const-string/jumbo v0, "effects loading started"

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/media/SoundPool$Builder;

    .line 36
    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 39
    const/4 v2, 0x4

    .line 40
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 43
    move-result-object v0

    .line 44
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    .line 46
    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 49
    const/16 v4, 0xd

    .line 51
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 73
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPlayerAvailableCb:Ljava/util/function/Consumer;

    .line 75
    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 78
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v3

    .line 85
    const-string v4, "AS.SfxHelper"

    .line 87
    if-eqz v0, :cond_2

    .line 89
    iget-boolean v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    .line 91
    if-eqz v5, :cond_2

    .line 93
    iput-boolean v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    .line 95
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 97
    check-cast v5, Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 102
    move-result v5

    .line 103
    if-nez v5, :cond_3

    .line 105
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 107
    check-cast v5, Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 115
    check-cast v5, Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    move-result v5

    .line 121
    if-nez v5, :cond_3

    .line 123
    goto/16 :goto_9

    .line 125
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 127
    check-cast v5, Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 132
    move-result v5

    .line 133
    iget-object v6, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 135
    new-instance v7, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 137
    const-string v8, "Effect_Tick.ogg"

    .line 139
    invoke-direct {v7, v8}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    .line 142
    check-cast v6, Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v6, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    .line 149
    invoke-static {v6, v5}, Ljava/util/Arrays;->fill([II)V

    .line 152
    const/4 v5, 0x0

    .line 153
    if-eqz v0, :cond_4

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 157
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_4

    .line 163
    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->getSoundThemeXmlParser()Landroid/content/res/XmlResourceParser;

    .line 166
    move-result-object v0

    .line 167
    goto :goto_1

    .line 168
    :catchall_0
    move-exception p0

    .line 169
    goto/16 :goto_f

    .line 171
    :catch_0
    move-exception v0

    .line 172
    goto/16 :goto_5

    .line 174
    :catch_1
    move-exception v0

    .line 175
    goto/16 :goto_7

    .line 177
    :catch_2
    move-exception v0

    .line 178
    goto/16 :goto_8

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 185
    move-result-object v0

    .line 186
    const v7, 0x1170001

    .line 189
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

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

    .line 195
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v7, "version"

    .line 201
    invoke-interface {v0, v5, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    move-result-object v7

    .line 205
    new-instance v8, Ljava/util/HashMap;

    .line 207
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 210
    const-string v9, "1.0"

    .line 212
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_d

    .line 218
    :cond_5
    :goto_2
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 221
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 224
    move-result-object v7

    .line 225
    if-nez v7, :cond_6

    .line 227
    goto/16 :goto_3

    .line 229
    :cond_6
    const-string/jumbo v9, "group"

    .line 232
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    move-result v9

    .line 236
    if-eqz v9, :cond_7

    .line 238
    const-string/jumbo v7, "name"

    .line 241
    invoke-interface {v0, v5, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    move-result-object v7

    .line 245
    const-string/jumbo v9, "touch_sounds"

    .line 248
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    move-result v9

    .line 252
    if-nez v9, :cond_5

    .line 254
    new-instance v9, Ljava/lang/StringBuilder;

    .line 256
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    const-string v10, "Unsupported group name: "

    .line 261
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    move-result-object v7

    .line 271
    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    goto :goto_2

    .line 275
    :catchall_1
    move-exception p0

    .line 276
    move-object v5, v0

    .line 277
    goto/16 :goto_f

    .line 279
    :catch_3
    move-exception v3

    .line 280
    move-object v5, v0

    .line 281
    move-object v0, v3

    .line 282
    goto/16 :goto_5

    .line 284
    :catch_4
    move-exception v3

    .line 285
    move-object v5, v0

    .line 286
    move-object v0, v3

    .line 287
    goto/16 :goto_7

    .line 289
    :catch_5
    move-exception v3

    .line 290
    move-object v5, v0

    .line 291
    move-object v0, v3

    .line 292
    goto/16 :goto_8

    .line 294
    :cond_7
    const-string v9, "asset"

    .line 296
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    move-result v7

    .line 300
    if-eqz v7, :cond_9

    .line 302
    const-string/jumbo v7, "id"

    .line 305
    invoke-interface {v0, v5, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    move-result-object v7

    .line 309
    const-string/jumbo v9, "file"

    .line 312
    invoke-interface {v0, v5, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 318
    invoke-virtual {v10, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 321
    move-result-object v10

    .line 322
    invoke-virtual {v10, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 325
    move-result v10

    .line 326
    invoke-static {v10}, Lcom/samsung/android/media/AudioFxHelper;->getPlaySoundTypeForSEP(I)I

    .line 329
    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 330
    :try_start_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    move-result-object v11

    .line 334
    invoke-virtual {v8, v11, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    move-result-object v11

    .line 338
    check-cast v11, Ljava/lang/Integer;

    .line 340
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 343
    move-result v11

    .line 344
    add-int/2addr v11, v1

    .line 345
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    move-result-object v12

    .line 349
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    move-result-object v13

    .line 353
    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    if-le v11, v1, :cond_8

    .line 358
    new-instance v11, Ljava/lang/StringBuilder;

    .line 360
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    const-string v12, "Duplicate definition for sound ID: "

    .line 365
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    move-result-object v7

    .line 375
    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_8
    invoke-virtual {p0, v9}, Lcom/android/server/audio/SoundEffectsHelper;->findOrAddResourceByFileName(Ljava/lang/String;)I

    .line 381
    move-result v7

    .line 382
    aput v7, v6, v10

    .line 384
    sget-boolean v7, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_EXTENSION_SITUATION_VOLUME:Z

    .line 386
    if-eqz v7, :cond_5

    .line 388
    invoke-static {v10}, Lcom/samsung/android/media/AudioFxHelper;->isPreDefinedEffectKey(I)Z

    .line 391
    move-result v7

    .line 392
    if-nez v7, :cond_5

    .line 394
    iget-object v7, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 396
    aget v9, v6, v10

    .line 398
    check-cast v7, Ljava/util/ArrayList;

    .line 400
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 403
    move-result-object v7

    .line 404
    check-cast v7, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 406
    iput-boolean v1, v7, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mHasSituationVolume:Z

    .line 408
    goto/16 :goto_2

    .line 410
    :catch_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 412
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    const-string v10, "Invalid sound ID: "

    .line 417
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    move-result-object v7

    .line 427
    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    goto/16 :goto_2

    .line 432
    :cond_9
    :goto_3
    invoke-static {v8}, Lcom/android/server/audio/SoundEffectsHelper;->allNavigationRepeatSoundsParsed(Ljava/util/Map;)Z

    .line 435
    move-result v5

    .line 436
    const/16 v6, 0xb

    .line 438
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    move-result-object v6

    .line 442
    invoke-virtual {v8, v6, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-result-object v3

    .line 446
    check-cast v3, Ljava/lang/Integer;

    .line 448
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 451
    move-result v3

    .line 452
    if-lez v3, :cond_a

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

    .line 459
    if-eqz v3, :cond_d

    .line 461
    :cond_b
    iget-object v6, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    .line 463
    const-class v7, Landroid/media/AudioManager;

    .line 465
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 468
    move-result-object v6

    .line 469
    check-cast v6, Landroid/media/AudioManager;

    .line 471
    if-eqz v6, :cond_c

    .line 473
    if-eqz v5, :cond_c

    .line 475
    invoke-virtual {v6, v1}, Landroid/media/AudioManager;->setNavigationRepeatSoundEffectsEnabled(Z)V

    .line 478
    :cond_c
    if-eqz v6, :cond_d

    .line 480
    if-eqz v3, :cond_d

    .line 482
    invoke-virtual {v6, v1}, Landroid/media/AudioManager;->setHomeSoundEffectEnabled(Z)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 485
    :cond_d
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 488
    goto :goto_9

    .line 489
    :goto_5
    :try_start_4
    const-string v3, "I/O exception reading sound assets"

    .line 491
    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 494
    if-eqz v5, :cond_e

    .line 496
    :goto_6
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 499
    goto :goto_9

    .line 500
    :goto_7
    :try_start_5
    const-string v3, "XML parser exception reading sound assets"

    .line 502
    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    if-eqz v5, :cond_e

    .line 507
    goto :goto_6

    .line 508
    :goto_8
    const-string v3, "audio assets file not found"

    .line 510
    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 513
    if-eqz v5, :cond_e

    .line 515
    goto :goto_6

    .line 516
    :cond_e
    :goto_9
    new-instance v0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 518
    invoke-direct {v0, p0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    .line 521
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 523
    new-instance v3, Lcom/android/server/audio/SoundEffectsHelper$1;

    .line 525
    const/4 v5, 0x0

    .line 526
    invoke-direct {v3, p0, v5}, Lcom/android/server/audio/SoundEffectsHelper$1;-><init>(Lcom/android/server/audio/SoundEffectsHelper;I)V

    .line 529
    iget-object v0, v0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 531
    check-cast v0, Ljava/util/ArrayList;

    .line 533
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 538
    if-eqz p1, :cond_f

    .line 540
    iget-object v0, v0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 542
    check-cast v0, Ljava/util/ArrayList;

    .line 544
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    goto :goto_a

    .line 548
    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    :goto_a
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 553
    check-cast p1, Ljava/util/ArrayList;

    .line 555
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 558
    move-result-object p1

    .line 559
    move v0, v2

    .line 560
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 563
    move-result v3

    .line 564
    if-eqz v3, :cond_14

    .line 566
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 569
    move-result-object v3

    .line 570
    check-cast v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 572
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    .line 574
    if-eqz v5, :cond_11

    .line 576
    const-string v6, "/media/audio/ui/"

    .line 578
    if-eqz v5, :cond_10

    .line 580
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 582
    const-string v7, "Open_theme"

    .line 584
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 587
    move-result v5

    .line 588
    if-eqz v5, :cond_10

    .line 590
    new-instance v5, Ljava/lang/StringBuilder;

    .line 592
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    iget-object v7, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 597
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget-object v7, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    .line 602
    check-cast v7, Ljava/util/ArrayList;

    .line 604
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 607
    move-result-object v7

    .line 608
    check-cast v7, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 610
    iget-object v7, v7, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 612
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    move-result-object v5

    .line 619
    goto :goto_c

    .line 620
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    .line 622
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 628
    move-result-object v7

    .line 629
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget-object v7, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 637
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    move-result-object v5

    .line 644
    :goto_c
    new-instance v7, Ljava/io/File;

    .line 646
    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    .line 652
    move-result v7

    .line 653
    if-nez v7, :cond_12

    .line 655
    new-instance v5, Ljava/lang/StringBuilder;

    .line 657
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 663
    move-result-object v7

    .line 664
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    iget-object v6, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 672
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    move-result-object v5

    .line 679
    goto :goto_d

    .line 680
    :cond_11
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    .line 683
    move-result-object v5

    .line 684
    :cond_12
    :goto_d
    iget-object v6, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 686
    invoke-virtual {v6, v5, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 689
    move-result v6

    .line 690
    if-lez v6, :cond_13

    .line 692
    iput v6, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 694
    iput-boolean v2, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 696
    add-int/lit8 v0, v0, 0x1

    .line 698
    goto/16 :goto_b

    .line 700
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 702
    const-string/jumbo v6, "effect "

    .line 705
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string v6, " rejected by SoundPool"

    .line 713
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 719
    move-result-object v3

    .line 720
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    .line 725
    const-string v6, "SoundPool could not load file: "

    .line 727
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 736
    move-result-object v3

    .line 737
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    goto/16 :goto_b

    .line 742
    :cond_14
    if-lez v0, :cond_15

    .line 744
    const/4 v9, 0x0

    .line 745
    const/16 v10, 0x3a98

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

    .line 754
    goto :goto_e

    .line 755
    :cond_15
    const-string/jumbo p1, "effects loading completed, no effects to load"

    .line 758
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 761
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 763
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 766
    :cond_16
    :goto_e
    return-void

    .line 767
    :goto_f
    if-eqz v5, :cond_17

    .line 769
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 772
    :cond_17
    throw p0
.end method

.method public static -$$Nest$smcleanupPlayer(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 6
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "MediaPlayer IllegalStateException: "

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    const-string v0, "AS.SfxHelper"

    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda16;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 6
    const/16 v1, 0x21

    .line 8
    const-string v2, "Sound Effects Loading"

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 13
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/utils/EventLogger;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 22
    const/16 v0, 0x17

    .line 24
    new-array v0, v0, [I

    .line 26
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    .line 28
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    .line 31
    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iput-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    .line 43
    iput-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v3

    .line 51
    const v4, 0x10e0157

    .line 54
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 57
    move-result v3

    .line 58
    iput v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxAttenuationDb:I

    .line 60
    iput-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPlayerAvailableCb:Ljava/util/function/Consumer;

    .line 62
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    .line 64
    if-eqz p2, :cond_8

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    move-result-object p2

    .line 70
    const-string/jumbo v3, "theme_touch_sound"

    .line 73
    const/4 v4, -0x2

    .line 74
    invoke-static {p2, v3, v4}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    iput-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 80
    const-string/jumbo v3, "system_sound"

    .line 83
    invoke-static {p2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    iput-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 89
    const-string/jumbo v3, "prev_system_sound"

    .line 92
    invoke-static {p2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 95
    move-result-object p2

    .line 96
    iput-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 98
    const-string p2, "AS.SfxHelper"

    .line 100
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_0

    .line 106
    goto/16 :goto_7

    .line 108
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 111
    move-result v3

    .line 112
    new-instance v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 114
    const-string v5, "Effect_Tick.ogg"

    .line 116
    invoke-direct {v4, v5}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 125
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    move-result-object p1

    .line 129
    const v0, 0x1170001

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

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

    .line 138
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v0, "version"

    .line 144
    invoke-interface {p1, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    const-string v2, "1.0"

    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_6

    .line 156
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 159
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    if-nez v0, :cond_2

    .line 165
    goto/16 :goto_1

    .line 167
    :cond_2
    const-string/jumbo v2, "group"

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_3

    .line 176
    const-string/jumbo v0, "name"

    .line 179
    invoke-interface {p1, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    const-string/jumbo v2, "touch_sounds"

    .line 186
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result v2

    .line 190
    if-nez v2, :cond_1

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    const-string v3, "Unsupported group name: "

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v0

    .line 209
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    goto :goto_0

    .line 213
    :catchall_0
    move-exception p0

    .line 214
    move-object v1, p1

    .line 215
    goto/16 :goto_6

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

    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_6

    .line 234
    const-string/jumbo v0, "file"

    .line 237
    invoke-interface {p1, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    .line 243
    check-cast v2, Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 248
    move-result-object v2

    .line 249
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_5

    .line 255
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    move-result-object v3

    .line 259
    check-cast v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 261
    iget-object v3, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 263
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 266
    move-result v3

    .line 267
    if-eqz v3, :cond_4

    .line 269
    goto :goto_0

    .line 270
    :cond_5
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    .line 272
    new-instance v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 274
    invoke-direct {v3, v0}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    .line 277
    check-cast v2, Ljava/util/ArrayList;

    .line 279
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    goto :goto_0

    .line 283
    :cond_6
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

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

    .line 297
    invoke-static {p2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 300
    if-eqz v1, :cond_8

    .line 302
    :goto_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 305
    goto :goto_7

    .line 306
    :goto_4
    :try_start_3
    const-string p1, "XML parser exception reading touch sound assets"

    .line 308
    invoke-static {p2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    if-eqz v1, :cond_8

    .line 313
    goto :goto_3

    .line 314
    :goto_5
    const-string p1, "audio assets file not found"

    .line 316
    invoke-static {p2, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 319
    if-eqz v1, :cond_8

    .line 321
    goto :goto_3

    .line 322
    :goto_6
    if-eqz v1, :cond_7

    .line 324
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 327
    :cond_7
    throw p0

    .line 328
    :cond_8
    :goto_7
    new-instance p1, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    .line 330
    invoke-direct {p1, p0}, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    .line 333
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    .line 335
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 338
    monitor-enter p0

    .line 339
    :goto_8
    :try_start_4
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 341
    if-nez p1, :cond_9

    .line 343
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

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

    .line 351
    new-instance p2, Ljava/lang/StringBuilder;

    .line 353
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    const-string v0, "Interrupted while waiting "

    .line 358
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    .line 363
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v0, " to start"

    .line 372
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    move-result-object p2

    .line 379
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    check-cast p0, Ljava/util/HashMap;

    .line 14
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Integer;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result v0

    .line 24
    const/16 v3, 0xd

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v3

    .line 40
    add-int/2addr v3, v0

    .line 41
    const/16 v0, 0xe

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Integer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 56
    move-result v0

    .line 57
    add-int/2addr v0, v3

    .line 58
    const/16 v3, 0xf

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {p0, v3, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Ljava/lang/Integer;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 73
    move-result p0

    .line 74
    add-int/2addr p0, v0

    .line 75
    const/4 v0, 0x4

    .line 76
    if-ne p0, v0, :cond_0

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

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "  Message handler (watch for unhandled messages):"

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 12
    new-instance v1, Landroid/util/PrintWriterPrinter;

    .line 14
    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 17
    const-string v2, "  "

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "  Message handler is null"

    .line 25
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "  Default attenuation (dB): "

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxAttenuationDb:I

    .line 37
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 40
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/utils/EventLogger;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

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

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 22
    iget-object v1, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 30
    return v0

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 36
    check-cast v0, Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result v0

    .line 42
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 44
    new-instance v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 46
    invoke-direct {v1, p1}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    .line 49
    check-cast p0, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return v0
.end method

.method public final getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    .line 3
    const-string v1, "/media/audio/ui/"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 9
    const-string v2, "Open_theme"

    .line 11
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object p0, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v0, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 63
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object p1, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 3
    const-string v1, "Calm"

    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    const v2, 0x1170002

    .line 12
    if-eqz v0, :cond_0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 17
    const-string v3, "Fun"

    .line 19
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 23
    const v4, 0x1170003

    .line 26
    if-eqz v0, :cond_1

    .line 28
    :goto_0
    move v2, v4

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 32
    const-string v5, "Retro"

    .line 34
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    move-result v0

    .line 38
    const v6, 0x1170004

    .line 41
    if-eqz v0, :cond_2

    .line 43
    :goto_1
    move v2, v6

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 47
    const-string v7, "Open_theme"

    .line 49
    invoke-static {v0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_5

    .line 55
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 57
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 66
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4

    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 75
    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_5

    .line 81
    goto :goto_1

    .line 82
    :cond_5
    const v2, 0x1170001

    .line 85
    :goto_2
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

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

    .line 10
    return-void
.end method

.method public final logEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/utils/EventLogger;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 11
    return-void
.end method

.method public final onUnloadSoundEffects()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    new-instance v1, Lcom/android/server/audio/SoundEffectsHelper$1;

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/server/audio/SoundEffectsHelper$1;-><init>(Lcom/android/server/audio/SoundEffectsHelper;I)V

    .line 16
    iget-object v0, v0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_1
    const-string/jumbo v0, "effects unloading started"

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v0

    .line 37
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 49
    iget v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 51
    if-eqz v2, :cond_2

    .line 53
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 55
    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 58
    const/4 v2, 0x0

    .line 59
    iput v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 61
    iput-boolean v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 66
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 69
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 72
    const-string/jumbo v0, "effects unloading completed"

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

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

    .line 10
    return-void
.end method

.method public final sendMsg(IIILcom/android/server/audio/AudioService$LoadSoundEffectReply;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 6
    move-result-object p1

    .line 7
    int-to-long p2, p5

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

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

    .line 10
    return-void
.end method
