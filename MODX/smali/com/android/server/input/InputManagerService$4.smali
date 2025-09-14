.class public final Lcom/android/server/input/InputManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/input/InputManagerService$4;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    const/4 p1, 0x2

    .line 2
    const-string/jumbo v0, "null"

    .line 5
    const-string v1, "InputManager"

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    iget v4, p0, Lcom/android/server/input/InputManagerService$4;->$r8$classId:I

    .line 11
    packed-switch v4, :pswitch_data_0

    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string/jumbo v0, "com.samsung.android.action.SHOWING_TOUCH_SENSITIVITY_NOTI"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    .line 30
    iget-object p1, p1, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    move-result-object p1

    .line 36
    const/4 v0, -0x2

    .line 37
    const-string v4, "auto_adjust_touch"

    .line 39
    invoke-static {p1, v4, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 42
    const-string/jumbo p1, "channelId"

    .line 45
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 51
    const-string/jumbo p0, "channel id was wrong. id="

    .line 54
    invoke-static {p1, p0, v1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    .line 60
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 65
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    const-string/jumbo v0, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 79
    const-string/jumbo p1, "kids_home_mode"

    .line 82
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 85
    move-result p1

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    const-string v0, "KidsMode : "

    .line 90
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    .line 95
    iget-boolean v0, v0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    .line 97
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    const-string v0, " -> "

    .line 102
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p2

    .line 112
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p2, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    .line 117
    iget-boolean v0, p2, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    .line 119
    if-eq v0, p1, :cond_2

    .line 121
    iget-object p2, p2, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 123
    const/16 v0, 0x10

    .line 125
    invoke-interface {p2, v0, p1}, Lcom/android/server/input/NativeInputManagerService;->updateInputMetaState(IZ)V

    .line 128
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    .line 130
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    .line 132
    :cond_2
    return-void

    .line 133
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 136
    move-result-object p2

    .line 137
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 139
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result p2

    .line 143
    if-eqz p2, :cond_9

    .line 145
    iget-object p2, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    .line 147
    iput-boolean v2, p2, Lcom/android/server/input/InputManagerService;->mBootCompleted:Z

    .line 149
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->IFW_KEY_COUNTER:Z

    .line 151
    if-eqz v1, :cond_7

    .line 153
    iget-object v1, p2, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    .line 155
    iget-object p2, p2, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    const-string v1, ""

    .line 162
    sget-boolean v4, Lcom/android/server/input/InputKeyCounter;->DEBUG:Z

    .line 164
    const-string v5, "InputKeyCounter"

    .line 166
    if-eqz v4, :cond_3

    .line 168
    const-string/jumbo v6, "read old data!"

    .line 171
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_3
    const-string/jumbo v6, "persist.service.bgkeycount"

    .line 177
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    move-result-object v0

    .line 181
    const-string v7, "/"

    .line 183
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 187
    new-instance v7, Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    .line 189
    invoke-direct {v7}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;-><init>()V

    .line 192
    :try_start_0
    array-length v8, v0

    .line 193
    move v9, v3

    .line 194
    :goto_1
    if-ge v9, v8, :cond_6

    .line 196
    aget-object v10, v0, v9

    .line 198
    if-eqz v4, :cond_4

    .line 200
    new-instance v11, Ljava/lang/StringBuilder;

    .line 202
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    const-string/jumbo v12, "read old saved keycount strings = "

    .line 208
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v11

    .line 218
    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_4
    const-string v11, ","

    .line 223
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 226
    move-result-object v10

    .line 227
    array-length v11, v10

    .line 228
    if-eq v11, p1, :cond_5

    .line 230
    const-string/jumbo v0, "throw up the data!"

    .line 233
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    goto :goto_2

    .line 237
    :cond_5
    aget-object v11, v10, v3

    .line 239
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 242
    move-result v11

    .line 243
    aget-object v10, v10, v2

    .line 245
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 248
    move-result v10

    .line 249
    invoke-virtual {v7, v11, v10}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->add(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    add-int/2addr v9, v2

    .line 253
    goto :goto_1

    .line 254
    :catch_0
    const-string v0, "NumberFormatException, throw up the data!"

    .line 256
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_6
    invoke-virtual {v7}, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->getKeyCountMap()Landroid/util/ArrayMap;

    .line 265
    move-result-object v0

    .line 266
    invoke-static {p2, v0}, Lcom/android/server/input/InputKeyCounter;->sendBroadcastKeyCountInternal(Landroid/content/Context;Landroid/util/ArrayMap;)V

    .line 269
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    .line 274
    iget-boolean v0, p2, Lcom/android/server/input/InputManagerService;->mNotifyPogoKeyboardNotMatchPending:Z

    .line 276
    if-eqz v0, :cond_8

    .line 278
    invoke-virtual {p2}, Lcom/android/server/input/InputManagerService;->notifyPogoKeyboardNotMatch()V

    .line 281
    iget-object p2, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    .line 283
    iput-boolean v3, p2, Lcom/android/server/input/InputManagerService;->mNotifyPogoKeyboardNotMatchPending:Z

    .line 285
    :cond_8
    iget-object p2, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    .line 287
    iget-boolean v0, p2, Lcom/android/server/input/InputManagerService;->mPaperCoverNotificationPending:Z

    .line 289
    if-eqz v0, :cond_9

    .line 291
    iput-boolean v3, p2, Lcom/android/server/input/InputManagerService;->mPaperCoverNotificationPending:Z

    .line 293
    iget-object p2, p2, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    .line 295
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;

    .line 297
    invoke-direct {v0, p1, p0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 300
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    :cond_9
    return-void

    .line 304
    :pswitch_2
    const-string/jumbo p1, "received:"

    .line 307
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 310
    move-result-object v2

    .line 311
    const-string/jumbo v4, "com.samsung.android.intent.action.SET_INWATER_TOUCH"

    .line 314
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    move-result v4

    .line 318
    if-eqz v4, :cond_b

    .line 320
    :try_start_1
    const-string/jumbo v4, "set"

    .line 323
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 326
    move-result v4

    .line 327
    const-string/jumbo v5, "force"

    .line 330
    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 333
    move-result v3

    .line 334
    const-string/jumbo v5, "package"

    .line 337
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    move-result-object v5

    .line 341
    const-string/jumbo v6, "type"

    .line 344
    const/4 v7, 0x3

    .line 345
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 348
    move-result p2

    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    .line 351
    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string p1, " packageName:"

    .line 359
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    if-eqz v5, :cond_a

    .line 364
    move-object v0, v5

    .line 365
    :cond_a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    move-result-object p1

    .line 372
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 378
    move-result p1

    .line 379
    if-nez p1, :cond_b

    .line 381
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    .line 383
    invoke-virtual {p0, v4, p2, v3, v5}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 386
    goto :goto_3

    .line 387
    :catch_1
    move-exception p0

    .line 388
    const-string p1, "Could not set device block"

    .line 390
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    :cond_b
    :goto_3
    return-void

    .line 394
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    .line 396
    sget-boolean p1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 398
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V

    .line 401
    return-void

    .line 402
    nop

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
