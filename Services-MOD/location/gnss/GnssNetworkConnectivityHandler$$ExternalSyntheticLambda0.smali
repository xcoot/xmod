.class public final synthetic Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

.field public final synthetic f$1:I

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 6
    iput p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;->f$2:[B

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 3
    iget v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda0;->f$2:[B

    .line 7
    const-string v2, "IP address converted to: "

    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 12
    iput v1, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsType:I

    .line 14
    const-string v4, "GnssNetworkConnectivityHandler"

    .line 16
    if-eqz p0, :cond_1

    .line 18
    sget-boolean v5, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    .line 20
    if-eqz v5, :cond_0

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    const-string v6, "Received SUPL IP addr[]: "

    .line 26
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v5

    .line 40
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 46
    move-result-object v5

    .line 47
    iput-object v5, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 56
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 70
    const-string v6, "Bad IP Address: "

    .line 72
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-static {v4, p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    const/4 v2, 0x1

    .line 94
    const/4 v5, 0x4

    .line 95
    const/4 v6, 0x3

    .line 96
    const/4 v7, 0x2

    .line 97
    if-eq v1, v2, :cond_5

    .line 99
    if-eq v1, v7, :cond_4

    .line 101
    if-eq v1, v6, :cond_3

    .line 103
    if-eq v1, v5, :cond_2

    .line 105
    const-string v8, "<Unknown>("

    .line 107
    const-string v9, ")"

    .line 109
    invoke-static {v1, v8, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    const-string v1, "IMS"

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    const-string v1, "EIMS"

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    const-string v1, "C2K"

    .line 122
    goto :goto_1

    .line 123
    :cond_5
    const-string v1, "SUPL"

    .line 125
    :goto_1
    iget-object v8, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 127
    filled-new-array {p0, v1, v8}, [Ljava/lang/Object;

    .line 130
    move-result-object p0

    .line 131
    const-string/jumbo v1, "requestSuplConnection, state=%s, agpsType=%s, address=%s"

    .line 134
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget p0, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 143
    if-eqz p0, :cond_6

    .line 145
    goto/16 :goto_7

    .line 147
    :cond_6
    iput v2, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 149
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    .line 151
    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 154
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 156
    iget-object v8, v1, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 158
    sget-object v9, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->JPN_DCM:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 160
    const/4 v10, 0x0

    .line 161
    if-ne v8, v9, :cond_7

    .line 163
    move v8, v2

    .line 164
    goto :goto_2

    .line 165
    :cond_7
    move v8, v10

    .line 166
    :goto_2
    iget-object v9, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 168
    const/16 v11, 0xa

    .line 170
    if-nez v8, :cond_d

    .line 172
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isJapanSoftbank()Z

    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_8

    .line 178
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 184
    move-result v1

    .line 185
    if-nez v1, :cond_8

    .line 187
    goto :goto_4

    .line 188
    :cond_8
    iget-boolean v1, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsConnectEmergencyNetwork:Z

    .line 190
    if-nez v1, :cond_9

    .line 192
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 195
    goto :goto_5

    .line 196
    :cond_9
    iget v1, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsType:I

    .line 198
    if-eq v1, v2, :cond_c

    .line 200
    if-eq v1, v7, :cond_c

    .line 202
    if-eq v1, v6, :cond_b

    .line 204
    if-ne v1, v5, :cond_a

    .line 206
    move v2, v5

    .line 207
    goto :goto_3

    .line 208
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 210
    const-string v0, "agpsType: "

    .line 212
    invoke-static {v1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 215
    move-result-object v0

    .line 216
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 219
    throw p0

    .line 220
    :cond_b
    move v2, v11

    .line 221
    :cond_c
    :goto_3
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 224
    goto :goto_5

    .line 225
    :cond_d
    :goto_4
    const-string v1, "JPN_DCM/SBM do not use Emergency PDN"

    .line 227
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 233
    :goto_5
    invoke-virtual {p0, v10}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 236
    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->satelliteInternet()Z

    .line 239
    move-result v1

    .line 240
    const/16 v2, 0xd

    .line 242
    if-eqz v1, :cond_e

    .line 244
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 246
    const-class v5, Landroid/telephony/TelephonyManager;

    .line 248
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 251
    move-result-object v1

    .line 252
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 254
    if-eqz v1, :cond_e

    .line 256
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    .line 259
    move-result-object v1

    .line 260
    if-eqz v1, :cond_e

    .line 262
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_e

    .line 268
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 271
    :try_start_1
    invoke-virtual {p0, v11}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 274
    const/16 v1, 0x25

    .line 276
    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    :catch_1
    :cond_e
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 281
    invoke-virtual {v1}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_f

    .line 287
    iget v1, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    .line 289
    if-ltz v1, :cond_f

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    .line 293
    const-string v5, "Adding Network Specifier: "

    .line 295
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    iget v5, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    .line 300
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 303
    move-result-object v5

    .line 304
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    move-result-object v1

    .line 311
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget v1, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    .line 316
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 323
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 326
    goto :goto_6

    .line 327
    :cond_f
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 333
    move-result v1

    .line 334
    if-nez v1, :cond_10

    .line 336
    sget v1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mSubIdForSuplNi:I

    .line 338
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 341
    move-result v2

    .line 342
    if-eqz v2, :cond_10

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    .line 346
    const-string/jumbo v5, "setNetworkSpecifier after DSDS policy. Sim sub id : "

    .line 349
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    move-result-object v2

    .line 359
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v2, Landroid/net/TelephonyNetworkSpecifier$Builder;

    .line 364
    invoke-direct {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    .line 367
    invoke-virtual {v2, v1}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    .line 378
    :cond_10
    :goto_6
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 381
    move-result-object p0

    .line 382
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;

    .line 384
    if-eqz v1, :cond_11

    .line 386
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 388
    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 391
    :cond_11
    new-instance v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;

    .line 393
    const/4 v2, 0x0

    .line 394
    invoke-direct {v1, v0, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V

    .line 397
    iput-object v1, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;

    .line 399
    :try_start_2
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 401
    iget-object v5, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    .line 403
    const/16 v6, 0x4e20

    .line 405
    :try_start_3
    invoke-virtual {v2, p0, v1, v5, v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;I)V

    .line 408
    invoke-static {}, Landroid/location/flags/Flags;->releaseSuplConnectionOnTimeout()Z

    .line 411
    move-result p0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 412
    if-eqz p0, :cond_12

    .line 414
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectionReleaseOnTimeoutToken:Ljava/lang/Object;

    .line 416
    :try_start_4
    invoke-virtual {v5, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 419
    new-instance v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;

    .line 421
    const/4 v2, 0x1

    .line 422
    invoke-direct {v1, v0, v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V

    .line 425
    sget-wide v6, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->SUPL_CONNECTION_TIMEOUT_MILLIS:J

    .line 427
    invoke-virtual {v5, v1, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 430
    goto :goto_7

    .line 431
    :catch_2
    move-exception p0

    .line 432
    const-string v1, "Failed to request network."

    .line 434
    invoke-static {v4, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    iput-object v3, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;

    .line 439
    const/4 p0, 0x5

    .line 440
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->handleReleaseSuplConnection(I)V

    .line 443
    :cond_12
    :goto_7
    return-void
.end method
