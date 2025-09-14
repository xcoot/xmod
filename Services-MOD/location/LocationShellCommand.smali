.class public final Lcom/android/server/location/LocationShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-object p1, p2

    .line 10
    check-cast p1, Lcom/android/server/location/LocationManagerService;

    .line 12
    iput-object p2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 14
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string v2, "--accuracy"

    .line 7
    const/4 v10, 0x0

    .line 8
    const/4 v11, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 11
    invoke-virtual {v0, v11}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const-string/jumbo v12, "command only recognized on automotive devices"

    .line 19
    const-string v13, "--user"

    .line 21
    const/4 v14, -0x3

    .line 22
    const-string v15, "android.hardware.type.automotive"

    .line 24
    const-string v3, "Unknown option: "

    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 29
    move-result v16

    .line 30
    sparse-switch v16, :sswitch_data_0

    .line 33
    :goto_0
    const/4 v4, -0x1

    .line 34
    goto :goto_1

    .line 35
    :sswitch_0
    const-string/jumbo v4, "is-adas-gnss-location-enabled"

    .line 38
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v4, 0x6

    .line 46
    goto :goto_1

    .line 47
    :sswitch_1
    const-string/jumbo v4, "set-location-enabled"

    .line 50
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v4, 0x5

    .line 58
    goto :goto_1

    .line 59
    :sswitch_2
    const-string/jumbo v4, "set-adas-gnss-location-enabled"

    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_3

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v4, 0x4

    .line 70
    goto :goto_1

    .line 71
    :sswitch_3
    const-string/jumbo v4, "set-automotive-gnss-suspended"

    .line 74
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_4

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    const/4 v4, 0x3

    .line 82
    goto :goto_1

    .line 83
    :sswitch_4
    const-string/jumbo v4, "is-automotive-gnss-suspended"

    .line 86
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_5

    .line 92
    goto :goto_0

    .line 93
    :cond_5
    const/4 v4, 0x2

    .line 94
    goto :goto_1

    .line 95
    :sswitch_5
    const-string/jumbo v4, "providers"

    .line 98
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_6

    .line 104
    goto :goto_0

    .line 105
    :cond_6
    const/4 v4, 0x1

    .line 106
    goto :goto_1

    .line 107
    :sswitch_6
    const-string/jumbo v4, "is-location-enabled"

    .line 110
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v4

    .line 114
    if-nez v4, :cond_7

    .line 116
    goto :goto_0

    .line 117
    :cond_7
    move v4, v10

    .line 118
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 121
    invoke-virtual/range {p0 .. p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    .line 124
    move-result v0

    .line 125
    return v0

    .line 126
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_a

    .line 138
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    if-nez v1, :cond_8

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 147
    move-result-object v1

    .line 148
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 150
    invoke-virtual {v0, v14}, Lcom/android/server/location/LocationManagerService;->isAdasGnssLocationEnabledForUser(I)Z

    .line 153
    move-result v0

    .line 154
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 157
    return v10

    .line 158
    :cond_8
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_9

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 167
    move-result-object v1

    .line 168
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 171
    move-result v14

    .line 172
    goto :goto_2

    .line 173
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 175
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    throw v0

    .line 183
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 185
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 188
    throw v0

    .line 189
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 192
    move-result-object v1

    .line 193
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 196
    move-result v1

    .line 197
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 200
    move-result-object v2

    .line 201
    if-nez v2, :cond_b

    .line 203
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 205
    invoke-virtual {v0, v1, v14}, Lcom/android/server/location/LocationManagerService;->setLocationEnabledForUser(ZI)V

    .line 208
    return v10

    .line 209
    :cond_b
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_c

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 218
    move-result-object v2

    .line 219
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 222
    move-result v14

    .line 223
    goto :goto_3

    .line 224
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 226
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    move-result-object v1

    .line 230
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 233
    throw v0

    .line 234
    :pswitch_2
    iget-object v1, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v1, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_f

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 249
    move-result-object v1

    .line 250
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 253
    move-result v1

    .line 254
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 257
    move-result-object v2

    .line 258
    if-nez v2, :cond_d

    .line 260
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 262
    invoke-virtual {v0, v1, v14}, Lcom/android/server/location/LocationManagerService;->setAdasGnssLocationEnabledForUser(ZI)V

    .line 265
    return v10

    .line 266
    :cond_d
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    move-result v4

    .line 270
    if-eqz v4, :cond_e

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 275
    move-result-object v2

    .line 276
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 279
    move-result v14

    .line 280
    goto :goto_4

    .line 281
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 283
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 286
    move-result-object v1

    .line 287
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 290
    throw v0

    .line 291
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 293
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 296
    throw v0

    .line 297
    :pswitch_3
    iget-object v1, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 299
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v1, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_10

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 312
    move-result-object v1

    .line 313
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 316
    move-result v1

    .line 317
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 319
    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService;->setAutomotiveGnssSuspended(Z)V

    .line 322
    return v10

    .line 323
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 325
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 328
    throw v0

    .line 329
    :pswitch_4
    iget-object v1, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 331
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v1, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_11

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 344
    move-result-object v1

    .line 345
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 347
    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService;->isAutomotiveGnssSuspended()Z

    .line 350
    move-result v0

    .line 351
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 354
    return v10

    .line 355
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 357
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 360
    throw v0

    .line 361
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    const-string v4, ","

    .line 370
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 373
    move-result v12

    .line 374
    sparse-switch v12, :sswitch_data_1

    .line 377
    :goto_5
    const/4 v12, -0x1

    .line 378
    goto :goto_6

    .line 379
    :sswitch_7
    const-string/jumbo v12, "send-extra-command"

    .line 382
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    move-result v12

    .line 386
    if-nez v12, :cond_12

    .line 388
    goto :goto_5

    .line 389
    :cond_12
    const/4 v12, 0x4

    .line 390
    goto :goto_6

    .line 391
    :sswitch_8
    const-string v12, "add-test-provider"

    .line 393
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    move-result v12

    .line 397
    if-nez v12, :cond_13

    .line 399
    goto :goto_5

    .line 400
    :cond_13
    const/4 v12, 0x3

    .line 401
    goto :goto_6

    .line 402
    :sswitch_9
    const-string/jumbo v12, "set-test-provider-enabled"

    .line 405
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    move-result v12

    .line 409
    if-nez v12, :cond_14

    .line 411
    goto :goto_5

    .line 412
    :cond_14
    const/4 v12, 0x2

    .line 413
    goto :goto_6

    .line 414
    :sswitch_a
    const-string/jumbo v12, "set-test-provider-location"

    .line 417
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    move-result v12

    .line 421
    if-nez v12, :cond_15

    .line 423
    goto :goto_5

    .line 424
    :cond_15
    const/4 v12, 0x1

    .line 425
    goto :goto_6

    .line 426
    :sswitch_b
    const-string/jumbo v12, "remove-test-provider"

    .line 429
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    move-result v12

    .line 433
    if-nez v12, :cond_16

    .line 435
    goto :goto_5

    .line 436
    :cond_16
    move v12, v10

    .line 437
    :goto_6
    packed-switch v12, :pswitch_data_1

    .line 440
    invoke-virtual {v0, v1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    .line 443
    move-result v10

    .line 444
    goto/16 :goto_e

    .line 446
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 449
    move-result-object v1

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 453
    move-result-object v2

    .line 454
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 456
    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/location/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 459
    goto/16 :goto_e

    .line 461
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 464
    move-result-object v1

    .line 465
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 468
    move-result-object v3

    .line 469
    move-object v11, v3

    .line 470
    move v3, v10

    .line 471
    move v5, v3

    .line 472
    move v6, v5

    .line 473
    move v12, v6

    .line 474
    move v13, v12

    .line 475
    move v14, v13

    .line 476
    move v15, v14

    .line 477
    const/4 v7, 0x1

    .line 478
    const/4 v9, 0x1

    .line 479
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 482
    move-result-object v10

    .line 483
    if-nez v10, :cond_17

    .line 485
    new-instance v2, Landroid/location/provider/ProviderProperties$Builder;

    .line 487
    invoke-direct {v2}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    .line 490
    invoke-virtual {v2, v3}, Landroid/location/provider/ProviderProperties$Builder;->setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 493
    move-result-object v2

    .line 494
    invoke-virtual {v2, v12}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 497
    move-result-object v2

    .line 498
    invoke-virtual {v2, v13}, Landroid/location/provider/ProviderProperties$Builder;->setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v2, v14}, Landroid/location/provider/ProviderProperties$Builder;->setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 505
    move-result-object v2

    .line 506
    invoke-virtual {v2, v15}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 509
    move-result-object v2

    .line 510
    invoke-virtual {v2, v5}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 513
    move-result-object v2

    .line 514
    invoke-virtual {v2, v6}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 517
    move-result-object v2

    .line 518
    invoke-virtual {v2, v7}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {v2, v9}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    .line 525
    move-result-object v2

    .line 526
    invoke-virtual {v2}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    .line 529
    move-result-object v5

    .line 530
    iget-object v3, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 532
    iget-object v2, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 534
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 537
    move-result-object v7

    .line 538
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 540
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 543
    move-result-object v8

    .line 544
    move-object v4, v1

    .line 545
    move-object v6, v11

    .line 546
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/LocationManagerService;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :goto_8
    const/4 v10, 0x0

    .line 550
    goto/16 :goto_e

    .line 552
    :cond_17
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 555
    move-result v17

    .line 556
    sparse-switch v17, :sswitch_data_2

    .line 559
    :goto_9
    const/4 v8, -0x1

    .line 560
    goto/16 :goto_a

    .line 562
    :sswitch_c
    const-string v8, "--supportsSpeed"

    .line 564
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    move-result v8

    .line 568
    if-nez v8, :cond_18

    .line 570
    goto :goto_9

    .line 571
    :cond_18
    const/16 v8, 0x9

    .line 573
    goto/16 :goto_a

    .line 575
    :sswitch_d
    const-string v8, "--powerRequirement"

    .line 577
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 580
    move-result v8

    .line 581
    if-nez v8, :cond_19

    .line 583
    goto :goto_9

    .line 584
    :cond_19
    const/16 v8, 0x8

    .line 586
    goto :goto_a

    .line 587
    :sswitch_e
    const-string v8, "--requiresSatellite"

    .line 589
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    move-result v8

    .line 593
    if-nez v8, :cond_1a

    .line 595
    goto :goto_9

    .line 596
    :cond_1a
    const/4 v8, 0x7

    .line 597
    goto :goto_a

    .line 598
    :sswitch_f
    const-string v8, "--hasMonetaryCost"

    .line 600
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    move-result v8

    .line 604
    if-nez v8, :cond_1b

    .line 606
    goto :goto_9

    .line 607
    :cond_1b
    const/4 v8, 0x6

    .line 608
    goto :goto_a

    .line 609
    :sswitch_10
    const-string v8, "--requiresCell"

    .line 611
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    move-result v8

    .line 615
    if-nez v8, :cond_1c

    .line 617
    goto :goto_9

    .line 618
    :cond_1c
    const/4 v8, 0x5

    .line 619
    goto :goto_a

    .line 620
    :sswitch_11
    const-string v8, "--supportsAltitude"

    .line 622
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 625
    move-result v8

    .line 626
    if-nez v8, :cond_1d

    .line 628
    goto :goto_9

    .line 629
    :cond_1d
    const/4 v8, 0x4

    .line 630
    goto :goto_a

    .line 631
    :sswitch_12
    const-string v8, "--supportsBearing"

    .line 633
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 636
    move-result v8

    .line 637
    if-nez v8, :cond_1e

    .line 639
    goto :goto_9

    .line 640
    :cond_1e
    const/4 v8, 0x3

    .line 641
    goto :goto_a

    .line 642
    :sswitch_13
    const-string v8, "--extraAttributionTags"

    .line 644
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 647
    move-result v8

    .line 648
    if-nez v8, :cond_1f

    .line 650
    goto :goto_9

    .line 651
    :cond_1f
    const/4 v8, 0x2

    .line 652
    goto :goto_a

    .line 653
    :sswitch_14
    const-string v8, "--requiresNetwork"

    .line 655
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 658
    move-result v8

    .line 659
    if-nez v8, :cond_20

    .line 661
    goto :goto_9

    .line 662
    :cond_20
    const/4 v8, 0x1

    .line 663
    goto :goto_a

    .line 664
    :sswitch_15
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 667
    move-result v8

    .line 668
    if-nez v8, :cond_21

    .line 670
    goto :goto_9

    .line 671
    :cond_21
    const/4 v8, 0x0

    .line 672
    :goto_a
    packed-switch v8, :pswitch_data_2

    .line 675
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 677
    const-string v1, "Received unexpected option: "

    .line 679
    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 682
    move-result-object v1

    .line 683
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 686
    throw v0

    .line 687
    :pswitch_8
    const/4 v5, 0x1

    .line 688
    goto/16 :goto_7

    .line 690
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 693
    move-result-object v7

    .line 694
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 697
    move-result v7

    .line 698
    goto/16 :goto_7

    .line 700
    :pswitch_a
    const/4 v12, 0x1

    .line 701
    goto/16 :goto_7

    .line 703
    :pswitch_b
    const/4 v14, 0x1

    .line 704
    goto/16 :goto_7

    .line 706
    :pswitch_c
    const/4 v13, 0x1

    .line 707
    goto/16 :goto_7

    .line 709
    :pswitch_d
    const/4 v15, 0x1

    .line 710
    goto/16 :goto_7

    .line 712
    :pswitch_e
    const/4 v6, 0x1

    .line 713
    goto/16 :goto_7

    .line 715
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 718
    move-result-object v8

    .line 719
    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 722
    move-result-object v8

    .line 723
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 726
    move-result-object v11

    .line 727
    goto/16 :goto_7

    .line 729
    :pswitch_10
    const/4 v3, 0x1

    .line 730
    goto/16 :goto_7

    .line 732
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 735
    move-result-object v8

    .line 736
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 739
    move-result v9

    .line 740
    goto/16 :goto_7

    .line 742
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 745
    move-result-object v1

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 749
    move-result-object v2

    .line 750
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 753
    move-result v2

    .line 754
    iget-object v3, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 756
    iget-object v4, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 758
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 761
    move-result-object v4

    .line 762
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 764
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 767
    move-result-object v0

    .line 768
    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/android/server/location/LocationManagerService;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 771
    goto/16 :goto_8

    .line 773
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 776
    move-result-object v1

    .line 777
    new-instance v5, Landroid/location/Location;

    .line 779
    invoke-direct {v5, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 782
    const/high16 v6, 0x42c80000    # 100.0f

    .line 784
    invoke-virtual {v5, v6}, Landroid/location/Location;->setAccuracy(F)V

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 790
    move-result-wide v6

    .line 791
    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 794
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 797
    move-result-wide v6

    .line 798
    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 801
    const/4 v6, 0x0

    .line 802
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 805
    move-result-object v7

    .line 806
    if-nez v7, :cond_23

    .line 808
    if-eqz v6, :cond_22

    .line 810
    iget-object v2, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 812
    iget-object v3, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 814
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 817
    move-result-object v3

    .line 818
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 820
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 823
    move-result-object v0

    .line 824
    invoke-virtual {v2, v1, v5, v3, v0}, Lcom/android/server/location/LocationManagerService;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    goto/16 :goto_8

    .line 829
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 831
    const-string v1, "Option \"--location\" is required"

    .line 833
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 836
    throw v0

    .line 837
    :cond_23
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 840
    move-result v8

    .line 841
    sparse-switch v8, :sswitch_data_3

    .line 844
    :goto_c
    const/4 v8, -0x1

    .line 845
    goto :goto_d

    .line 846
    :sswitch_16
    const-string v8, "--location"

    .line 848
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 851
    move-result v8

    .line 852
    if-nez v8, :cond_24

    .line 854
    goto :goto_c

    .line 855
    :cond_24
    const/4 v8, 0x2

    .line 856
    goto :goto_d

    .line 857
    :sswitch_17
    const-string v8, "--time"

    .line 859
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 862
    move-result v8

    .line 863
    if-nez v8, :cond_25

    .line 865
    goto :goto_c

    .line 866
    :cond_25
    const/4 v8, 0x1

    .line 867
    goto :goto_d

    .line 868
    :sswitch_18
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 871
    move-result v8

    .line 872
    if-nez v8, :cond_26

    .line 874
    goto :goto_c

    .line 875
    :cond_26
    const/4 v8, 0x0

    .line 876
    :goto_d
    packed-switch v8, :pswitch_data_3

    .line 879
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 881
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 884
    move-result-object v1

    .line 885
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 888
    throw v0

    .line 889
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 892
    move-result-object v6

    .line 893
    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 896
    move-result-object v6

    .line 897
    array-length v7, v6

    .line 898
    const/4 v8, 0x2

    .line 899
    if-ne v7, v8, :cond_27

    .line 901
    const/4 v7, 0x0

    .line 902
    aget-object v9, v6, v7

    .line 904
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 907
    move-result-wide v9

    .line 908
    invoke-virtual {v5, v9, v10}, Landroid/location/Location;->setLatitude(D)V

    .line 911
    const/4 v7, 0x1

    .line 912
    aget-object v6, v6, v7

    .line 914
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 917
    move-result-wide v9

    .line 918
    invoke-virtual {v5, v9, v10}, Landroid/location/Location;->setLongitude(D)V

    .line 921
    move v6, v7

    .line 922
    goto :goto_b

    .line 923
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    .line 927
    const-string v2, "Location argument must be in the form of \"<LATITUDE>,<LONGITUDE>\", not "

    .line 929
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 932
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 935
    move-result-object v2

    .line 936
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 942
    move-result-object v1

    .line 943
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 946
    throw v0

    .line 947
    :pswitch_15
    const/4 v7, 0x1

    .line 948
    const/4 v8, 0x2

    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 952
    move-result-object v9

    .line 953
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 956
    move-result-wide v9

    .line 957
    invoke-virtual {v5, v9, v10}, Landroid/location/Location;->setTime(J)V

    .line 960
    goto/16 :goto_b

    .line 962
    :pswitch_16
    const/4 v7, 0x1

    .line 963
    const/4 v8, 0x2

    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 967
    move-result-object v9

    .line 968
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 971
    move-result v9

    .line 972
    invoke-virtual {v5, v9}, Landroid/location/Location;->setAccuracy(F)V

    .line 975
    goto/16 :goto_b

    .line 977
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 980
    move-result-object v1

    .line 981
    iget-object v2, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 983
    iget-object v3, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 985
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 988
    move-result-object v3

    .line 989
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 991
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 994
    move-result-object v0

    .line 995
    invoke-virtual {v2, v1, v3, v0}, Lcom/android/server/location/LocationManagerService;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    goto/16 :goto_8

    .line 1000
    :goto_e
    return v10

    .line 1001
    :goto_f
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 1004
    move-result-object v1

    .line 1005
    if-nez v1, :cond_28

    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1010
    move-result-object v1

    .line 1011
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 1013
    invoke-virtual {v0, v14}, Lcom/android/server/location/LocationManagerService;->isLocationEnabledForUser(I)Z

    .line 1016
    move-result v0

    .line 1017
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1020
    const/4 v2, 0x0

    .line 1021
    return v2

    .line 1022
    :cond_28
    const/4 v2, 0x0

    .line 1023
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1026
    move-result v4

    .line 1027
    if-eqz v4, :cond_29

    .line 1029
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 1032
    move-result-object v1

    .line 1033
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 1036
    move-result v14

    .line 1037
    goto :goto_f

    .line 1038
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1040
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1043
    move-result-object v1

    .line 1044
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1047
    throw v0

    .line 1048
    nop

    .line 1049
    :sswitch_data_0
    .sparse-switch
        -0x3f71c494 -> :sswitch_6
        -0x20a3475e -> :sswitch_5
        -0x1a7afff6 -> :sswitch_4
        -0x158a66be -> :sswitch_3
        -0x5102b3e -> :sswitch_2
        0x5c29e334 -> :sswitch_1
        0x61cd46fa -> :sswitch_0
    .end sparse-switch

    .line 1079
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1097
    :sswitch_data_1
    .sparse-switch
        -0x638384bd -> :sswitch_b
        -0x625a9a9f -> :sswitch_a
        -0x3ab9feb -> :sswitch_9
        0xae04a0 -> :sswitch_8
        0x7961b909 -> :sswitch_7
    .end sparse-switch

    .line 1119
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_17
        :pswitch_13
        :pswitch_12
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1133
    :sswitch_data_2
    .sparse-switch
        -0x7e1ee167 -> :sswitch_15
        -0x6a811300 -> :sswitch_14
        -0x57e7a758 -> :sswitch_13
        -0x563e8116 -> :sswitch_12
        -0x4734d51a -> :sswitch_11
        0x40bc37d0 -> :sswitch_10
        0x4c45a754 -> :sswitch_f
        0x5864ef8d -> :sswitch_e
        0x5f6d5b9e -> :sswitch_d
        0x7a12a683 -> :sswitch_c
    .end sparse-switch

    .line 1175
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 1199
    :sswitch_data_3
    .sparse-switch
        -0x7e1ee167 -> :sswitch_18
        0x4f7a886d -> :sswitch_17
        0x72400555 -> :sswitch_16
    .end sparse-switch

    .line 1213
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Location service commands:"

    .line 7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string v1, "  help or -h"

    .line 12
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string v1, "    Print this help text."

    .line 17
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    const-string v1, "  is-location-enabled [--user <USER_ID>]"

    .line 22
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v1, "    Gets the master location switch enabled state. If no user is specified,"

    .line 27
    const-string v2, "    the current user is assumed."

    .line 29
    const-string v3, "  set-location-enabled true|false [--user <USER_ID>]"

    .line 31
    const-string v4, "    Sets the master location switch enabled state. If no user is specified,"

    .line 33
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    move-result-object p0

    .line 45
    const-string v1, "android.hardware.type.automotive"

    .line 47
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_0

    .line 53
    const-string p0, "  is-adas-gnss-location-enabled [--user <USER_ID>]"

    .line 55
    const-string v1, "    Gets the ADAS GNSS location enabled state. If no user is specified,"

    .line 57
    const-string v3, "  set-adas-gnss-location-enabled true|false [--user <USER_ID>]"

    .line 59
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string p0, "    Sets the ADAS GNSS location enabled state. If no user is specified,"

    .line 64
    const-string v1, "  is-automotive-gnss-suspended"

    .line 66
    const-string v3, "    Gets the automotive GNSS suspended state."

    .line 68
    invoke-static {v0, p0, v2, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string p0, "  set-automotive-gnss-suspended true|false"

    .line 73
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    const-string p0, "    Sets the automotive GNSS suspended state."

    .line 78
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    :cond_0
    const-string p0, "  providers"

    .line 83
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    const-string p0, "    The providers command is followed by a subcommand, as listed below:"

    .line 88
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 94
    const-string p0, "    add-test-provider <PROVIDER> [--requiresNetwork] [--requiresSatellite]"

    .line 96
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const-string p0, "      [--requiresCell] [--hasMonetaryCost] [--supportsAltitude]"

    .line 101
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string p0, "      [--supportsSpeed] [--supportsBearing]"

    .line 106
    const-string v1, "      [--powerRequirement <POWER_REQUIREMENT>]"

    .line 108
    const-string v2, "      [--extraAttributionTags <TAG>,<TAG>,...]"

    .line 110
    const-string v3, "      Add the given test provider. Requires MOCK_LOCATION permissions which"

    .line 112
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string p0, "      can be enabled by running \"adb shell appops set <uid>"

    .line 117
    const-string v1, "      android:mock_location allow\". There are optional flags that can be"

    .line 119
    const-string v2, "      used to configure the provider properties and additional arguments. If"

    .line 121
    const-string v3, "      no flags are included, then default values will be used."

    .line 123
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string p0, "    remove-test-provider <PROVIDER>"

    .line 128
    const-string v1, "      Remove the given test provider."

    .line 130
    const-string v2, "    set-test-provider-enabled <PROVIDER> true|false"

    .line 132
    const-string v3, "      Sets the given test provider enabled state."

    .line 134
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string p0, "    set-test-provider-location <PROVIDER> --location <LATITUDE>,<LONGITUDE>"

    .line 139
    const-string v1, "      [--accuracy <ACCURACY>] [--time <TIME>]"

    .line 141
    const-string v2, "      Set location for given test provider. Accuracy and time are optional."

    .line 143
    const-string v3, "    send-extra-command <PROVIDER> <COMMAND>"

    .line 145
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string p0, "      Sends the given extra command to the given provider."

    .line 150
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 156
    const-string p0, "      Common commands that may be supported by the gps provider, depending on"

    .line 158
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    const-string p0, "      hardware and software configurations:"

    .line 163
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    const-string p0, "        delete_aiding_data - requests deletion of any predictive aiding data"

    .line 168
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    const-string p0, "        force_time_injection - requests NTP time injection"

    .line 173
    const-string v1, "        force_psds_injection - requests predictive aiding data injection"

    .line 175
    const-string v2, "        request_power_stats - requests GNSS power stats update"

    .line 177
    invoke-static {v0, p0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method
