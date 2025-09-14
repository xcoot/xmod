.class public final Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/audio/AudioServiceExt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioServiceExt;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 16
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mDvfsHelper:Lcom/samsung/android/server/audio/DvfsHelper;

    .line 18
    iput-boolean v2, p1, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    .line 20
    new-instance p1, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-direct {p1, p0, p2}, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;I)V

    .line 26
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 29
    goto/16 :goto_2

    .line 31
    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz v1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 42
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mDvfsHelper:Lcom/samsung/android/server/audio/DvfsHelper;

    .line 44
    iput-boolean v3, p1, Lcom/samsung/android/server/audio/DvfsHelper;->mIsScreenOn:Z

    .line 46
    new-instance p1, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 48
    const/4 p2, 0x1

    .line 49
    invoke-direct {p1, p0, p2}, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;I)V

    .line 52
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 55
    goto/16 :goto_2

    .line 57
    :cond_1
    const-string v1, "android.settings.ALL_SOUND_MUTE"

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 65
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 67
    const-string/jumbo v0, "mute"

    .line 70
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 73
    move-result p2

    .line 74
    iput p2, p1, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    .line 76
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 78
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->setAllSoundMute()V

    .line 81
    goto/16 :goto_2

    .line 83
    :cond_2
    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v1

    .line 89
    const-string v4, "AS.AudioServiceExt"

    .line 91
    if-eqz v1, :cond_3

    .line 93
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    .line 95
    if-eqz p1, :cond_10

    .line 97
    const-string p1, "android.intent.extra.user_handle"

    .line 99
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 102
    move-result p1

    .line 103
    const-string p2, "ACTION_USER_SWITCHED :: userId = "

    .line 105
    invoke-static {p1, p2, v4}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 110
    invoke-virtual {p0, p1, v2}, Lcom/android/server/audio/AudioServiceExt;->updateThemeSound(IZ)V

    .line 113
    goto/16 :goto_2

    .line 115
    :cond_3
    const-string/jumbo v1, "com.samsung.intent.action.WB_AMR"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_7

    .line 124
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    const-string p1, "EXTRA_RAT"

    .line 131
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 134
    move-result p1

    .line 135
    const-string v0, "EXTRA_STATE"

    .line 137
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 140
    move-result p2

    .line 141
    const/16 v0, 0x9

    .line 143
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 145
    if-ne p2, v0, :cond_4

    .line 147
    const-string/jumbo p2, "wb_amr fb"

    .line 150
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string/jumbo p2, "g_call_band=fb"

    .line 156
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 159
    goto :goto_0

    .line 160
    :cond_4
    const/16 v0, 0x8

    .line 162
    if-ne p2, v0, :cond_5

    .line 164
    const-string/jumbo p2, "wb_amr swb"

    .line 167
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string/jumbo p2, "g_call_band=swb"

    .line 173
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 176
    goto :goto_0

    .line 177
    :cond_5
    if-ne p2, v2, :cond_6

    .line 179
    const-string/jumbo p2, "wb_amr wb"

    .line 182
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string/jumbo p2, "g_call_band=wb"

    .line 188
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 191
    goto :goto_0

    .line 192
    :cond_6
    const-string/jumbo p2, "wb_amr nb"

    .line 195
    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string/jumbo p2, "g_call_band=nb"

    .line 201
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 204
    :goto_0
    if-eqz p1, :cond_10

    .line 206
    new-instance p2, Ljava/lang/StringBuilder;

    .line 208
    const-string/jumbo v0, "l_call_rat_type="

    .line 211
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 224
    goto/16 :goto_2

    .line 226
    :cond_7
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_8

    .line 234
    invoke-static {p1, v3}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendHqmData(Landroid/content/Context;Z)V

    .line 237
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 239
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 241
    const-string/jumbo p1, "dev_shutdown=true"

    .line 244
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 247
    goto/16 :goto_2

    .line 249
    :cond_8
    const-string/jumbo v1, "com.sec.media.action.AUDIOCORE_LOGGING"

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_9

    .line 258
    const-string p0, "[logging] receive ACTION_AUDIOCORE_LOGGING"

    .line 260
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {p1, v3}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendHqmData(Landroid/content/Context;Z)V

    .line 266
    goto/16 :goto_2

    .line 268
    :cond_9
    const-string/jumbo v1, "com.sec.android.intent.action.DHR_HQM_REFRESH_REQ"

    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_a

    .line 277
    const-string p0, "[logging] receive ACTION_AUDIOCORE_BIGDATA_APP"

    .line 279
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {p1, v2}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendHqmData(Landroid/content/Context;Z)V

    .line 285
    goto/16 :goto_2

    .line 287
    :cond_a
    const-string p1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_d

    .line 295
    const-string p1, "ACTION_SUBINFO_RECORD_UPDATED received"

    .line 297
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 302
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mPhoneStateHelper:Lcom/samsung/android/server/audio/PhoneStateHelper;

    .line 304
    iget-object p2, p1, Lcom/samsung/android/server/audio/PhoneStateHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 306
    if-eqz p2, :cond_c

    .line 308
    move p2, v3

    .line 309
    :goto_1
    iget v0, p1, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSimCount:I

    .line 311
    if-ge p2, v0, :cond_c

    .line 313
    iget-object v0, p1, Lcom/samsung/android/server/audio/PhoneStateHelper;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 315
    aget-object v0, v0, p2

    .line 317
    if-eqz v0, :cond_b

    .line 319
    iget-object v1, p1, Lcom/samsung/android/server/audio/PhoneStateHelper;->mSpecifiedTm:[Landroid/telephony/TelephonyManager;

    .line 321
    aget-object v1, v1, p2

    .line 323
    invoke-virtual {v1, v0, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 326
    const/4 v0, -0x1

    .line 327
    iput v0, p1, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    .line 329
    const-string/jumbo v0, "call unregisterPhoneStateListener : "

    .line 332
    const-string v1, "AS.PhoneStateHelper"

    .line 334
    invoke-static {p2, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_b
    add-int/lit8 p2, p2, 0x1

    .line 339
    goto :goto_1

    .line 340
    :cond_c
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 342
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mPhoneStateHelper:Lcom/samsung/android/server/audio/PhoneStateHelper;

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/PhoneStateHelper;->registerPhoneStateListener()V

    .line 347
    goto/16 :goto_2

    .line 349
    :cond_d
    const-string/jumbo p1, "com.android.launcher3.quickstep.closeall"

    .line 352
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    move-result p1

    .line 356
    if-eqz p1, :cond_e

    .line 358
    const-string/jumbo p1, "onReceive close all"

    .line 361
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 366
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 368
    const-string/jumbo p1, "l_recovery_restarting=true"

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    .line 374
    goto :goto_2

    .line 375
    :cond_e
    const-string/jumbo p1, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    .line 378
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    move-result p1

    .line 382
    if-eqz p1, :cond_f

    .line 384
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 386
    const-string/jumbo p1, "value"

    .line 389
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 392
    move-result p1

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioServiceExt;->setNbQualityMode(I)V

    .line 396
    goto :goto_2

    .line 397
    :cond_f
    const-string/jumbo p1, "com.samsung.server.BatteryService.action.BATTERY_CONNECTION_STATE_CHANGED"

    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    move-result p1

    .line 404
    if-eqz p1, :cond_10

    .line 406
    const-string p1, "all_battery_connected"

    .line 408
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 411
    move-result p1

    .line 412
    iget-object p2, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 414
    iget-object p2, p2, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 416
    const-string v0, "all_sound_off"

    .line 418
    const/4 v1, -0x2

    .line 419
    invoke-static {p2, v0, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 422
    move-result p2

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    .line 425
    const-string v1, "battery hotswap(connected only 1 battery) = "

    .line 427
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    xor-int/2addr p1, v2

    .line 431
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 434
    const-string v1, ", mAllSoundMute="

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 441
    iget v1, v1, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    const-string v1, ", allSoundOff="

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    move-result-object v0

    .line 458
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    if-eq p2, v2, :cond_10

    .line 463
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 465
    iget p2, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    .line 467
    if-eq p1, p2, :cond_10

    .line 469
    iput p1, p0, Lcom/android/server/audio/AudioServiceExt;->mAllSoundMute:I

    .line 471
    invoke-virtual {p0}, Lcom/android/server/audio/AudioServiceExt;->setAllSoundMute()V

    .line 474
    :cond_10
    :goto_2
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo p2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 19
    new-instance p1, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;

    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-direct {p1, p2, p0}, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 25
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 28
    :cond_0
    return-void

    .line 29
    :pswitch_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioServiceExt$ExtBroadcastReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    :goto_0
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
