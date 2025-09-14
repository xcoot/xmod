.class public final synthetic Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:B

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:B

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:B

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 6
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 8
    iput-byte p3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$2:B

    .line 10
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    .line 12
    iput-byte p5, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$4:B

    .line 14
    iput-object p6, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$5:Ljava/lang/String;

    .line 16
    iput-byte p7, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$6:B

    .line 18
    iput-boolean p8, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$7:Z

    .line 20
    iput-boolean p9, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$8:Z

    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 5
    iget-object v12, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 7
    iget-byte v11, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$2:B

    .line 9
    iget-object v13, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    .line 11
    iget-byte v14, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$4:B

    .line 13
    iget-object v15, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$5:Ljava/lang/String;

    .line 15
    iget-byte v10, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$6:B

    .line 17
    iget-boolean v9, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$7:Z

    .line 19
    iget-boolean v0, v0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$8:Z

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    new-instance v8, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;

    .line 26
    move-object v2, v8

    .line 27
    move-object v3, v12

    .line 28
    move v4, v11

    .line 29
    move-object v5, v13

    .line 30
    move v6, v14

    .line 31
    move-object v7, v15

    .line 32
    move-object/from16 v16, v15

    .line 34
    move-object v15, v8

    .line 35
    move v8, v10

    .line 36
    move/from16 v17, v9

    .line 38
    move/from16 v18, v14

    .line 40
    move v14, v10

    .line 41
    move v10, v0

    .line 42
    invoke-direct/range {v2 .. v10}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;-><init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    const-string v3, "Non-framework location access notification: "

    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    const-string v10, "GnssVisibilityControl"

    .line 61
    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v8, 0x2

    .line 66
    const/4 v7, 0x1

    .line 67
    if-eqz v17, :cond_3

    .line 69
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v2

    .line 73
    xor-int/2addr v2, v7

    .line 74
    if-nez v2, :cond_3

    .line 76
    if-eqz v14, :cond_0

    .line 78
    move v2, v9

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    const-string v3, "Emergency non-framework location request incorrectly rejected. Notification: "

    .line 84
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    move v2, v7

    .line 98
    :goto_0
    iget-object v3, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mNiHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 100
    const-wide/32 v4, 0x1f400

    .line 103
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency(J)Z

    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_1

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    const-string v3, "Emergency state mismatch. Device currently not in user initiated emergency session. Notification: "

    .line 113
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    move/from16 v19, v7

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    move/from16 v19, v2

    .line 131
    :goto_1
    const/16 v2, 0x83

    .line 133
    move-object v3, v12

    .line 134
    move v4, v11

    .line 135
    move-object v5, v13

    .line 136
    move/from16 v6, v18

    .line 138
    move v12, v7

    .line 139
    move-object/from16 v7, v16

    .line 141
    move v13, v8

    .line 142
    move v8, v14

    .line 143
    move v11, v9

    .line 144
    move/from16 v9, v17

    .line 146
    move-object v12, v10

    .line 147
    move v10, v0

    .line 148
    move v0, v11

    .line 149
    move/from16 v11, v19

    .line 151
    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZZ)V

    .line 154
    if-ne v14, v13, :cond_15

    .line 156
    iget-object v2, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mContext:Landroid/content/Context;

    .line 158
    const-string/jumbo v3, "notification"

    .line 161
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    move-result-object v2

    .line 165
    check-cast v2, Landroid/app/NotificationManager;

    .line 167
    if-nez v2, :cond_2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    const-string v1, "Could not notify user of emergency location request. Notification: "

    .line 173
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    goto/16 :goto_a

    .line 188
    :cond_2
    iget-object v1, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mContext:Landroid/content/Context;

    .line 190
    const v3, 0x104060c

    .line 193
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 196
    move-result-object v3

    .line 197
    const v4, 0x10405ca

    .line 200
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 203
    move-result-object v4

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    .line 206
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v6, " ("

    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v6, ")"

    .line 222
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v5

    .line 229
    new-instance v6, Landroid/app/Notification$Builder;

    .line 231
    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    .line 233
    invoke-direct {v6, v1, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    const v7, 0x1080bac

    .line 239
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 242
    move-result-object v6

    .line 243
    const-wide/16 v7, 0x0

    .line 245
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 248
    move-result-object v6

    .line 249
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 252
    move-result-object v6

    .line 253
    const/4 v7, 0x1

    .line 254
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 257
    move-result-object v6

    .line 258
    const v7, 0x106001c

    .line 261
    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    .line 264
    move-result v1

    .line 265
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 288
    move-result-object v1

    .line 289
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 291
    const/4 v4, 0x0

    .line 292
    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 295
    goto/16 :goto_a

    .line 297
    :cond_3
    move v2, v9

    .line 298
    move v9, v8

    .line 299
    move v8, v7

    .line 300
    move-object/from16 v21, v12

    .line 302
    move-object v12, v10

    .line 303
    move-object/from16 v10, v21

    .line 305
    iget-object v3, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 307
    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    move-result-object v3

    .line 311
    move-object v7, v3

    .line 312
    check-cast v7, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;

    .line 314
    if-eqz v14, :cond_4

    .line 316
    move/from16 v19, v8

    .line 318
    goto :goto_2

    .line 319
    :cond_4
    move/from16 v19, v2

    .line 321
    :goto_2
    if-eqz v14, :cond_5

    .line 323
    move v3, v8

    .line 324
    goto :goto_3

    .line 325
    :cond_5
    move v3, v2

    .line 326
    :goto_3
    if-eqz v7, :cond_8

    .line 328
    iget-boolean v4, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    .line 330
    if-nez v4, :cond_6

    .line 332
    goto :goto_4

    .line 333
    :cond_6
    iget-boolean v4, v7, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    .line 335
    if-eq v4, v3, :cond_7

    .line 337
    move/from16 v20, v8

    .line 339
    goto :goto_5

    .line 340
    :cond_7
    move/from16 v20, v2

    .line 342
    goto :goto_5

    .line 343
    :cond_8
    :goto_4
    move/from16 v20, v3

    .line 345
    :goto_5
    const/16 v2, 0x83

    .line 347
    move-object v3, v10

    .line 348
    move v4, v11

    .line 349
    move-object v5, v13

    .line 350
    move/from16 v6, v18

    .line 352
    move-object v13, v7

    .line 353
    move-object/from16 v7, v16

    .line 355
    move v11, v8

    .line 356
    move v8, v14

    .line 357
    move/from16 v9, v17

    .line 359
    move-object/from16 p0, v10

    .line 361
    move v10, v0

    .line 362
    move v0, v11

    .line 363
    move/from16 v11, v20

    .line 365
    invoke-static/range {v2 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;IZZZ)V

    .line 368
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 371
    move-result v2

    .line 372
    xor-int/2addr v2, v0

    .line 373
    if-nez v2, :cond_a

    .line 375
    if-nez v19, :cond_9

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    .line 379
    const-string v2, "Non-framework location request rejected. ProxyAppPackageName field is not set in the notification: "

    .line 381
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    const-string v2, ". Number of configured proxy apps: "

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iget-object v1, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mProxyAppsState:Landroid/util/ArrayMap;

    .line 394
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 397
    move-result v1

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    move-result-object v0

    .line 405
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    goto/16 :goto_a

    .line 410
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 412
    const-string v1, "ProxyAppPackageName field is not set. AppOps service not notified for notification: "

    .line 414
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    move-result-object v0

    .line 424
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    goto/16 :goto_a

    .line 429
    :cond_a
    if-nez v13, :cond_b

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    .line 433
    const-string v1, "Could not find proxy app "

    .line 435
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    move-object/from16 v2, p0

    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v1, " in the value specified for config parameter: NFW_PROXY_APPS. AppOps service not notified for notification: "

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object v0

    .line 455
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    goto/16 :goto_a

    .line 460
    :cond_b
    move-object/from16 v2, p0

    .line 462
    invoke-virtual {v1, v2}, Lcom/android/server/location/gnss/GnssVisibilityControl;->getProxyAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 465
    move-result-object v3

    .line 466
    if-nez v3, :cond_c

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    .line 470
    const-string v1, "Proxy app "

    .line 472
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v1, " is not found. AppOps service not notified for notification: "

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    move-result-object v0

    .line 490
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    goto/16 :goto_a

    .line 495
    :cond_c
    const/4 v4, 0x2

    .line 496
    if-ne v14, v4, :cond_11

    .line 498
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 500
    iget-boolean v6, v13, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mIsLocationIconOn:Z

    .line 502
    iget-object v7, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mHandler:Landroid/os/Handler;

    .line 504
    if-nez v6, :cond_e

    .line 506
    invoke-virtual {v1, v5, v2, v0}, Lcom/android/server/location/gnss/GnssVisibilityControl;->updateLocationIcon(ILjava/lang/String;Z)Z

    .line 509
    move-result v8

    .line 510
    if-nez v8, :cond_d

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    .line 514
    const-string v6, "Failed to show Location icon for notification: "

    .line 516
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    move-result-object v5

    .line 526
    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    goto :goto_8

    .line 530
    :cond_d
    iput-boolean v0, v13, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mIsLocationIconOn:Z

    .line 532
    goto :goto_6

    .line 533
    :cond_e
    invoke-virtual {v7, v13}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 536
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    .line 538
    const-string v9, "Location icon on. "

    .line 540
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    if-eqz v6, :cond_f

    .line 545
    const-string v6, "Extending"

    .line 547
    goto :goto_7

    .line 548
    :cond_f
    const-string v6, "Setting"

    .line 550
    :goto_7
    const-string v9, " icon display timer. Uid: "

    .line 552
    const-string v10, ", proxyAppPkgName: "

    .line 554
    invoke-static {v5, v6, v9, v10, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 557
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    move-result-object v6

    .line 564
    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v6, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;

    .line 569
    const/4 v8, 0x2

    .line 570
    invoke-direct {v6, v1, v2, v8}, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssVisibilityControl;Ljava/lang/Object;I)V

    .line 573
    const-wide/16 v8, 0x1388

    .line 575
    invoke-virtual {v7, v6, v13, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 578
    move-result v6

    .line 579
    if-nez v6, :cond_10

    .line 581
    invoke-virtual {v1, v13, v5, v2}, Lcom/android/server/location/gnss/GnssVisibilityControl;->clearLocationIcon(Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;ILjava/lang/String;)V

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    .line 586
    const-string v6, "Failed to show location icon for the full duration for notification: "

    .line 588
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 597
    move-result-object v5

    .line 598
    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_10
    :goto_8
    iget-object v5, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 603
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 605
    invoke-virtual {v5, v0, v3, v2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    .line 608
    :cond_11
    if-eqz v20, :cond_15

    .line 610
    const-string v3, "Permission mismatch. Proxy app "

    .line 612
    const-string v5, " location permission is set to "

    .line 614
    invoke-static {v3, v2, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    move-result-object v2

    .line 618
    iget-boolean v3, v13, Lcom/android/server/location/gnss/GnssVisibilityControl$ProxyAppState;->mHasLocationPermission:Z

    .line 620
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 623
    const-string v3, " and GNSS HAL enabled is set to "

    .line 625
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-boolean v1, v1, Lcom/android/server/location/gnss/GnssVisibilityControl;->mIsGpsEnabled:Z

    .line 630
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 633
    const-string v1, " but GNSS non-framework location access response type is "

    .line 635
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    if-eqz v14, :cond_14

    .line 640
    if-eq v14, v0, :cond_13

    .line 642
    if-eq v14, v4, :cond_12

    .line 644
    const-string v0, "<Unknown>"

    .line 646
    goto :goto_9

    .line 647
    :cond_12
    const-string v0, "ACCEPTED_LOCATION_PROVIDED"

    .line 649
    goto :goto_9

    .line 650
    :cond_13
    const-string v0, "ACCEPTED_NO_LOCATION_PROVIDED"

    .line 652
    goto :goto_9

    .line 653
    :cond_14
    const-string v0, "REJECTED"

    .line 655
    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string v0, " for notification: "

    .line 660
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 669
    move-result-object v0

    .line 670
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_15
    :goto_a
    return-void
.end method
