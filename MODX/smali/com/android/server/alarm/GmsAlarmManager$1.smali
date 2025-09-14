.class public final Lcom/android/server/alarm/GmsAlarmManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const/4 p1, 0x7

    .line 2
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 4
    const-string v1, "ACTION***"

    .line 6
    const/4 v2, -0x1

    .line 7
    const-string v3, "GmsAlarmManager"

    .line 9
    const/4 v4, 0x1

    .line 10
    iget v5, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->$r8$classId:I

    .line 12
    packed-switch v5, :pswitch_data_0

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const-string v0, "android.intent.extra.user_handle"

    .line 21
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    move-result p2

    .line 25
    if-eq p2, v2, :cond_3

    .line 27
    if-nez p1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Landroid/os/Message;

    .line 32
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 35
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 37
    const-string p2, "android.intent.action.USER_REMOVED"

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_2

    .line 45
    const-string p2, "android.intent.action.USER_ADDED"

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/16 p1, 0x9

    .line 56
    iput p1, v0, Landroid/os/Message;->what:I

    .line 58
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 60
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 62
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/16 p1, 0x8

    .line 68
    iput p1, v0, Landroid/os/Message;->what:I

    .line 70
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 72
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 74
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    :cond_3
    :goto_0
    return-void

    .line 78
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    if-nez v2, :cond_4

    .line 84
    goto/16 :goto_1

    .line 86
    :cond_4
    const-string/jumbo v2, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_5

    .line 99
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 101
    iget-boolean p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    .line 103
    if-eqz p1, :cond_7

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 126
    iput-boolean v4, p1, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    .line 128
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 130
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 135
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 137
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    goto :goto_1

    .line 141
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_7

    .line 151
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 153
    iget-object v0, v0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 155
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 160
    iget-boolean p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    .line 162
    if-eqz p1, :cond_6

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object p1

    .line 180
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 185
    iput-boolean v4, p1, Lcom/android/server/alarm/GmsAlarmManager;->isSetupWizardCompleteOrBootComplete:Z

    .line 187
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 189
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 194
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 196
    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 199
    :cond_6
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 201
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 203
    const/16 p1, 0xa

    .line 205
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    :cond_7
    :goto_1
    return-void

    .line 209
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 212
    move-result-object p1

    .line 213
    if-nez p1, :cond_8

    .line 215
    goto :goto_2

    .line 216
    :cond_8
    const-string p1, "android.intent.action.SCREEN_ON"

    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 221
    move-result-object p2

    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    move-result p1

    .line 226
    const/4 p2, 0x0

    .line 227
    if-eqz p1, :cond_b

    .line 229
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 231
    iput-boolean v4, p1, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    .line 233
    iget-boolean v0, p1, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    .line 235
    if-eqz v0, :cond_a

    .line 237
    iget-object v0, p1, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 239
    if-eqz v0, :cond_9

    .line 241
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 243
    if-eqz p1, :cond_9

    .line 245
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 248
    :cond_9
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 250
    invoke-static {p1}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendCheckNetWorkDelay(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 253
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 255
    iput-boolean p2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    .line 257
    goto :goto_2

    .line 258
    :cond_a
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 260
    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 263
    move-result p1

    .line 264
    if-nez p1, :cond_c

    .line 266
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 268
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 270
    const-wide/32 p1, 0x36ee80

    .line 273
    invoke-virtual {p0, v4, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    goto :goto_2

    .line 277
    :cond_b
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 279
    iput-boolean p2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    .line 281
    iput-boolean p2, p0, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    .line 283
    :cond_c
    :goto_2
    return-void

    .line 284
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 287
    move-result-object v0

    .line 288
    if-nez v0, :cond_d

    .line 290
    goto :goto_3

    .line 291
    :cond_d
    const-string/jumbo v0, "sec.app.policy.UPDATE.gmsnet"

    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    move-result v0

    .line 302
    if-eqz v0, :cond_e

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 312
    move-result-object p2

    .line 313
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    move-result-object p2

    .line 320
    invoke-static {v3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 325
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 327
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 330
    :cond_e
    :goto_3
    return-void

    .line 331
    :pswitch_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 334
    move-result-object p1

    .line 335
    if-nez p1, :cond_f

    .line 337
    goto/16 :goto_5

    .line 339
    :cond_f
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 341
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    move-result p1

    .line 349
    if-eqz p1, :cond_15

    .line 351
    const-string p1, "CONNECTIVITY RECEIVER"

    .line 353
    invoke-static {v3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 358
    const-string/jumbo v0, "networkInfo"

    .line 361
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 364
    move-result-object p2

    .line 365
    check-cast p2, Landroid/net/NetworkInfo;

    .line 367
    iput-object p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 369
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 371
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 373
    if-eqz p1, :cond_15

    .line 375
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 378
    move-result p1

    .line 379
    const p2, 0x9d08

    .line 382
    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 385
    new-instance p2, Ljava/lang/StringBuilder;

    .line 387
    const-string v0, "NetworkInfo type = "

    .line 389
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    const-string v0, "  -- isConnected = "

    .line 397
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 402
    iget-object v0, v0, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 404
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 407
    move-result v0

    .line 408
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    move-result-object p2

    .line 415
    invoke-static {v3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/16 p2, 0x11

    .line 420
    if-eq p1, v2, :cond_10

    .line 422
    if-eq p1, v4, :cond_10

    .line 424
    if-eqz p1, :cond_10

    .line 426
    if-eq p1, p2, :cond_10

    .line 428
    const/16 v0, 0x10

    .line 430
    if-ne p1, v0, :cond_15

    .line 432
    :cond_10
    if-ne p1, p2, :cond_12

    .line 434
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 436
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 438
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 441
    move-result p1

    .line 442
    if-eqz p1, :cond_11

    .line 444
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 446
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 451
    move-result-wide v0

    .line 452
    invoke-virtual {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->addStartTime(J)V

    .line 455
    goto :goto_4

    .line 456
    :cond_11
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 458
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->vpnStats:Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 463
    move-result-wide v0

    .line 464
    invoke-virtual {p1, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->setEndTime(J)V

    .line 467
    :cond_12
    :goto_4
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 469
    iget-boolean p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOn:Z

    .line 471
    if-nez p2, :cond_13

    .line 473
    iget-boolean p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mWaitCheckNetWork:Z

    .line 475
    if-nez p2, :cond_13

    .line 477
    iget-boolean p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    .line 479
    if-nez p2, :cond_13

    .line 481
    iput-boolean v4, p1, Lcom/android/server/alarm/GmsAlarmManager;->mScreenOffChange:Z

    .line 483
    goto :goto_5

    .line 484
    :cond_13
    iget-object p2, p1, Lcom/android/server/alarm/GmsAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 486
    if-eqz p2, :cond_14

    .line 488
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 490
    if-eqz p1, :cond_14

    .line 492
    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 495
    :cond_14
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 497
    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendCheckNetWorkDelay(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 500
    :cond_15
    :goto_5
    return-void

    .line 501
    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 504
    move-result-object p1

    .line 505
    if-nez p1, :cond_16

    .line 507
    goto :goto_6

    .line 508
    :cond_16
    const-string p1, "android.os.action.CHARGING"

    .line 510
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 513
    move-result-object p2

    .line 514
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 517
    move-result p1

    .line 518
    const-wide/16 v0, 0x2710

    .line 520
    if-eqz p1, :cond_17

    .line 522
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 524
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 526
    const/4 p2, 0x4

    .line 527
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 532
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 534
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 537
    goto :goto_6

    .line 538
    :cond_17
    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 540
    iget-object p1, p1, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 542
    const/4 p2, 0x5

    .line 543
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 548
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 550
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 553
    :goto_6
    return-void

    .line 554
    :pswitch_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 557
    move-result-object p1

    .line 558
    if-nez p1, :cond_18

    .line 560
    goto :goto_7

    .line 561
    :cond_18
    const-string/jumbo p1, "com.samsung.android.server.action_check_gms_network"

    .line 564
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 567
    move-result-object v1

    .line 568
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 571
    move-result p1

    .line 572
    if-eqz p1, :cond_19

    .line 574
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 576
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 578
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 581
    goto :goto_7

    .line 582
    :cond_19
    const-string/jumbo p1, "com.samsung.android.server.action_insert_log"

    .line 585
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 588
    move-result-object v1

    .line 589
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    move-result p1

    .line 593
    if-eqz p1, :cond_1a

    .line 595
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 597
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    .line 599
    const/4 p1, 0x6

    .line 600
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 603
    goto :goto_7

    .line 604
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 607
    move-result-object p1

    .line 608
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    move-result p1

    .line 612
    if-eqz p1, :cond_1b

    .line 614
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$1;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 616
    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$msendInsertLogDelay(Lcom/android/server/alarm/GmsAlarmManager;)V

    .line 619
    :cond_1b
    :goto_7
    return-void

    .line 620
    nop

    .line 621
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
