.class public final Lcom/android/server/enterprise/device/DeviceInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    iget p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->isMMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 15
    goto/16 :goto_4

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 24
    move-result-object p2

    .line 25
    const-string v0, "DeviceInfo"

    .line 27
    if-eqz p1, :cond_7

    .line 29
    if-nez p2, :cond_1

    .line 31
    goto/16 :goto_3

    .line 33
    :cond_1
    const-string/jumbo v1, "com.samsung.mms.RECEIVED_MSG"

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 42
    const/4 p1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-string/jumbo v1, "com.samsung.mms.SENT_MSG"

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_6

    .line 53
    const/4 p1, 0x0

    .line 54
    :goto_0
    const-string/jumbo v0, "msg_type"

    .line 57
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    const-string/jumbo v1, "mms"

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_8

    .line 70
    const-string/jumbo v0, "msg_address"

    .line 73
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    const-string/jumbo v1, "date"

    .line 80
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 83
    move-result-wide v1

    .line 84
    const-string/jumbo v3, "msg_subject"

    .line 87
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 91
    const-string/jumbo v4, "msg_body"

    .line 94
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 98
    const-string/jumbo v5, "content_location"

    .line 101
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const-string v6, " "

    .line 112
    const-string v7, ""

    .line 114
    if-nez p2, :cond_3

    .line 116
    move-object p2, v7

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {p2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 122
    :goto_1
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    if-nez v3, :cond_4

    .line 127
    move-object p2, v7

    .line 128
    goto :goto_2

    .line 129
    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object p2

    .line 133
    :goto_2
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    if-nez v4, :cond_5

    .line 138
    move-object v4, v7

    .line 139
    :cond_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p2

    .line 146
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 148
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    goto :goto_4

    .line 156
    :cond_6
    const-string p0, "Unexpected intent arrived at mMessagingReceiver"

    .line 158
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    goto :goto_4

    .line 162
    :cond_7
    :goto_3
    const-string p0, "No data arrived at mMessagingReceiver"

    .line 164
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_8
    :goto_4
    return-void

    .line 168
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 172
    const-string v0, "DeviceInfo"

    .line 174
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 180
    move-result-object p1

    .line 181
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 183
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result p1

    .line 187
    const-wide/16 v1, 0x0

    .line 189
    if-eqz p1, :cond_b

    .line 191
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    invoke-static {}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    .line 199
    move-result-wide v3

    .line 200
    iput-wide v3, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 202
    invoke-static {}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    .line 205
    move-result-wide v3

    .line 206
    iput-wide v3, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 208
    invoke-virtual {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    .line 211
    move-result-wide v3

    .line 212
    iput-wide v3, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 214
    invoke-virtual {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    .line 217
    move-result-wide v3

    .line 218
    iput-wide v3, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 220
    iput-wide v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 222
    invoke-virtual {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getStrictDataUsageTimer()I

    .line 225
    move-result p2

    .line 226
    if-eqz p2, :cond_9

    .line 228
    goto :goto_5

    .line 229
    :cond_9
    const/4 p2, 0x3

    .line 230
    :goto_5
    mul-int/lit16 p2, p2, 0x3e8

    .line 232
    iput p2, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 234
    const/4 p2, 0x0

    .line 235
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 238
    move-result v1

    .line 239
    iput-boolean v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 241
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 244
    move-result v1

    .line 245
    iput-boolean v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 247
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->getWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 250
    move-result v1

    .line 251
    iput-boolean v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 253
    const-string/jumbo v1, "deviceWifiSent"

    .line 256
    const-string/jumbo v2, "deviceWifiReceived"

    .line 259
    const-string/jumbo v3, "deviceNetworkSent"

    .line 262
    const-string/jumbo v4, "deviceNetworkReceived"

    .line 265
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 268
    move-result-object v5

    .line 269
    iget-object v6, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 271
    const-string v7, "DEVICE"

    .line 273
    invoke-virtual {v6, v7, p2, p2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 276
    move-result-object v5

    .line 277
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 280
    move-result v6

    .line 281
    if-nez v6, :cond_a

    .line 283
    const/4 v6, 0x0

    .line 284
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 287
    move-result-object v5

    .line 288
    check-cast v5, Landroid/content/ContentValues;

    .line 290
    if-eqz v5, :cond_a

    .line 292
    :try_start_0
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 299
    move-result-wide v6

    .line 300
    iput-wide v6, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 302
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 309
    move-result-wide v1

    .line 310
    iput-wide v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 312
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 319
    move-result-wide v1

    .line 320
    iput-wide v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 322
    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 329
    move-result-wide v1

    .line 330
    iput-wide v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_6

    .line 333
    :catch_0
    const-string/jumbo v1, "initializeStorageValues - Error reading from Device Storage"

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->resetDataUsage(Lcom/samsung/android/knox/ContextInfo;)V

    .line 342
    :cond_a
    :goto_6
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 344
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    .line 347
    goto :goto_7

    .line 348
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 351
    move-result-object p1

    .line 352
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 354
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    move-result p1

    .line 358
    if-eqz p1, :cond_c

    .line 360
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 362
    const/16 p2, 0xa

    .line 364
    iput p2, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    .line 366
    iget-object p2, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 368
    iget-object p1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Lcom/android/server/enterprise/device/DeviceInfo$3;

    .line 370
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 373
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 375
    iget-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 377
    if-eqz p1, :cond_c

    .line 379
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 381
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Lcom/android/server/enterprise/device/DeviceInfo$3;

    .line 383
    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 386
    :cond_c
    :goto_7
    return-void

    .line 387
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 390
    move-result-object p1

    .line 391
    const-string v0, "android.net.conn.DATA_ACTIVITY_CHANGE"

    .line 393
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    move-result p1

    .line 397
    if-eqz p1, :cond_e

    .line 399
    const-string/jumbo p1, "isActive"

    .line 402
    const/4 v0, 0x0

    .line 403
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 406
    move-result p1

    .line 407
    if-eqz p1, :cond_d

    .line 409
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 411
    const/4 p1, 0x1

    .line 412
    iput-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    .line 414
    goto :goto_8

    .line 415
    :cond_d
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 417
    const-wide/16 p1, 0x0

    .line 419
    iput-wide p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 421
    iput-wide p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 423
    iput-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    .line 425
    :cond_e
    :goto_8
    return-void

    .line 426
    nop

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
