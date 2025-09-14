.class public final synthetic Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 5
    iput-object p2, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 8
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Ljava/net/DatagramPacket;

    .line 12
    iget-object v1, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-virtual {v1, v2}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->onRequestSetID(I)V

    .line 18
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getLength()I

    .line 25
    move-result p0

    .line 26
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 28
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->sendSuplNiMessage([BI)V

    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 34
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 36
    check-cast p0, Landroid/content/Intent;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    const-string/jumbo v1, "data"

    .line 44
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    .line 47
    move-result-object v1

    .line 48
    if-nez v1, :cond_0

    .line 50
    goto/16 :goto_4

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 61
    move-result-object p0

    .line 62
    const-string/jumbo v2, "subscription"

    .line 65
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 p0, -0x1

    .line 77
    :goto_0
    sput p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    .line 81
    const-string v2, "New NI received, Sim Sub id="

    .line 83
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    sget v2, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 88
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v2, ", SimOperator="

    .line 93
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 98
    sget v3, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 100
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    const-string v2, "SuplInitHandler"

    .line 113
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p0, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 118
    sget v3, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 120
    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    iget-object v3, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 126
    iput-object p0, v3, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 128
    invoke-virtual {v3}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 131
    move-result-object p0

    .line 132
    iput-object p0, v3, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 134
    const/4 p0, 0x1

    .line 135
    iput-boolean p0, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mNiSessionStarted:Z

    .line 137
    iget-object v4, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 139
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 145
    move-result v4

    .line 146
    if-nez v4, :cond_b

    .line 148
    iget-object v4, v3, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 150
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 152
    if-ne v4, v5, :cond_2

    .line 154
    goto :goto_1

    .line 155
    :cond_2
    sget-object v5, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 157
    if-ne v4, v5, :cond_8

    .line 159
    :goto_1
    const-string/jumbo v3, "checkWapSuplInit : WapPush Message for SUPL Init"

    .line 162
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v3, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mContext:Landroid/content/Context;

    .line 167
    const-string/jumbo v4, "power"

    .line 170
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    move-result-object v3

    .line 174
    check-cast v3, Landroid/os/PowerManager;

    .line 176
    if-eqz v3, :cond_3

    .line 178
    const v4, 0x1000001a

    .line 181
    const-string v5, "New message notification LCD on"

    .line 183
    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 186
    move-result-object v4

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 190
    move-result-wide v5

    .line 191
    const/4 v7, 0x0

    .line 192
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 195
    goto :goto_2

    .line 196
    :cond_3
    const/4 v4, 0x0

    .line 197
    :goto_2
    if-eqz v4, :cond_4

    .line 199
    const-wide/16 v5, 0x1388

    .line 201
    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 204
    :cond_4
    iget-object v3, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mContext:Landroid/content/Context;

    .line 206
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 209
    move-result-object v3

    .line 210
    const-string v4, "agps_function_switch"

    .line 212
    invoke-static {v3, v4, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 215
    move-result v3

    .line 216
    const-string/jumbo v4, "checkWapSuplInit NI: isAgpsSwitchMode=AGPS_FUNCTION_SWITCH : "

    .line 219
    invoke-static {v3, v4, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 222
    if-ne v3, p0, :cond_6

    .line 224
    iget-object v3, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mContext:Landroid/content/Context;

    .line 226
    const-string/jumbo v4, "connectivity"

    .line 229
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    move-result-object v3

    .line 233
    check-cast v3, Landroid/net/ConnectivityManager;

    .line 235
    if-eqz v3, :cond_5

    .line 237
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 240
    move-result-object v3

    .line 241
    if-eqz v3, :cond_a

    .line 243
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    .line 246
    move-result v3

    .line 247
    if-eqz v3, :cond_a

    .line 249
    const-string/jumbo v3, "checkWapSuplInit NI : agps on only for home network info.isRoaming() == true "

    .line 252
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    goto :goto_3

    .line 256
    :cond_5
    const-string/jumbo v3, "checkWapSuplInit NI :: agps on only for home network. PS error."

    .line 259
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    goto :goto_3

    .line 263
    :cond_6
    const/4 v4, 0x2

    .line 264
    if-ne v3, v4, :cond_7

    .line 266
    const-string/jumbo v3, "checkWapSuplInit NI :: agps on for all network. launch NI session"

    .line 269
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    goto :goto_3

    .line 273
    :cond_7
    const-string/jumbo v4, "checkWapSuplInit NI : agps off isAgpsSwitchMode : "

    .line 276
    invoke-static {v3, v4, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 279
    goto :goto_3

    .line 280
    :cond_8
    invoke-virtual {v3}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaSktSim()Z

    .line 283
    move-result v2

    .line 284
    if-nez v2, :cond_9

    .line 286
    const-string v2, "45008"

    .line 288
    iget-object v4, v3, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 290
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    move-result v2

    .line 294
    if-nez v2, :cond_9

    .line 296
    const-string v2, "45006"

    .line 298
    iget-object v3, v3, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 300
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    move-result v2

    .line 304
    if-eqz v2, :cond_a

    .line 306
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->updateSuplConfigurationForKorNi()V

    .line 309
    :cond_a
    :goto_3
    iget-object v2, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 311
    invoke-virtual {v2, p0}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->onRequestSetID(I)V

    .line 314
    :cond_b
    array-length p0, v1

    .line 315
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 317
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->sendSuplNiMessage([BI)V

    .line 320
    :goto_4
    return-void

    .line 321
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 323
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 325
    check-cast p0, Landroid/content/Intent;

    .line 327
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    invoke-static {p0}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    .line 333
    move-result-object v1

    .line 334
    const-string v2, "SuplInitHandler"

    .line 336
    if-nez v1, :cond_c

    .line 338
    const-string p0, "Message does not exist in the intent."

    .line 340
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    goto/16 :goto_9

    .line 345
    :cond_c
    array-length v3, v1

    .line 346
    const/4 v4, 0x0

    .line 347
    :goto_5
    if-ge v4, v3, :cond_16

    .line 349
    aget-object v5, v1, v4

    .line 351
    if-eqz v5, :cond_15

    .line 353
    iget-object v6, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 355
    if-nez v6, :cond_d

    .line 357
    goto/16 :goto_8

    .line 359
    :cond_d
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getUserData()[B

    .line 362
    move-result-object v5

    .line 363
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 366
    move-result-object v6

    .line 367
    if-eqz v6, :cond_e

    .line 369
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 372
    move-result-object v6

    .line 373
    const-string/jumbo v7, "subscription"

    .line 376
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 379
    move-result v6

    .line 380
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 383
    move-result v7

    .line 384
    if-eqz v7, :cond_e

    .line 386
    goto :goto_6

    .line 387
    :cond_e
    const/4 v6, -0x1

    .line 388
    :goto_6
    sput v6, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 390
    if-nez v5, :cond_f

    .line 392
    goto/16 :goto_8

    .line 394
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    .line 396
    const-string v7, "New NI received, Sim Sub id="

    .line 398
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    sget v7, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 403
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    const-string v7, ", SimOperator="

    .line 408
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget-object v7, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 413
    sget v8, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 415
    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    .line 418
    move-result-object v7

    .line 419
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    move-result-object v6

    .line 426
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v6, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 431
    sget v7, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 433
    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    .line 436
    move-result-object v6

    .line 437
    iget-object v7, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 439
    iput-object v6, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 441
    invoke-virtual {v7}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getCarrier()Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 444
    move-result-object v6

    .line 445
    iput-object v6, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 447
    const/4 v6, 0x1

    .line 448
    iput-boolean v6, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mNiSessionStarted:Z

    .line 450
    iget-object v8, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 452
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 458
    move-result v8

    .line 459
    if-nez v8, :cond_14

    .line 461
    iget-object v8, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 463
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CMC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 465
    if-ne v8, v9, :cond_10

    .line 467
    goto :goto_7

    .line 468
    :cond_10
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->CHN_CHC:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 470
    if-ne v8, v9, :cond_11

    .line 472
    :goto_7
    const-string/jumbo v8, "checkSmsSuplInit : Sms Message for SUPL Init"

    .line 475
    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_11
    invoke-virtual {v7}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isKoreaSktSim()Z

    .line 481
    move-result v8

    .line 482
    if-nez v8, :cond_12

    .line 484
    const-string v8, "45008"

    .line 486
    iget-object v9, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 488
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    move-result v8

    .line 492
    if-nez v8, :cond_12

    .line 494
    const-string v8, "45006"

    .line 496
    iget-object v7, v7, Lcom/android/server/location/gnss/sec/CarrierConfig;->mSimOperator:Ljava/lang/String;

    .line 498
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 501
    move-result v7

    .line 502
    if-eqz v7, :cond_13

    .line 504
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->updateSuplConfigurationForKorNi()V

    .line 507
    :cond_13
    iget-object v7, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssProvider:Lcom/android/server/location/gnss/GnssLocationProviderSec;

    .line 509
    invoke-virtual {v7, v6}, Lcom/android/server/location/gnss/GnssLocationProviderSec;->onRequestSetID(I)V

    .line 512
    :cond_14
    array-length v6, v5

    .line 513
    iget-object v7, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 515
    invoke-virtual {v7, v5, v6}, Lcom/android/server/location/gnss/hal/GnssNative;->sendSuplNiMessage([BI)V

    .line 518
    :cond_15
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 520
    goto/16 :goto_5

    .line 522
    :cond_16
    :goto_9
    return-void

    .line 523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
