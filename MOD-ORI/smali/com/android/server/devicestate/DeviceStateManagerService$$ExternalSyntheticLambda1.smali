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

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onStatusChanged(Lcom/android/server/devicestate/OverrideRequest;II)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget v3, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestType:I

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const-string v5, "Unknown request status: "

    .line 16
    .line 17
    const/4 v6, 0x2

    .line 18
    iget v7, v0, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    .line 19
    .line 20
    if-ne v3, v4, :cond_2

    .line 21
    .line 22
    if-eq v1, v4, :cond_1

    .line 23
    .line 24
    if-ne v1, v6, :cond_0

    .line 25
    .line 26
    iget-object v3, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_8

    .line 33
    .line 34
    iget-object v3, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-ne v3, v0, :cond_8

    .line 41
    .line 42
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iput-object v3, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    invoke-static {v1, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_1
    iget-object v1, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {v2, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->setBaseState(I)V

    .line 67
    .line 68
    .line 69
    invoke-static/range {p1 .. p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveBaseStateOverride:Ljava/util/Optional;

    .line 74
    .line 75
    iget-object v1, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Landroid/os/IBinder;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_4

    .line 89
    .line 90
    :cond_2
    if-nez v3, :cond_c

    .line 91
    .line 92
    const/high16 v3, 0x4000000

    .line 93
    .line 94
    const/4 v8, 0x0

    .line 95
    iget-object v9, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStateNotificationController:Lcom/android/server/devicestate/DeviceStateNotificationController;

    .line 96
    .line 97
    if-eq v1, v4, :cond_6

    .line 98
    .line 99
    if-ne v1, v6, :cond_5

    .line 100
    .line 101
    iget-object v5, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_8

    .line 108
    .line 109
    iget-object v5, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-ne v5, v0, :cond_8

    .line 116
    .line 117
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    iput-object v5, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 122
    .line 123
    iget-object v5, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 124
    .line 125
    invoke-virtual {v5}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-virtual {v9}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    if-nez v5, :cond_3

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    iget-object v5, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mHandler:Landroid/os/Handler;

    .line 141
    .line 142
    new-instance v10, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda1;

    .line 143
    .line 144
    invoke-direct {v10, v9}, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicestate/DeviceStateNotificationController;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    .line 149
    .line 150
    :goto_0
    and-int/lit8 v5, p3, 0x1

    .line 151
    .line 152
    if-ne v5, v4, :cond_4

    .line 153
    .line 154
    iget-object v3, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 155
    .line 156
    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    invoke-virtual {v9}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    .line 169
    .line 170
    if-eqz v3, :cond_8

    .line 171
    .line 172
    iget-object v5, v3, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationTitle:Ljava/lang/String;

    .line 173
    .line 174
    if-eqz v5, :cond_8

    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-lez v5, :cond_8

    .line 181
    .line 182
    const/4 v15, 0x0

    .line 183
    const/16 v16, 0x0

    .line 184
    .line 185
    iget-object v10, v3, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->name:Ljava/lang/String;

    .line 186
    .line 187
    iget-object v11, v3, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationTitle:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v12, v3, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationContent:Ljava/lang/String;

    .line 190
    .line 191
    const/4 v13, 0x0

    .line 192
    const v14, 0x10805f4

    .line 193
    .line 194
    .line 195
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_2

    .line 199
    .line 200
    :cond_4
    and-int/lit8 v5, p3, 0x2

    .line 201
    .line 202
    if-ne v5, v6, :cond_8

    .line 203
    .line 204
    iget-object v5, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 205
    .line 206
    invoke-virtual {v5}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    invoke-virtual {v9}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    .line 219
    .line 220
    if-eqz v5, :cond_8

    .line 221
    .line 222
    iget-object v6, v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationTitle:Ljava/lang/String;

    .line 223
    .line 224
    if-eqz v6, :cond_8

    .line 225
    .line 226
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-lez v6, :cond_8

    .line 231
    .line 232
    new-instance v6, Landroid/content/Intent;

    .line 233
    .line 234
    const-string v10, "android.settings.BATTERY_SAVER_SETTINGS"

    .line 235
    .line 236
    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-object v10, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 240
    .line 241
    invoke-static {v10, v8, v6, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 242
    .line 243
    .line 244
    move-result-object v15

    .line 245
    iget-object v3, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 246
    .line 247
    const v6, 0x104045c

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v16

    .line 254
    iget-object v11, v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationTitle:Ljava/lang/String;

    .line 255
    .line 256
    iget-object v12, v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationContent:Ljava/lang/String;

    .line 257
    .line 258
    iget-object v10, v5, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->name:Ljava/lang/String;

    .line 259
    .line 260
    const/4 v13, 0x0

    .line 261
    const v14, 0x10805f4

    .line 262
    .line 263
    .line 264
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_2

    .line 268
    .line 269
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 270
    .line 271
    invoke-static {v1, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw v0

    .line 279
    :cond_6
    invoke-static/range {p1 .. p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    iput-object v5, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 284
    .line 285
    iget-object v5, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    .line 286
    .line 287
    invoke-virtual {v5}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    invoke-virtual {v9}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    check-cast v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    .line 300
    .line 301
    if-eqz v6, :cond_8

    .line 302
    .line 303
    iget-object v10, v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationTitle:Ljava/lang/String;

    .line 304
    .line 305
    if-eqz v10, :cond_8

    .line 306
    .line 307
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 308
    .line 309
    .line 310
    move-result v10

    .line 311
    if-lez v10, :cond_8

    .line 312
    .line 313
    iget-object v10, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 314
    .line 315
    iget v11, v0, Lcom/android/server/devicestate/OverrideRequest;->mUid:I

    .line 316
    .line 317
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v10

    .line 321
    :try_start_0
    iget-object v12, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 322
    .line 323
    const-wide/16 v13, 0x0

    .line 324
    .line 325
    invoke-static {v13, v14}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 326
    .line 327
    .line 328
    move-result-object v13

    .line 329
    invoke-virtual {v12, v10, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 330
    .line 331
    .line 332
    move-result-object v10

    .line 333
    iget-object v12, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 334
    .line 335
    invoke-virtual {v10, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 336
    .line 337
    .line 338
    move-result-object v10

    .line 339
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 340
    .line 341
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

    .line 346
    .line 347
    new-instance v5, Landroid/content/Intent;

    .line 348
    .line 349
    const-string/jumbo v11, "com.android.server.devicestate.INTENT_ACTION_CANCEL_STATE"

    .line 350
    .line 351
    .line 352
    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget-object v11, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 356
    .line 357
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v11

    .line 361
    invoke-virtual {v5, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    iget-object v11, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 366
    .line 367
    invoke-static {v11, v8, v5, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 368
    .line 369
    .line 370
    move-result-object v15

    .line 371
    iget-object v3, v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationContent:Ljava/lang/String;

    .line 372
    .line 373
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v12

    .line 381
    iget-object v3, v9, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 382
    .line 383
    const v5, 0x104045d

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v16

    .line 390
    iget-object v10, v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->name:Ljava/lang/String;

    .line 391
    .line 392
    iget-object v11, v6, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationTitle:Ljava/lang/String;

    .line 393
    .line 394
    const/4 v13, 0x1

    .line 395
    const v14, 0x108041c

    .line 396
    .line 397
    .line 398
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    goto :goto_2

    .line 402
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string v6, "Cannot determine the requesting app name when showing state active notification. uid="

    .line 405
    .line 406
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v6, ", state="

    .line 413
    .line 414
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    const-string v5, "DeviceStateNotificationController"

    .line 425
    .line 426
    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    :cond_8
    :goto_2
    invoke-virtual {v2}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    iget-object v5, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 434
    .line 435
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    check-cast v5, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 440
    .line 441
    iget-object v6, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 442
    .line 443
    if-nez v5, :cond_9

    .line 444
    .line 445
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    .line 446
    .line 447
    const/4 v1, 0x2

    .line 448
    invoke-direct {v0, v2, v1}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    .line 453
    .line 454
    goto :goto_4

    .line 455
    :cond_9
    if-ne v1, v4, :cond_a

    .line 456
    .line 457
    if-nez v3, :cond_b

    .line 458
    .line 459
    iget-object v1, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 460
    .line 461
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-nez v1, :cond_b

    .line 466
    .line 467
    iget-object v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 468
    .line 469
    invoke-virtual {v5, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Landroid/os/IBinder;)V

    .line 470
    .line 471
    .line 472
    goto :goto_3

    .line 473
    :cond_a
    iget-object v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mToken:Landroid/os/IBinder;

    .line 474
    .line 475
    invoke-virtual {v5, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestCanceledAsync(Landroid/os/IBinder;)V

    .line 476
    .line 477
    .line 478
    :cond_b
    :goto_3
    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    .line 479
    .line 480
    const/4 v1, 0x2

    .line 481
    invoke-direct {v0, v2, v1}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    .line 486
    .line 487
    :goto_4
    return-void

    .line 488
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 489
    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    const-string v3, "Unknown OverrideRest type: "

    .line 493
    .line 494
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    iget v0, v0, Lcom/android/server/devicestate/OverrideRequest;->mRequestType:I

    .line 498
    .line 499
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    throw v1
.end method
