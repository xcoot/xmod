.class public final synthetic Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 3
    move/from16 v1, p2

    .line 5
    move-object/from16 v2, p0

    .line 7
    iget-object v2, v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget v3, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestType:I

    .line 14
    const/4 v4, 0x1

    .line 15
    const-string v5, "Unknown request status: "

    .line 17
    const/4 v6, 0x2

    .line 18
    iget v7, v0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    .line 20
    if-ne v3, v4, :cond_2

    .line 22
    if-eq v1, v4, :cond_1

    .line 24
    if-ne v1, v6, :cond_0

    .line 26
    iget-object v3, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    .line 28
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_8

    .line 34
    iget-object v3, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    .line 36
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    if-ne v3, v0, :cond_8

    .line 42
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 45
    move-result-object v3

    .line 46
    iput-object v3, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    .line 48
    goto/16 :goto_2

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 52
    invoke-static {v1, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw v0

    .line 60
    :cond_1
    iget-object v1, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 62
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 65
    move-result v1

    .line 66
    invoke-virtual {v2, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->setBaseState(I)V

    .line 69
    invoke-static/range {p1 .. p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 72
    move-result-object v1

    .line 73
    iput-object v1, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    .line 75
    iget-object v1, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 77
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 83
    iget-object v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 85
    invoke-virtual {v1, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Landroid/os/IBinder;)V

    .line 88
    goto/16 :goto_4

    .line 90
    :cond_2
    if-nez v3, :cond_c

    .line 92
    const/high16 v3, 0x4000000

    .line 94
    const/4 v8, 0x0

    .line 95
    iget-object v9, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStateNotificationController:Lcom/android/server/devicestate/DeviceStateNotificationController;

    .line 97
    if-eq v1, v4, :cond_6

    .line 99
    if-ne v1, v6, :cond_5

    .line 101
    iget-object v5, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 103
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_8

    .line 109
    iget-object v5, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 111
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 114
    move-result-object v5

    .line 115
    if-ne v5, v0, :cond_8

    .line 117
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 120
    move-result-object v5

    .line 121
    iput-object v5, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 123
    iget-object v5, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 125
    invoke-virtual {v5}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 128
    move-result v5

    .line 129
    invoke-virtual {v9}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    .line 132
    move-result-object v10

    .line 133
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 136
    move-result-object v5

    .line 137
    if-nez v5, :cond_3

    .line 139
    goto :goto_0

    .line 140
    :cond_3
    iget-object v5, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mHandler:Landroid/os/Handler;

    .line 142
    new-instance v10, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda1;

    .line 144
    invoke-direct {v10, v9}, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicestate/DeviceStateNotificationController;)V

    .line 147
    invoke-virtual {v5, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    :goto_0
    and-int/lit8 v5, p3, 0x1

    .line 152
    if-ne v5, v4, :cond_4

    .line 154
    iget-object v3, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 156
    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 159
    move-result v3

    .line 160
    invoke-virtual {v9}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    .line 170
    if-eqz v3, :cond_8

    .line 172
    iget-object v5, v3, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationTitle:Ljava/lang/String;

    .line 174
    if-eqz v5, :cond_8

    .line 176
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 179
    move-result v5

    .line 180
    if-lez v5, :cond_8

    .line 182
    const/4 v15, 0x0

    .line 183
    const/16 v16, 0x0

    .line 185
    iget-object v10, v3, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->name:Ljava/lang/String;

    .line 187
    iget-object v11, v3, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationTitle:Ljava/lang/String;

    .line 189
    iget-object v12, v3, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationContent:Ljava/lang/String;

    .line 191
    const/4 v13, 0x0

    .line 192
    const v14, 0x10805f4

    .line 195
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 198
    goto/16 :goto_2

    .line 200
    :cond_4
    and-int/lit8 v5, p3, 0x2

    .line 202
    if-ne v5, v6, :cond_8

    .line 204
    iget-object v5, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 206
    invoke-virtual {v5}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 209
    move-result v5

    .line 210
    invoke-virtual {v9}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    .line 220
    if-eqz v5, :cond_8

    .line 222
    iget-object v6, v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationTitle:Ljava/lang/String;

    .line 224
    if-eqz v6, :cond_8

    .line 226
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 229
    move-result v6

    .line 230
    if-lez v6, :cond_8

    .line 232
    new-instance v6, Landroid/content/Intent;

    .line 234
    const-string v10, "android.settings.BATTERY_SAVER_SETTINGS"

    .line 236
    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    iget-object v10, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 241
    invoke-static {v10, v8, v6, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 244
    move-result-object v15

    .line 245
    iget-object v3, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 247
    const v6, 0x104045c

    .line 250
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 253
    move-result-object v16

    .line 254
    iget-object v11, v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationTitle:Ljava/lang/String;

    .line 256
    iget-object v12, v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationContent:Ljava/lang/String;

    .line 258
    iget-object v10, v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->name:Ljava/lang/String;

    .line 260
    const/4 v13, 0x0

    .line 261
    const v14, 0x10805f4

    .line 264
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 267
    goto/16 :goto_2

    .line 269
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 271
    invoke-static {v1, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 274
    move-result-object v1

    .line 275
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 278
    throw v0

    .line 279
    :cond_6
    invoke-static/range {p1 .. p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 282
    move-result-object v5

    .line 283
    iput-object v5, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 285
    iget-object v5, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 287
    invoke-virtual {v5}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 290
    move-result v5

    .line 291
    invoke-virtual {v9}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    .line 294
    move-result-object v6

    .line 295
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 298
    move-result-object v6

    .line 299
    check-cast v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    .line 301
    if-eqz v6, :cond_8

    .line 303
    iget-object v10, v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationTitle:Ljava/lang/String;

    .line 305
    if-eqz v10, :cond_8

    .line 307
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 310
    move-result v10

    .line 311
    if-lez v10, :cond_8

    .line 313
    iget-object v10, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 315
    iget v11, v0, Lcom/android/server/devicestate/OverrideRequest;->mUid:I

    .line 317
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 320
    move-result-object v10

    .line 321
    :try_start_0
    iget-object v12, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 323
    const-wide/16 v13, 0x0

    .line 325
    invoke-static {v13, v14}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 328
    move-result-object v13

    .line 329
    invoke-virtual {v12, v10, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 332
    move-result-object v10

    .line 333
    iget-object v12, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 335
    invoke-virtual {v10, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 338
    move-result-object v10

    .line 339
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 342
    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    goto :goto_1

    .line 344
    :catch_0
    const/4 v10, 0x0

    .line 345
    :goto_1
    if-eqz v10, :cond_7

    .line 347
    new-instance v5, Landroid/content/Intent;

    .line 349
    const-string/jumbo v11, "com.android.server.devicestate.INTENT_ACTION_CANCEL_STATE"

    .line 352
    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    iget-object v11, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 360
    move-result-object v11

    .line 361
    invoke-virtual {v5, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    move-result-object v5

    .line 365
    iget-object v11, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 367
    invoke-static {v11, v8, v5, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 370
    move-result-object v15

    .line 371
    iget-object v3, v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationContent:Ljava/lang/String;

    .line 373
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 376
    move-result-object v5

    .line 377
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 380
    move-result-object v12

    .line 381
    iget-object v3, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 383
    const v5, 0x104045d

    .line 386
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 389
    move-result-object v16

    .line 390
    iget-object v10, v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->name:Ljava/lang/String;

    .line 392
    iget-object v11, v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationTitle:Ljava/lang/String;

    .line 394
    const/4 v13, 0x1

    .line 395
    const v14, 0x108041c

    .line 398
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 401
    goto :goto_2

    .line 402
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 404
    const-string v6, "Cannot determine the requesting app name when showing state active notification. uid="

    .line 406
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    const-string v6, ", state="

    .line 414
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    move-result-object v3

    .line 424
    const-string v5, "DeviceStateNotificationController"

    .line 426
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_8
    :goto_2
    invoke-virtual {v2}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 432
    move-result v3

    .line 433
    iget-object v5, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 435
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 438
    move-result-object v5

    .line 439
    check-cast v5, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 441
    iget-object v6, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 443
    if-nez v5, :cond_9

    .line 445
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    .line 447
    const/4 v1, 0x2

    .line 448
    invoke-direct {v0, v2, v1}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 451
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    goto :goto_4

    .line 455
    :cond_9
    if-ne v1, v4, :cond_a

    .line 457
    if-nez v3, :cond_b

    .line 459
    iget-object v1, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 461
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 464
    move-result v1

    .line 465
    if-nez v1, :cond_b

    .line 467
    iget-object v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 469
    invoke-virtual {v5, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Landroid/os/IBinder;)V

    .line 472
    goto :goto_3

    .line 473
    :cond_a
    iget-object v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 475
    invoke-virtual {v5, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestCanceledAsync(Landroid/os/IBinder;)V

    .line 478
    :cond_b
    :goto_3
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    .line 480
    const/4 v1, 0x2

    .line 481
    invoke-direct {v0, v2, v1}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 484
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 487
    :goto_4
    return-void

    .line 488
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    .line 492
    const-string v3, "Unknown OverrideRest type: "

    .line 494
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    iget v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestType:I

    .line 499
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    move-result-object v0

    .line 506
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 509
    throw v1
.end method
