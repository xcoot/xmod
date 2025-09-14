.class Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SUPL_CONNECTION_TIMEOUT_MILLIS:J

.field public static final VERBOSE:Z


# instance fields
.field public mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field public mAGpsDataConnectionState:I

.field public mAGpsType:I

.field public mActiveSubId:I

.field public final mAvailableNetworkAttributes:Ljava/util/HashMap;

.field public final mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

.field public final mConnMgr:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mEmergencyConnectivityCallback:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;

.field public final mGnssNetworkListener:Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;

.field public final mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

.field public final mHandler:Landroid/os/Handler;

.field public mIsConnectEmergencyNetwork:Z

.field public mNetworkConnectivityCallback:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;

.field public final mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field public final mOnSubscriptionsChangeListener:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;

.field public mPhoneStateListeners:Ljava/util/HashMap;

.field public final mSuplConnectionReleaseOnTimeoutToken:Ljava/lang/Object;

.field public mSuplConnectivityCallback:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static -$$Nest$mhandleSuplConnectionAvailable(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    filled-new-array {v2, p1, v0}, [Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    const-string/jumbo v2, "handleSuplConnectionAvailable: state=%s, suplNetwork=%s, info=%s"

    .line 26
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v2, "GnssNetworkConnectivityHandler"

    .line 32
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 37
    const/4 v3, 0x1

    .line 38
    if-ne v0, v3, :cond_d

    .line 40
    if-nez v1, :cond_1

    .line 42
    const-string/jumbo v1, "dummy-apn"

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 47
    const/4 v3, 0x3

    .line 48
    if-eqz v0, :cond_3

    .line 50
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 52
    invoke-virtual {v4, v3, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    const-string v4, "Error requesting route to host: "

    .line 62
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    const-string v4, "Successfully requested route to host: "

    .line 82
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_3
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->getLinkIpType(Landroid/net/LinkProperties;)I

    .line 100
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_b

    .line 111
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 113
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/CarrierConfig;->mCarrier:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 115
    sget-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 117
    if-eq v0, v4, :cond_4

    .line 119
    sget-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAA:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 121
    if-eq v0, v4, :cond_4

    .line 123
    sget-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_XAG:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 125
    if-eq v0, v4, :cond_4

    .line 127
    sget-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFN:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 129
    if-eq v0, v4, :cond_4

    .line 131
    sget-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TFO:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 133
    if-eq v0, v4, :cond_4

    .line 135
    sget-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_TMK:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 137
    if-eq v0, v4, :cond_4

    .line 139
    sget-object v4, Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;->USA_DSH:Lcom/android/server/location/gnss/sec/CarrierConfig$Carrier;

    .line 141
    if-ne v0, v4, :cond_b

    .line 143
    :cond_4
    const-string p2, "Set IpType for TMB SUPL connection"

    .line 145
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string p2, "No entry found in query for APN: "

    .line 150
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    .line 152
    if-eqz v0, :cond_a

    .line 154
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 161
    move-result-object v0

    .line 162
    if-ne v4, v0, :cond_a

    .line 164
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 166
    const-string/jumbo v4, "phone"

    .line 169
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 175
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 177
    invoke-virtual {v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_5

    .line 183
    iget v4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    .line 185
    if-ltz v4, :cond_5

    .line 187
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 190
    move-result-object v4

    .line 191
    if-eqz v4, :cond_5

    .line 193
    move-object v0, v4

    .line 194
    :cond_5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    .line 197
    move-result-object v4

    .line 198
    if-eqz v4, :cond_6

    .line 200
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    .line 203
    move-result v4

    .line 204
    if-eqz v4, :cond_6

    .line 206
    const-string/jumbo v4, "roaming_protocol"

    .line 209
    goto :goto_2

    .line 210
    :cond_6
    const-string/jumbo v4, "protocol"

    .line 213
    :goto_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 216
    move-result v0

    .line 217
    const-string v5, "\' and carrier_enabled = 1"

    .line 219
    if-nez v0, :cond_7

    .line 221
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsType:I

    .line 223
    if-ne v3, v0, :cond_7

    .line 225
    const-string/jumbo v0, "type like \'%emergency%\' and apn = \'"

    .line 228
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    move-result-object v0

    .line 232
    :goto_3
    move-object v8, v0

    .line 233
    goto :goto_4

    .line 234
    :cond_7
    const-string/jumbo v0, "current = 1 and apn = \'"

    .line 237
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    goto :goto_3

    .line 242
    :goto_4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 244
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 247
    move-result-object v5

    .line 248
    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 250
    filled-new-array {v4}, [Ljava/lang/String;

    .line 253
    move-result-object v7

    .line 254
    const-string/jumbo v10, "name ASC"

    .line 257
    const/4 v9, 0x0

    .line 258
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 261
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    if-eqz v0, :cond_8

    .line 264
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_8

    .line 270
    const/4 p2, 0x0

    .line 271
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 274
    move-result-object p2

    .line 275
    invoke-static {p2, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->translateToApnIpTypeSec(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 282
    move v3, p2

    .line 283
    goto :goto_8

    .line 284
    :catch_0
    move-exception p2

    .line 285
    goto :goto_7

    .line 286
    :catchall_0
    move-exception p2

    .line 287
    goto :goto_5

    .line 288
    :cond_8
    :try_start_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    move-result-object p2

    .line 292
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    if-eqz v0, :cond_c

    .line 297
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 300
    goto :goto_8

    .line 301
    :goto_5
    if-eqz v0, :cond_9

    .line 303
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 306
    goto :goto_6

    .line 307
    :catchall_1
    move-exception v0

    .line 308
    :try_start_6
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 311
    :cond_9
    :goto_6
    throw p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 312
    :goto_7
    const-string v0, "Error encountered on APN query for: "

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    move-result-object v0

    .line 318
    invoke-static {v2, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    goto :goto_8

    .line 322
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 324
    const-string p1, "This method must run on the Handler thread."

    .line 326
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 329
    throw p0

    .line 330
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->getLinkIpType(Landroid/net/LinkProperties;)I

    .line 333
    move-result v3

    .line 334
    :cond_c
    :goto_8
    const-string/jumbo p2, "native_agps_data_conn_open: mAgpsApn="

    .line 337
    const-string v0, ", mApnIpType="

    .line 339
    invoke-static {v3, p2, v1, v0, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    .line 345
    move-result-wide p1

    .line 346
    invoke-direct {p0, p1, p2, v1, v3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_open(JLjava/lang/String;I)V

    .line 349
    const/4 p1, 0x2

    .line 350
    iput p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 352
    :cond_d
    return-void
.end method

.method public static -$$Nest$mhandleUpdateNetworkState(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p3

    .line 7
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 9
    const-class v4, Landroid/telephony/TelephonyManager;

    .line 11
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eqz v3, :cond_1

    .line 21
    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 29
    move v3, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v3, v4

    .line 32
    :goto_0
    move v6, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v6, v4

    .line 35
    :goto_1
    if-nez p2, :cond_2

    .line 37
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 39
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    .line 45
    goto :goto_3

    .line 46
    :cond_2
    iget-object v3, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 48
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    .line 54
    if-eqz v3, :cond_3

    .line 56
    iput-object v2, v3, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mCapabilities:Landroid/net/NetworkCapabilities;

    .line 58
    :goto_2
    move-object v2, v3

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    new-instance v3, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;

    .line 62
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v7, -0x1

    .line 66
    iput v7, v3, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    .line 68
    iput-object v2, v3, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mCapabilities:Landroid/net/NetworkCapabilities;

    .line 70
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 72
    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_4

    .line 78
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 81
    move-result-object v7

    .line 82
    iput-object v7, v3, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mApn:Ljava/lang/String;

    .line 84
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    .line 87
    move-result v2

    .line 88
    iput v2, v3, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    .line 90
    :cond_4
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 92
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    goto :goto_2

    .line 96
    :goto_3
    iget-object v3, v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mApn:Ljava/lang/String;

    .line 98
    iget v7, v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mType:I

    .line 100
    iget-object v2, v2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$NetworkAttributes;->mCapabilities:Landroid/net/NetworkCapabilities;

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    .line 105
    move-result-object v8

    .line 106
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 109
    move-result-object v9

    .line 110
    const/16 v10, 0x12

    .line 112
    invoke-virtual {v2, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 115
    move-result v11

    .line 116
    const/4 v12, 0x2

    .line 117
    if-eqz v11, :cond_5

    .line 119
    int-to-short v11, v12

    .line 120
    goto :goto_4

    .line 121
    :cond_5
    move v11, v4

    .line 122
    :goto_4
    const/16 v13, 0xb

    .line 124
    invoke-virtual {v2, v13}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 127
    move-result v14

    .line 128
    if-eqz v14, :cond_6

    .line 130
    or-int/lit8 v11, v11, 0x1

    .line 132
    int-to-short v11, v11

    .line 133
    :cond_6
    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 136
    move-result-object v11

    .line 137
    iget-object v14, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 139
    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    .line 142
    move-result v14

    .line 143
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v14

    .line 147
    filled-new-array {v8, v9, v1, v11, v14}, [Ljava/lang/Object;

    .line 150
    move-result-object v8

    .line 151
    const-string/jumbo v9, "updateNetworkState, state=%s, connected=%s, network=%s, capabilityFlags=%d, availableNetworkCount: %d"

    .line 154
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    move-result-object v8

    .line 158
    const-string v9, "GnssNetworkConnectivityHandler"

    .line 160
    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v8, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 165
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isLsiGnss()Z

    .line 171
    move-result v8

    .line 172
    if-eqz v8, :cond_7

    .line 174
    new-instance v8, Lcom/android/server/location/gnss/sec/GnssHalStatus;

    .line 176
    invoke-direct {v8}, Lcom/android/server/location/gnss/sec/GnssHalStatus;-><init>()V

    .line 179
    const-wide/16 v14, 0xbb8

    .line 181
    invoke-virtual {v8, v14, v15}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->triggerCheckingHalStatus(J)V

    .line 184
    :goto_5
    move-object v11, v8

    .line 185
    goto :goto_6

    .line 186
    :cond_7
    const/4 v8, 0x0

    .line 187
    goto :goto_5

    .line 188
    :goto_6
    invoke-static {}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_is_agps_ril_supported()Z

    .line 191
    move-result v8

    .line 192
    if-eqz v8, :cond_b

    .line 194
    invoke-virtual {v2, v10}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 197
    move-result v8

    .line 198
    xor-int/2addr v5, v8

    .line 199
    if-eqz v3, :cond_8

    .line 201
    :goto_7
    move-object v8, v3

    .line 202
    goto :goto_8

    .line 203
    :cond_8
    const-string v3, ""

    .line 205
    goto :goto_7

    .line 206
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Network;->getNetworkHandle()J

    .line 209
    move-result-wide v14

    .line 210
    invoke-virtual {v2, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_9

    .line 216
    int-to-short v4, v12

    .line 217
    :cond_9
    invoke-virtual {v2, v13}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_a

    .line 223
    or-int/lit8 v1, v4, 0x1

    .line 225
    int-to-short v1, v1

    .line 226
    move v9, v1

    .line 227
    goto :goto_9

    .line 228
    :cond_a
    move v9, v4

    .line 229
    :goto_9
    move-object/from16 v0, p0

    .line 231
    move/from16 v1, p2

    .line 233
    move v2, v7

    .line 234
    move v3, v5

    .line 235
    move v4, v6

    .line 236
    move-object v5, v8

    .line 237
    move-wide v6, v14

    .line 238
    move v8, v9

    .line 239
    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_update_network_state(ZIZZLjava/lang/String;JS)V

    .line 242
    goto :goto_a

    .line 243
    :cond_b
    const-string v0, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    .line 245
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_a
    if-eqz v11, :cond_c

    .line 250
    invoke-virtual {v11}, Lcom/android/server/location/gnss/sec/GnssHalStatus;->updateHalStatusChecked()V

    .line 253
    :cond_c
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "GnssNetworkConnectivityHandler"

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    .line 10
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 12
    const-wide/16 v1, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 17
    move-result-wide v0

    .line 18
    sput-wide v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->SUPL_CONNECTION_TIMEOUT_MILLIS:J

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAvailableNetworkAttributes:Ljava/util/HashMap;

    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mActiveSubId:I

    .line 15
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->getInstance()Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 21
    invoke-static {}, Lcom/android/server/location/gnss/sec/CarrierConfig;->getInstance()Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 27
    const/4 v2, 0x1

    .line 28
    iput-boolean v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsConnectEmergencyNetwork:Z

    .line 30
    new-instance v3, Ljava/lang/Object;

    .line 32
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v3, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectionReleaseOnTimeoutToken:Ljava/lang/Object;

    .line 37
    new-instance v3, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;

    .line 39
    invoke-direct {v3, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$1;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    .line 42
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mGnssNetworkListener:Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;

    .line 46
    const-class p2, Landroid/telephony/SubscriptionManager;

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Landroid/telephony/SubscriptionManager;

    .line 54
    if-eqz p2, :cond_1

    .line 56
    invoke-static {}, Landroid/location/flags/Flags;->subscriptionsChangedListenerThread()Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_0

    .line 62
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {p2, v4, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 73
    :cond_1
    :goto_0
    const-string/jumbo p2, "power"

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Landroid/os/PowerManager;

    .line 82
    const-string v3, "GnssNetworkConnectivityHandler"

    .line 84
    invoke-virtual {p2, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 87
    move-result-object p2

    .line 88
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    new-instance p2, Landroid/os/Handler;

    .line 92
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 95
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    .line 97
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 99
    const-string/jumbo p2, "connectivity"

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 108
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 110
    const/4 p2, 0x0

    .line 111
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 119
    move-result p2

    .line 120
    if-nez p2, :cond_3

    .line 122
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isCanadaMarket()Z

    .line 125
    move-result p2

    .line 126
    if-nez p2, :cond_2

    .line 128
    invoke-virtual {v1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isUSAMarket()Z

    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_3

    .line 134
    :cond_2
    new-instance p2, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;

    .line 136
    const/4 p3, 0x1

    .line 137
    invoke-direct {p2, p0, p3}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V

    .line 140
    new-instance p3, Landroid/net/NetworkRequest$Builder;

    .line 142
    invoke-direct {p3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 145
    const/16 p4, 0xa

    .line 147
    invoke-virtual {p3, p4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 150
    invoke-virtual {p3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 153
    move-result-object p3

    .line 154
    invoke-virtual {p1, p3, p2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 157
    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mIsConnectEmergencyNetwork:Z

    .line 160
    :cond_3
    return-void
.end method

.method public static agpsDataConnStatusAsString(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_4

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_3

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_2

    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p0, v0, :cond_1

    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq p0, v0, :cond_0

    .line 16
    const-string v0, "<Unknown>("

    .line 18
    const-string v1, ")"

    .line 20
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    const-string p0, "FAILED"

    .line 27
    return-object p0

    .line 28
    :cond_1
    const-string p0, "DONE"

    .line 30
    return-object p0

    .line 31
    :cond_2
    const-string p0, "CONNECTED"

    .line 33
    return-object p0

    .line 34
    :cond_3
    const-string p0, "RELEASE"

    .line 36
    return-object p0

    .line 37
    :cond_4
    const-string p0, "REQUEST"

    .line 39
    return-object p0
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(JLjava/lang/String;I)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;JS)V
.end method

.method public static translateToApnIpTypeSec(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "IP"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const-string v0, "IPV6"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    const/4 p0, 0x2

    .line 20
    return p0

    .line 21
    :cond_1
    const-string v0, "IPV4V6"

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x3

    .line 28
    if-eqz v0, :cond_2

    .line 30
    return v1

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "Unknown IP Protocol: "

    .line 35
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string p0, ", for APN: "

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    const-string p1, "GnssNetworkConnectivityHandler"

    .line 55
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return v1
.end method


# virtual methods
.method public final agpsDataConnStateAsString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 3
    if-eqz v0, :cond_2

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "<Unknown>("

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 20
    const-string v1, ")"

    .line 22
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    const-string p0, "OPEN"

    .line 29
    return-object p0

    .line 30
    :cond_1
    const-string p0, "OPENING"

    .line 32
    return-object p0

    .line 33
    :cond_2
    const-string p0, "CLOSED"

    .line 35
    return-object p0
.end method

.method public final getLinkIpType(Landroid/net/LinkProperties;)I
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    .line 3
    if-eqz p0, :cond_6

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    move-result-object p0

    .line 13
    if-ne v0, p0, :cond_6

    .line 15
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 23
    const/4 p1, 0x0

    .line 24
    move v0, p1

    .line 25
    move v1, v0

    .line 26
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v2, :cond_2

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/net/LinkAddress;

    .line 39
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 42
    move-result-object v2

    .line 43
    instance-of v4, v2, Ljava/net/Inet4Address;

    .line 45
    if-eqz v4, :cond_0

    .line 47
    move v0, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    instance-of v4, v2, Ljava/net/Inet6Address;

    .line 51
    if-eqz v4, :cond_1

    .line 53
    move v1, v3

    .line 54
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    const-string v4, "LinkAddress : "

    .line 58
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    const-string v3, "GnssNetworkConnectivityHandler"

    .line 74
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    if-eqz v0, :cond_3

    .line 80
    if-eqz v1, :cond_3

    .line 82
    const/4 p0, 0x3

    .line 83
    return p0

    .line 84
    :cond_3
    if-eqz v0, :cond_4

    .line 86
    return v3

    .line 87
    :cond_4
    if-eqz v1, :cond_5

    .line 89
    const/4 p0, 0x2

    .line 90
    return p0

    .line 91
    :cond_5
    return p1

    .line 92
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 94
    const-string p1, "This method must run on the Handler thread."

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p0
.end method

.method public final handleReleaseSuplConnection(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStateAsString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v3, "releaseSuplConnection, state="

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v0, ", status="

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    const-string v1, "GnssNetworkConnectivityHandler"

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Landroid/location/flags/Flags;->releaseSuplConnectionOnTimeout()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    .line 45
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectionReleaseOnTimeoutToken:Ljava/lang/Object;

    .line 47
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 50
    :cond_0
    iget v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 52
    if-nez v0, :cond_1

    .line 54
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mAGpsDataConnectionState:I

    .line 58
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;

    .line 60
    if-eqz v0, :cond_2

    .line 62
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 64
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 67
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mSuplConnectivityCallback:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;

    .line 70
    :cond_2
    const/4 v0, 0x2

    .line 71
    if-eq p1, v0, :cond_4

    .line 73
    const/4 v0, 0x5

    .line 74
    if-eq p1, v0, :cond_3

    .line 76
    const-string p0, "Invalid status to release SUPL connection: "

    .line 78
    invoke-static {p1, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_failed()V

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->native_agps_data_conn_closed()V

    .line 89
    :goto_0
    return-void
.end method

.method public final isDataNetworkConnected()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final registerNetworkCallbacks()V
    .locals 3

    .line 1
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 3
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 6
    const/16 v1, 0xc

    .line 8
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 11
    const/16 v1, 0x10

    .line 13
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 16
    const/16 v1, 0xf

    .line 18
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 21
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;

    .line 27
    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;-><init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V

    .line 30
    iput-object v1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mNetworkConnectivityCallback:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$2;

    .line 32
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 34
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mHandler:Landroid/os/Handler;

    .line 36
    invoke-virtual {v2, v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 39
    return-void
.end method
