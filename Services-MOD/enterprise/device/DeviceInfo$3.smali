.class public final Lcom/android/server/enterprise/device/DeviceInfo$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 3
    iget-object v0, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 10
    iget v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 14
    iput v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    .line 16
    invoke-static {}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    .line 19
    move-result-wide v1

    .line 20
    iget-wide v3, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 22
    cmp-long v5, v1, v3

    .line 24
    if-lez v5, :cond_0

    .line 26
    sub-long v3, v1, v3

    .line 28
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->isWifiStateEnabled()Z

    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 34
    iget-boolean v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 36
    if-eqz v5, :cond_0

    .line 38
    iget-wide v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 40
    add-long/2addr v5, v3

    .line 41
    iput-wide v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 43
    :cond_0
    iput-wide v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 45
    invoke-static {}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    .line 48
    move-result-wide v1

    .line 49
    iget-wide v3, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 51
    cmp-long v5, v1, v3

    .line 53
    if-lez v5, :cond_1

    .line 55
    sub-long v3, v1, v3

    .line 57
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->isWifiStateEnabled()Z

    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 63
    iget-boolean v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 65
    if-eqz v5, :cond_1

    .line 67
    iget-wide v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 69
    add-long/2addr v5, v3

    .line 70
    iput-wide v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 72
    :cond_1
    iput-wide v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 74
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    .line 77
    move-result-wide v1

    .line 78
    iget-wide v3, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 80
    cmp-long v5, v1, v3

    .line 82
    const-wide/16 v6, 0x0

    .line 84
    if-ltz v5, :cond_2

    .line 86
    sub-long v3, v1, v3

    .line 88
    iget-boolean v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 90
    if-eqz v5, :cond_3

    .line 92
    iget-wide v8, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 94
    add-long/2addr v8, v3

    .line 95
    iput-wide v8, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iput-wide v6, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 100
    iput-wide v6, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 102
    move-wide v3, v6

    .line 103
    :cond_3
    :goto_0
    iput-wide v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 105
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    .line 108
    move-result-wide v1

    .line 109
    iget-wide v8, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 111
    cmp-long v5, v1, v8

    .line 113
    if-ltz v5, :cond_4

    .line 115
    sub-long v8, v1, v8

    .line 117
    iget-boolean v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 119
    if-eqz v5, :cond_5

    .line 121
    iget-wide v10, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    .line 123
    add-long/2addr v10, v8

    .line 124
    iput-wide v10, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    iput-wide v6, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 129
    iput-wide v6, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 131
    move-wide v8, v6

    .line 132
    :cond_5
    :goto_1
    iput-wide v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 134
    add-long/2addr v3, v8

    .line 135
    cmp-long v1, v3, v6

    .line 137
    if-lez v1, :cond_e

    .line 139
    iget-boolean v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 141
    const-string v5, "DeviceInfo"

    .line 143
    if-nez v2, :cond_6

    .line 145
    const-string v1, "Logging disabled"

    .line 147
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    goto/16 :goto_3

    .line 152
    :cond_6
    iget-boolean v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    .line 154
    if-nez v2, :cond_7

    .line 156
    const-string v1, "Data Disconnected, don\'t log"

    .line 158
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    goto/16 :goto_3

    .line 163
    :cond_7
    if-gtz v1, :cond_8

    .line 165
    const-string v1, "No bytes to log"

    .line 167
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    goto/16 :goto_3

    .line 172
    :cond_8
    iget-object v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 174
    if-nez v1, :cond_9

    .line 176
    const-string/jumbo v1, "failed logDataCall because mTelMgr is null"

    .line 179
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    goto/16 :goto_3

    .line 184
    :cond_9
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_a

    .line 190
    const-string v1, "ROAMING"

    .line 192
    goto :goto_2

    .line 193
    :cond_a
    const-string v1, "NORMAL"

    .line 195
    :goto_2
    iget-object v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 197
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    .line 200
    move-result-object v2

    .line 201
    iget-object v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    .line 203
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_b

    .line 209
    iget-object v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 211
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result v5

    .line 215
    if-nez v5, :cond_c

    .line 217
    :cond_b
    iput-wide v6, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 219
    iput-wide v6, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 221
    :cond_c
    iput-object v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    .line 223
    const-string v1, "UNKNOWN"

    .line 225
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    move-result v1

    .line 229
    if-nez v1, :cond_d

    .line 231
    iput-object v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 233
    :cond_d
    iget-wide v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 235
    add-long/2addr v1, v3

    .line 236
    iput-wide v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 238
    new-instance v1, Landroid/content/ContentValues;

    .line 240
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 243
    iget-wide v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 245
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 248
    move-result-object v2

    .line 249
    const-string/jumbo v5, "dataCallDate"

    .line 252
    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 255
    iget-object v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    .line 257
    const-string/jumbo v6, "dataCallStatus"

    .line 260
    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 265
    const-string/jumbo v7, "dataCallNetType"

    .line 268
    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 278
    move-result-wide v8

    .line 279
    iput-wide v8, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 281
    new-instance v2, Landroid/content/ContentValues;

    .line 283
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 286
    iget-wide v8, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 288
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 291
    move-result-object v8

    .line 292
    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 295
    iget-object v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastStatus:Ljava/lang/String;

    .line 297
    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastNetType:Ljava/lang/String;

    .line 302
    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-wide v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 307
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 310
    move-result-object v5

    .line 311
    const-string/jumbo v6, "dataCallBytes"

    .line 314
    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 317
    iget-object v5, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 319
    const-string v6, "DATACALLLOG"

    .line 321
    invoke-virtual {v5, v6, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 324
    :cond_e
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/enterprise/device/DeviceInfo;->getEDM$8()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    .line 331
    move-result-object v1

    .line 332
    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    .line 335
    iget v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    .line 337
    const/16 v2, 0xa

    .line 339
    if-lt v1, v2, :cond_f

    .line 341
    new-instance v1, Landroid/content/ContentValues;

    .line 343
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 346
    iget-wide v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 348
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 351
    move-result-object v2

    .line 352
    const-string/jumbo v3, "deviceWifiSent"

    .line 355
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 358
    iget-wide v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 360
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 363
    move-result-object v2

    .line 364
    const-string/jumbo v3, "deviceWifiReceived"

    .line 367
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 370
    iget-wide v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 372
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 375
    move-result-object v2

    .line 376
    const-string/jumbo v3, "deviceNetworkSent"

    .line 379
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    iget-wide v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J

    .line 384
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 387
    move-result-object v2

    .line 388
    const-string/jumbo v3, "deviceNetworkReceived"

    .line 391
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 394
    iget-object v2, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 396
    const-string v3, "DEVICE"

    .line 398
    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 401
    const/4 v1, 0x0

    .line 402
    iput v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    .line 404
    :cond_f
    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 406
    iget-boolean v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 408
    if-eqz v1, :cond_10

    .line 410
    iget-object v1, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 412
    iget v0, v0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 414
    int-to-long v2, v0

    .line 415
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 418
    :cond_10
    return-void
.end method
