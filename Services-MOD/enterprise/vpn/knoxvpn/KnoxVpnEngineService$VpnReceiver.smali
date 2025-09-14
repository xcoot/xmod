.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "Vpn Receiver : "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "KnoxVpnEngineService"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2a

    .line 30
    new-instance v0, Landroid/os/Bundle;

    .line 32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 40
    move-result v2

    .line 41
    const-string/jumbo v3, "new_install_or_update"

    .line 44
    const-string/jumbo v4, "package"

    .line 47
    const-string v5, "android.intent.extra.REPLACING"

    .line 49
    const-string/jumbo v6, "uid"

    .line 52
    const-string v7, "android.intent.extra.UID"

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v9, -0x1

    .line 56
    const/4 v10, 0x0

    .line 57
    if-eqz v2, :cond_3

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 68
    move-result-object v8

    .line 69
    :cond_0
    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 72
    move-result p1

    .line 73
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    .line 75
    if-eqz v2, :cond_1

    .line 77
    const-string v5, "Vpn Receiver : The extra value is "

    .line 79
    invoke-static {v5, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    :cond_1
    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 85
    move-result p2

    .line 86
    if-le p2, v9, :cond_2a

    .line 88
    if-eqz v2, :cond_2

    .line 90
    const-string v2, "Vpn Receiver : Package Added = "

    .line 92
    invoke-static {v2, v8, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 106
    const/4 p1, 0x2

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 110
    goto/16 :goto_7

    .line 112
    :cond_3
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 114
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_6

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_4

    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 129
    move-result-object v8

    .line 130
    :cond_4
    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 133
    move-result p1

    .line 134
    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 137
    move-result p2

    .line 138
    sget-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z

    .line 140
    if-eqz v2, :cond_5

    .line 142
    const-string v2, "Vpn Receiver : Package Removed = "

    .line 144
    invoke-static {v2, v8, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_5
    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 158
    const/4 p1, 0x3

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 162
    goto/16 :goto_7

    .line 164
    :cond_6
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    .line 166
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 169
    move-result v2

    .line 170
    const-string/jumbo v3, "state"

    .line 173
    if-eqz v2, :cond_7

    .line 175
    const-string p1, "Airplane Event received."

    .line 177
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_2a

    .line 186
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 188
    const/16 p1, 0x14

    .line 190
    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 193
    goto/16 :goto_7

    .line 195
    :cond_7
    const-string v2, "android.intent.action.USER_PRESENT"

    .line 197
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_8

    .line 203
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 205
    const/16 p1, 0x15

    .line 207
    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 210
    goto/16 :goto_7

    .line 212
    :cond_8
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 214
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_9

    .line 220
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 223
    move-result-object p1

    .line 224
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 226
    const/16 p2, 0xf

    .line 228
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 231
    goto/16 :goto_7

    .line 233
    :cond_9
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 235
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_a

    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 244
    move-result-object p1

    .line 245
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 247
    const/16 p2, 0xe

    .line 249
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 252
    goto/16 :goto_7

    .line 254
    :cond_a
    const-string v2, "android.intent.action.USER_STARTED"

    .line 256
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 259
    move-result v2

    .line 260
    const/16 v4, 0x9

    .line 262
    if-eqz v2, :cond_b

    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 267
    move-result-object p1

    .line 268
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 270
    invoke-virtual {p0, v4, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 273
    goto/16 :goto_7

    .line 275
    :cond_b
    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 277
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 280
    move-result v2

    .line 281
    if-eqz v2, :cond_c

    .line 283
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 286
    move-result-object p1

    .line 287
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 289
    const/16 p2, 0xd

    .line 291
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 294
    goto/16 :goto_7

    .line 296
    :cond_c
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 298
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 301
    move-result v2

    .line 302
    const-string/jumbo v5, "networkInfo"

    .line 305
    const/4 v8, 0x1

    .line 306
    if-eqz v2, :cond_1d

    .line 308
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 311
    move-result-object p1

    .line 312
    check-cast p1, Landroid/net/NetworkInfo;

    .line 314
    if-nez p1, :cond_d

    .line 316
    const-string/jumbo p0, "networkInfo is null"

    .line 319
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void

    .line 323
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 325
    const-string/jumbo v2, "change in connectivity has occured  for the network type "

    .line 328
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 334
    move-result v2

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    move-result-object v0

    .line 356
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 362
    move-result v0

    .line 363
    const-string v1, "CONNECTED"

    .line 365
    const-string v2, "DISCONNECTED"

    .line 367
    if-ne v0, v8, :cond_12

    .line 369
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 376
    move-result-object v4

    .line 377
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 379
    const/16 v6, 0x19

    .line 381
    if-eq v4, v5, :cond_11

    .line 383
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 386
    move-result-object v4

    .line 387
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 389
    if-ne v4, v5, :cond_e

    .line 391
    goto :goto_1

    .line 392
    :cond_e
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 395
    move-result-object v1

    .line 396
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 398
    if-eq v1, v4, :cond_10

    .line 400
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 403
    move-result-object v1

    .line 404
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 406
    if-ne v1, v4, :cond_f

    .line 408
    goto :goto_0

    .line 409
    :cond_f
    return-void

    .line 410
    :cond_10
    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 415
    invoke-virtual {v1, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 418
    goto/16 :goto_6

    .line 420
    :cond_11
    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 425
    invoke-virtual {v1, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 428
    goto/16 :goto_6

    .line 430
    :cond_12
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 433
    move-result v0

    .line 434
    if-nez v0, :cond_17

    .line 436
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 443
    move-result-object v4

    .line 444
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 446
    const/16 v6, 0x1a

    .line 448
    if-eq v4, v5, :cond_16

    .line 450
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 453
    move-result-object v4

    .line 454
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 456
    if-ne v4, v5, :cond_13

    .line 458
    goto :goto_3

    .line 459
    :cond_13
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 462
    move-result-object v1

    .line 463
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 465
    if-eq v1, v4, :cond_15

    .line 467
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 470
    move-result-object v1

    .line 471
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 473
    if-ne v1, v4, :cond_14

    .line 475
    goto :goto_2

    .line 476
    :cond_14
    return-void

    .line 477
    :cond_15
    :goto_2
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 482
    invoke-virtual {v1, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 485
    goto :goto_6

    .line 486
    :cond_16
    :goto_3
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 491
    invoke-virtual {v1, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 494
    goto :goto_6

    .line 495
    :cond_17
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 498
    move-result v0

    .line 499
    if-ne v0, v4, :cond_1c

    .line 501
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 504
    move-result-object v0

    .line 505
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 508
    move-result-object v4

    .line 509
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 511
    const/16 v6, 0x1b

    .line 513
    if-eq v4, v5, :cond_1b

    .line 515
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 518
    move-result-object v4

    .line 519
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 521
    if-ne v4, v5, :cond_18

    .line 523
    goto :goto_5

    .line 524
    :cond_18
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 527
    move-result-object v1

    .line 528
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 530
    if-eq v1, v4, :cond_1a

    .line 532
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 535
    move-result-object v1

    .line 536
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 538
    if-ne v1, v4, :cond_19

    .line 540
    goto :goto_4

    .line 541
    :cond_19
    return-void

    .line 542
    :cond_1a
    :goto_4
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 547
    invoke-virtual {v1, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 550
    goto :goto_6

    .line 551
    :cond_1b
    :goto_5
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 556
    invoke-virtual {v1, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 559
    :cond_1c
    :goto_6
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 562
    move-result v0

    .line 563
    const/16 v1, 0x11

    .line 565
    if-eq v0, v1, :cond_2a

    .line 567
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 570
    move-result p1

    .line 571
    const/4 v0, 0x7

    .line 572
    if-eq p1, v0, :cond_2a

    .line 574
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 577
    move-result-object p1

    .line 578
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 580
    const/4 p2, 0x4

    .line 581
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 584
    goto/16 :goto_7

    .line 586
    :cond_1d
    const-string v2, "android.intent.action.USER_REMOVED"

    .line 588
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    move-result v2

    .line 592
    if-eqz v2, :cond_1e

    .line 594
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 597
    move-result-object p1

    .line 598
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 600
    const/4 p2, 0x6

    .line 601
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 604
    goto/16 :goto_7

    .line 606
    :cond_1e
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

    .line 609
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 612
    move-result v2

    .line 613
    if-eqz v2, :cond_1f

    .line 615
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 618
    move-result-object p1

    .line 619
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 621
    invoke-virtual {p0, v8, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 624
    goto/16 :goto_7

    .line 626
    :cond_1f
    const-string/jumbo v2, "enterprise.container.admin.changed"

    .line 629
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 632
    move-result v2

    .line 633
    if-eqz v2, :cond_20

    .line 635
    const-string/jumbo p1, "containerid"

    .line 638
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 641
    move-result p1

    .line 642
    const-string v1, "android.intent.extra.user_handle"

    .line 644
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 647
    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 650
    move-result p1

    .line 651
    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 654
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 656
    const/16 p1, 0xc

    .line 658
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 661
    goto/16 :goto_7

    .line 663
    :cond_20
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.VPN_PROXY_BROADCAST_INTERNAL"

    .line 666
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 669
    move-result v2

    .line 670
    if-eqz v2, :cond_21

    .line 672
    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.caller"

    .line 675
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 678
    move-result p1

    .line 679
    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 682
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 684
    const/16 p1, 0x12

    .line 686
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 689
    goto/16 :goto_7

    .line 691
    :cond_21
    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 694
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 697
    move-result v2

    .line 698
    if-eqz v2, :cond_22

    .line 700
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 703
    move-result-object p1

    .line 704
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 706
    const/16 p2, 0x16

    .line 708
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 711
    goto/16 :goto_7

    .line 713
    :cond_22
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.UCM_REFRESH_DONE"

    .line 716
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 719
    move-result v2

    .line 720
    if-eqz v2, :cond_23

    .line 722
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 725
    move-result-object p1

    .line 726
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 728
    const/16 p2, 0x1c

    .line 730
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 733
    goto/16 :goto_7

    .line 735
    :cond_23
    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 737
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 740
    move-result v2

    .line 741
    if-eqz v2, :cond_25

    .line 743
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 746
    move-result-object p1

    .line 747
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 750
    move-result-object p2

    .line 751
    check-cast p2, Landroid/net/NetworkInfo;

    .line 753
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 756
    move-result-object v0

    .line 757
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 759
    const/16 v2, 0x1d

    .line 761
    const-string/jumbo v3, "captive"

    .line 764
    if-ne v0, v1, :cond_24

    .line 766
    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 769
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 771
    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 774
    goto/16 :goto_7

    .line 776
    :cond_24
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 779
    move-result-object p2

    .line 780
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 782
    if-ne p2, v0, :cond_2a

    .line 784
    invoke-virtual {p1, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 787
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 789
    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 792
    goto :goto_7

    .line 793
    :cond_25
    const-string v2, "android.hardware.usb.action.USB_STATE"

    .line 795
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 798
    move-result v2

    .line 799
    if-eqz v2, :cond_29

    .line 801
    const-string/jumbo p1, "connected"

    .line 804
    invoke-virtual {p2, p1, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 807
    move-result p1

    .line 808
    const-string/jumbo v2, "configured"

    .line 811
    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 814
    move-result v2

    .line 815
    const-string/jumbo v3, "rndis"

    .line 818
    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 821
    move-result p2

    .line 822
    const-string/jumbo v3, "usb_tethering status: usbConnected "

    .line 825
    const-string v4, " usbConfigured "

    .line 827
    const-string v5, " rndisEnabled "

    .line 829
    invoke-static {v3, p1, v4, v2, v5}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    move-result-object v3

    .line 833
    invoke-static {v1, v3, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 836
    const/16 v1, 0x21

    .line 838
    const-string/jumbo v3, "bundle_usb_status"

    .line 841
    if-nez p1, :cond_26

    .line 843
    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 846
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 848
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 851
    goto :goto_7

    .line 852
    :cond_26
    if-eqz p1, :cond_27

    .line 854
    if-eqz v2, :cond_27

    .line 856
    if-eqz p2, :cond_27

    .line 858
    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 861
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 863
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 866
    goto :goto_7

    .line 867
    :cond_27
    if-nez p1, :cond_28

    .line 869
    if-eqz v2, :cond_2a

    .line 871
    :cond_28
    if-nez p2, :cond_2a

    .line 873
    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 876
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 878
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 881
    goto :goto_7

    .line 882
    :cond_29
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 884
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 887
    move-result p1

    .line 888
    if-eqz p1, :cond_2a

    .line 890
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 893
    move-result-object p1

    .line 894
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 896
    const/16 p2, 0x22

    .line 898
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler$1(ILandroid/os/Bundle;)V

    .line 901
    :cond_2a
    :goto_7
    return-void
.end method
