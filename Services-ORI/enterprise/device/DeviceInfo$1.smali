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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    iget p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->isMMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string v0, "DeviceInfo"

    .line 26
    .line 27
    if-eqz p1, :cond_7

    .line 28
    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_1
    const-string/jumbo v1, "com.samsung.mms.RECEIVED_MSG"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-string/jumbo v1, "com.samsung.mms.SENT_MSG"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_6

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    :goto_0
    const-string/jumbo v0, "msg_type"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string/jumbo v1, "mms"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_8

    .line 69
    .line 70
    const-string/jumbo v0, "msg_address"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string/jumbo v1, "date"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    const-string/jumbo v3, "msg_subject"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const-string/jumbo v4, "msg_body"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    const-string/jumbo v5, "content_location"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v6, " "

    .line 111
    .line 112
    const-string v7, ""

    .line 113
    .line 114
    if-nez p2, :cond_3

    .line 115
    .line 116
    move-object p2, v7

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {p2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    :goto_1
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    if-nez v3, :cond_4

    .line 126
    .line 127
    move-object p2, v7

    .line 128
    goto :goto_2

    .line 129
    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    :goto_2
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    if-nez v4, :cond_5

    .line 137
    .line 138
    move-object v4, v7

    .line 139
    :cond_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 147
    .line 148
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_6
    const-string p0, "Unexpected intent arrived at mMessagingReceiver"

    .line 157
    .line 158
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_7
    :goto_3
    const-string p0, "No data arrived at mMessagingReceiver"

    .line 163
    .line 164
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    :cond_8
    :goto_4
    return-void

    .line 168
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    const-string v0, "DeviceInfo"

    .line 173
    .line 174
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 182
    .line 183
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    const-wide/16 v1, 0x0

    .line 188
    .line 189
    if-eqz p1, :cond_b

    .line 190
    .line 191
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiTx()J

    .line 197
    .line 198
    .line 199
    move-result-wide v3

    .line 200
    iput-wide v3, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiTx:J

    .line 201
    .line 202
    invoke-static {}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficWifiRx()J

    .line 203
    .line 204
    .line 205
    move-result-wide v3

    .line 206
    iput-wide v3, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateWifiRx:J

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileTx()J

    .line 209
    .line 210
    .line 211
    move-result-wide v3

    .line 212
    iput-wide v3, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileTx:J

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getTrafficMobileRx()J

    .line 215
    .line 216
    .line 217
    move-result-wide v3

    .line 218
    iput-wide v3, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mLastUpdateMobileRx:J

    .line 219
    .line 220
    iput-wide v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/android/server/enterprise/device/DeviceInfo;->getStrictDataUsageTimer()I

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    if-eqz p2, :cond_9

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_9
    const/4 p2, 0x3

    .line 230
    :goto_5
    mul-int/lit16 p2, p2, 0x3e8

    .line 231
    .line 232
    iput p2, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimer:I

    .line 233
    .line 234
    const/4 p2, 0x0

    .line 235
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallStatisticsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    iput-boolean v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsEnabled:Z

    .line 240
    .line 241
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->getDataCallLoggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    iput-boolean v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataLogEnabled:Z

    .line 246
    .line 247
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->getWifiStatisticEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    iput-boolean v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mWifiStatsEnabled:Z

    .line 252
    .line 253
    const-string/jumbo v1, "deviceWifiSent"

    .line 254
    .line 255
    .line 256
    const-string/jumbo v2, "deviceWifiReceived"

    .line 257
    .line 258
    .line 259
    const-string/jumbo v3, "deviceNetworkSent"

    .line 260
    .line 261
    .line 262
    const-string/jumbo v4, "deviceNetworkReceived"

    .line 263
    .line 264
    .line 265
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    iget-object v6, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 270
    .line 271
    const-string v7, "DEVICE"

    .line 272
    .line 273
    invoke-virtual {v6, v7, p2, p2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    if-nez v6, :cond_a

    .line 282
    .line 283
    const/4 v6, 0x0

    .line 284
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    check-cast v5, Landroid/content/ContentValues;

    .line 289
    .line 290
    if-eqz v5, :cond_a

    .line 291
    .line 292
    :try_start_0
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 297
    .line 298
    .line 299
    move-result-wide v6

    .line 300
    iput-wide v6, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiTx:J

    .line 301
    .line 302
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 307
    .line 308
    .line 309
    move-result-wide v1

    .line 310
    iput-wide v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageWifiRx:J

    .line 311
    .line 312
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 317
    .line 318
    .line 319
    move-result-wide v1

    .line 320
    iput-wide v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileTx:J

    .line 321
    .line 322
    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 327
    .line 328
    .line 329
    move-result-wide v1

    .line 330
    iput-wide v1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mStorageMobileRx:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .line 332
    goto :goto_6

    .line 333
    :catch_0
    const-string/jumbo v1, "initializeStorageValues - Error reading from Device Storage"

    .line 334
    .line 335
    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->resetDataUsage(Lcom/samsung/android/knox/ContextInfo;)V

    .line 340
    .line 341
    .line 342
    :cond_a
    :goto_6
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 343
    .line 344
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/device/DeviceInfo;->dataUsageTimerActivation(Lcom/samsung/android/knox/ContextInfo;)V

    .line 345
    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 353
    .line 354
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    if-eqz p1, :cond_c

    .line 359
    .line 360
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 361
    .line 362
    const/16 p2, 0xa

    .line 363
    .line 364
    iput p2, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatsCounter:I

    .line 365
    .line 366
    iget-object p2, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 367
    .line 368
    iget-object p1, p1, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Lcom/android/server/enterprise/device/DeviceInfo$3;

    .line 369
    .line 370
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 371
    .line 372
    .line 373
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 374
    .line 375
    iget-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageTimerActivated:Z

    .line 376
    .line 377
    if-eqz p1, :cond_c

    .line 378
    .line 379
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataUsageEventsHandler:Landroid/os/Handler;

    .line 380
    .line 381
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataStatisticsUpdateRun:Lcom/android/server/enterprise/device/DeviceInfo$3;

    .line 382
    .line 383
    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    .line 385
    .line 386
    :cond_c
    :goto_7
    return-void

    .line 387
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    const-string v0, "android.net.conn.DATA_ACTIVITY_CHANGE"

    .line 392
    .line 393
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result p1

    .line 397
    if-eqz p1, :cond_e

    .line 398
    .line 399
    const-string/jumbo p1, "isActive"

    .line 400
    .line 401
    .line 402
    const/4 v0, 0x0

    .line 403
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-eqz p1, :cond_d

    .line 408
    .line 409
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 410
    .line 411
    const/4 p1, 0x1

    .line 412
    iput-boolean p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    .line 413
    .line 414
    goto :goto_8

    .line 415
    :cond_d
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$1;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    .line 416
    .line 417
    const-wide/16 p1, 0x0

    .line 418
    .line 419
    iput-wide p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastTime:J

    .line 420
    .line 421
    iput-wide p1, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallLogLastValue:J

    .line 422
    .line 423
    iput-boolean v0, p0, Lcom/android/server/enterprise/device/DeviceInfo;->mDataCallConnected:Z

    .line 424
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
