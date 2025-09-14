.class public final Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, v1, Landroid/os/Message;->what:I

    .line 8
    if-eqz v3, :cond_41

    .line 10
    if-eq v3, v2, :cond_40

    .line 12
    const/4 v4, 0x2

    .line 13
    if-eq v3, v4, :cond_3f

    .line 15
    const/4 v5, 0x3

    .line 16
    if-eq v3, v5, :cond_3e

    .line 18
    const/4 v6, 0x4

    .line 19
    if-eq v3, v6, :cond_3d

    .line 21
    const/4 v6, 0x5

    .line 22
    if-eq v3, v6, :cond_3c

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x7

    .line 26
    if-eq v3, v8, :cond_3a

    .line 28
    const/16 v9, 0x8

    .line 30
    if-eq v3, v9, :cond_39

    .line 32
    const/16 v10, 0xa

    .line 34
    if-eq v3, v10, :cond_38

    .line 36
    const/16 v10, 0x44d

    .line 38
    if-eq v3, v10, :cond_34

    .line 40
    const/16 v10, 0xf

    .line 42
    if-eq v3, v10, :cond_33

    .line 44
    const/16 v11, 0x10

    .line 46
    if-eq v3, v11, :cond_32

    .line 48
    const/16 v11, 0x36

    .line 50
    if-eq v3, v11, :cond_31

    .line 52
    const/16 v11, 0x37

    .line 54
    if-eq v3, v11, :cond_2f

    .line 56
    const/4 v11, -0x1

    .line 57
    const/4 v12, 0x0

    .line 58
    packed-switch v3, :pswitch_data_0

    .line 61
    packed-switch v3, :pswitch_data_1

    .line 64
    packed-switch v3, :pswitch_data_2

    .line 67
    packed-switch v3, :pswitch_data_3

    .line 70
    packed-switch v3, :pswitch_data_4

    .line 73
    const/16 v13, 0xac6

    .line 75
    if-le v3, v13, :cond_42

    .line 77
    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 79
    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    iget v0, v1, Landroid/os/Message;->what:I

    .line 86
    packed-switch v0, :pswitch_data_5

    .line 89
    :pswitch_0
    goto/16 :goto_1c

    .line 91
    :pswitch_1
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    .line 94
    move-result v0

    .line 95
    iget-object v8, v3, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 97
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 100
    move-result-object v13

    .line 101
    const/4 v10, 0x2

    .line 102
    const/4 v14, 0x0

    .line 103
    const/16 v9, 0xacb

    .line 105
    const/4 v11, 0x0

    .line 106
    const/4 v12, 0x1

    .line 107
    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 110
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 112
    if-ne v0, v2, :cond_0

    .line 114
    move v0, v2

    .line 115
    goto :goto_0

    .line 116
    :cond_0
    move v0, v7

    .line 117
    :goto_0
    iget-object v4, v3, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 119
    monitor-enter v4

    .line 120
    :try_start_0
    iget-object v5, v3, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 122
    aget-object v5, v5, v2

    .line 124
    const-string/jumbo v8, "setLeBroadcasting"

    .line 127
    invoke-virtual {v5, v8, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Ljava/lang/String;Z)Z

    .line 130
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 133
    if-ne v0, v2, :cond_1

    .line 135
    goto :goto_1

    .line 136
    :cond_1
    move v2, v7

    .line 137
    :goto_1
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 139
    monitor-enter v1

    .line 140
    :try_start_1
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 142
    aget-object v0, v0, v6

    .line 144
    const-string/jumbo v3, "setLeBroadcasting"

    .line 147
    invoke-virtual {v0, v3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Ljava/lang/String;Z)Z

    .line 150
    monitor-exit v1

    .line 151
    goto/16 :goto_1c

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    throw v0

    .line 156
    :catchall_1
    move-exception v0

    .line 157
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    throw v0

    .line 159
    :pswitch_2
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    check-cast v0, Ljava/lang/String;

    .line 163
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 165
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 167
    invoke-virtual {v3, v0, v1, v7}, Lcom/android/server/audio/AudioService;->onSetAppDevice(IIZ)V

    .line 170
    goto/16 :goto_1c

    .line 172
    :pswitch_3
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    check-cast v0, Ljava/lang/String;

    .line 176
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 178
    if-ne v1, v2, :cond_2

    .line 180
    const-string/jumbo v1, "true"

    .line 183
    goto :goto_2

    .line 184
    :cond_2
    const-string/jumbo v1, "false"

    .line 187
    :goto_2
    new-instance v2, Lcom/samsung/android/media/AudioParameter$Builder;

    .line 189
    invoke-direct {v2}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 192
    const-string/jumbo v4, "l_support_absolute_volume"

    .line 195
    invoke-virtual {v2, v4, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 198
    move-result-object v1

    .line 199
    const-string v2, "address"

    .line 201
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    .line 208
    move-result-object v0

    .line 209
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 211
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 218
    goto/16 :goto_1c

    .line 220
    :pswitch_4
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_RECORDING_POPUP:Z

    .line 222
    if-eqz v0, :cond_42

    .line 224
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 226
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 228
    const-string v2, "AS.AudioService"

    .line 230
    const-string v4, "[RECORDING POPUP] showRecordingPopup uid="

    .line 232
    const-string v6, ", type="

    .line 234
    invoke-static {v0, v1, v4, v6, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v2, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 246
    move-result-object v4

    .line 247
    :try_start_3
    invoke-virtual {v3, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 250
    move-result-object v6

    .line 251
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 254
    move-result-object v3

    .line 255
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 258
    move-result-object v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 259
    goto :goto_3

    .line 260
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 262
    const-string v6, "[RECORDING POPUP] getAppName can\'t find the name of "

    .line 264
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    move-result-object v3

    .line 274
    const-string v4, "AS.RecordingPopupHelper"

    .line 276
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 282
    move-result-object v3

    .line 283
    const/16 v4, 0x3e8

    .line 285
    if-ne v0, v4, :cond_3

    .line 287
    const v0, 0x10401be

    .line 290
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 293
    move-result-object v0

    .line 294
    goto :goto_3

    .line 295
    :cond_3
    const v0, 0x104000e

    .line 298
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 301
    move-result-object v0

    .line 302
    :goto_3
    const/16 v3, 0x16

    .line 304
    const v4, 0x1040c70

    .line 307
    if-eq v1, v3, :cond_7

    .line 309
    if-ne v1, v5, :cond_4

    .line 311
    goto :goto_4

    .line 312
    :cond_4
    if-ne v1, v8, :cond_5

    .line 314
    const v1, 0x1040c6f

    .line 317
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    move-result-object v0

    .line 325
    goto :goto_5

    .line 326
    :cond_5
    if-ne v1, v10, :cond_6

    .line 328
    const v1, 0x1040c6e

    .line 331
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 334
    move-result-object v1

    .line 335
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 342
    move-result-object v0

    .line 343
    goto :goto_5

    .line 344
    :cond_6
    const v1, 0x1040c6d

    .line 347
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 350
    move-result-object v0

    .line 351
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 354
    move-result-object v0

    .line 355
    goto :goto_5

    .line 356
    :cond_7
    :goto_4
    const v1, 0x1040621

    .line 359
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 362
    move-result-object v1

    .line 363
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 370
    move-result-object v0

    .line 371
    :goto_5
    invoke-static {v2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 378
    goto/16 :goto_1c

    .line 380
    :pswitch_5
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 382
    const-string/jumbo v1, "com.samsung.android.soundassistant"

    .line 385
    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/utils/AudioUtils;->getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I

    .line 388
    move-result v0

    .line 389
    const/16 v2, 0x2710

    .line 391
    if-ge v0, v2, :cond_8

    .line 393
    goto/16 :goto_1c

    .line 395
    :cond_8
    new-instance v0, Landroid/content/Intent;

    .line 397
    const-string/jumbo v2, "com.sec.android.soundassistant.SOUNDASSIST_INTENT_SERVICE"

    .line 400
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    const-string/jumbo v2, "com.sec.android.soundassistant.services.SoundAssistIntentService"

    .line 406
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string/jumbo v1, "type"

    .line 412
    const/16 v2, 0x3eb

    .line 414
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    :try_start_4
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 419
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 421
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 424
    goto/16 :goto_1c

    .line 426
    :pswitch_6
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 428
    if-eq v0, v2, :cond_9

    .line 430
    goto/16 :goto_1c

    .line 432
    :cond_9
    throw v12

    .line 433
    :pswitch_7
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 435
    check-cast v0, Landroid/content/Intent;

    .line 437
    invoke-virtual {v3, v0, v12}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 440
    goto/16 :goto_1c

    .line 442
    :pswitch_8
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 444
    if-eqz v0, :cond_42

    .line 446
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 448
    const-string/jumbo v6, "move from default to "

    .line 451
    const-string/jumbo v8, "setDevice, "

    .line 454
    const-string v9, " to 2"

    .line 456
    const-string/jumbo v10, "force change device "

    .line 459
    if-nez v5, :cond_a

    .line 461
    const-string v0, "MediaFocusControl"

    .line 463
    const-string/jumbo v2, "incorrect parameter"

    .line 466
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    goto/16 :goto_a

    .line 471
    :cond_a
    sget-object v11, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 473
    monitor-enter v11

    .line 474
    const v13, 0x400400d

    .line 477
    and-int/2addr v13, v5

    .line 478
    if-eqz v13, :cond_b

    .line 480
    :try_start_5
    const-string v13, "MediaFocusControl"

    .line 482
    new-instance v14, Ljava/lang/StringBuilder;

    .line 484
    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    move-result-object v5

    .line 497
    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    move v5, v4

    .line 501
    goto :goto_6

    .line 502
    :catchall_2
    move-exception v0

    .line 503
    goto/16 :goto_b

    .line 505
    :cond_b
    sget-object v9, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    .line 507
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 510
    move-result-object v10

    .line 511
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 514
    move-result v9

    .line 515
    if-nez v9, :cond_c

    .line 517
    sget-object v9, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 519
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 522
    move-result-object v10

    .line 523
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 526
    move-result v9

    .line 527
    if-eqz v9, :cond_d

    .line 529
    :cond_c
    const/16 v5, 0x80

    .line 531
    :cond_d
    :goto_6
    iget v9, v0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 533
    if-ne v9, v5, :cond_e

    .line 535
    const-string v0, "MediaFocusControl"

    .line 537
    const-string/jumbo v2, "setDevice, device doesn\'t change"

    .line 540
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    monitor-exit v11

    .line 544
    goto/16 :goto_a

    .line 546
    :cond_e
    const-string v10, "MediaFocusControl"

    .line 548
    new-instance v13, Ljava/lang/StringBuilder;

    .line 550
    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 556
    move-result-object v8

    .line 557
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    move-result-object v8

    .line 564
    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 569
    invoke-virtual {v8, v7}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    .line 572
    move-result-object v8

    .line 573
    iput-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 575
    const-string v8, "MediaFocusControl"

    .line 577
    new-instance v10, Ljava/lang/StringBuilder;

    .line 579
    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 585
    move-result-object v6

    .line 586
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    move-result-object v6

    .line 593
    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v6, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 598
    invoke-virtual {v6, v9}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    .line 601
    move-result-object v6

    .line 602
    iget-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 604
    invoke-virtual {v8}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    .line 607
    move-result-object v8

    .line 608
    :cond_f
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 611
    move-result v10

    .line 612
    if-eqz v10, :cond_10

    .line 614
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 617
    move-result-object v10

    .line 618
    check-cast v10, Lcom/android/server/audio/FocusRequester;

    .line 620
    iget v13, v10, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 622
    invoke-virtual {v0, v13}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    .line 625
    move-result v13

    .line 626
    iput v13, v10, Lcom/android/server/audio/FocusRequester;->mDevice:I

    .line 628
    if-ne v13, v9, :cond_f

    .line 630
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 633
    invoke-virtual {v6, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    goto :goto_7

    .line 637
    :cond_10
    const-string v6, "MediaFocusControl"

    .line 639
    new-instance v8, Ljava/lang/StringBuilder;

    .line 641
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    const-string/jumbo v9, "move from "

    .line 647
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 653
    move-result-object v9

    .line 654
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const-string v9, " to default"

    .line 659
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    move-result-object v8

    .line 666
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v6, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 671
    invoke-virtual {v6, v5}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    .line 674
    move-result-object v6

    .line 675
    iget-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 677
    invoke-virtual {v8}, Ljava/util/Stack;->isEmpty()Z

    .line 680
    move-result v8

    .line 681
    if-nez v8, :cond_11

    .line 683
    iget-object v7, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 685
    iget-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 687
    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 690
    move-result-object v8

    .line 691
    check-cast v8, Lcom/android/server/audio/FocusRequester;

    .line 693
    iget v8, v8, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 695
    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    .line 698
    move-result v7

    .line 699
    :cond_11
    if-eqz v7, :cond_12

    .line 701
    iget-object v7, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 703
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 706
    move-result-object v7

    .line 707
    move-object v12, v7

    .line 708
    check-cast v12, Lcom/android/server/audio/FocusRequester;

    .line 710
    goto :goto_8

    .line 711
    :cond_12
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    .line 714
    move-result v7

    .line 715
    if-nez v7, :cond_13

    .line 717
    invoke-virtual {v0, v2, v12, v2}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 720
    :cond_13
    :goto_8
    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    .line 723
    move-result-object v6

    .line 724
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 727
    move-result v7

    .line 728
    if-eqz v7, :cond_14

    .line 730
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 733
    move-result-object v7

    .line 734
    check-cast v7, Lcom/android/server/audio/FocusRequester;

    .line 736
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 739
    iget-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 741
    invoke-virtual {v8, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    goto :goto_9

    .line 745
    :cond_14
    if-eqz v12, :cond_16

    .line 747
    iget v6, v12, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    .line 749
    if-eq v6, v4, :cond_15

    .line 751
    invoke-virtual {v0, v6, v12, v2}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 754
    :cond_15
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 756
    invoke-virtual {v2, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    :cond_16
    iput v5, v0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 761
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 762
    :goto_a
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMediaSessionServiceInternal:Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    .line 764
    if-eqz v0, :cond_42

    .line 766
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 768
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    .line 771
    move-result v2

    .line 772
    invoke-virtual {v0, v1, v2}, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->updateMultiSoundInfo(IZ)V

    .line 775
    goto/16 :goto_1c

    .line 777
    :goto_b
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 778
    throw v0

    .line 779
    :pswitch_9
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 781
    if-nez v0, :cond_17

    .line 783
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 785
    const-string/jumbo v1, "mode_ringer_time_on"

    .line 788
    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 791
    goto/16 :goto_1c

    .line 793
    :cond_17
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 795
    const-string/jumbo v2, "mode_ringer_time"

    .line 798
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 801
    const v1, 0xea60

    .line 804
    mul-int/2addr v0, v1

    .line 805
    iput v0, v3, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    .line 807
    if-eqz v0, :cond_42

    .line 809
    new-instance v0, Landroid/content/Intent;

    .line 811
    const-string/jumbo v1, "com.sec.media.action.mute_interval"

    .line 814
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 817
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 819
    const/high16 v2, 0xc000000

    .line 821
    invoke-static {v1, v7, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 824
    move-result-object v0

    .line 825
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 828
    move-result-wide v1

    .line 829
    iget v4, v3, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    .line 831
    int-to-long v4, v4

    .line 832
    add-long/2addr v1, v4

    .line 833
    iput-wide v1, v3, Lcom/android/server/audio/AudioService;->mMuteTime:J

    .line 835
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 837
    invoke-virtual {v3, v7, v1, v2, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 840
    goto/16 :goto_1c

    .line 842
    :pswitch_a
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 844
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    .line 847
    move-result v1

    .line 848
    if-eqz v1, :cond_18

    .line 850
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getPinDeviceInternal()I

    .line 853
    move-result v1

    .line 854
    if-eq v0, v1, :cond_18

    .line 856
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 858
    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 860
    const/16 v1, 0x3ed

    .line 862
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 865
    goto/16 :goto_1c

    .line 867
    :cond_18
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 869
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->showNotification()V

    .line 872
    goto/16 :goto_1c

    .line 874
    :pswitch_b
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 876
    check-cast v0, Ljava/lang/String;

    .line 878
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 880
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 882
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/audio/AudioService;->onSetAppDevice(IIZ)V

    .line 885
    goto/16 :goto_1c

    .line 887
    :pswitch_c
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 889
    check-cast v0, Ljava/lang/Boolean;

    .line 891
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 894
    move-result v0

    .line 895
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 897
    if-ne v4, v2, :cond_19

    .line 899
    move v4, v2

    .line 900
    goto :goto_c

    .line 901
    :cond_19
    move v4, v7

    .line 902
    :goto_c
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 904
    if-ne v1, v2, :cond_1a

    .line 906
    move v1, v2

    .line 907
    goto :goto_d

    .line 908
    :cond_1a
    move v1, v7

    .line 909
    :goto_d
    new-instance v6, Landroid/content/Intent;

    .line 911
    const-string v8, "android.intent.action.MULTISOUND_STATE_CHANGE"

    .line 913
    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 916
    const-string v8, "AS.AudioService"

    .line 918
    const-string v9, "MSG_SET_MULTI_DEVICE_SOUND_ON "

    .line 920
    invoke-static {v9, v8, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 923
    iget-object v8, v3, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 925
    const-string/jumbo v9, "multisound_state"

    .line 928
    invoke-static {v8, v9, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 931
    if-eqz v0, :cond_1e

    .line 933
    if-eqz v1, :cond_1b

    .line 935
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 937
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 940
    const-string v1, "AS.MultiSoundManager"

    .line 942
    const-string/jumbo v4, "shouldEnable"

    .line 945
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iput-boolean v2, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 950
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    .line 953
    goto :goto_f

    .line 954
    :cond_1b
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 956
    iget-boolean v1, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 958
    if-eqz v1, :cond_1c

    .line 960
    goto :goto_e

    .line 961
    :cond_1c
    const-string v1, "AS.MultiSoundManager"

    .line 963
    const-string/jumbo v7, "enable"

    .line 966
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iput-boolean v2, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 971
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    .line 974
    if-eqz v4, :cond_1d

    .line 976
    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 978
    iget-object v0, v0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 980
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 982
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->showNotification()V

    .line 985
    :cond_1d
    :goto_e
    invoke-static {v5}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    .line 988
    move-result v0

    .line 989
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getPinDeviceInternal()I

    .line 992
    move-result v1

    .line 993
    if-ne v1, v0, :cond_20

    .line 995
    if-eqz v4, :cond_20

    .line 997
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 999
    iget-object v2, v3, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1001
    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getPriorityDevice(I)I

    .line 1004
    move-result v2

    .line 1005
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->showHeadUpNotification(II)V

    .line 1008
    goto :goto_f

    .line 1009
    :cond_1e
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 1011
    iget-boolean v1, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 1013
    if-nez v1, :cond_1f

    .line 1015
    goto :goto_f

    .line 1016
    :cond_1f
    const-string v1, "AS.MultiSoundManager"

    .line 1018
    const-string/jumbo v2, "disable"

    .line 1021
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iput-boolean v7, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 1026
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    .line 1029
    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 1031
    iget-object v0, v0, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 1033
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 1035
    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 1037
    const/16 v1, 0x3ec

    .line 1039
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1042
    :cond_20
    :goto_f
    iget-boolean v0, v3, Lcom/android/server/audio/AudioService;->mIsLeBroadCasting:Z

    .line 1044
    if-nez v0, :cond_22

    .line 1046
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1048
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1051
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1053
    iget-boolean v1, v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 1055
    if-eqz v1, :cond_21

    .line 1057
    iget-boolean v0, v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    .line 1059
    if-eqz v0, :cond_22

    .line 1061
    :cond_21
    invoke-virtual {v3, v6, v12}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1064
    :cond_22
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMediaSessionServiceInternal:Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    .line 1066
    if-eqz v0, :cond_42

    .line 1068
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    .line 1071
    move-result v1

    .line 1072
    invoke-virtual {v0, v11, v1}, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->updateMultiSoundInfo(IZ)V

    .line 1075
    goto/16 :goto_1c

    .line 1077
    :pswitch_d
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 1079
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    .line 1081
    iget-object v2, v3, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1083
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1086
    new-instance v3, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;

    .line 1088
    invoke-direct {v3, v1, v2, v0}, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioServiceExt;Landroid/content/Context;I)V

    .line 1091
    invoke-static {v3}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1094
    goto/16 :goto_1c

    .line 1096
    :pswitch_e
    iput-boolean v7, v3, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    .line 1098
    goto/16 :goto_1c

    .line 1100
    :pswitch_f
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1102
    move-object v4, v0

    .line 1103
    check-cast v4, Ljava/lang/String;

    .line 1105
    iget v15, v1, Landroid/os/Message;->arg1:I

    .line 1107
    iget-boolean v0, v3, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    .line 1109
    if-nez v0, :cond_42

    .line 1111
    const-string v0, "Notification ("

    .line 1113
    :try_start_7
    iget-boolean v1, v3, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    .line 1115
    if-eqz v1, :cond_24

    .line 1117
    iget-object v1, v3, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    .line 1119
    if-eqz v1, :cond_24

    .line 1121
    invoke-static {v9}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 1124
    move-result v1

    .line 1125
    invoke-static {v1, v11}, Landroid/os/VibrationEffect;->semCreateHaptic(II)Landroid/os/VibrationEffect;

    .line 1128
    move-result-object v8

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1131
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    const-string v0, ")"

    .line 1139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    if-ne v15, v2, :cond_23

    .line 1144
    const-string v0, " (RingerMode)"

    .line 1146
    goto :goto_10

    .line 1147
    :catch_1
    move-exception v0

    .line 1148
    goto :goto_11

    .line 1149
    :cond_23
    const-string v0, " (SafetyDialog)"

    .line 1151
    :goto_10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1157
    move-result-object v9

    .line 1158
    iget-object v5, v3, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    .line 1160
    const-string v7, "android"

    .line 1162
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    .line 1164
    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 1167
    const-string v1, "VIBRATE_CALL"

    .line 1169
    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->semAddTag(Ljava/lang/String;)Landroid/os/VibrationAttributes$Builder;

    .line 1172
    move-result-object v0

    .line 1173
    const/16 v1, 0x21

    .line 1175
    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    .line 1178
    move-result-object v0

    .line 1179
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    .line 1182
    move-result-object v10

    .line 1183
    const/16 v6, 0x3e8

    .line 1185
    invoke-virtual/range {v5 .. v10}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1188
    goto :goto_12

    .line 1189
    :goto_11
    const-string v1, "AS.AudioService"

    .line 1191
    const-string/jumbo v5, "vibrateCall error"

    .line 1194
    invoke-static {v1, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1197
    :cond_24
    :goto_12
    iput-boolean v2, v3, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    .line 1199
    iget-object v12, v3, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 1201
    const/16 v13, 0xac9

    .line 1203
    const/4 v14, 0x1

    .line 1204
    const/16 v16, 0x0

    .line 1206
    const/16 v18, 0x258

    .line 1208
    move-object/from16 v17, v4

    .line 1210
    invoke-static/range {v12 .. v18}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1213
    goto/16 :goto_1c

    .line 1215
    :pswitch_10
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1217
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1220
    move-result v0

    .line 1221
    const-string v1, "AS.AudioService"

    .line 1223
    if-ne v0, v5, :cond_25

    .line 1225
    const-string/jumbo v0, "playSilentModeSound: skipping playSilentModeSound"

    .line 1228
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    goto/16 :goto_1c

    .line 1233
    :cond_25
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1235
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1238
    move-result v0

    .line 1239
    if-ne v0, v2, :cond_26

    .line 1241
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isBluetoothScoOn()Z

    .line 1244
    move-result v0

    .line 1245
    if-eqz v0, :cond_26

    .line 1247
    const-string/jumbo v0, "playSilentModeSound: skipping while inband ringtone is playing"

    .line 1250
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    goto/16 :goto_1c

    .line 1255
    :cond_26
    const/16 v0, 0x65

    .line 1257
    invoke-static {v0}, Lcom/samsung/android/media/AudioFxHelper;->getPlaySoundTypeForSEP(I)I

    .line 1260
    move-result v0

    .line 1261
    const/high16 v1, -0x40800000    # -1.0f

    .line 1263
    invoke-virtual {v3, v0, v1}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    .line 1266
    goto/16 :goto_1c

    .line 1268
    :pswitch_11
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1270
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    .line 1272
    invoke-virtual {v0, v1}, Lcom/android/server/audio/SoundDoseHelper;->handleMessage(Landroid/os/Message;)V

    .line 1275
    goto/16 :goto_1c

    .line 1277
    :pswitch_12
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1279
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->onInitAdiDeviceStates()V

    .line 1282
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1284
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1286
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1289
    goto/16 :goto_1c

    .line 1291
    :pswitch_13
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1293
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    .line 1295
    iget-boolean v3, v1, Lcom/android/server/audio/AudioService;->mHasSpatializerEffect:Z

    .line 1297
    invoke-virtual {v2, v3}, Lcom/android/server/audio/SpatializerHelper;->init(Z)V

    .line 1300
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    .line 1302
    iget-boolean v1, v1, Lcom/android/server/audio/AudioService;->mHasSpatializerEffect:Z

    .line 1304
    invoke-virtual {v2, v1}, Lcom/android/server/audio/SpatializerHelper;->setFeatureEnabled(Z)V

    .line 1307
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1309
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1311
    const/16 v2, 0x3a

    .line 1313
    invoke-virtual {v1, v2, v4, v12}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1316
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1318
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1320
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1323
    goto/16 :goto_1c

    .line 1325
    :pswitch_14
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1327
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monInitStreamsAndVolumes(Lcom/android/server/audio/AudioService;)V

    .line 1330
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1332
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1334
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1337
    goto/16 :goto_1c

    .line 1339
    :pswitch_15
    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1341
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 1343
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1345
    if-ne v4, v2, :cond_27

    .line 1347
    goto :goto_13

    .line 1348
    :cond_27
    move v2, v7

    .line 1349
    :goto_13
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 1351
    invoke-virtual {v3, v1, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->disableAudioForUid(IZ)V

    .line 1354
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1356
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1358
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1361
    goto/16 :goto_1c

    .line 1363
    :pswitch_16
    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1365
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 1368
    move-result-object v0

    .line 1369
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1371
    iget-object v4, v3, Lcom/android/server/audio/AudioService;->mPrefMixerAttrDispatcher:Landroid/os/RemoteCallbackList;

    .line 1373
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 1376
    move-result v4

    .line 1377
    const-string v5, "audio_attributes"

    .line 1379
    const-class v6, Landroid/media/AudioAttributes;

    .line 1381
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1384
    move-result-object v5

    .line 1385
    check-cast v5, Landroid/media/AudioAttributes;

    .line 1387
    const-string v6, "audio_mixer_attributes"

    .line 1389
    const-class v8, Landroid/media/AudioMixerAttributes;

    .line 1391
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1394
    move-result-object v0

    .line 1395
    move-object v6, v0

    .line 1396
    check-cast v6, Landroid/media/AudioMixerAttributes;

    .line 1398
    :goto_14
    if-ge v7, v4, :cond_28

    .line 1400
    :try_start_8
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mPrefMixerAttrDispatcher:Landroid/os/RemoteCallbackList;

    .line 1402
    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 1405
    move-result-object v0

    .line 1406
    check-cast v0, Landroid/media/IPreferredMixerAttributesDispatcher;

    .line 1408
    invoke-interface {v0, v5, v1, v6}, Landroid/media/IPreferredMixerAttributesDispatcher;->dispatchPrefMixerAttributesChanged(Landroid/media/AudioAttributes;ILandroid/media/AudioMixerAttributes;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1411
    goto :goto_15

    .line 1412
    :catch_2
    move-exception v0

    .line 1413
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1415
    const-string v9, "Can\'t call dispatchPrefMixerAttributesChanged() IPreferredMixerAttributesDispatcher "

    .line 1417
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1420
    iget-object v9, v3, Lcom/android/server/audio/AudioService;->mPrefMixerAttrDispatcher:Landroid/os/RemoteCallbackList;

    .line 1422
    invoke-virtual {v9, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 1425
    move-result-object v9

    .line 1426
    check-cast v9, Landroid/media/IPreferredMixerAttributesDispatcher;

    .line 1428
    invoke-interface {v9}, Landroid/media/IPreferredMixerAttributesDispatcher;->asBinder()Landroid/os/IBinder;

    .line 1431
    move-result-object v9

    .line 1432
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1435
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1438
    move-result-object v8

    .line 1439
    const-string v9, "AS.AudioService"

    .line 1441
    invoke-static {v9, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1444
    :goto_15
    add-int/2addr v7, v2

    .line 1445
    goto :goto_14

    .line 1446
    :cond_28
    iget-object v0, v3, Lcom/android/server/audio/AudioService;->mPrefMixerAttrDispatcher:Landroid/os/RemoteCallbackList;

    .line 1448
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1451
    goto/16 :goto_1c

    .line 1453
    :pswitch_17
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1455
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 1457
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1459
    invoke-virtual {v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->ignorePlayerIId(I)V

    .line 1462
    goto/16 :goto_1c

    .line 1464
    :pswitch_18
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1466
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    .line 1468
    iget-boolean v0, v0, Lcom/android/server/audio/AudioService;->mHasSpatializerEffect:Z

    .line 1470
    invoke-virtual {v1, v0}, Lcom/android/server/audio/SpatializerHelper;->reset(Z)V

    .line 1473
    goto/16 :goto_1c

    .line 1475
    :pswitch_19
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1477
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 1479
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1481
    check-cast v1, Ljava/lang/String;

    .line 1483
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 1486
    goto/16 :goto_1c

    .line 1488
    :pswitch_1a
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1490
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 1492
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1494
    check-cast v1, Ljava/lang/String;

    .line 1496
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 1499
    goto/16 :goto_1c

    .line 1501
    :pswitch_1b
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1503
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1505
    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 1507
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1509
    sget v3, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 1511
    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService;->dispatchDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V

    .line 1514
    goto/16 :goto_1c

    .line 1516
    :pswitch_1c
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1518
    sget v1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 1520
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->updateActiveAssistantServiceUids()V

    .line 1523
    goto/16 :goto_1c

    .line 1525
    :pswitch_1d
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1527
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1529
    filled-new-array {v1}, [I

    .line 1532
    move-result-object v1

    .line 1533
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monRemoveAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    .line 1536
    goto/16 :goto_1c

    .line 1538
    :pswitch_1e
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1540
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1542
    filled-new-array {v1}, [I

    .line 1545
    move-result-object v1

    .line 1546
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monAddAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    .line 1549
    goto/16 :goto_1c

    .line 1551
    :pswitch_1f
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1553
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    .line 1555
    invoke-virtual {v0}, Lcom/android/server/audio/SpatializerHelper;->onInitSensors()V

    .line 1558
    goto/16 :goto_1c

    .line 1560
    :pswitch_20
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1562
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onRoutingUpdatedFromAudioThread()V

    .line 1565
    goto/16 :goto_1c

    .line 1567
    :pswitch_21
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1569
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1571
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    .line 1573
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 1576
    move-result v3

    .line 1577
    :goto_16
    if-ge v7, v3, :cond_29

    .line 1579
    :try_start_9
    iget-object v4, v0, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    .line 1581
    invoke-virtual {v4, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 1584
    move-result-object v4

    .line 1585
    check-cast v4, Landroid/media/IAudioModeDispatcher;

    .line 1587
    invoke-interface {v4, v1}, Landroid/media/IAudioModeDispatcher;->dispatchAudioModeChanged(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1590
    :catch_3
    add-int/2addr v7, v2

    .line 1591
    goto :goto_16

    .line 1592
    :cond_29
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    .line 1594
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1597
    goto/16 :goto_1c

    .line 1599
    :pswitch_22
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1601
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1603
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1605
    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    .line 1607
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    .line 1610
    goto/16 :goto_1c

    .line 1612
    :pswitch_23
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1614
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1616
    check-cast v1, Ljava/util/List;

    .line 1618
    sget v2, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 1620
    invoke-virtual {v0, v12, v1}, Lcom/android/server/audio/AudioService;->updateAudioModeHandlers(Ljava/util/List;Ljava/util/List;)V

    .line 1623
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1625
    invoke-virtual {v0, v12, v1}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRouteClientsActivity(Ljava/util/List;Ljava/util/List;)V

    .line 1628
    goto/16 :goto_1c

    .line 1630
    :pswitch_24
    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1632
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1634
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 1636
    monitor-enter v2

    .line 1637
    :try_start_a
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1639
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 1641
    iget v4, v1, Landroid/os/Message;->arg2:I

    .line 1643
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1645
    check-cast v1, Ljava/lang/String;

    .line 1647
    invoke-virtual {v0, v3, v4, v1, v7}, Lcom/android/server/audio/AudioService;->onUpdateAudioMode(IILjava/lang/String;Z)V

    .line 1650
    monitor-exit v2

    .line 1651
    goto/16 :goto_1c

    .line 1653
    :catchall_3
    move-exception v0

    .line 1654
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1655
    throw v0

    .line 1656
    :pswitch_25
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1658
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$monUpdateAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)V

    .line 1661
    goto/16 :goto_1c

    .line 1663
    :pswitch_26
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1665
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1667
    check-cast v1, Ljava/lang/String;

    .line 1669
    sget v2, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 1671
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->onReinitVolumes(Ljava/lang/String;)V

    .line 1674
    goto/16 :goto_1c

    .line 1676
    :pswitch_27
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1678
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1680
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1682
    check-cast v1, Ljava/lang/String;

    .line 1684
    invoke-static {v2, v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monUpdateVolumeStatesForAudioDevice(ILcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 1687
    goto/16 :goto_1c

    .line 1689
    :pswitch_28
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1691
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 1693
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1695
    check-cast v3, Landroid/content/Intent;

    .line 1697
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1699
    check-cast v4, Landroid/os/Bundle;

    .line 1701
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1704
    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1706
    const-string v5, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    .line 1708
    iget v6, v1, Landroid/os/Message;->arg1:I

    .line 1710
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1713
    move-result-object v5

    .line 1714
    const-string v6, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 1716
    iget v8, v1, Landroid/os/Message;->arg2:I

    .line 1718
    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1721
    move-result-object v5

    .line 1722
    invoke-virtual {v2, v5, v4}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1725
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    .line 1727
    if-eqz v2, :cond_42

    .line 1729
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1731
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

    .line 1733
    if-eqz v0, :cond_42

    .line 1735
    const-string v2, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    .line 1737
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 1739
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1742
    move-result-object v2

    .line 1743
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 1745
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 1747
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1750
    move-result-object v1

    .line 1751
    sget-object v2, Lcom/samsung/android/server/audio/MicModeManager;->AVAILABLE_STREAM_TYPES:Ljava/util/List;

    .line 1753
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 1756
    move-result-object v2

    .line 1757
    new-instance v3, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda0;

    .line 1759
    invoke-direct {v3, v1}, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    .line 1762
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 1765
    move-result v2

    .line 1766
    if-eqz v2, :cond_2a

    .line 1768
    goto/16 :goto_1c

    .line 1770
    :cond_2a
    const-string v2, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    .line 1772
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1775
    move-result v2

    .line 1776
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 1778
    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1781
    move-result v1

    .line 1782
    iput v1, v0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    .line 1784
    const-string/jumbo v3, "streamDevicesChanged() prevDevice="

    .line 1787
    const-string v4, ", curDevice="

    .line 1789
    const-string v5, "MicModeManager"

    .line 1791
    invoke-static {v2, v1, v3, v4, v5}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MicModeManager;->updateAudioDevice()V

    .line 1797
    goto/16 :goto_1c

    .line 1799
    :pswitch_29
    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1801
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1803
    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    .line 1805
    monitor-enter v2

    .line 1806
    :try_start_b
    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1808
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1810
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->checkAndResetBtSco()V

    .line 1813
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1815
    if-nez v1, :cond_2b

    .line 1817
    monitor-exit v2

    .line 1818
    goto/16 :goto_1c

    .line 1820
    :catchall_4
    move-exception v0

    .line 1821
    goto :goto_17

    .line 1822
    :cond_2b
    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 1824
    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1826
    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 1828
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 1831
    move-result v3

    .line 1832
    if-gez v3, :cond_2c

    .line 1834
    monitor-exit v2

    .line 1835
    goto/16 :goto_1c

    .line 1837
    :cond_2c
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    .line 1840
    move-result v3

    .line 1841
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1843
    iget v5, v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    .line 1845
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    .line 1848
    move-result v4

    .line 1849
    iput-boolean v4, v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPlaybackActive:Z

    .line 1851
    iget-object v4, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1853
    iget v5, v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    .line 1855
    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 1857
    invoke-virtual {v4, v5}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    .line 1860
    move-result v4

    .line 1861
    iput-boolean v4, v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mRecordingActive:Z

    .line 1863
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    .line 1866
    move-result v1

    .line 1867
    if-eq v3, v1, :cond_2d

    .line 1869
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1871
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 1874
    move-result v3

    .line 1875
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1877
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1879
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1882
    move-result-object v0

    .line 1883
    invoke-virtual {v1, v11, v3, v0, v7}, Lcom/android/server/audio/AudioService;->onUpdateAudioMode(IILjava/lang/String;Z)V

    .line 1886
    :cond_2d
    monitor-exit v2

    .line 1887
    goto/16 :goto_1c

    .line 1889
    :goto_17
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1890
    throw v0

    .line 1891
    :pswitch_2a
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1893
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 1895
    iget-object v0, v0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    .line 1897
    new-instance v1, Landroid/content/Intent;

    .line 1899
    const-string v2, "android.media.action.MICROPHONE_MUTE_CHANGED"

    .line 1901
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1904
    const/high16 v2, 0x40000000    # 2.0f

    .line 1906
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1909
    move-result-object v1

    .line 1910
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1912
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1915
    goto/16 :goto_1c

    .line 1917
    :pswitch_2b
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1919
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1921
    check-cast v1, Ljava/util/List;

    .line 1923
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monPlaybackConfigChange(Lcom/android/server/audio/AudioService;Ljava/util/List;)V

    .line 1926
    goto/16 :goto_1c

    .line 1928
    :pswitch_2c
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1930
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1932
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1934
    check-cast v1, Ljava/lang/String;

    .line 1936
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$monCheckVolumeCecOnHdmiConnection(Lcom/android/server/audio/AudioService;I)V

    .line 1939
    goto/16 :goto_1c

    .line 1941
    :pswitch_2d
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1943
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1945
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monObserveDevicesForAllStreams(Lcom/android/server/audio/AudioService;I)V

    .line 1948
    goto/16 :goto_1c

    .line 1950
    :pswitch_2e
    iget-object v2, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1952
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1954
    check-cast v3, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    .line 1956
    invoke-static {v2, v3}, Lcom/android/server/audio/AudioService;->-$$Nest$monSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    .line 1959
    const-string/jumbo v2, "muteMediaStreamOfSpeaker"

    .line 1962
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1964
    check-cast v3, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    .line 1966
    iget-object v3, v3, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    .line 1968
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1971
    move-result v2

    .line 1972
    if-eqz v2, :cond_42

    .line 1974
    iget-object v3, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1976
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 1978
    iget v6, v1, Landroid/os/Message;->arg2:I

    .line 1980
    const/4 v8, 0x2

    .line 1981
    const/4 v4, 0x3

    .line 1982
    const/4 v7, 0x0

    .line 1983
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    .line 1986
    goto/16 :goto_1c

    .line 1988
    :pswitch_2f
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 1990
    sget v1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 1992
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    .line 1995
    move-result v1

    .line 1996
    invoke-virtual {v0, v1, v7}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1999
    goto/16 :goto_1c

    .line 2001
    :pswitch_30
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2003
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2005
    check-cast v1, Ljava/util/ArrayList;

    .line 2007
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monEnableSurroundFormats(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V

    .line 2010
    goto/16 :goto_1c

    .line 2012
    :pswitch_31
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2014
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2016
    if-ne v1, v2, :cond_2e

    .line 2018
    goto :goto_18

    .line 2019
    :cond_2e
    move v2, v7

    .line 2020
    :goto_18
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$monDispatchAudioServerStateChange(Lcom/android/server/audio/AudioService;Z)V

    .line 2023
    goto/16 :goto_1c

    .line 2025
    :pswitch_32
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2027
    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 2029
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2031
    :try_start_c
    invoke-interface {v0, v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyVolumeAdjust(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 2034
    goto/16 :goto_1c

    .line 2036
    :pswitch_33
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2038
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2040
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monAccessoryPlugMediaUnmute(Lcom/android/server/audio/AudioService;I)V

    .line 2043
    goto/16 :goto_1c

    .line 2045
    :pswitch_34
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2047
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 2050
    goto/16 :goto_1c

    .line 2052
    :pswitch_35
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2054
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2056
    check-cast v2, Ljava/lang/String;

    .line 2058
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2060
    invoke-static {v1, v0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$monDynPolicyMixStateUpdate(ILcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 2063
    goto/16 :goto_1c

    .line 2065
    :pswitch_36
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2067
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 2069
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 2071
    invoke-static {v0, v2, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monUnmuteStreamOnSingleVolDevice(Lcom/android/server/audio/AudioService;II)V

    .line 2074
    goto/16 :goto_1c

    .line 2076
    :cond_2f
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2078
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    .line 2080
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2082
    if-ne v1, v2, :cond_30

    .line 2084
    goto :goto_19

    .line 2085
    :cond_30
    move v2, v7

    .line 2086
    :goto_19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2089
    new-instance v1, Landroid/content/Intent;

    .line 2091
    const-string v3, "android.media.MASTER_MUTE_CHANGED_ACTION"

    .line 2093
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2096
    const-string v3, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    .line 2098
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2101
    const/high16 v2, 0x34000000

    .line 2103
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2109
    move-result-wide v2

    .line 2110
    :try_start_d
    iget-object v0, v0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    .line 2112
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2114
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 2117
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2120
    goto/16 :goto_1c

    .line 2122
    :catchall_5
    move-exception v0

    .line 2123
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2126
    throw v0

    .line 2127
    :cond_31
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2129
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$monConfigurationChanged(Lcom/android/server/audio/AudioService;)V

    .line 2132
    goto/16 :goto_1c

    .line 2134
    :cond_32
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2136
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    .line 2139
    goto/16 :goto_1c

    .line 2141
    :cond_33
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2143
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    .line 2145
    invoke-virtual {v0}, Lcom/android/server/audio/SoundEffectsHelper;->unloadSoundEffects()V

    .line 2148
    goto/16 :goto_1c

    .line 2150
    :cond_34
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2152
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMusicFxHelper:Lcom/android/server/audio/MusicFxHelper;

    .line 2154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2157
    iget v2, v1, Landroid/os/Message;->what:I

    .line 2159
    if-eq v2, v10, :cond_35

    .line 2161
    const-string v0, "AS.MusicFxHelper"

    .line 2163
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2165
    const-string v3, "Unexpected msg to handle in MusicFxHelper: "

    .line 2167
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2170
    iget v1, v1, Landroid/os/Message;->what:I

    .line 2172
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2178
    move-result-object v1

    .line 2179
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    goto/16 :goto_1c

    .line 2184
    :cond_35
    const-string v2, "AS.MusicFxHelper"

    .line 2186
    const-string v3, " handle MSG_EFFECT_CLIENT_GONE"

    .line 2188
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2193
    const-string v2, "UID "

    .line 2195
    const-string/jumbo v3, "handle MSG_EFFECT_CLIENT_GONE uid: "

    .line 2198
    iget-object v4, v0, Lcom/android/server/audio/MusicFxHelper;->mClientUidMapLock:Ljava/lang/Object;

    .line 2200
    monitor-enter v4

    .line 2201
    :try_start_e
    const-string v5, "AS.MusicFxHelper"

    .line 2203
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2205
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2211
    const-string v3, " mapSize: "

    .line 2213
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2216
    iget-object v3, v0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    .line 2218
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 2221
    move-result v3

    .line 2222
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2225
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2228
    move-result-object v3

    .line 2229
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    iget-object v3, v0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    .line 2234
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 2237
    move-result-object v3

    .line 2238
    check-cast v3, Lcom/android/server/audio/MusicFxHelper$PackageSessions;

    .line 2240
    if-eqz v3, :cond_37

    .line 2242
    const-string v5, "AS.MusicFxHelper"

    .line 2244
    new-instance v6, Ljava/lang/StringBuilder;

    .line 2246
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2249
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2252
    const-string v2, " gone, closing all sessions"

    .line 2254
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2260
    move-result-object v2

    .line 2261
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    iget-object v2, v3, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    .line 2266
    check-cast v2, Ljava/util/ArrayList;

    .line 2268
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2271
    move-result-object v2

    .line 2272
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2275
    move-result v5

    .line 2276
    if-eqz v5, :cond_36

    .line 2278
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2281
    move-result-object v5

    .line 2282
    check-cast v5, Ljava/lang/Integer;

    .line 2284
    new-instance v6, Landroid/content/Intent;

    .line 2286
    const-string v7, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 2288
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2291
    const-string v7, "android.media.extra.PACKAGE_NAME"

    .line 2293
    iget-object v8, v3, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mPackageName:Ljava/lang/String;

    .line 2295
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2298
    const-string v7, "android.media.extra.AUDIO_SESSION"

    .line 2300
    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2303
    const/16 v5, 0x20

    .line 2305
    invoke-virtual {v6, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2308
    const-string/jumbo v5, "com.android.musicfx"

    .line 2311
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2314
    iget-object v5, v0, Lcom/android/server/audio/MusicFxHelper;->mContext:Landroid/content/Context;

    .line 2316
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2318
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2321
    goto :goto_1a

    .line 2322
    :catchall_6
    move-exception v0

    .line 2323
    goto :goto_1b

    .line 2324
    :cond_36
    iget-object v0, v0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    .line 2326
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->remove(I)V

    .line 2329
    :cond_37
    monitor-exit v4

    .line 2330
    goto/16 :goto_1c

    .line 2332
    :goto_1b
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 2333
    throw v0

    .line 2334
    :cond_38
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2336
    check-cast v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 2338
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 2341
    goto/16 :goto_1c

    .line 2343
    :cond_39
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2345
    check-cast v2, Ljava/lang/String;

    .line 2347
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 2349
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 2351
    new-instance v4, Landroid/media/MediaMetrics$Item;

    .line 2353
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2355
    const-string v6, "audio.forceUse."

    .line 2357
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2360
    invoke-static {v3}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    .line 2363
    move-result-object v6

    .line 2364
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2367
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2370
    move-result-object v5

    .line 2371
    invoke-direct {v4, v5}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 2374
    sget-object v5, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 2376
    const-string/jumbo v6, "setForceUse"

    .line 2379
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 2382
    move-result-object v4

    .line 2383
    sget-object v5, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    .line 2385
    invoke-virtual {v4, v5, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 2388
    move-result-object v4

    .line 2389
    sget-object v5, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    .line 2391
    invoke-static {v1}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    .line 2394
    move-result-object v6

    .line 2395
    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 2398
    move-result-object v4

    .line 2399
    invoke-virtual {v4}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 2402
    sget-object v4, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/utils/EventLogger;

    .line 2404
    new-instance v5, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    .line 2406
    invoke-direct {v5, v3, v1, v2}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    .line 2409
    invoke-virtual {v4, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 2412
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2414
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 2416
    invoke-virtual {v0, v3, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setForceUse(II)V

    .line 2419
    goto :goto_1c

    .line 2420
    :cond_3a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2422
    check-cast v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    .line 2424
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2426
    iget-boolean v2, v0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    .line 2428
    if-eqz v2, :cond_3b

    .line 2430
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    .line 2432
    invoke-virtual {v0, v1}, Lcom/android/server/audio/SoundEffectsHelper;->loadSoundEffects(Lcom/android/server/audio/AudioService$LoadSoundEffectReply;)V

    .line 2435
    goto :goto_1c

    .line 2436
    :cond_3b
    const-string v0, "AS.AudioService"

    .line 2438
    const-string v2, "[schedule]loadSoundEffects() called before boot complete"

    .line 2440
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    if-eqz v1, :cond_42

    .line 2445
    invoke-virtual {v1, v7}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->run(Z)V

    .line 2448
    goto :goto_1c

    .line 2449
    :cond_3c
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2451
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    .line 2453
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 2455
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 2457
    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/SoundEffectsHelper;->playSoundEffect(II)V

    .line 2460
    goto :goto_1c

    .line 2461
    :cond_3d
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2463
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    .line 2466
    goto :goto_1c

    .line 2467
    :cond_3e
    iget-object v1, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2469
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    .line 2472
    move-result v1

    .line 2473
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    .line 2476
    goto :goto_1c

    .line 2477
    :cond_3f
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2479
    check-cast v0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    .line 2481
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2483
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->-$$Nest$mpersistVolumeGroup(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V

    .line 2486
    goto :goto_1c

    .line 2487
    :cond_40
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2489
    check-cast v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 2491
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2493
    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 2496
    goto :goto_1c

    .line 2497
    :cond_41
    iget-object v0, v0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 2499
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2501
    check-cast v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 2503
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2505
    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 2508
    :catch_4
    :cond_42
    :goto_1c
    return-void

    .line 2509
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    .line 2555
    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    .line 2565
    :pswitch_data_2
    .packed-switch 0x2c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    .line 2587
    :pswitch_data_3
    .packed-switch 0x64
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    .line 2599
    :pswitch_data_4
    .packed-switch 0x3e9
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    .line 2617
    :pswitch_data_5
    .packed-switch 0xac7
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final persistRingerMode(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 10
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    const-string/jumbo v0, "mode_ringer"

    .line 18
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 21
    return-void
.end method

.method public final persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 3
    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    .line 10
    if-eqz v1, :cond_1

    .line 12
    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 14
    const/4 v2, 0x3

    .line 15
    if-eq v1, v2, :cond_1

    .line 17
    return-void

    .line 18
    :cond_1
    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 20
    const/4 v2, 0x7

    .line 21
    if-ne v1, v2, :cond_2

    .line 23
    return-void

    .line 24
    :cond_2
    iget-object v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 26
    if-eqz v1, :cond_6

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_6

    .line 34
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x1

    .line 39
    iget v3, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 41
    if-ne v3, v2, :cond_5

    .line 43
    sget-object v2, Lcom/samsung/android/server/audio/utils/AudioUtils;->DEVICE_OUT_WIRED_DEVICE_SET:Ljava/util/Set;

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x2

    .line 50
    if-ne p2, v2, :cond_3

    .line 52
    const-string/jumbo v2, "persist.audio.sysvolume"

    .line 55
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-static {p2}, Lcom/samsung/android/server/audio/utils/AudioUtils;->isWiredDeviceType(I)Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_5

    .line 65
    const/4 v2, 0x4

    .line 66
    if-ne p2, v2, :cond_4

    .line 68
    const-string/jumbo v2, "persist.audio.headsetsysvolume"

    .line 71
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/16 v2, 0x8

    .line 77
    if-ne p2, v2, :cond_5

    .line 79
    const-string/jumbo v2, "persist.audio.hphonesysvolume"

    .line 82
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_5
    :goto_0
    new-instance v1, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;

    .line 87
    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    .line 90
    invoke-static {v0, p2, v3, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mapplyDeviceAlias(Lcom/android/server/audio/AudioService;IILcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;)V

    .line 93
    iget-object p0, v0, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 95
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 97
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    .line 104
    move-result p1

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    const/4 p0, -0x2

    .line 109
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 112
    :cond_6
    return-void
.end method

.method public final setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    .line 7
    move-result v0

    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 10
    :goto_0
    if-ltz v0, :cond_1

    .line 12
    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    .line 14
    if-eq v0, v1, :cond_0

    .line 16
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 18
    aget v2, v2, v0

    .line 20
    if-ne v2, v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    .line 24
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 26
    aget-object v1, v1, v0

    .line 28
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 31
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method
