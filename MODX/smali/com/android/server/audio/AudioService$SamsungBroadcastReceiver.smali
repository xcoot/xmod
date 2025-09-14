.class public final Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v2

    .line 7
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 17
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->updateAudioServiceNotificationChannel()V

    .line 22
    goto/16 :goto_10

    .line 24
    :cond_0
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v3

    .line 30
    const/16 v4, 0x3ec

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, -0x1

    .line 34
    if-eqz v3, :cond_f

    .line 36
    const-string v3, "android.intent.extra.REPLACING"

    .line 38
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_f

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    const-string v2, "android.intent.extra.UID"

    .line 54
    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 57
    move-result v2

    .line 58
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    .line 60
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p2

    .line 64
    const-string v3, "AS.AudioService"

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v7, "("

    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v7, ") is removed"

    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v6

    .line 91
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v2, v1, p2}, Lcom/samsung/android/server/audio/utils/BtUtils;->checkAndUpdateAuracastApp(IILjava/lang/String;)V

    .line 97
    const-string/jumbo p2, "com.samsung.android.oneconnect"

    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p2

    .line 104
    if-eqz p2, :cond_4

    .line 106
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 108
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    .line 115
    iget-object v5, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 117
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 120
    move-result-object v5

    .line 121
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    move-result-object v3

    .line 128
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_2

    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 140
    iget v6, v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    .line 142
    if-nez v6, :cond_1

    .line 144
    goto :goto_0

    .line 145
    :cond_1
    iget v5, v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    .line 147
    invoke-virtual {p2, v5, v1, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppDevice(IIZ)V

    .line 150
    goto :goto_0

    .line 151
    :cond_2
    iget-boolean v0, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 153
    if-nez v0, :cond_3

    .line 155
    goto/16 :goto_5

    .line 157
    :cond_3
    const-string v0, "AS.MultiSoundManager"

    .line 159
    const-string/jumbo v3, "disable"

    .line 162
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput-boolean v1, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 167
    invoke-virtual {p2}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    .line 170
    iget-object p2, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 172
    iget-object p2, p2, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 174
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 176
    iget-object p2, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 178
    invoke-virtual {p2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 181
    goto/16 :goto_5

    .line 183
    :cond_4
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 185
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 187
    invoke-virtual {p2, v2, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(IZ)I

    .line 190
    move-result p2

    .line 191
    if-eqz p2, :cond_a

    .line 193
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 195
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 197
    const-string/jumbo v3, "removeItem, "

    .line 200
    iget-object v4, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    .line 202
    monitor-enter v4

    .line 203
    :try_start_0
    iget-object v6, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 205
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    move-result-object v7

    .line 209
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    move-result-object v6

    .line 213
    if-eqz v6, :cond_9

    .line 215
    const-string v6, "AS.MultiSoundManager"

    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v3

    .line 229
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v3, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->setDeviceToNative(II)V

    .line 244
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 247
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 249
    const-string/jumbo v3, "multisound_app"

    .line 252
    invoke-static {p2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    move-result-object p2

    .line 256
    const-string v3, "AS.AudioService"

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 260
    const-string v6, "SEC_AUDIO_MULTI_SOUND::ACTION_PACKAGE_REMOVED ( current Packagelist = "

    .line 262
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v4

    .line 272
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 278
    move-result v3

    .line 279
    if-nez v3, :cond_7

    .line 281
    const-string v3, ":"

    .line 283
    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 286
    move-result-object p2

    .line 287
    array-length v3, p2

    .line 288
    move v4, v1

    .line 289
    :goto_1
    if-ge v4, v3, :cond_7

    .line 291
    aget-object v6, p2, v4

    .line 293
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 296
    move-result v7

    .line 297
    if-nez v7, :cond_6

    .line 299
    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 302
    move-result v7

    .line 303
    if-nez v7, :cond_6

    .line 305
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 308
    move-result v7

    .line 309
    if-eqz v7, :cond_5

    .line 311
    move-object v5, v6

    .line 312
    goto :goto_2

    .line 313
    :cond_5
    const-string v7, ":"

    .line 315
    invoke-static {v5, v7, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    move-result-object v5

    .line 319
    :cond_6
    :goto_2
    add-int/2addr v4, v0

    .line 320
    goto :goto_1

    .line 321
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 324
    move-result p2

    .line 325
    if-eqz p2, :cond_8

    .line 327
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 329
    iget-object v6, p2, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 331
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 333
    const/4 v10, 0x0

    .line 334
    const/4 v12, 0x0

    .line 335
    const/16 v7, 0xacb

    .line 337
    const/4 v8, 0x2

    .line 338
    const/4 v9, 0x0

    .line 339
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 342
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 344
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 346
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 351
    iget-object v3, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 353
    const v4, 0x103012b

    .line 356
    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 359
    iget-object p2, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 361
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 364
    move-result-object v3

    .line 365
    const v4, 0x10408ce

    .line 368
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 371
    move-result-object v3

    .line 372
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 375
    move-result-object v3

    .line 376
    const v4, 0x10408bc

    .line 379
    invoke-virtual {p2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 382
    move-result-object p2

    .line 383
    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 386
    move-result-object p2

    .line 387
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 390
    :cond_8
    const-string p2, "AS.AudioService"

    .line 392
    const-string v0, "SEC_AUDIO_MULTI_SOUND::ACTION_PACKAGE_REMOVED ( new Packagelist = "

    .line 394
    invoke-static {v0, v5, p2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 399
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 401
    const-string/jumbo v0, "multisound_app"

    .line 404
    invoke-static {p2, v0, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 407
    goto :goto_4

    .line 408
    :catchall_0
    move-exception p0

    .line 409
    goto :goto_3

    .line 410
    :cond_9
    :try_start_1
    monitor-exit v4

    .line 411
    goto :goto_4

    .line 412
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    throw p0

    .line 414
    :cond_a
    :goto_4
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 416
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 418
    iget v0, p2, Lcom/android/server/audio/MediaFocusControl;->mIgnoredUid:I

    .line 420
    if-ne v0, v2, :cond_b

    .line 422
    invoke-virtual {p2, v2, v1}, Lcom/android/server/audio/MediaFocusControl;->setIgnoreAudioFocus(IZ)V

    .line 425
    :cond_b
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 427
    iget-object v0, p2, Lcom/android/server/audio/AudioService;->mPackageListHelper:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 429
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 431
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    invoke-static {p2, p1}, Lcom/samsung/android/server/audio/PackageListHelper;->removePackageForName(Landroid/content/Context;Ljava/lang/String;)V

    .line 437
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 439
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 441
    const/16 v0, 0x64

    .line 443
    invoke-virtual {p2, v2, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolume(II)V

    .line 446
    :goto_5
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    .line 448
    if-eqz p2, :cond_c

    .line 450
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 452
    iget-object v0, p2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 454
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 456
    invoke-static {v0, p2, p1, v1}, Lcom/samsung/android/server/audio/utils/KaraokeUtils;->checkAndBroadcastKaraokeInstalled(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;Ljava/lang/String;Z)V

    .line 459
    :cond_c
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 461
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    .line 463
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 466
    const-string/jumbo p2, "com.samsung.android.soundassistant"

    .line 469
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    move-result p2

    .line 473
    if-eqz p2, :cond_d

    .line 475
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 477
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$mclearSoundAssistantSettings(Lcom/android/server/audio/AudioService;)V

    .line 480
    :cond_d
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 482
    invoke-static {p2, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$munSetSoundSettingEventBroadcastIntent(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 485
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 487
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 489
    if-eqz p2, :cond_35

    .line 491
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioGameManager;->isGamePackager(Ljava/lang/String;)Z

    .line 494
    move-result p1

    .line 495
    if-eqz p1, :cond_35

    .line 497
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 499
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 501
    iget-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    .line 503
    monitor-enter p1

    .line 504
    :try_start_2
    iget-object p2, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    .line 506
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 513
    move-result p2

    .line 514
    if-eqz p2, :cond_e

    .line 516
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 519
    move-result-object p2

    .line 520
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    .line 522
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioGameManager;->setParamGameUidList()V

    .line 528
    goto :goto_6

    .line 529
    :catchall_1
    move-exception p0

    .line 530
    goto :goto_7

    .line 531
    :cond_e
    :goto_6
    monitor-exit p1

    .line 532
    goto/16 :goto_10

    .line 534
    :goto_7
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 535
    throw p0

    .line 536
    :cond_f
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 538
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 541
    move-result v3

    .line 542
    if-eqz v3, :cond_10

    .line 544
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 547
    move-result-object p1

    .line 548
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 551
    move-result-object p1

    .line 552
    const-string v0, "android.intent.extra.UID"

    .line 554
    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 557
    move-result p2

    .line 558
    const-string v0, "AS.AudioService"

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    .line 562
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string v3, "("

    .line 570
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    const-string p2, ") is data cleared"

    .line 578
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    move-result-object p2

    .line 585
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string/jumbo p2, "com.samsung.android.soundassistant"

    .line 591
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 594
    move-result p2

    .line 595
    if-eqz p2, :cond_35

    .line 597
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 599
    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 601
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    new-instance v0, Landroid/content/Intent;

    .line 606
    const-string v2, "android.intent.action.VOLUMESTAR_SETTING_CHANGED"

    .line 608
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    const-string/jumbo v2, "changed_setting"

    .line 614
    const-string/jumbo v3, "volumestar_enabled"

    .line 617
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string/jumbo v2, "com.android.systemui"

    .line 623
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 629
    move-result-wide v2

    .line 630
    :try_start_3
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 632
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 634
    const-string/jumbo v5, "com.samsung.systemui.permission.SPLUGIN"

    .line 637
    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 640
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 643
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 645
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$mclearSoundAssistantSettings(Lcom/android/server/audio/AudioService;)V

    .line 648
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 650
    invoke-static {p2, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$munSetSoundSettingEventBroadcastIntent(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 653
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 655
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    .line 657
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    new-instance p1, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;

    .line 662
    invoke-direct {p1, v1, p0}, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 665
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 668
    goto/16 :goto_10

    .line 670
    :catchall_2
    move-exception p0

    .line 671
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    throw p0

    .line 675
    :cond_10
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 677
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 680
    move-result v3

    .line 681
    if-eqz v3, :cond_14

    .line 683
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 686
    move-result-object p1

    .line 687
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 690
    move-result-object p1

    .line 691
    const-string v1, "android.intent.extra.UID"

    .line 693
    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 696
    move-result p2

    .line 697
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 699
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService;->isInAllowedList(Ljava/lang/String;)Z

    .line 702
    move-result v1

    .line 703
    if-eqz v1, :cond_11

    .line 705
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 707
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mPackageListHelper:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 709
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 711
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 714
    invoke-static {v1, p1}, Lcom/samsung/android/server/audio/PackageListHelper;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 717
    :cond_11
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    .line 719
    if-eqz v1, :cond_12

    .line 721
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 723
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 725
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 727
    invoke-static {v2, v1, p1, v0}, Lcom/samsung/android/server/audio/utils/KaraokeUtils;->checkAndBroadcastKaraokeInstalled(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;Ljava/lang/String;Z)V

    .line 730
    :cond_12
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 732
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 734
    if-eqz v1, :cond_13

    .line 736
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioGameManager;->isGamePackager(Ljava/lang/String;)Z

    .line 739
    move-result v1

    .line 740
    if-eqz v1, :cond_13

    .line 742
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 744
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 746
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/audio/AudioGameManager;->addGameUid(IZ)V

    .line 749
    :cond_13
    invoke-static {p2, v0, p1}, Lcom/samsung/android/server/audio/utils/BtUtils;->checkAndUpdateAuracastApp(IILjava/lang/String;)V

    .line 752
    goto/16 :goto_10

    .line 754
    :cond_14
    const-string v3, "android.intent.action.TurnOff_MultiSound"

    .line 756
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 759
    move-result v3

    .line 760
    if-eqz v3, :cond_15

    .line 762
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 764
    iget-object v6, p1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 766
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 768
    const/4 v10, 0x0

    .line 769
    const/4 v12, 0x0

    .line 770
    const/16 v7, 0xacb

    .line 772
    const/4 v8, 0x2

    .line 773
    const/4 v9, 0x0

    .line 774
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 777
    new-instance p1, Landroid/content/Intent;

    .line 779
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 782
    const-string/jumbo p2, "com.samsung.android.setting.multisound"

    .line 785
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    const-string/jumbo p2, "com.samsung.intent.action.MULTISOUND_STATE_CHANGED"

    .line 791
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    const-string/jumbo p2, "enabled"

    .line 797
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 800
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 802
    invoke-virtual {p0, p1, v5}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 805
    goto/16 :goto_10

    .line 807
    :cond_15
    const-string v3, "android.intent.action.SAS_NOTIFICATION_CLEAR"

    .line 809
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 812
    move-result v3

    .line 813
    if-eqz v3, :cond_16

    .line 815
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 817
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 819
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 821
    invoke-virtual {p0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 824
    goto/16 :goto_10

    .line 826
    :cond_16
    const-string/jumbo v3, "com.samsung.android.audio.headup.changedevice"

    .line 829
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 832
    move-result v3

    .line 833
    if-eqz v3, :cond_1c

    .line 835
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 837
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 839
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getPinDeviceInternal()I

    .line 842
    move-result p1

    .line 843
    invoke-virtual {p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getPriorityDevice(I)I

    .line 846
    move-result p1

    .line 847
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 849
    iget-object v0, p2, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 851
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 853
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 856
    const-string v2, ""

    .line 858
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    .line 861
    move-result v3

    .line 862
    const/16 v4, 0x8

    .line 864
    if-ne v3, v4, :cond_17

    .line 866
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 868
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    .line 871
    move-result-object v3

    .line 872
    if-eqz v3, :cond_17

    .line 874
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 877
    move-result-object v3

    .line 878
    if-eqz v3, :cond_17

    .line 880
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 883
    move-result-object v0

    .line 884
    goto :goto_9

    .line 885
    :cond_17
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    .line 888
    move-result v3

    .line 889
    const/4 v4, 0x7

    .line 890
    if-ne v3, v4, :cond_19

    .line 892
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 894
    iget-object v4, v3, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 896
    monitor-enter v4

    .line 897
    :try_start_4
    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 899
    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 900
    :try_start_5
    iget-object v5, v3, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 902
    :try_start_6
    monitor-exit v3

    .line 903
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 904
    if-eqz v5, :cond_19

    .line 906
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    .line 909
    move-result-object v3

    .line 910
    if-eqz v3, :cond_19

    .line 912
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 915
    move-result-object v3

    .line 916
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 919
    move-result v4

    .line 920
    if-eqz v4, :cond_19

    .line 922
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 925
    move-result-object v4

    .line 926
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 928
    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    .line 931
    move-result v6

    .line 932
    if-eqz v6, :cond_18

    .line 934
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 937
    move-result-object v0

    .line 938
    goto :goto_9

    .line 939
    :catchall_3
    move-exception p0

    .line 940
    goto :goto_8

    .line 941
    :catchall_4
    move-exception p0

    .line 942
    :try_start_7
    monitor-exit v3

    .line 943
    throw p0

    .line 944
    :goto_8
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 945
    throw p0

    .line 946
    :cond_19
    const v3, 0x8000

    .line 949
    if-ne p1, v3, :cond_1a

    .line 951
    const-string v3, "0"

    .line 953
    invoke-static {p1, v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 956
    move-result-object v3

    .line 957
    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 959
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    move-result-object v3

    .line 963
    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 965
    if-eqz v3, :cond_1a

    .line 967
    const-string v0, "0"

    .line 969
    goto :goto_9

    .line 970
    :cond_1a
    const-string v3, ""

    .line 972
    invoke-static {p1, v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 975
    move-result-object v3

    .line 976
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 978
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    move-result-object v0

    .line 982
    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 984
    if-eqz v0, :cond_1b

    .line 986
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 988
    :cond_1b
    move-object v0, v2

    .line 989
    :goto_9
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/audio/AudioService;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    .line 992
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 994
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 996
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 998
    const/16 p1, 0x3ed

    .line 1000
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1003
    goto/16 :goto_10

    .line 1005
    :cond_1c
    const-string/jumbo v3, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    .line 1008
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1011
    move-result v3

    .line 1012
    if-eqz v3, :cond_1e

    .line 1014
    const-string/jumbo p1, "status"

    .line 1017
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1020
    move-result p1

    .line 1021
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1023
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1025
    if-ne p1, v0, :cond_1d

    .line 1027
    move v1, v0

    .line 1028
    :cond_1d
    iput-boolean v1, p2, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 1030
    xor-int/lit8 p1, v1, 0x1

    .line 1032
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroringPolicyParameter(Z)V

    .line 1035
    const-string p1, "AS.AudioService"

    .line 1037
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1039
    const-string/jumbo v0, "mIsDLNAEnabled:"

    .line 1042
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1045
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1047
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1049
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 1051
    invoke-static {p1, p2, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1054
    goto/16 :goto_10

    .line 1056
    :cond_1e
    const-string/jumbo v3, "com.samsung.android.scpm.policy.UPDATE.Audio"

    .line 1059
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1062
    move-result v3

    .line 1063
    if-eqz v3, :cond_1f

    .line 1065
    sget-object p1, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 1067
    new-instance p2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 1069
    const-string v0, "Receive SCPM update intent : Audio"

    .line 1071
    invoke-direct {p2, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p1, p2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1077
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1079
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 1081
    if-eqz p1, :cond_35

    .line 1083
    new-instance p1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 1085
    invoke-direct {p1, p0, v1}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;I)V

    .line 1088
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1091
    goto/16 :goto_10

    .line 1093
    :cond_1f
    const-string/jumbo v3, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 1096
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1099
    move-result v3

    .line 1100
    if-eqz v3, :cond_21

    .line 1102
    sget-object p2, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 1104
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 1106
    const-string v1, "Receive SCPM clear intent"

    .line 1108
    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p2, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1114
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1116
    iget-object v0, p2, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 1118
    if-eqz v0, :cond_35

    .line 1120
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 1122
    const-string v0, "APP_LIST_VERSION"

    .line 1124
    invoke-virtual {p2, v6, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    .line 1127
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 1129
    if-eqz p2, :cond_20

    .line 1131
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1133
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 1135
    const-string v0, "LIVE_TRANSLATE_ALLOW_LIST_VERSION"

    .line 1137
    invoke-virtual {p2, v6, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    .line 1140
    :cond_20
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1142
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 1144
    iput-object v5, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    .line 1146
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 1149
    move-result-object p2

    .line 1150
    new-instance v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;

    .line 1152
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/SoundAppPolicyManager;Landroid/content/Context;)V

    .line 1155
    const-wide/16 p0, 0x3c

    .line 1157
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1159
    invoke-interface {p2, v0, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1162
    goto/16 :goto_10

    .line 1164
    :cond_21
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 1166
    if-eqz p1, :cond_22

    .line 1168
    const-string/jumbo p1, "com.samsung.android.scpm.policy.UPDATE.voip-live-translate-allow-list-a7f6"

    .line 1171
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1174
    move-result p1

    .line 1175
    if-eqz p1, :cond_22

    .line 1177
    sget-object p1, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 1179
    new-instance p2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 1181
    const-string v1, "Receive SCPM update intent : voip-live-translate-allow-list"

    .line 1183
    invoke-direct {p2, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p1, p2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1189
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1191
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 1193
    if-eqz p1, :cond_35

    .line 1195
    new-instance p1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 1197
    invoke-direct {p1, p0, v0}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;I)V

    .line 1200
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1203
    goto/16 :goto_10

    .line 1205
    :cond_22
    const-string p1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 1207
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1210
    move-result p1

    .line 1211
    const/4 v3, 0x2

    .line 1212
    if-eqz p1, :cond_23

    .line 1214
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1216
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1218
    const/16 p1, 0x37

    .line 1220
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1223
    goto/16 :goto_10

    .line 1225
    :cond_23
    const-string/jumbo p1, "com.sec.media.action.mute_interval"

    .line 1228
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1231
    move-result p1

    .line 1232
    if-eqz p1, :cond_24

    .line 1234
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1236
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1238
    const-string/jumbo p2, "mode_ringer_time_on"

    .line 1241
    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1244
    move-result p1

    .line 1245
    if-ne p1, v0, :cond_35

    .line 1247
    iput v1, p0, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    .line 1249
    iget p1, p0, Lcom/android/server/audio/AudioService;->mPrevRingerMode:I

    .line 1251
    const-string/jumbo v0, "checkMuteInterval"

    .line 1254
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 1257
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1259
    invoke-static {p0, p2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1262
    goto/16 :goto_10

    .line 1264
    :cond_24
    const-string/jumbo p1, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_MODE_ENABLED"

    .line 1267
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1270
    move-result p1

    .line 1271
    if-eqz p1, :cond_25

    .line 1273
    const-string/jumbo p1, "enable"

    .line 1276
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1279
    move-result p1

    .line 1280
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1282
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1284
    invoke-virtual {p0, v5, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setDualA2dpMode(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1287
    goto/16 :goto_10

    .line 1289
    :cond_25
    const-string p1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 1291
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1294
    move-result p1

    .line 1295
    if-eqz p1, :cond_26

    .line 1297
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 1299
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1302
    move-result-object p1

    .line 1303
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1305
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1307
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1309
    const/16 p2, 0xac9

    .line 1311
    invoke-virtual {p0, p2, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1314
    goto/16 :goto_10

    .line 1316
    :cond_26
    const-string/jumbo p1, "com.sec.android.intent.action.SPLIT_SOUND"

    .line 1319
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1322
    move-result p1

    .line 1323
    if-eqz p1, :cond_27

    .line 1325
    const-string/jumbo p0, "enabled"

    .line 1328
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1331
    move-result p0

    .line 1332
    sput-boolean p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 1334
    goto/16 :goto_10

    .line 1336
    :cond_27
    const-string/jumbo p1, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    .line 1339
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1342
    move-result p1

    .line 1343
    if-eqz p1, :cond_2c

    .line 1345
    const-string/jumbo p1, "com.samsung.android.bluetooth.cast.extra.STATE"

    .line 1348
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1351
    move-result p1

    .line 1352
    const-string/jumbo v2, "com.samsung.android.bluetooth.cast.device.extra.REMOTEROLE"

    .line 1355
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1358
    move-result p2

    .line 1359
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1361
    const/4 v4, 0x3

    .line 1362
    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 1365
    move-result v2

    .line 1366
    const-string v4, "AS.AudioService"

    .line 1368
    const-string v5, "BT cast device state:"

    .line 1370
    const-string v6, " role : "

    .line 1372
    invoke-static {p1, p2, v5, v6, v4}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    if-eq p1, v3, :cond_28

    .line 1377
    if-nez p1, :cond_35

    .line 1379
    :cond_28
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1381
    if-ne p1, v3, :cond_29

    .line 1383
    move v5, v0

    .line 1384
    goto :goto_a

    .line 1385
    :cond_29
    move v5, v1

    .line 1386
    :goto_a
    iput-boolean v5, v4, Lcom/android/server/audio/AudioService;->mIsBluetoothCastState:Z

    .line 1388
    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1390
    invoke-virtual {v4, p1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->checkSendBecomingNoisyIntent(II)V

    .line 1393
    if-ne p2, v3, :cond_35

    .line 1395
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1397
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1399
    if-ne p1, v3, :cond_2a

    .line 1401
    goto :goto_b

    .line 1402
    :cond_2a
    move v0, v1

    .line 1403
    :goto_b
    const-string v5, "0"

    .line 1405
    const-string/jumbo v4, "remote_submix"

    .line 1408
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 1410
    monitor-enter p1

    .line 1411
    :try_start_8
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 1413
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1416
    const v2, 0x8000

    .line 1419
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 1422
    move-result-object p2

    .line 1423
    new-instance v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1425
    const/4 v6, 0x0

    .line 1426
    const/4 v3, 0x0

    .line 1427
    move-object v1, v7

    .line 1428
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    if-eqz v0, :cond_2b

    .line 1433
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 1435
    invoke-virtual {p0, p2, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    goto :goto_c

    .line 1439
    :cond_2b
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 1441
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    :goto_c
    monitor-exit p1

    .line 1445
    goto/16 :goto_10

    .line 1447
    :catchall_5
    move-exception p0

    .line 1448
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1449
    throw p0

    .line 1450
    :cond_2c
    const-string/jumbo p1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 1453
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1456
    move-result p1

    .line 1457
    if-eqz p1, :cond_2d

    .line 1459
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1461
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 1463
    if-nez p1, :cond_35

    .line 1465
    new-instance p1, Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 1467
    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1469
    const-string v0, "AudioService"

    .line 1471
    invoke-direct {p1, p2, v0}, Lcom/samsung/android/server/audio/GoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1474
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 1476
    goto/16 :goto_10

    .line 1478
    :cond_2d
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    .line 1480
    if-eqz p1, :cond_2f

    .line 1482
    const-string/jumbo p1, "com.samsung.bluetooth.device.action.AUDIO_TYPE_CHANGED"

    .line 1485
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1488
    move-result p1

    .line 1489
    if-eqz p1, :cond_2f

    .line 1491
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 1493
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1496
    move-result-object p1

    .line 1497
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1499
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1501
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1503
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    .line 1506
    move-result-object p0

    .line 1507
    if-eqz p1, :cond_35

    .line 1509
    if-eqz p0, :cond_35

    .line 1511
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 1514
    move-result-object p0

    .line 1515
    const-string/jumbo v2, "com.samsung.bluetooth.device.extra.AUDIO_TYPE"

    .line 1518
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1521
    move-result p2

    .line 1522
    if-ne p2, v3, :cond_2e

    .line 1524
    if-eqz p0, :cond_35

    .line 1526
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 1529
    move-result-object p1

    .line 1530
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 1533
    move-result-object p0

    .line 1534
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1537
    move-result p0

    .line 1538
    if-eqz p0, :cond_35

    .line 1540
    invoke-static {v0}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Z)V

    .line 1543
    goto/16 :goto_10

    .line 1545
    :cond_2e
    if-eqz p0, :cond_35

    .line 1547
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 1550
    move-result-object p1

    .line 1551
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 1554
    move-result-object p0

    .line 1555
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1558
    move-result p0

    .line 1559
    if-eqz p0, :cond_35

    .line 1561
    invoke-static {v1}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Z)V

    .line 1564
    goto/16 :goto_10

    .line 1566
    :cond_2f
    const-string p1, "androidx.car.app.connection.action.CAR_CONNECTION_UPDATED"

    .line 1568
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1571
    move-result p1

    .line 1572
    if-eqz p1, :cond_35

    .line 1574
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1576
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1578
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1581
    move-result-object v2

    .line 1582
    iget-object v3, p1, Lcom/android/server/audio/AudioService;->PROJECTION_HOST_URI:Landroid/net/Uri;

    .line 1584
    const-string p1, "CarConnectionState"

    .line 1586
    filled-new-array {p1}, [Ljava/lang/String;

    .line 1589
    move-result-object v4

    .line 1590
    const/4 v5, 0x0

    .line 1591
    const/4 v6, 0x0

    .line 1592
    const/4 v7, 0x0

    .line 1593
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1596
    move-result-object p2

    .line 1597
    const-string v2, "AS.AudioService"

    .line 1599
    if-nez p2, :cond_30

    .line 1601
    const-string p1, "[Android Auto] Null response from content provider when checking connection to the car, treating as disconnected"

    .line 1603
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :goto_d
    move v0, v1

    .line 1607
    goto :goto_f

    .line 1608
    :cond_30
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    .line 1611
    move-result v3

    .line 1612
    if-lez v3, :cond_34

    .line 1614
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1617
    move-result v3

    .line 1618
    if-eqz v3, :cond_33

    .line 1620
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1623
    move-result p1

    .line 1624
    if-gez p1, :cond_31

    .line 1626
    const-string p1, "[Android Auto] Connection to car response is missing the connection type, treating as disconnected"

    .line 1628
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    goto :goto_e

    .line 1632
    :cond_31
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 1635
    move-result p1

    .line 1636
    if-nez p1, :cond_32

    .line 1638
    const-string p1, "[Android Auto] disconnected"

    .line 1640
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    goto :goto_e

    .line 1644
    :cond_32
    const-string p1, "[Android Auto] connected"

    .line 1646
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1652
    goto :goto_f

    .line 1653
    :cond_33
    const-string p1, "[Android Auto] Connection to car response is empty, treating as disconnected"

    .line 1655
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    goto :goto_e

    .line 1659
    :cond_34
    const-string p1, "[Android Auto] Connection Count is 0, treating as disconnected"

    .line 1661
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :goto_e
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1667
    goto :goto_d

    .line 1668
    :goto_f
    const-string p1, "AS.AudioService"

    .line 1670
    const-string/jumbo p2, "received ACTION_CAR_CONNECTION_UPDATED : state = "

    .line 1673
    invoke-static {p2, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1676
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1678
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mConnectedAndroidAuto:Z

    .line 1680
    if-eqz v0, :cond_35

    .line 1682
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 1684
    if-eqz p0, :cond_35

    .line 1686
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->clearMultiAudiofocusfromAndroidAuto()V

    .line 1689
    :cond_35
    :goto_10
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    iget v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->$r8$classId:I

    .line 7
    packed-switch v2, :pswitch_data_0

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "android.intent.action.DOCK_EVENT"

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x3

    .line 22
    const/4 v6, 0x1

    .line 23
    const/4 v7, 0x0

    .line 24
    if-eqz v3, :cond_6

    .line 26
    const-string v2, "android.intent.extra.DOCK_STATE"

    .line 28
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 31
    move-result v1

    .line 32
    if-eq v1, v6, :cond_3

    .line 34
    if-eq v1, v4, :cond_2

    .line 36
    if-eq v1, v5, :cond_1

    .line 38
    const/4 v2, 0x4

    .line 39
    if-eq v1, v2, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/16 v7, 0x9

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/16 v7, 0x8

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v7, 0x6

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const/4 v7, 0x7

    .line 51
    :goto_0
    if-eq v1, v5, :cond_5

    .line 53
    if-nez v1, :cond_4

    .line 55
    iget-object v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 57
    iget v2, v2, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 59
    if-eq v2, v5, :cond_5

    .line 61
    :cond_4
    iget-object v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 63
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 65
    const-string v3, "ACTION_DOCK_EVENT intent"

    .line 67
    invoke-virtual {v2, v5, v7, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 70
    :cond_5
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 72
    iput v1, v0, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 74
    goto/16 :goto_14

    .line 76
    :cond_6
    const-string v3, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_2b

    .line 84
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_7

    .line 92
    goto/16 :goto_13

    .line 94
    :cond_7
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_9

    .line 102
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 104
    iget-boolean v0, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 106
    if-eqz v0, :cond_8

    .line 108
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 111
    :cond_8
    const-string/jumbo v0, "screen_state=on"

    .line 114
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 117
    goto/16 :goto_14

    .line 119
    :cond_9
    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_b

    .line 127
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 129
    iget-boolean v0, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 131
    if-eqz v0, :cond_a

    .line 133
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 136
    :cond_a
    const-string/jumbo v0, "screen_state=off"

    .line 139
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 142
    goto/16 :goto_14

    .line 144
    :cond_b
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_c

    .line 152
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 154
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 156
    const/4 v6, 0x0

    .line 157
    const/4 v7, 0x0

    .line 158
    const/16 v2, 0x36

    .line 160
    const/4 v3, 0x0

    .line 161
    const/4 v4, 0x0

    .line 162
    const/4 v5, 0x0

    .line 163
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 166
    goto/16 :goto_14

    .line 168
    :cond_c
    const-string v3, "android.intent.action.USER_SWITCHED"

    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    move-result v3

    .line 174
    const/4 v8, -0x1

    .line 175
    const/4 v9, 0x0

    .line 176
    if-eqz v3, :cond_11

    .line 178
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 180
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 182
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 187
    monitor-enter v3

    .line 188
    :try_start_0
    iget-object v2, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 190
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    .line 193
    move-result v2

    .line 194
    if-nez v2, :cond_e

    .line 196
    iget-object v2, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 198
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 204
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    .line 209
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Lcom/android/server/pm/UserManagerInternal;

    .line 215
    iget v10, v2, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 217
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 220
    move-result v10

    .line 221
    invoke-virtual {v4, v10}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 224
    move-result-object v4

    .line 225
    if-eqz v4, :cond_d

    .line 227
    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_d

    .line 233
    monitor-exit v3

    .line 234
    goto :goto_2

    .line 235
    :catchall_0
    move-exception v0

    .line 236
    goto :goto_3

    .line 237
    :cond_d
    iget-object v1, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 239
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 242
    invoke-virtual {v2, v8, v9, v7}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 245
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 248
    monitor-exit v3

    .line 249
    goto :goto_1

    .line 250
    :cond_e
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :goto_1
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 253
    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    .line 255
    if-eqz v2, :cond_f

    .line 257
    iget-object v7, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 259
    const/4 v10, 0x0

    .line 260
    const/4 v11, 0x0

    .line 261
    const/16 v8, 0xc

    .line 263
    const/4 v9, 0x0

    .line 264
    const/4 v12, 0x0

    .line 265
    const/4 v13, 0x0

    .line 266
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 269
    :cond_f
    :goto_2
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 271
    iput-boolean v6, v1, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    .line 273
    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mSupportsMicPrivacyToggle:Z

    .line 275
    if-eqz v2, :cond_10

    .line 277
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 279
    invoke-static {}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    .line 282
    move-result v3

    .line 283
    invoke-virtual {v2, v3, v6}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    .line 286
    move-result v2

    .line 287
    iput-boolean v2, v1, Lcom/android/server/audio/AudioService;->mMicMuteFromPrivacyToggle:Z

    .line 289
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 291
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    invoke-static {}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    .line 297
    move-result v2

    .line 298
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    .line 301
    :cond_10
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 303
    invoke-virtual {v1, v6}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    .line 306
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 308
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 310
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 312
    aget-object v11, v0, v5

    .line 314
    const/4 v10, 0x0

    .line 315
    const/4 v12, 0x0

    .line 316
    const/16 v7, 0xa

    .line 318
    const/4 v8, 0x2

    .line 319
    const/4 v9, 0x0

    .line 320
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 323
    goto/16 :goto_14

    .line 325
    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    throw v0

    .line 327
    :cond_11
    const-string v3, "android.intent.action.USER_BACKGROUND"

    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    move-result v3

    .line 333
    const-wide/16 v10, 0x0

    .line 335
    if-eqz v3, :cond_19

    .line 337
    const-string v2, "android.intent.extra.user_handle"

    .line 339
    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 342
    move-result v1

    .line 343
    if-ltz v1, :cond_18

    .line 345
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 352
    move-result-object v2

    .line 353
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 355
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 364
    move-result v0

    .line 365
    if-nez v0, :cond_14

    .line 367
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 369
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 372
    move-result-object v0

    .line 373
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 375
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 377
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 379
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 381
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 383
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 386
    monitor-enter v5

    .line 387
    :try_start_2
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 389
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 391
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 393
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 396
    move-result-object v0

    .line 397
    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 399
    if-nez v0, :cond_12

    .line 401
    move-object v0, v9

    .line 402
    goto :goto_4

    .line 403
    :cond_12
    new-instance v7, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    .line 405
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 408
    const-class v8, Lcom/android/server/wm/ActivityRecord;

    .line 410
    invoke-static {v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 413
    move-result-object v8

    .line 414
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    move-result-object v4

    .line 418
    invoke-static {v7, v8, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 421
    move-result-object v4

    .line 422
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 425
    move-result-object v0

    .line 426
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 429
    :goto_4
    if-nez v0, :cond_13

    .line 431
    goto :goto_5

    .line 432
    :cond_13
    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 434
    :goto_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 435
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 438
    goto :goto_6

    .line 439
    :catchall_1
    move-exception v0

    .line 440
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 441
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 444
    throw v0

    .line 445
    :cond_14
    :goto_6
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 447
    filled-new-array {v0}, [Ljava/lang/String;

    .line 450
    move-result-object v0

    .line 451
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 454
    move-result-object v4

    .line 455
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 457
    invoke-interface {v4, v0, v10, v11, v2}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 464
    move-result-object v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 465
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 468
    move-result v0

    .line 469
    sub-int/2addr v0, v6

    .line 470
    move v4, v0

    .line 471
    :goto_7
    if-ltz v4, :cond_18

    .line 473
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 476
    move-result-object v0

    .line 477
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 479
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 481
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 483
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    .line 486
    move-result v5

    .line 487
    const/16 v7, 0x2710

    .line 489
    if-ge v5, v7, :cond_15

    .line 491
    goto :goto_8

    .line 492
    :cond_15
    const-string v5, "android.permission.INTERACT_ACROSS_USERS"

    .line 494
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 496
    invoke-virtual {v3, v5, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    move-result v5

    .line 500
    if-nez v5, :cond_16

    .line 502
    goto :goto_8

    .line 503
    :cond_16
    if-eqz v9, :cond_17

    .line 505
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 507
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 510
    move-result-object v7

    .line 511
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    move-result v5

    .line 515
    if-eqz v5, :cond_17

    .line 517
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 519
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 522
    move-result v5

    .line 523
    if-eqz v5, :cond_17

    .line 525
    goto :goto_8

    .line 526
    :cond_17
    :try_start_5
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 528
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 530
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 533
    move-result-object v5

    .line 534
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 537
    move-result v7

    .line 538
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 541
    move-result v0

    .line 542
    const-string/jumbo v8, "killBackgroundUserProcessesWithAudioRecordPermission"

    .line 545
    invoke-interface {v5, v7, v0, v8}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 548
    goto :goto_8

    .line 549
    :catch_0
    move-exception v0

    .line 550
    const-string v5, "AS.AudioService"

    .line 552
    const-string v7, "Error calling killUid"

    .line 554
    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    :goto_8
    add-int/lit8 v4, v4, -0x1

    .line 559
    goto :goto_7

    .line 560
    :catch_1
    move-exception v0

    .line 561
    new-instance v1, Landroid/util/AndroidRuntimeException;

    .line 563
    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    .line 566
    throw v1

    .line 567
    :cond_18
    :try_start_6
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 570
    move-result-object v0

    .line 571
    const-string/jumbo v2, "no_record_audio"

    .line 574
    invoke-virtual {v0, v2, v6, v1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    .line 577
    goto/16 :goto_14

    .line 579
    :catch_2
    move-exception v0

    .line 580
    const-string v1, "AS.AudioService"

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    .line 584
    const-string v3, "Failed to apply DISALLOW_RECORD_AUDIO restriction: "

    .line 586
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    move-result-object v0

    .line 596
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    goto/16 :goto_14

    .line 601
    :cond_19
    const-string v3, "android.intent.action.USER_FOREGROUND"

    .line 603
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 606
    move-result v3

    .line 607
    if-eqz v3, :cond_1a

    .line 609
    const-string v0, "android.intent.extra.user_handle"

    .line 611
    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 614
    move-result v0

    .line 615
    :try_start_7
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 618
    move-result-object v1

    .line 619
    const-string/jumbo v2, "no_record_audio"

    .line 622
    invoke-virtual {v1, v2, v7, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3

    .line 625
    goto/16 :goto_14

    .line 627
    :catch_3
    move-exception v0

    .line 628
    const-string v1, "AS.AudioService"

    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    .line 632
    const-string v3, "Failed to apply DISALLOW_RECORD_AUDIO restriction: "

    .line 634
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    move-result-object v0

    .line 644
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    goto/16 :goto_14

    .line 649
    :cond_1a
    const-string v3, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    .line 651
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 654
    move-result v3

    .line 655
    if-nez v3, :cond_27

    .line 657
    const-string v3, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 659
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 662
    move-result v3

    .line 663
    if-eqz v3, :cond_1b

    .line 665
    goto/16 :goto_12

    .line 667
    :cond_1b
    const-string v3, "android.intent.action.PACKAGES_SUSPENDED"

    .line 669
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 672
    move-result v3

    .line 673
    if-eqz v3, :cond_21

    .line 675
    const-string v2, "android.intent.extra.changed_uid_list"

    .line 677
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 680
    move-result-object v2

    .line 681
    const-string v3, "android.intent.extra.changed_package_list"

    .line 683
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 686
    move-result-object v1

    .line 687
    if-eqz v1, :cond_2c

    .line 689
    if-eqz v2, :cond_2c

    .line 691
    array-length v3, v1

    .line 692
    array-length v4, v2

    .line 693
    if-eq v3, v4, :cond_1c

    .line 695
    goto/16 :goto_14

    .line 697
    :cond_1c
    move v3, v7

    .line 698
    :goto_9
    array-length v4, v2

    .line 699
    if-ge v3, v4, :cond_2c

    .line 701
    aget-object v4, v1, v3

    .line 703
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 706
    move-result v4

    .line 707
    if-nez v4, :cond_20

    .line 709
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 711
    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 713
    aget-object v5, v1, v3

    .line 715
    aget v9, v2, v3

    .line 717
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 720
    sget-object v10, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 722
    monitor-enter v10

    .line 723
    :try_start_8
    iget-object v11, v4, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 725
    invoke-virtual {v11}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    .line 728
    move-result-object v11

    .line 729
    new-instance v12, Ljava/util/ArrayList;

    .line 731
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 734
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 737
    move-result v13

    .line 738
    if-eqz v13, :cond_1e

    .line 740
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 743
    move-result-object v13

    .line 744
    check-cast v13, Lcom/android/server/audio/FocusRequester;

    .line 746
    invoke-virtual {v13, v9}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    .line 749
    move-result v14

    .line 750
    if-eqz v14, :cond_1d

    .line 752
    iget-object v14, v13, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 754
    invoke-virtual {v14, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 757
    move-result v14

    .line 758
    if-nez v14, :cond_1d

    .line 760
    iget-object v14, v13, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 762
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    sget-object v14, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 767
    new-instance v15, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 769
    new-instance v6, Ljava/lang/StringBuilder;

    .line 771
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    const-string/jumbo v8, "focus owner:"

    .line 777
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    iget-object v8, v13, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 782
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    const-string v8, " in uid:"

    .line 787
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 793
    const-string v8, " pack: "

    .line 795
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    const-string v8, " getting AUDIOFOCUS_LOSS due to app suspension"

    .line 803
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 809
    move-result-object v6

    .line 810
    invoke-direct {v15, v6}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 813
    const-string v6, "MediaFocusControl"

    .line 815
    invoke-virtual {v15, v7, v6}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 818
    invoke-virtual {v14, v15}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 821
    const/4 v6, -0x1

    .line 822
    invoke-virtual {v13, v6}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    .line 825
    goto :goto_b

    .line 826
    :catchall_2
    move-exception v0

    .line 827
    goto :goto_d

    .line 828
    :cond_1d
    move v6, v8

    .line 829
    :goto_b
    move v8, v6

    .line 830
    const/4 v6, 0x1

    .line 831
    goto :goto_a

    .line 832
    :cond_1e
    move v6, v8

    .line 833
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 836
    move-result-object v5

    .line 837
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 840
    move-result v8

    .line 841
    if-eqz v8, :cond_1f

    .line 843
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 846
    move-result-object v8

    .line 847
    check-cast v8, Ljava/lang/String;

    .line 849
    const/4 v9, 0x1

    .line 850
    invoke-virtual {v4, v8, v7, v9}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 853
    goto :goto_c

    .line 854
    :cond_1f
    monitor-exit v10

    .line 855
    goto :goto_e

    .line 856
    :goto_d
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 857
    throw v0

    .line 858
    :cond_20
    move v6, v8

    .line 859
    :goto_e
    add-int/lit8 v3, v3, 0x1

    .line 861
    move v8, v6

    .line 862
    const/4 v6, 0x1

    .line 863
    goto/16 :goto_9

    .line 865
    :cond_21
    const-string/jumbo v1, "com.android.server.audio.action.CHECK_MUSIC_ACTIVE"

    .line 868
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 871
    move-result v1

    .line 872
    if-eqz v1, :cond_2c

    .line 874
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 876
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    .line 878
    const-string/jumbo v2, "com.android.server.audio.action.CHECK_MUSIC_ACTIVE"

    .line 881
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 883
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 886
    invoke-static {v5, v7}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    .line 889
    move-result v0

    .line 890
    const-string/jumbo v3, "onCheckMusicActive() mMusicActiveMs: "

    .line 893
    iget-object v6, v1, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 895
    monitor-enter v6

    .line 896
    :try_start_9
    iget v8, v1, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 898
    if-ne v8, v4, :cond_26

    .line 900
    iget-object v4, v1, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 902
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 905
    move-result v4

    .line 906
    invoke-virtual {v1, v4}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    .line 909
    move-result v8

    .line 910
    if-eqz v8, :cond_24

    .line 912
    if-eqz v0, :cond_24

    .line 914
    invoke-virtual {v1}, Lcom/android/server/audio/SoundDoseHelper;->scheduleMusicActiveCheck()V

    .line 917
    iget-object v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 919
    invoke-virtual {v0, v5, v4}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    .line 922
    move-result v0

    .line 923
    invoke-virtual {v1, v4}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    .line 926
    move-result v4

    .line 927
    if-le v0, v4, :cond_26

    .line 929
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 932
    move-result-wide v4

    .line 933
    iget-wide v8, v1, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 935
    cmp-long v0, v8, v10

    .line 937
    if-eqz v0, :cond_22

    .line 939
    iget v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 941
    sub-long v8, v4, v8

    .line 943
    long-to-int v8, v8

    .line 944
    add-int/2addr v0, v8

    .line 945
    iput v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 947
    goto :goto_f

    .line 948
    :catchall_3
    move-exception v0

    .line 949
    goto :goto_11

    .line 950
    :cond_22
    :goto_f
    iput-wide v4, v1, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 952
    const-string v0, "AS.SoundDoseHelper"

    .line 954
    new-instance v4, Ljava/lang/StringBuilder;

    .line 956
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 959
    iget v3, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 961
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 967
    move-result-object v3

    .line 968
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 973
    const v3, 0x44aa200

    .line 976
    if-le v0, v3, :cond_23

    .line 978
    const/4 v3, 0x1

    .line 979
    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/SoundDoseHelper;->setSafeMediaVolumeEnabled(Ljava/lang/String;Z)V

    .line 982
    iput v7, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 984
    :cond_23
    iget v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 986
    iget-object v1, v1, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 988
    const/16 v2, 0x3ec

    .line 990
    invoke-virtual {v1, v2, v0, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 993
    move-result-object v0

    .line 994
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 997
    goto :goto_10

    .line 998
    :cond_24
    iget-object v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 1000
    if-eqz v0, :cond_25

    .line 1002
    iget-object v2, v1, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1004
    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1007
    iput-object v9, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 1009
    :cond_25
    iput-wide v10, v1, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 1011
    :cond_26
    :goto_10
    monitor-exit v6

    .line 1012
    goto/16 :goto_14

    .line 1014
    :goto_11
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1015
    throw v0

    .line 1016
    :cond_27
    :goto_12
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1018
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMusicFxHelper:Lcom/android/server/audio/MusicFxHelper;

    .line 1020
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1023
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 1026
    move-result-object v2

    .line 1027
    const-string v3, "AS.MusicFxHelper"

    .line 1029
    if-eqz v2, :cond_28

    .line 1031
    const-string/jumbo v0, "effect broadcast already targeted to "

    .line 1034
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1037
    move-result-object v0

    .line 1038
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    goto/16 :goto_14

    .line 1043
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1046
    move-result-object v2

    .line 1047
    invoke-virtual {v2, v1, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 1050
    move-result-object v4

    .line 1051
    if-eqz v4, :cond_2a

    .line 1053
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1056
    move-result v5

    .line 1057
    if-eqz v5, :cond_2a

    .line 1059
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1062
    move-result-object v4

    .line 1063
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1065
    const-string v5, "android.media.extra.PACKAGE_NAME"

    .line 1067
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1070
    move-result-object v5

    .line 1071
    if-nez v5, :cond_29

    .line 1073
    const-string v0, "Intent package name must not be null"

    .line 1075
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    goto :goto_14

    .line 1079
    :cond_29
    if-eqz v4, :cond_2a

    .line 1081
    :try_start_a
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1083
    if-eqz v6, :cond_2a

    .line 1085
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1087
    if-eqz v6, :cond_2a

    .line 1089
    const-wide/32 v6, 0x400000

    .line 1092
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 1095
    move-result-object v6

    .line 1096
    invoke-static {}, Lcom/android/server/audio/MusicFxHelper;->getCurrentUserId()I

    .line 1099
    move-result v7

    .line 1100
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    .line 1103
    move-result v2

    .line 1104
    const/16 v6, 0x20

    .line 1106
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1109
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1111
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1113
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/audio/MusicFxHelper;->setMusicFxServiceWithObserver(Landroid/content/Intent;Ljava/lang/String;I)Z

    .line 1119
    move-result v0

    .line 1120
    if-eqz v0, :cond_2c

    .line 1122
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1124
    move-object/from16 v2, p1

    .line 1126
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_4

    .line 1129
    goto :goto_14

    .line 1130
    :catch_4
    move-exception v0

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1133
    const-string v2, "Not able to find UID from package: "

    .line 1135
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    const-string v2, " error: "

    .line 1143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1152
    move-result-object v0

    .line 1153
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_2a
    const-string/jumbo v0, "couldn\'t find receiver package for effect intent"

    .line 1159
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    goto :goto_14

    .line 1163
    :cond_2b
    :goto_13
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1165
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1167
    const/16 v2, 0x37

    .line 1169
    invoke-virtual {v0, v2, v4, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1172
    :cond_2c
    :goto_14
    return-void

    .line 1173
    :pswitch_0
    move-object/from16 v2, p1

    .line 1175
    :try_start_b
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1178
    goto :goto_15

    .line 1179
    :catch_5
    move-exception v0

    .line 1180
    move-object v1, v0

    .line 1181
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1184
    :goto_15
    return-void

    .line 1185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
