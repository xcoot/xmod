.class public final synthetic Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;

    .line 10
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 12
    iget-object v0, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 14
    const-string v1, "AS.AudioServiceExt"

    .line 16
    const-string/jumbo v2, "performSoftReset start"

    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt;->mSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    const-string/jumbo v3, "delete from audio_settings"

    .line 32
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 35
    iget-object v2, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    const-string/jumbo v3, "delete from device_addr"

    .line 40
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    iget-object v2, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    const-string/jumbo v3, "delete from app_volume"

    .line 48
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    iget-object v1, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    const-string/jumbo v2, "delete from selectedpkg"

    .line 56
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v3, "resetTable error "

    .line 66
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v3, "AudioService.DB"

    .line 71
    invoke-static {v1, v2, v3}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 74
    :goto_0
    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    .line 77
    const-string v2, "all_sound_off"

    .line 79
    const/4 v3, -0x2

    .line 80
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 83
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->setAllSoundMute()V

    .line 86
    const-string/jumbo v2, "master_mono"

    .line 89
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 92
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    .line 94
    if-eqz v2, :cond_0

    .line 96
    const-string/jumbo v2, "volume_monitor"

    .line 99
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    .line 104
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {v2}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/VolumeMonitorService;->resetByDataClear()V

    .line 113
    :cond_0
    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    .line 115
    const-string/jumbo v2, "hearing_musiccheck"

    .line 118
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 121
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 123
    iget v4, p0, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    .line 125
    invoke-static {v2, v4}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setAdaptSound(Landroid/content/Context;I)V

    .line 128
    iput v1, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    .line 130
    const-string/jumbo v2, "k2hd_effect"

    .line 133
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 136
    iget v2, p0, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    .line 138
    invoke-static {v2}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setUpScalerMode(I)V

    .line 141
    const-string/jumbo v2, "sound_alive_effect"

    .line 144
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 147
    const-string/jumbo v2, "tube_amp_effect"

    .line 150
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 153
    const-string v2, "adjust_media_volume_only"

    .line 155
    invoke-static {}, Lcom/samsung/android/server/audio/FactoryUtils;->isFactoryMode()Z

    .line 158
    move-result v4

    .line 159
    xor-int/lit8 v4, v4, 0x1

    .line 161
    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 164
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mService:Lcom/android/server/audio/AudioService;

    .line 166
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mVolumeSteps:[I

    .line 168
    if-eqz v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 172
    const-string/jumbo v4, "sec_volume_steps"

    .line 175
    const-string v5, ""

    .line 177
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 180
    :cond_1
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    .line 182
    if-eqz v2, :cond_2

    .line 184
    sput v1, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    .line 186
    const-string/jumbo v2, "headphone_monitoring"

    .line 189
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioServiceExt;->setNbQualityMode(I)V

    .line 195
    const-string/jumbo v2, "personalise_call_sound_soft"

    .line 198
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    const/4 v2, 0x0

    .line 202
    iput v2, p0, Lcom/android/server/audio/AudioServiceExt;->mMainBalance:F

    .line 204
    iget-object v4, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 206
    const-string/jumbo v5, "master_balance"

    .line 209
    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 212
    iget-object v4, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 214
    const-string/jumbo v5, "speaker_balance"

    .line 217
    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 220
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_SOUND_LOUDER:Z

    .line 222
    if-eqz v2, :cond_3

    .line 224
    iput-boolean v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipExtraVolume:Z

    .line 226
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 228
    const-string/jumbo v3, "voip_extra_volume"

    .line 231
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    :cond_3
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_VOIP_ANTI_HOWLING:Z

    .line 236
    if-eqz v2, :cond_4

    .line 238
    iput-boolean v1, p0, Lcom/android/server/audio/AudioServiceExt;->mVoipAntiHowling:Z

    .line 240
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 242
    const-string/jumbo v3, "voip_anti_howling"

    .line 245
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    :cond_4
    const-string/jumbo v2, "multisound_state"

    .line 251
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    const-string/jumbo v2, "multisound_app"

    .line 257
    const/4 v3, 0x0

    .line 258
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 261
    const-string/jumbo v2, "multisound_devicetype"

    .line 264
    const/4 v3, -0x1

    .line 265
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    .line 270
    if-eqz v2, :cond_5

    .line 272
    const-string/jumbo v2, "call_mic_mode"

    .line 275
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    const-string/jumbo v2, "voip_call_mic_mode"

    .line 281
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    :cond_5
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mService:Lcom/android/server/audio/AudioService;

    .line 286
    const-string v0, "AS.AudioService.performSoftReset"

    .line 288
    const/4 v2, 0x2

    .line 289
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 292
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    .line 295
    move-result v0

    .line 296
    move v2, v1

    .line 297
    :goto_1
    if-ge v2, v0, :cond_c

    .line 299
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 301
    aget-object v3, v3, v2

    .line 303
    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 305
    aget v4, v4, v2

    .line 307
    const/4 v11, 0x3

    .line 308
    if-ne v4, v11, :cond_6

    .line 310
    if-eq v2, v11, :cond_6

    .line 312
    goto :goto_5

    .line 313
    :cond_6
    monitor-enter v3

    .line 314
    move v12, v1

    .line 315
    :goto_2
    :try_start_1
    iget-object v4, v3, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 317
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 320
    move-result v4

    .line 321
    if-ge v12, v4, :cond_b

    .line 323
    iget-object v4, v3, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 325
    invoke-virtual {v4, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 328
    move-result v7

    .line 329
    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    .line 331
    aget v4, v4, v2

    .line 333
    if-ne v2, v11, :cond_7

    .line 335
    const v5, 0x400008c

    .line 338
    and-int/2addr v5, v7

    .line 339
    if-eqz v5, :cond_7

    .line 341
    const/16 v4, 0x8

    .line 343
    :cond_7
    if-ne v2, v11, :cond_8

    .line 345
    const v5, 0x8000

    .line 348
    and-int/2addr v5, v7

    .line 349
    if-eqz v5, :cond_8

    .line 351
    const/16 v4, 0xf

    .line 353
    :cond_8
    iget-object v5, v3, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    .line 355
    mul-int/lit8 v4, v4, 0xa

    .line 357
    invoke-virtual {v5, v7, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->put(II)V

    .line 360
    invoke-virtual {v3, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 363
    add-int/lit8 v4, v0, -0x1

    .line 365
    :goto_3
    if-ltz v4, :cond_a

    .line 367
    iget v5, v3, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 369
    if-eq v4, v5, :cond_9

    .line 371
    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 373
    aget v6, v6, v4

    .line 375
    if-ne v6, v5, :cond_9

    .line 377
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 379
    aget-object v5, v5, v4

    .line 381
    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 384
    move-result v6

    .line 385
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 388
    goto :goto_4

    .line 389
    :catchall_0
    move-exception p0

    .line 390
    goto :goto_6

    .line 391
    :cond_9
    :goto_4
    add-int/lit8 v4, v4, -0x1

    .line 393
    goto :goto_3

    .line 394
    :cond_a
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 396
    const/4 v8, 0x0

    .line 397
    const/16 v10, 0x1f4

    .line 399
    const/4 v5, 0x1

    .line 400
    const/4 v6, 0x2

    .line 401
    move-object v9, v3

    .line 402
    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 405
    add-int/lit8 v12, v12, 0x1

    .line 407
    goto :goto_2

    .line 408
    :cond_b
    monitor-exit v3

    .line 409
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 411
    goto :goto_1

    .line 412
    :goto_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    throw p0

    .line 414
    :cond_c
    const-string p0, "AS.AudioServiceExt"

    .line 416
    const-string/jumbo v0, "performSoftReset end"

    .line 419
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void

    .line 423
    :pswitch_0
    check-cast p0, Lcom/android/server/audio/AudioServiceExt;

    .line 425
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 427
    sget-boolean v0, Lcom/samsung/android/server/audio/utils/SoundAliveUtils;->sIsSoundAliveExist:Z

    .line 429
    const/4 v1, 0x0

    .line 430
    const/4 v2, 0x1

    .line 431
    if-eqz v0, :cond_d

    .line 433
    goto :goto_8

    .line 434
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 437
    move-result-object v0

    .line 438
    const-string/jumbo v3, "com.sec.android.app.soundalive.compatibility.SAContentProvider"

    .line 441
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 444
    move-result-object v0

    .line 445
    if-eqz v0, :cond_e

    .line 447
    goto :goto_7

    .line 448
    :cond_e
    move v2, v1

    .line 449
    :goto_7
    sput-boolean v2, Lcom/samsung/android/server/audio/utils/SoundAliveUtils;->sIsSoundAliveExist:Z

    .line 451
    :goto_8
    if-nez v2, :cond_f

    .line 453
    goto :goto_9

    .line 454
    :cond_f
    const-string/jumbo v0, "reset concert hall from sound assistant data cleared"

    .line 457
    const-string v2, "AS.SoundAliveUtils"

    .line 459
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 465
    move-result-object p0

    .line 466
    const-string/jumbo v0, "content://com.sec.android.app.soundalive.compatibility.SAContentProvider"

    .line 469
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 472
    move-result-object v0

    .line 473
    new-instance v3, Landroid/content/ContentValues;

    .line 475
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 478
    const-string v4, "CONCERT_HALL_EFFECT"

    .line 480
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 483
    move-result-object v1

    .line 484
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    invoke-virtual {p0, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 490
    goto :goto_9

    .line 491
    :catch_1
    move-exception p0

    .line 492
    const-string/jumbo v0, "resetConcertHall"

    .line 495
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    :goto_9
    return-void

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
