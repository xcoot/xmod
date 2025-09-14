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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
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

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->updateAudioServiceNotificationChannel()V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_10

    .line 23
    .line 24
    :cond_0
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/16 v4, 0x3ec

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, -0x1

    .line 34
    if-eqz v3, :cond_f

    .line 35
    .line 36
    const-string v3, "android.intent.extra.REPLACING"

    .line 37
    .line 38
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_f

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v2, "android.intent.extra.UID"

    .line 53
    .line 54
    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    .line 59
    .line 60
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const-string v3, "AS.AudioService"

    .line 65
    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v7, "("

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v7, ") is removed"

    .line 83
    .line 84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v1, p2}, Lcom/samsung/android/server/audio/utils/BtUtils;->checkAndUpdateAuracastApp(IILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string/jumbo p2, "com.samsung.android.oneconnect"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-eqz p2, :cond_4

    .line 105
    .line 106
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 107
    .line 108
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    new-instance v3, Ljava/util/ArrayList;

    .line 114
    .line 115
    iget-object v5, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_2

    .line 133
    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 139
    .line 140
    iget v6, v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    .line 141
    .line 142
    if-nez v6, :cond_1

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    iget v5, v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    .line 146
    .line 147
    invoke-virtual {p2, v5, v1, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppDevice(IIZ)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    iget-boolean v0, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 152
    .line 153
    if-nez v0, :cond_3

    .line 154
    .line 155
    goto/16 :goto_5

    .line 156
    .line 157
    :cond_3
    const-string v0, "AS.MultiSoundManager"

    .line 158
    .line 159
    const-string/jumbo v3, "disable"

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    iput-boolean v1, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 166
    .line 167
    invoke-virtual {p2}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    .line 168
    .line 169
    .line 170
    iget-object p2, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    .line 171
    .line 172
    iget-object p2, p2, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    .line 173
    .line 174
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 175
    .line 176
    iget-object p2, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 177
    .line 178
    invoke-virtual {p2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_5

    .line 182
    .line 183
    :cond_4
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 184
    .line 185
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 186
    .line 187
    invoke-virtual {p2, v2, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(IZ)I

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    if-eqz p2, :cond_a

    .line 192
    .line 193
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 194
    .line 195
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 196
    .line 197
    const-string/jumbo v3, "removeItem, "

    .line 198
    .line 199
    .line 200
    iget-object v4, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    .line 201
    .line 202
    monitor-enter v4

    .line 203
    :try_start_0
    iget-object v6, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 204
    .line 205
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    if-eqz v6, :cond_9

    .line 214
    .line 215
    const-string v6, "AS.MultiSoundManager"

    .line 216
    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    iget-object v3, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 233
    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->setDeviceToNative(II)V

    .line 242
    .line 243
    .line 244
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 246
    .line 247
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 248
    .line 249
    const-string/jumbo v3, "multisound_app"

    .line 250
    .line 251
    .line 252
    invoke-static {p2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    const-string v3, "AS.AudioService"

    .line 257
    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string v6, "SEC_AUDIO_MULTI_SOUND::ACTION_PACKAGE_REMOVED ( current Packagelist = "

    .line 261
    .line 262
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    if-nez v3, :cond_7

    .line 280
    .line 281
    const-string v3, ":"

    .line 282
    .line 283
    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    array-length v3, p2

    .line 288
    move v4, v1

    .line 289
    :goto_1
    if-ge v4, v3, :cond_7

    .line 290
    .line 291
    aget-object v6, p2, v4

    .line 292
    .line 293
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 294
    .line 295
    .line 296
    move-result v7

    .line 297
    if-nez v7, :cond_6

    .line 298
    .line 299
    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    if-nez v7, :cond_6

    .line 304
    .line 305
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    if-eqz v7, :cond_5

    .line 310
    .line 311
    move-object v5, v6

    .line 312
    goto :goto_2

    .line 313
    :cond_5
    const-string v7, ":"

    .line 314
    .line 315
    invoke-static {v5, v7, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
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

    .line 322
    .line 323
    .line 324
    move-result p2

    .line 325
    if-eqz p2, :cond_8

    .line 326
    .line 327
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 328
    .line 329
    iget-object v6, p2, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 330
    .line 331
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 332
    .line 333
    const/4 v10, 0x0

    .line 334
    const/4 v12, 0x0

    .line 335
    const/16 v7, 0xacb

    .line 336
    .line 337
    const/4 v8, 0x2

    .line 338
    const/4 v9, 0x0

    .line 339
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 340
    .line 341
    .line 342
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 343
    .line 344
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 345
    .line 346
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 350
    .line 351
    iget-object v3, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 352
    .line 353
    const v4, 0x103012b

    .line 354
    .line 355
    .line 356
    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 357
    .line 358
    .line 359
    iget-object p2, p2, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 360
    .line 361
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    const v4, 0x10408ce

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    const v4, 0x10408bc

    .line 377
    .line 378
    .line 379
    invoke-virtual {p2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 388
    .line 389
    .line 390
    :cond_8
    const-string p2, "AS.AudioService"

    .line 391
    .line 392
    const-string v0, "SEC_AUDIO_MULTI_SOUND::ACTION_PACKAGE_REMOVED ( new Packagelist = "

    .line 393
    .line 394
    invoke-static {v0, v5, p2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 398
    .line 399
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 400
    .line 401
    const-string/jumbo v0, "multisound_app"

    .line 402
    .line 403
    .line 404
    invoke-static {p2, v0, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 405
    .line 406
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

    .line 415
    .line 416
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 417
    .line 418
    iget v0, p2, Lcom/android/server/audio/MediaFocusControl;->mIgnoredUid:I

    .line 419
    .line 420
    if-ne v0, v2, :cond_b

    .line 421
    .line 422
    invoke-virtual {p2, v2, v1}, Lcom/android/server/audio/MediaFocusControl;->setIgnoreAudioFocus(IZ)V

    .line 423
    .line 424
    .line 425
    :cond_b
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 426
    .line 427
    iget-object v0, p2, Lcom/android/server/audio/AudioService;->mPackageListHelper:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 428
    .line 429
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    invoke-static {p2, p1}, Lcom/samsung/android/server/audio/PackageListHelper;->removePackageForName(Landroid/content/Context;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 438
    .line 439
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 440
    .line 441
    const/16 v0, 0x64

    .line 442
    .line 443
    invoke-virtual {p2, v2, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolume(II)V

    .line 444
    .line 445
    .line 446
    :goto_5
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    .line 447
    .line 448
    if-eqz p2, :cond_c

    .line 449
    .line 450
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 451
    .line 452
    iget-object v0, p2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 453
    .line 454
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 455
    .line 456
    invoke-static {v0, p2, p1, v1}, Lcom/samsung/android/server/audio/utils/KaraokeUtils;->checkAndBroadcastKaraokeInstalled(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;Ljava/lang/String;Z)V

    .line 457
    .line 458
    .line 459
    :cond_c
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 460
    .line 461
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mAppVolumeFromSoundAssistant:Landroid/util/SparseIntArray;

    .line 462
    .line 463
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 464
    .line 465
    .line 466
    const-string/jumbo p2, "com.samsung.android.soundassistant"

    .line 467
    .line 468
    .line 469
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result p2

    .line 473
    if-eqz p2, :cond_d

    .line 474
    .line 475
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 476
    .line 477
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$mclearSoundAssistantSettings(Lcom/android/server/audio/AudioService;)V

    .line 478
    .line 479
    .line 480
    :cond_d
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 481
    .line 482
    invoke-static {p2, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$munSetSoundSettingEventBroadcastIntent(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 486
    .line 487
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 488
    .line 489
    if-eqz p2, :cond_35

    .line 490
    .line 491
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioGameManager;->isGamePackager(Ljava/lang/String;)Z

    .line 492
    .line 493
    .line 494
    move-result p1

    .line 495
    if-eqz p1, :cond_35

    .line 496
    .line 497
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 498
    .line 499
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 500
    .line 501
    iget-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    .line 502
    .line 503
    monitor-enter p1

    .line 504
    :try_start_2
    iget-object p2, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    .line 505
    .line 506
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result p2

    .line 514
    if-eqz p2, :cond_e

    .line 515
    .line 516
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 517
    .line 518
    .line 519
    move-result-object p2

    .line 520
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioGameManager;->setParamGameUidList()V

    .line 526
    .line 527
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

    .line 533
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

    .line 537
    .line 538
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    if-eqz v3, :cond_10

    .line 543
    .line 544
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 545
    .line 546
    .line 547
    move-result-object p1

    .line 548
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    const-string v0, "android.intent.extra.UID"

    .line 553
    .line 554
    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 555
    .line 556
    .line 557
    move-result p2

    .line 558
    const-string v0, "AS.AudioService"

    .line 559
    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    .line 561
    .line 562
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    const-string v3, "("

    .line 569
    .line 570
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    const-string p2, ") is data cleared"

    .line 577
    .line 578
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object p2

    .line 585
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    .line 587
    .line 588
    const-string/jumbo p2, "com.samsung.android.soundassistant"

    .line 589
    .line 590
    .line 591
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result p2

    .line 595
    if-eqz p2, :cond_35

    .line 596
    .line 597
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 598
    .line 599
    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    .line 600
    .line 601
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 602
    .line 603
    .line 604
    new-instance v0, Landroid/content/Intent;

    .line 605
    .line 606
    const-string v2, "android.intent.action.VOLUMESTAR_SETTING_CHANGED"

    .line 607
    .line 608
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    const-string/jumbo v2, "changed_setting"

    .line 612
    .line 613
    .line 614
    const-string/jumbo v3, "volumestar_enabled"

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    .line 619
    .line 620
    const-string/jumbo v2, "com.android.systemui"

    .line 621
    .line 622
    .line 623
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    .line 625
    .line 626
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 627
    .line 628
    .line 629
    move-result-wide v2

    .line 630
    :try_start_3
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 631
    .line 632
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 633
    .line 634
    const-string/jumbo v5, "com.samsung.systemui.permission.SPLUGIN"

    .line 635
    .line 636
    .line 637
    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 638
    .line 639
    .line 640
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 641
    .line 642
    .line 643
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 644
    .line 645
    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$mclearSoundAssistantSettings(Lcom/android/server/audio/AudioService;)V

    .line 646
    .line 647
    .line 648
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 649
    .line 650
    invoke-static {p2, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$munSetSoundSettingEventBroadcastIntent(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 654
    .line 655
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    .line 656
    .line 657
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    .line 659
    .line 660
    new-instance p1, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;

    .line 661
    .line 662
    invoke-direct {p1, v1, p0}, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 663
    .line 664
    .line 665
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_10

    .line 669
    .line 670
    :catchall_2
    move-exception p0

    .line 671
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 672
    .line 673
    .line 674
    throw p0

    .line 675
    :cond_10
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 676
    .line 677
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v3

    .line 681
    if-eqz v3, :cond_14

    .line 682
    .line 683
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 684
    .line 685
    .line 686
    move-result-object p1

    .line 687
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object p1

    .line 691
    const-string v1, "android.intent.extra.UID"

    .line 692
    .line 693
    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 694
    .line 695
    .line 696
    move-result p2

    .line 697
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 698
    .line 699
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService;->isInAllowedList(Ljava/lang/String;)Z

    .line 700
    .line 701
    .line 702
    move-result v1

    .line 703
    if-eqz v1, :cond_11

    .line 704
    .line 705
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 706
    .line 707
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mPackageListHelper:Lcom/samsung/android/server/audio/PackageListHelper;

    .line 708
    .line 709
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 710
    .line 711
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 712
    .line 713
    .line 714
    invoke-static {v1, p1}, Lcom/samsung/android/server/audio/PackageListHelper;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    :cond_11
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    .line 718
    .line 719
    if-eqz v1, :cond_12

    .line 720
    .line 721
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 722
    .line 723
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 724
    .line 725
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 726
    .line 727
    invoke-static {v2, v1, p1, v0}, Lcom/samsung/android/server/audio/utils/KaraokeUtils;->checkAndBroadcastKaraokeInstalled(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;Ljava/lang/String;Z)V

    .line 728
    .line 729
    .line 730
    :cond_12
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 731
    .line 732
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 733
    .line 734
    if-eqz v1, :cond_13

    .line 735
    .line 736
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioGameManager;->isGamePackager(Ljava/lang/String;)Z

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    if-eqz v1, :cond_13

    .line 741
    .line 742
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 743
    .line 744
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioGameManager:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 745
    .line 746
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/audio/AudioGameManager;->addGameUid(IZ)V

    .line 747
    .line 748
    .line 749
    :cond_13
    invoke-static {p2, v0, p1}, Lcom/samsung/android/server/audio/utils/BtUtils;->checkAndUpdateAuracastApp(IILjava/lang/String;)V

    .line 750
    .line 751
    .line 752
    goto/16 :goto_10

    .line 753
    .line 754
    :cond_14
    const-string v3, "android.intent.action.TurnOff_MultiSound"

    .line 755
    .line 756
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    move-result v3

    .line 760
    if-eqz v3, :cond_15

    .line 761
    .line 762
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 763
    .line 764
    iget-object v6, p1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 765
    .line 766
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 767
    .line 768
    const/4 v10, 0x0

    .line 769
    const/4 v12, 0x0

    .line 770
    const/16 v7, 0xacb

    .line 771
    .line 772
    const/4 v8, 0x2

    .line 773
    const/4 v9, 0x0

    .line 774
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 775
    .line 776
    .line 777
    new-instance p1, Landroid/content/Intent;

    .line 778
    .line 779
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 780
    .line 781
    .line 782
    const-string/jumbo p2, "com.samsung.android.setting.multisound"

    .line 783
    .line 784
    .line 785
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    .line 787
    .line 788
    const-string/jumbo p2, "com.samsung.intent.action.MULTISOUND_STATE_CHANGED"

    .line 789
    .line 790
    .line 791
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    .line 793
    .line 794
    const-string/jumbo p2, "enabled"

    .line 795
    .line 796
    .line 797
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 798
    .line 799
    .line 800
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 801
    .line 802
    invoke-virtual {p0, p1, v5}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 803
    .line 804
    .line 805
    goto/16 :goto_10

    .line 806
    .line 807
    :cond_15
    const-string v3, "android.intent.action.SAS_NOTIFICATION_CLEAR"

    .line 808
    .line 809
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 810
    .line 811
    .line 812
    move-result v3

    .line 813
    if-eqz v3, :cond_16

    .line 814
    .line 815
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 816
    .line 817
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 818
    .line 819
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 820
    .line 821
    invoke-virtual {p0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 822
    .line 823
    .line 824
    goto/16 :goto_10

    .line 825
    .line 826
    :cond_16
    const-string/jumbo v3, "com.samsung.android.audio.headup.changedevice"

    .line 827
    .line 828
    .line 829
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v3

    .line 833
    if-eqz v3, :cond_1c

    .line 834
    .line 835
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 836
    .line 837
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 838
    .line 839
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getPinDeviceInternal()I

    .line 840
    .line 841
    .line 842
    move-result p1

    .line 843
    invoke-virtual {p2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getPriorityDevice(I)I

    .line 844
    .line 845
    .line 846
    move-result p1

    .line 847
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 848
    .line 849
    iget-object v0, p2, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 850
    .line 851
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 852
    .line 853
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 854
    .line 855
    .line 856
    const-string v2, ""

    .line 857
    .line 858
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    .line 859
    .line 860
    .line 861
    move-result v3

    .line 862
    const/16 v4, 0x8

    .line 863
    .line 864
    if-ne v3, v4, :cond_17

    .line 865
    .line 866
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 867
    .line 868
    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    if-eqz v3, :cond_17

    .line 873
    .line 874
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 875
    .line 876
    .line 877
    move-result-object v3

    .line 878
    if-eqz v3, :cond_17

    .line 879
    .line 880
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    goto :goto_9

    .line 885
    :cond_17
    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    .line 886
    .line 887
    .line 888
    move-result v3

    .line 889
    const/4 v4, 0x7

    .line 890
    if-ne v3, v4, :cond_19

    .line 891
    .line 892
    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 893
    .line 894
    iget-object v4, v3, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 895
    .line 896
    monitor-enter v4

    .line 897
    :try_start_4
    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    .line 898
    .line 899
    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 900
    :try_start_5
    iget-object v5, v3, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 901
    .line 902
    :try_start_6
    monitor-exit v3

    .line 903
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 904
    if-eqz v5, :cond_19

    .line 905
    .line 906
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    .line 907
    .line 908
    .line 909
    move-result-object v3

    .line 910
    if-eqz v3, :cond_19

    .line 911
    .line 912
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 913
    .line 914
    .line 915
    move-result-object v3

    .line 916
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 917
    .line 918
    .line 919
    move-result v4

    .line 920
    if-eqz v4, :cond_19

    .line 921
    .line 922
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    move-result-object v4

    .line 926
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 927
    .line 928
    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    .line 929
    .line 930
    .line 931
    move-result v6

    .line 932
    if-eqz v6, :cond_18

    .line 933
    .line 934
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 935
    .line 936
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

    .line 947
    .line 948
    .line 949
    if-ne p1, v3, :cond_1a

    .line 950
    .line 951
    const-string v3, "0"

    .line 952
    .line 953
    invoke-static {p1, v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v3

    .line 957
    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 958
    .line 959
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v3

    .line 963
    check-cast v3, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 964
    .line 965
    if-eqz v3, :cond_1a

    .line 966
    .line 967
    const-string v0, "0"

    .line 968
    .line 969
    goto :goto_9

    .line 970
    :cond_1a
    const-string v3, ""

    .line 971
    .line 972
    invoke-static {p1, v3}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v3

    .line 976
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 977
    .line 978
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 983
    .line 984
    if-eqz v0, :cond_1b

    .line 985
    .line 986
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 987
    .line 988
    :cond_1b
    move-object v0, v2

    .line 989
    :goto_9
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/audio/AudioService;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    .line 990
    .line 991
    .line 992
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 993
    .line 994
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 995
    .line 996
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 997
    .line 998
    const/16 p1, 0x3ed

    .line 999
    .line 1000
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1001
    .line 1002
    .line 1003
    goto/16 :goto_10

    .line 1004
    .line 1005
    :cond_1c
    const-string/jumbo v3, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1009
    .line 1010
    .line 1011
    move-result v3

    .line 1012
    if-eqz v3, :cond_1e

    .line 1013
    .line 1014
    const-string/jumbo p1, "status"

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1018
    .line 1019
    .line 1020
    move-result p1

    .line 1021
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1022
    .line 1023
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1024
    .line 1025
    if-ne p1, v0, :cond_1d

    .line 1026
    .line 1027
    move v1, v0

    .line 1028
    :cond_1d
    iput-boolean v1, p2, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 1029
    .line 1030
    xor-int/lit8 p1, v1, 0x1

    .line 1031
    .line 1032
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroringPolicyParameter(Z)V

    .line 1033
    .line 1034
    .line 1035
    const-string p1, "AS.AudioService"

    .line 1036
    .line 1037
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    const-string/jumbo v0, "mIsDLNAEnabled:"

    .line 1040
    .line 1041
    .line 1042
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1046
    .line 1047
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    .line 1048
    .line 1049
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    .line 1050
    .line 1051
    invoke-static {p1, p2, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 1052
    .line 1053
    .line 1054
    goto/16 :goto_10

    .line 1055
    .line 1056
    :cond_1e
    const-string/jumbo v3, "com.samsung.android.scpm.policy.UPDATE.Audio"

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1060
    .line 1061
    .line 1062
    move-result v3

    .line 1063
    if-eqz v3, :cond_1f

    .line 1064
    .line 1065
    sget-object p1, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 1066
    .line 1067
    new-instance p2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 1068
    .line 1069
    const-string v0, "Receive SCPM update intent : Audio"

    .line 1070
    .line 1071
    invoke-direct {p2, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {p1, p2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1075
    .line 1076
    .line 1077
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1078
    .line 1079
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 1080
    .line 1081
    if-eqz p1, :cond_35

    .line 1082
    .line 1083
    new-instance p1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 1084
    .line 1085
    invoke-direct {p1, p0, v1}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;I)V

    .line 1086
    .line 1087
    .line 1088
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1089
    .line 1090
    .line 1091
    goto/16 :goto_10

    .line 1092
    .line 1093
    :cond_1f
    const-string/jumbo v3, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v3

    .line 1100
    if-eqz v3, :cond_21

    .line 1101
    .line 1102
    sget-object p2, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 1103
    .line 1104
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 1105
    .line 1106
    const-string v1, "Receive SCPM clear intent"

    .line 1107
    .line 1108
    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {p2, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1112
    .line 1113
    .line 1114
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1115
    .line 1116
    iget-object v0, p2, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 1117
    .line 1118
    if-eqz v0, :cond_35

    .line 1119
    .line 1120
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 1121
    .line 1122
    const-string v0, "APP_LIST_VERSION"

    .line 1123
    .line 1124
    invoke-virtual {p2, v6, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 1128
    .line 1129
    if-eqz p2, :cond_20

    .line 1130
    .line 1131
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1132
    .line 1133
    iget-object p2, p2, Lcom/android/server/audio/AudioService;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 1134
    .line 1135
    const-string v0, "LIVE_TRANSLATE_ALLOW_LIST_VERSION"

    .line 1136
    .line 1137
    invoke-virtual {p2, v6, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    :cond_20
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1141
    .line 1142
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 1143
    .line 1144
    iput-object v5, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    .line 1145
    .line 1146
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 1147
    .line 1148
    .line 1149
    move-result-object p2

    .line 1150
    new-instance v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;

    .line 1151
    .line 1152
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/SoundAppPolicyManager;Landroid/content/Context;)V

    .line 1153
    .line 1154
    .line 1155
    const-wide/16 p0, 0x3c

    .line 1156
    .line 1157
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1158
    .line 1159
    invoke-interface {p2, v0, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1160
    .line 1161
    .line 1162
    goto/16 :goto_10

    .line 1163
    .line 1164
    :cond_21
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    .line 1165
    .line 1166
    if-eqz p1, :cond_22

    .line 1167
    .line 1168
    const-string/jumbo p1, "com.samsung.android.scpm.policy.UPDATE.voip-live-translate-allow-list-a7f6"

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1172
    .line 1173
    .line 1174
    move-result p1

    .line 1175
    if-eqz p1, :cond_22

    .line 1176
    .line 1177
    sget-object p1, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    .line 1178
    .line 1179
    new-instance p2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 1180
    .line 1181
    const-string v1, "Receive SCPM update intent : voip-live-translate-allow-list"

    .line 1182
    .line 1183
    invoke-direct {p2, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {p1, p2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1187
    .line 1188
    .line 1189
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1190
    .line 1191
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mSoundAppPolicyManager:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 1192
    .line 1193
    if-eqz p1, :cond_35

    .line 1194
    .line 1195
    new-instance p1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 1196
    .line 1197
    invoke-direct {p1, p0, v0}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;I)V

    .line 1198
    .line 1199
    .line 1200
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1201
    .line 1202
    .line 1203
    goto/16 :goto_10

    .line 1204
    .line 1205
    :cond_22
    const-string p1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 1206
    .line 1207
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1208
    .line 1209
    .line 1210
    move-result p1

    .line 1211
    const/4 v3, 0x2

    .line 1212
    if-eqz p1, :cond_23

    .line 1213
    .line 1214
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1215
    .line 1216
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1217
    .line 1218
    const/16 p1, 0x37

    .line 1219
    .line 1220
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1221
    .line 1222
    .line 1223
    goto/16 :goto_10

    .line 1224
    .line 1225
    :cond_23
    const-string/jumbo p1, "com.sec.media.action.mute_interval"

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1229
    .line 1230
    .line 1231
    move-result p1

    .line 1232
    if-eqz p1, :cond_24

    .line 1233
    .line 1234
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1235
    .line 1236
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1237
    .line 1238
    const-string/jumbo p2, "mode_ringer_time_on"

    .line 1239
    .line 1240
    .line 1241
    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1242
    .line 1243
    .line 1244
    move-result p1

    .line 1245
    if-ne p1, v0, :cond_35

    .line 1246
    .line 1247
    iput v1, p0, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    .line 1248
    .line 1249
    iget p1, p0, Lcom/android/server/audio/AudioService;->mPrevRingerMode:I

    .line 1250
    .line 1251
    const-string/jumbo v0, "checkMuteInterval"

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 1255
    .line 1256
    .line 1257
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1258
    .line 1259
    invoke-static {p0, p2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1260
    .line 1261
    .line 1262
    goto/16 :goto_10

    .line 1263
    .line 1264
    :cond_24
    const-string/jumbo p1, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_MODE_ENABLED"

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1268
    .line 1269
    .line 1270
    move-result p1

    .line 1271
    if-eqz p1, :cond_25

    .line 1272
    .line 1273
    const-string/jumbo p1, "enable"

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1277
    .line 1278
    .line 1279
    move-result p1

    .line 1280
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1281
    .line 1282
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1283
    .line 1284
    invoke-virtual {p0, v5, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setDualA2dpMode(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1285
    .line 1286
    .line 1287
    goto/16 :goto_10

    .line 1288
    .line 1289
    :cond_25
    const-string p1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 1290
    .line 1291
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1292
    .line 1293
    .line 1294
    move-result p1

    .line 1295
    if-eqz p1, :cond_26

    .line 1296
    .line 1297
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 1298
    .line 1299
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1300
    .line 1301
    .line 1302
    move-result-object p1

    .line 1303
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1304
    .line 1305
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1306
    .line 1307
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1308
    .line 1309
    const/16 p2, 0xac9

    .line 1310
    .line 1311
    invoke-virtual {p0, p2, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1312
    .line 1313
    .line 1314
    goto/16 :goto_10

    .line 1315
    .line 1316
    :cond_26
    const-string/jumbo p1, "com.sec.android.intent.action.SPLIT_SOUND"

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1320
    .line 1321
    .line 1322
    move-result p1

    .line 1323
    if-eqz p1, :cond_27

    .line 1324
    .line 1325
    const-string/jumbo p0, "enabled"

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1329
    .line 1330
    .line 1331
    move-result p0

    .line 1332
    sput-boolean p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    .line 1333
    .line 1334
    goto/16 :goto_10

    .line 1335
    .line 1336
    :cond_27
    const-string/jumbo p1, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    .line 1337
    .line 1338
    .line 1339
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1340
    .line 1341
    .line 1342
    move-result p1

    .line 1343
    if-eqz p1, :cond_2c

    .line 1344
    .line 1345
    const-string/jumbo p1, "com.samsung.android.bluetooth.cast.extra.STATE"

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1349
    .line 1350
    .line 1351
    move-result p1

    .line 1352
    const-string/jumbo v2, "com.samsung.android.bluetooth.cast.device.extra.REMOTEROLE"

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1356
    .line 1357
    .line 1358
    move-result p2

    .line 1359
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1360
    .line 1361
    const/4 v4, 0x3

    .line 1362
    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 1363
    .line 1364
    .line 1365
    move-result v2

    .line 1366
    const-string v4, "AS.AudioService"

    .line 1367
    .line 1368
    const-string v5, "BT cast device state:"

    .line 1369
    .line 1370
    const-string v6, " role : "

    .line 1371
    .line 1372
    invoke-static {p1, p2, v5, v6, v4}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    if-eq p1, v3, :cond_28

    .line 1376
    .line 1377
    if-nez p1, :cond_35

    .line 1378
    .line 1379
    :cond_28
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1380
    .line 1381
    if-ne p1, v3, :cond_29

    .line 1382
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

    .line 1387
    .line 1388
    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1389
    .line 1390
    invoke-virtual {v4, p1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->checkSendBecomingNoisyIntent(II)V

    .line 1391
    .line 1392
    .line 1393
    if-ne p2, v3, :cond_35

    .line 1394
    .line 1395
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1396
    .line 1397
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1398
    .line 1399
    if-ne p1, v3, :cond_2a

    .line 1400
    .line 1401
    goto :goto_b

    .line 1402
    :cond_2a
    move v0, v1

    .line 1403
    :goto_b
    const-string v5, "0"

    .line 1404
    .line 1405
    const-string/jumbo v4, "remote_submix"

    .line 1406
    .line 1407
    .line 1408
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    .line 1409
    .line 1410
    monitor-enter p1

    .line 1411
    :try_start_8
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    .line 1412
    .line 1413
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1414
    .line 1415
    .line 1416
    const v2, 0x8000

    .line 1417
    .line 1418
    .line 1419
    invoke-static {v2, v5}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    .line 1420
    .line 1421
    .line 1422
    move-result-object p2

    .line 1423
    new-instance v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    .line 1424
    .line 1425
    const/4 v6, 0x0

    .line 1426
    const/4 v3, 0x0

    .line 1427
    move-object v1, v7

    .line 1428
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    .line 1430
    .line 1431
    if-eqz v0, :cond_2b

    .line 1432
    .line 1433
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 1434
    .line 1435
    invoke-virtual {p0, p2, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    .line 1437
    .line 1438
    goto :goto_c

    .line 1439
    :cond_2b
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    .line 1440
    .line 1441
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    .line 1443
    .line 1444
    :goto_c
    monitor-exit p1

    .line 1445
    goto/16 :goto_10

    .line 1446
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

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1454
    .line 1455
    .line 1456
    move-result p1

    .line 1457
    if-eqz p1, :cond_2d

    .line 1458
    .line 1459
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1460
    .line 1461
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 1462
    .line 1463
    if-nez p1, :cond_35

    .line 1464
    .line 1465
    new-instance p1, Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 1466
    .line 1467
    iget-object p2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1468
    .line 1469
    const-string v0, "AudioService"

    .line 1470
    .line 1471
    invoke-direct {p1, p2, v0}, Lcom/samsung/android/server/audio/GoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 1475
    .line 1476
    goto/16 :goto_10

    .line 1477
    .line 1478
    :cond_2d
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    .line 1479
    .line 1480
    if-eqz p1, :cond_2f

    .line 1481
    .line 1482
    const-string/jumbo p1, "com.samsung.bluetooth.device.action.AUDIO_TYPE_CHANGED"

    .line 1483
    .line 1484
    .line 1485
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1486
    .line 1487
    .line 1488
    move-result p1

    .line 1489
    if-eqz p1, :cond_2f

    .line 1490
    .line 1491
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 1492
    .line 1493
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1494
    .line 1495
    .line 1496
    move-result-object p1

    .line 1497
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1498
    .line 1499
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1500
    .line 1501
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1502
    .line 1503
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    .line 1504
    .line 1505
    .line 1506
    move-result-object p0

    .line 1507
    if-eqz p1, :cond_35

    .line 1508
    .line 1509
    if-eqz p0, :cond_35

    .line 1510
    .line 1511
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    .line 1512
    .line 1513
    .line 1514
    move-result-object p0

    .line 1515
    const-string/jumbo v2, "com.samsung.bluetooth.device.extra.AUDIO_TYPE"

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1519
    .line 1520
    .line 1521
    move-result p2

    .line 1522
    if-ne p2, v3, :cond_2e

    .line 1523
    .line 1524
    if-eqz p0, :cond_35

    .line 1525
    .line 1526
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 1527
    .line 1528
    .line 1529
    move-result-object p1

    .line 1530
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object p0

    .line 1534
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1535
    .line 1536
    .line 1537
    move-result p0

    .line 1538
    if-eqz p0, :cond_35

    .line 1539
    .line 1540
    invoke-static {v0}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Z)V

    .line 1541
    .line 1542
    .line 1543
    goto/16 :goto_10

    .line 1544
    .line 1545
    :cond_2e
    if-eqz p0, :cond_35

    .line 1546
    .line 1547
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 1548
    .line 1549
    .line 1550
    move-result-object p1

    .line 1551
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 1552
    .line 1553
    .line 1554
    move-result-object p0

    .line 1555
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1556
    .line 1557
    .line 1558
    move-result p0

    .line 1559
    if-eqz p0, :cond_35

    .line 1560
    .line 1561
    invoke-static {v1}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Z)V

    .line 1562
    .line 1563
    .line 1564
    goto/16 :goto_10

    .line 1565
    .line 1566
    :cond_2f
    const-string p1, "androidx.car.app.connection.action.CAR_CONNECTION_UPDATED"

    .line 1567
    .line 1568
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1569
    .line 1570
    .line 1571
    move-result p1

    .line 1572
    if-eqz p1, :cond_35

    .line 1573
    .line 1574
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1575
    .line 1576
    iget-object p2, p1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 1577
    .line 1578
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v2

    .line 1582
    iget-object v3, p1, Lcom/android/server/audio/AudioService;->PROJECTION_HOST_URI:Landroid/net/Uri;

    .line 1583
    .line 1584
    const-string p1, "CarConnectionState"

    .line 1585
    .line 1586
    filled-new-array {p1}, [Ljava/lang/String;

    .line 1587
    .line 1588
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

    .line 1594
    .line 1595
    .line 1596
    move-result-object p2

    .line 1597
    const-string v2, "AS.AudioService"

    .line 1598
    .line 1599
    if-nez p2, :cond_30

    .line 1600
    .line 1601
    const-string p1, "[Android Auto] Null response from content provider when checking connection to the car, treating as disconnected"

    .line 1602
    .line 1603
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    .line 1605
    .line 1606
    :goto_d
    move v0, v1

    .line 1607
    goto :goto_f

    .line 1608
    :cond_30
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    .line 1609
    .line 1610
    .line 1611
    move-result v3

    .line 1612
    if-lez v3, :cond_34

    .line 1613
    .line 1614
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1615
    .line 1616
    .line 1617
    move-result v3

    .line 1618
    if-eqz v3, :cond_33

    .line 1619
    .line 1620
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1621
    .line 1622
    .line 1623
    move-result p1

    .line 1624
    if-gez p1, :cond_31

    .line 1625
    .line 1626
    const-string p1, "[Android Auto] Connection to car response is missing the connection type, treating as disconnected"

    .line 1627
    .line 1628
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    .line 1630
    .line 1631
    goto :goto_e

    .line 1632
    :cond_31
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 1633
    .line 1634
    .line 1635
    move-result p1

    .line 1636
    if-nez p1, :cond_32

    .line 1637
    .line 1638
    const-string p1, "[Android Auto] disconnected"

    .line 1639
    .line 1640
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    .line 1642
    .line 1643
    goto :goto_e

    .line 1644
    :cond_32
    const-string p1, "[Android Auto] connected"

    .line 1645
    .line 1646
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    .line 1648
    .line 1649
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1650
    .line 1651
    .line 1652
    goto :goto_f

    .line 1653
    :cond_33
    const-string p1, "[Android Auto] Connection to car response is empty, treating as disconnected"

    .line 1654
    .line 1655
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    .line 1657
    .line 1658
    goto :goto_e

    .line 1659
    :cond_34
    const-string p1, "[Android Auto] Connection Count is 0, treating as disconnected"

    .line 1660
    .line 1661
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    .line 1663
    .line 1664
    :goto_e
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1665
    .line 1666
    .line 1667
    goto :goto_d

    .line 1668
    :goto_f
    const-string p1, "AS.AudioService"

    .line 1669
    .line 1670
    const-string/jumbo p2, "received ACTION_CAR_CONNECTION_UPDATED : state = "

    .line 1671
    .line 1672
    .line 1673
    invoke-static {p2, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1674
    .line 1675
    .line 1676
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1677
    .line 1678
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mConnectedAndroidAuto:Z

    .line 1679
    .line 1680
    if-eqz v0, :cond_35

    .line 1681
    .line 1682
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 1683
    .line 1684
    if-eqz p0, :cond_35

    .line 1685
    .line 1686
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->clearMultiAudiofocusfromAndroidAuto()V

    .line 1687
    .line 1688
    .line 1689
    :cond_35
    :goto_10
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "android.intent.action.DOCK_EVENT"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
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

    .line 25
    .line 26
    const-string v2, "android.intent.extra.DOCK_STATE"

    .line 27
    .line 28
    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eq v1, v6, :cond_3

    .line 33
    .line 34
    if-eq v1, v4, :cond_2

    .line 35
    .line 36
    if-eq v1, v5, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    if-eq v1, v2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/16 v7, 0x9

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/16 v7, 0x8

    .line 46
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

    .line 52
    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    iget-object v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 56
    .line 57
    iget v2, v2, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 58
    .line 59
    if-eq v2, v5, :cond_5

    .line 60
    .line 61
    :cond_4
    iget-object v2, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 62
    .line 63
    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 64
    .line 65
    const-string v3, "ACTION_DOCK_EVENT intent"

    .line 66
    .line 67
    invoke-virtual {v2, v5, v7, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_5
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 71
    .line 72
    iput v1, v0, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 73
    .line 74
    goto/16 :goto_14

    .line 75
    .line 76
    :cond_6
    const-string v3, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_2b

    .line 83
    .line 84
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_7

    .line 91
    .line 92
    goto/16 :goto_13

    .line 93
    .line 94
    :cond_7
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-eqz v3, :cond_9

    .line 101
    .line 102
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 103
    .line 104
    iget-boolean v0, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 105
    .line 106
    if-eqz v0, :cond_8

    .line 107
    .line 108
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 109
    .line 110
    .line 111
    :cond_8
    const-string/jumbo v0, "screen_state=on"

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto/16 :goto_14

    .line 118
    .line 119
    :cond_9
    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_b

    .line 126
    .line 127
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 128
    .line 129
    iget-boolean v0, v0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 130
    .line 131
    if-eqz v0, :cond_a

    .line 132
    .line 133
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 134
    .line 135
    .line 136
    :cond_a
    const-string/jumbo v0, "screen_state=off"

    .line 137
    .line 138
    .line 139
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    goto/16 :goto_14

    .line 143
    .line 144
    :cond_b
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_c

    .line 151
    .line 152
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 153
    .line 154
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 155
    .line 156
    const/4 v6, 0x0

    .line 157
    const/4 v7, 0x0

    .line 158
    const/16 v2, 0x36

    .line 159
    .line 160
    const/4 v3, 0x0

    .line 161
    const/4 v4, 0x0

    .line 162
    const/4 v5, 0x0

    .line 163
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_14

    .line 167
    .line 168
    :cond_c
    const-string v3, "android.intent.action.USER_SWITCHED"

    .line 169
    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    const/4 v8, -0x1

    .line 175
    const/4 v9, 0x0

    .line 176
    if-eqz v3, :cond_11

    .line 177
    .line 178
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 179
    .line 180
    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 186
    .line 187
    monitor-enter v3

    .line 188
    :try_start_0
    iget-object v2, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-nez v2, :cond_e

    .line 195
    .line 196
    iget-object v2, v1, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    .line 208
    .line 209
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Lcom/android/server/pm/UserManagerInternal;

    .line 214
    .line 215
    iget v10, v2, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    .line 216
    .line 217
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    invoke-virtual {v4, v10}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    if-eqz v4, :cond_d

    .line 226
    .line 227
    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_d

    .line 232
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

    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v8, v9, v7}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 246
    .line 247
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

    .line 252
    .line 253
    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    .line 254
    .line 255
    if-eqz v2, :cond_f

    .line 256
    .line 257
    iget-object v7, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 258
    .line 259
    const/4 v10, 0x0

    .line 260
    const/4 v11, 0x0

    .line 261
    const/16 v8, 0xc

    .line 262
    .line 263
    const/4 v9, 0x0

    .line 264
    const/4 v12, 0x0

    .line 265
    const/4 v13, 0x0

    .line 266
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    .line 267
    .line 268
    .line 269
    :cond_f
    :goto_2
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 270
    .line 271
    iput-boolean v6, v1, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    .line 272
    .line 273
    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mSupportsMicPrivacyToggle:Z

    .line 274
    .line 275
    if-eqz v2, :cond_10

    .line 276
    .line 277
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    .line 278
    .line 279
    invoke-static {}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    invoke-virtual {v2, v3, v6}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    iput-boolean v2, v1, Lcom/android/server/audio/AudioService;->mMicMuteFromPrivacyToggle:Z

    .line 288
    .line 289
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    invoke-static {}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    .line 299
    .line 300
    .line 301
    :cond_10
    iget-object v1, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 302
    .line 303
    invoke-virtual {v1, v6}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    .line 304
    .line 305
    .line 306
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 307
    .line 308
    iget-object v6, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 309
    .line 310
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 311
    .line 312
    aget-object v11, v0, v5

    .line 313
    .line 314
    const/4 v10, 0x0

    .line 315
    const/4 v12, 0x0

    .line 316
    const/16 v7, 0xa

    .line 317
    .line 318
    const/4 v8, 0x2

    .line 319
    const/4 v9, 0x0

    .line 320
    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 321
    .line 322
    .line 323
    goto/16 :goto_14

    .line 324
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

    .line 328
    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    const-wide/16 v10, 0x0

    .line 334
    .line 335
    if-eqz v3, :cond_19

    .line 336
    .line 337
    const-string v2, "android.intent.extra.user_handle"

    .line 338
    .line 339
    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-ltz v1, :cond_18

    .line 344
    .line 345
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 354
    .line 355
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 356
    .line 357
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-nez v0, :cond_14

    .line 366
    .line 367
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 368
    .line 369
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 374
    .line 375
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 376
    .line 377
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 378
    .line 379
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 380
    .line 381
    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 382
    .line 383
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 384
    .line 385
    .line 386
    monitor-enter v5

    .line 387
    :try_start_2
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 388
    .line 389
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 390
    .line 391
    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 392
    .line 393
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    iget-object v0, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 398
    .line 399
    if-nez v0, :cond_12

    .line 400
    .line 401
    move-object v0, v9

    .line 402
    goto :goto_4

    .line 403
    :cond_12
    new-instance v7, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    .line 404
    .line 405
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 406
    .line 407
    .line 408
    const-class v8, Lcom/android/server/wm/ActivityRecord;

    .line 409
    .line 410
    invoke-static {v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 411
    .line 412
    .line 413
    move-result-object v8

    .line 414
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    invoke-static {v7, v8, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 427
    .line 428
    .line 429
    :goto_4
    if-nez v0, :cond_13

    .line 430
    .line 431
    goto :goto_5

    .line 432
    :cond_13
    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 433
    .line 434
    :goto_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 435
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 436
    .line 437
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

    .line 442
    .line 443
    .line 444
    throw v0

    .line 445
    :cond_14
    :goto_6
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 446
    .line 447
    filled-new-array {v0}, [Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 456
    .line 457
    invoke-interface {v4, v0, v10, v11, v2}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 462
    .line 463
    .line 464
    move-result-object v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 465
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    sub-int/2addr v0, v6

    .line 470
    move v4, v0

    .line 471
    :goto_7
    if-ltz v4, :cond_18

    .line 472
    .line 473
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 478
    .line 479
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 480
    .line 481
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 482
    .line 483
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    .line 484
    .line 485
    .line 486
    move-result v5

    .line 487
    const/16 v7, 0x2710

    .line 488
    .line 489
    if-ge v5, v7, :cond_15

    .line 490
    .line 491
    goto :goto_8

    .line 492
    :cond_15
    const-string v5, "android.permission.INTERACT_ACROSS_USERS"

    .line 493
    .line 494
    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {v3, v5, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    move-result v5

    .line 500
    if-nez v5, :cond_16

    .line 501
    .line 502
    goto :goto_8

    .line 503
    :cond_16
    if-eqz v9, :cond_17

    .line 504
    .line 505
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 506
    .line 507
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v7

    .line 511
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v5

    .line 515
    if-eqz v5, :cond_17

    .line 516
    .line 517
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 518
    .line 519
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 520
    .line 521
    .line 522
    move-result v5

    .line 523
    if-eqz v5, :cond_17

    .line 524
    .line 525
    goto :goto_8

    .line 526
    :cond_17
    :try_start_5
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 527
    .line 528
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 529
    .line 530
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 531
    .line 532
    .line 533
    move-result-object v5

    .line 534
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 535
    .line 536
    .line 537
    move-result v7

    .line 538
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    const-string/jumbo v8, "killBackgroundUserProcessesWithAudioRecordPermission"

    .line 543
    .line 544
    .line 545
    invoke-interface {v5, v7, v0, v8}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 546
    .line 547
    .line 548
    goto :goto_8

    .line 549
    :catch_0
    move-exception v0

    .line 550
    const-string v5, "AS.AudioService"

    .line 551
    .line 552
    const-string v7, "Error calling killUid"

    .line 553
    .line 554
    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    .line 556
    .line 557
    :goto_8
    add-int/lit8 v4, v4, -0x1

    .line 558
    .line 559
    goto :goto_7

    .line 560
    :catch_1
    move-exception v0

    .line 561
    new-instance v1, Landroid/util/AndroidRuntimeException;

    .line 562
    .line 563
    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    .line 564
    .line 565
    .line 566
    throw v1

    .line 567
    :cond_18
    :try_start_6
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    const-string/jumbo v2, "no_record_audio"

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0, v2, v6, v1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    .line 575
    .line 576
    .line 577
    goto/16 :goto_14

    .line 578
    .line 579
    :catch_2
    move-exception v0

    .line 580
    const-string v1, "AS.AudioService"

    .line 581
    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    const-string v3, "Failed to apply DISALLOW_RECORD_AUDIO restriction: "

    .line 585
    .line 586
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .line 598
    .line 599
    goto/16 :goto_14

    .line 600
    .line 601
    :cond_19
    const-string v3, "android.intent.action.USER_FOREGROUND"

    .line 602
    .line 603
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v3

    .line 607
    if-eqz v3, :cond_1a

    .line 608
    .line 609
    const-string v0, "android.intent.extra.user_handle"

    .line 610
    .line 611
    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    :try_start_7
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    const-string/jumbo v2, "no_record_audio"

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1, v2, v7, v0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3

    .line 623
    .line 624
    .line 625
    goto/16 :goto_14

    .line 626
    .line 627
    :catch_3
    move-exception v0

    .line 628
    const-string v1, "AS.AudioService"

    .line 629
    .line 630
    new-instance v2, Ljava/lang/StringBuilder;

    .line 631
    .line 632
    const-string v3, "Failed to apply DISALLOW_RECORD_AUDIO restriction: "

    .line 633
    .line 634
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    .line 646
    .line 647
    goto/16 :goto_14

    .line 648
    .line 649
    :cond_1a
    const-string v3, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    .line 650
    .line 651
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    if-nez v3, :cond_27

    .line 656
    .line 657
    const-string v3, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 658
    .line 659
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    move-result v3

    .line 663
    if-eqz v3, :cond_1b

    .line 664
    .line 665
    goto/16 :goto_12

    .line 666
    .line 667
    :cond_1b
    const-string v3, "android.intent.action.PACKAGES_SUSPENDED"

    .line 668
    .line 669
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v3

    .line 673
    if-eqz v3, :cond_21

    .line 674
    .line 675
    const-string v2, "android.intent.extra.changed_uid_list"

    .line 676
    .line 677
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    const-string v3, "android.intent.extra.changed_package_list"

    .line 682
    .line 683
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    if-eqz v1, :cond_2c

    .line 688
    .line 689
    if-eqz v2, :cond_2c

    .line 690
    .line 691
    array-length v3, v1

    .line 692
    array-length v4, v2

    .line 693
    if-eq v3, v4, :cond_1c

    .line 694
    .line 695
    goto/16 :goto_14

    .line 696
    .line 697
    :cond_1c
    move v3, v7

    .line 698
    :goto_9
    array-length v4, v2

    .line 699
    if-ge v3, v4, :cond_2c

    .line 700
    .line 701
    aget-object v4, v1, v3

    .line 702
    .line 703
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 704
    .line 705
    .line 706
    move-result v4

    .line 707
    if-nez v4, :cond_20

    .line 708
    .line 709
    iget-object v4, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 710
    .line 711
    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 712
    .line 713
    aget-object v5, v1, v3

    .line 714
    .line 715
    aget v9, v2, v3

    .line 716
    .line 717
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 718
    .line 719
    .line 720
    sget-object v10, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 721
    .line 722
    monitor-enter v10

    .line 723
    :try_start_8
    iget-object v11, v4, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 724
    .line 725
    invoke-virtual {v11}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    .line 726
    .line 727
    .line 728
    move-result-object v11

    .line 729
    new-instance v12, Ljava/util/ArrayList;

    .line 730
    .line 731
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .line 733
    .line 734
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 735
    .line 736
    .line 737
    move-result v13

    .line 738
    if-eqz v13, :cond_1e

    .line 739
    .line 740
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v13

    .line 744
    check-cast v13, Lcom/android/server/audio/FocusRequester;

    .line 745
    .line 746
    invoke-virtual {v13, v9}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    .line 747
    .line 748
    .line 749
    move-result v14

    .line 750
    if-eqz v14, :cond_1d

    .line 751
    .line 752
    iget-object v14, v13, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    .line 753
    .line 754
    invoke-virtual {v14, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 755
    .line 756
    .line 757
    move-result v14

    .line 758
    if-nez v14, :cond_1d

    .line 759
    .line 760
    iget-object v14, v13, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 761
    .line 762
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    sget-object v14, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/utils/EventLogger;

    .line 766
    .line 767
    new-instance v15, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 768
    .line 769
    new-instance v6, Ljava/lang/StringBuilder;

    .line 770
    .line 771
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 772
    .line 773
    .line 774
    const-string/jumbo v8, "focus owner:"

    .line 775
    .line 776
    .line 777
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    iget-object v8, v13, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    .line 781
    .line 782
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    const-string v8, " in uid:"

    .line 786
    .line 787
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    const-string v8, " pack: "

    .line 794
    .line 795
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    const-string v8, " getting AUDIOFOCUS_LOSS due to app suspension"

    .line 802
    .line 803
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v6

    .line 810
    invoke-direct {v15, v6}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    const-string v6, "MediaFocusControl"

    .line 814
    .line 815
    invoke-virtual {v15, v7, v6}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v14, v15}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 819
    .line 820
    .line 821
    const/4 v6, -0x1

    .line 822
    invoke-virtual {v13, v6}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    .line 823
    .line 824
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

    .line 834
    .line 835
    .line 836
    move-result-object v5

    .line 837
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 838
    .line 839
    .line 840
    move-result v8

    .line 841
    if-eqz v8, :cond_1f

    .line 842
    .line 843
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v8

    .line 847
    check-cast v8, Ljava/lang/String;

    .line 848
    .line 849
    const/4 v9, 0x1

    .line 850
    invoke-virtual {v4, v8, v7, v9}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 851
    .line 852
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

    .line 860
    .line 861
    move v8, v6

    .line 862
    const/4 v6, 0x1

    .line 863
    goto/16 :goto_9

    .line 864
    .line 865
    :cond_21
    const-string/jumbo v1, "com.android.server.audio.action.CHECK_MUSIC_ACTIVE"

    .line 866
    .line 867
    .line 868
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    move-result v1

    .line 872
    if-eqz v1, :cond_2c

    .line 873
    .line 874
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 875
    .line 876
    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    .line 877
    .line 878
    const-string/jumbo v2, "com.android.server.audio.action.CHECK_MUSIC_ACTIVE"

    .line 879
    .line 880
    .line 881
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 882
    .line 883
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 884
    .line 885
    .line 886
    invoke-static {v5, v7}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    .line 887
    .line 888
    .line 889
    move-result v0

    .line 890
    const-string/jumbo v3, "onCheckMusicActive() mMusicActiveMs: "

    .line 891
    .line 892
    .line 893
    iget-object v6, v1, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 894
    .line 895
    monitor-enter v6

    .line 896
    :try_start_9
    iget v8, v1, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 897
    .line 898
    if-ne v8, v4, :cond_26

    .line 899
    .line 900
    iget-object v4, v1, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 901
    .line 902
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    .line 903
    .line 904
    .line 905
    move-result v4

    .line 906
    invoke-virtual {v1, v4}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    .line 907
    .line 908
    .line 909
    move-result v8

    .line 910
    if-eqz v8, :cond_24

    .line 911
    .line 912
    if-eqz v0, :cond_24

    .line 913
    .line 914
    invoke-virtual {v1}, Lcom/android/server/audio/SoundDoseHelper;->scheduleMusicActiveCheck()V

    .line 915
    .line 916
    .line 917
    iget-object v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 918
    .line 919
    invoke-virtual {v0, v5, v4}, Lcom/android/server/audio/AudioService;->getVssVolumeForDevice(II)I

    .line 920
    .line 921
    .line 922
    move-result v0

    .line 923
    invoke-virtual {v1, v4}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    .line 924
    .line 925
    .line 926
    move-result v4

    .line 927
    if-le v0, v4, :cond_26

    .line 928
    .line 929
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 930
    .line 931
    .line 932
    move-result-wide v4

    .line 933
    iget-wide v8, v1, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 934
    .line 935
    cmp-long v0, v8, v10

    .line 936
    .line 937
    if-eqz v0, :cond_22

    .line 938
    .line 939
    iget v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 940
    .line 941
    sub-long v8, v4, v8

    .line 942
    .line 943
    long-to-int v8, v8

    .line 944
    add-int/2addr v0, v8

    .line 945
    iput v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 946
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

    .line 951
    .line 952
    const-string v0, "AS.SoundDoseHelper"

    .line 953
    .line 954
    new-instance v4, Ljava/lang/StringBuilder;

    .line 955
    .line 956
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    iget v3, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 960
    .line 961
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v3

    .line 968
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    .line 970
    .line 971
    iget v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 972
    .line 973
    const v3, 0x44aa200

    .line 974
    .line 975
    .line 976
    if-le v0, v3, :cond_23

    .line 977
    .line 978
    const/4 v3, 0x1

    .line 979
    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/SoundDoseHelper;->setSafeMediaVolumeEnabled(Ljava/lang/String;Z)V

    .line 980
    .line 981
    .line 982
    iput v7, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 983
    .line 984
    :cond_23
    iget v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 985
    .line 986
    iget-object v1, v1, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 987
    .line 988
    const/16 v2, 0x3ec

    .line 989
    .line 990
    invoke-virtual {v1, v2, v0, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 995
    .line 996
    .line 997
    goto :goto_10

    .line 998
    :cond_24
    iget-object v0, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 999
    .line 1000
    if-eqz v0, :cond_25

    .line 1001
    .line 1002
    iget-object v2, v1, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1003
    .line 1004
    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1005
    .line 1006
    .line 1007
    iput-object v9, v1, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 1008
    .line 1009
    :cond_25
    iput-wide v10, v1, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 1010
    .line 1011
    :cond_26
    :goto_10
    monitor-exit v6

    .line 1012
    goto/16 :goto_14

    .line 1013
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

    .line 1017
    .line 1018
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mMusicFxHelper:Lcom/android/server/audio/MusicFxHelper;

    .line 1019
    .line 1020
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v2

    .line 1027
    const-string v3, "AS.MusicFxHelper"

    .line 1028
    .line 1029
    if-eqz v2, :cond_28

    .line 1030
    .line 1031
    const-string/jumbo v0, "effect broadcast already targeted to "

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v0

    .line 1038
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    .line 1040
    .line 1041
    goto/16 :goto_14

    .line 1042
    .line 1043
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v2

    .line 1047
    invoke-virtual {v2, v1, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v4

    .line 1051
    if-eqz v4, :cond_2a

    .line 1052
    .line 1053
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1054
    .line 1055
    .line 1056
    move-result v5

    .line 1057
    if-eqz v5, :cond_2a

    .line 1058
    .line 1059
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v4

    .line 1063
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1064
    .line 1065
    const-string v5, "android.media.extra.PACKAGE_NAME"

    .line 1066
    .line 1067
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v5

    .line 1071
    if-nez v5, :cond_29

    .line 1072
    .line 1073
    const-string v0, "Intent package name must not be null"

    .line 1074
    .line 1075
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .line 1077
    .line 1078
    goto :goto_14

    .line 1079
    :cond_29
    if-eqz v4, :cond_2a

    .line 1080
    .line 1081
    :try_start_a
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1082
    .line 1083
    if-eqz v6, :cond_2a

    .line 1084
    .line 1085
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1086
    .line 1087
    if-eqz v6, :cond_2a

    .line 1088
    .line 1089
    const-wide/32 v6, 0x400000

    .line 1090
    .line 1091
    .line 1092
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v6

    .line 1096
    invoke-static {}, Lcom/android/server/audio/MusicFxHelper;->getCurrentUserId()I

    .line 1097
    .line 1098
    .line 1099
    move-result v7

    .line 1100
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    .line 1101
    .line 1102
    .line 1103
    move-result v2

    .line 1104
    const/16 v6, 0x20

    .line 1105
    .line 1106
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1107
    .line 1108
    .line 1109
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1110
    .line 1111
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1112
    .line 1113
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/audio/MusicFxHelper;->setMusicFxServiceWithObserver(Landroid/content/Intent;Ljava/lang/String;I)Z

    .line 1117
    .line 1118
    .line 1119
    move-result v0

    .line 1120
    if-eqz v0, :cond_2c

    .line 1121
    .line 1122
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1123
    .line 1124
    move-object/from16 v2, p1

    .line 1125
    .line 1126
    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_4

    .line 1127
    .line 1128
    .line 1129
    goto :goto_14

    .line 1130
    :catch_4
    move-exception v0

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    const-string v2, "Not able to find UID from package: "

    .line 1134
    .line 1135
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    .line 1140
    .line 1141
    const-string v2, " error: "

    .line 1142
    .line 1143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    .line 1155
    .line 1156
    :cond_2a
    const-string/jumbo v0, "couldn\'t find receiver package for effect intent"

    .line 1157
    .line 1158
    .line 1159
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    .line 1161
    .line 1162
    goto :goto_14

    .line 1163
    :cond_2b
    :goto_13
    iget-object v0, v0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    .line 1164
    .line 1165
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    .line 1166
    .line 1167
    const/16 v2, 0x37

    .line 1168
    .line 1169
    invoke-virtual {v0, v2, v4, v1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    .line 1170
    .line 1171
    .line 1172
    :cond_2c
    :goto_14
    return-void

    .line 1173
    :pswitch_0
    move-object/from16 v2, p1

    .line 1174
    .line 1175
    :try_start_b
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1176
    .line 1177
    .line 1178
    goto :goto_15

    .line 1179
    :catch_5
    move-exception v0

    .line 1180
    move-object v1, v0

    .line 1181
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1182
    .line 1183
    .line 1184
    :goto_15
    return-void

    .line 1185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
