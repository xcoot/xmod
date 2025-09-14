.class public final Lcom/android/server/locales/LocaleManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBinderService:Landroid/app/ILocaleManager;


# direct methods
.method public constructor <init>(Landroid/app/ILocaleManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerShellCommand;->mBinderService:Landroid/app/ILocaleManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const-string v2, "--locales"

    .line 7
    const/4 v6, -0x1

    .line 8
    const-string v7, "--user"

    .line 10
    if-nez v0, :cond_0

    .line 12
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_0
    const-string v8, "]"

    .line 19
    const-string v9, " are ["

    .line 21
    const-string v10, " for user "

    .line 23
    const-string v11, "Unknown locales: "

    .line 25
    const-string v12, "-"

    .line 27
    const-string v13, " for userId "

    .line 29
    const-string v14, "Unknown package "

    .line 31
    const-string v15, "Error: no package specified"

    .line 33
    const-string v3, "Unknown option: "

    .line 35
    const-string v4, "Remote Exception: "

    .line 37
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 40
    move-result v16

    .line 41
    sparse-switch v16, :sswitch_data_0

    .line 44
    :goto_0
    move v5, v6

    .line 45
    goto :goto_1

    .line 46
    :sswitch_0
    const-string/jumbo v5, "set-app-locales"

    .line 49
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v5, 0x3

    .line 57
    goto :goto_1

    .line 58
    :sswitch_1
    const-string/jumbo v5, "get-app-locales"

    .line 61
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_2

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 v5, 0x2

    .line 69
    goto :goto_1

    .line 70
    :sswitch_2
    const-string/jumbo v5, "get-app-localeconfig"

    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v5

    .line 77
    if-nez v5, :cond_3

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    const/4 v5, 0x1

    .line 81
    goto :goto_1

    .line 82
    :sswitch_3
    const-string/jumbo v5, "set-app-localeconfig"

    .line 85
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_4

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const/4 v5, 0x0

    .line 93
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 96
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 99
    move-result v0

    .line 100
    return v0

    .line 101
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 104
    move-result-object v0

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 108
    move-result-object v5

    .line 109
    if-eqz v5, :cond_d

    .line 111
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 114
    move-result v0

    .line 115
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 118
    move-result-object v8

    .line 119
    :goto_2
    const/4 v9, 0x0

    .line 120
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 123
    move-result-object v10

    .line 124
    if-nez v10, :cond_5

    .line 126
    :try_start_0
    iget-object v2, v1, Lcom/android/server/locales/LocaleManagerShellCommand;->mBinderService:Landroid/app/ILocaleManager;

    .line 128
    invoke-interface {v2, v5, v0, v8, v9}, Landroid/app/ILocaleManager;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    goto :goto_5

    .line 132
    :catch_0
    move-exception v0

    .line 133
    goto :goto_4

    .line 134
    :catch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 137
    move-result-object v1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    goto :goto_5

    .line 160
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 163
    move-result-object v1

    .line 164
    invoke-static {v4, v0, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 167
    :goto_5
    const/4 v5, 0x0

    .line 168
    goto/16 :goto_8

    .line 170
    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 173
    move-result v15

    .line 174
    sparse-switch v15, :sswitch_data_1

    .line 177
    :goto_6
    move v15, v6

    .line 178
    goto :goto_7

    .line 179
    :sswitch_4
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result v15

    .line 183
    if-nez v15, :cond_6

    .line 185
    goto :goto_6

    .line 186
    :cond_6
    const/4 v15, 0x2

    .line 187
    goto :goto_7

    .line 188
    :sswitch_5
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v15

    .line 192
    if-nez v15, :cond_7

    .line 194
    goto :goto_6

    .line 195
    :cond_7
    const/4 v15, 0x1

    .line 196
    goto :goto_7

    .line 197
    :sswitch_6
    const-string v15, "--delegate"

    .line 199
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    move-result v15

    .line 203
    if-nez v15, :cond_8

    .line 205
    goto :goto_6

    .line 206
    :cond_8
    const/4 v15, 0x0

    .line 207
    :goto_7
    packed-switch v15, :pswitch_data_1

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 212
    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    move-result-object v1

    .line 216
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 219
    throw v0

    .line 220
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 223
    move-result-object v8

    .line 224
    if-nez v8, :cond_9

    .line 226
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 229
    move-result-object v8

    .line 230
    goto :goto_3

    .line 231
    :cond_9
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 234
    move-result v10

    .line 235
    if-nez v10, :cond_a

    .line 237
    invoke-static {v8}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 240
    move-result-object v8

    .line 241
    goto :goto_3

    .line 242
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 244
    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    move-result-object v1

    .line 248
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 251
    throw v0

    .line 252
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 255
    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 259
    move-result v0

    .line 260
    goto/16 :goto_3

    .line 262
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 265
    move-result-object v9

    .line 266
    if-nez v9, :cond_b

    .line 268
    goto/16 :goto_2

    .line 270
    :cond_b
    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 273
    move-result v10

    .line 274
    if-nez v10, :cond_c

    .line 276
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 279
    move-result v9

    .line 280
    goto/16 :goto_3

    .line 282
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 284
    const-string v1, "Unknown source: "

    .line 286
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    move-result-object v1

    .line 290
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 293
    throw v0

    .line 294
    :cond_d
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    move v5, v6

    .line 298
    :goto_8
    return v5

    .line 299
    :pswitch_4
    const-string v0, "Locales for "

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 304
    move-result-object v2

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 308
    move-result-object v5

    .line 309
    if-eqz v5, :cond_10

    .line 311
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 314
    move-result v2

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 318
    move-result-object v6

    .line 319
    if-nez v6, :cond_e

    .line 321
    goto :goto_9

    .line 322
    :cond_e
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_f

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 331
    move-result-object v2

    .line 332
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 335
    move-result v2

    .line 336
    :goto_9
    :try_start_1
    iget-object v3, v1, Lcom/android/server/locales/LocaleManagerShellCommand;->mBinderService:Landroid/app/ILocaleManager;

    .line 338
    invoke-interface {v3, v5, v2}, Landroid/app/ILocaleManager;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    .line 341
    move-result-object v3

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 345
    move-result-object v6

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    .line 348
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 380
    goto :goto_b

    .line 381
    :catch_2
    move-exception v0

    .line 382
    goto :goto_a

    .line 383
    :catch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 386
    move-result-object v0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    .line 389
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    goto :goto_b

    .line 409
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 412
    move-result-object v1

    .line 413
    invoke-static {v4, v0, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 416
    :goto_b
    const/4 v5, 0x0

    .line 417
    goto :goto_c

    .line 418
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 420
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    move-result-object v1

    .line 424
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 427
    throw v0

    .line 428
    :cond_10
    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    move v5, v6

    .line 432
    :goto_c
    return v5

    .line 433
    :pswitch_5
    const-string v0, "LocaleConfig for "

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 438
    move-result-object v2

    .line 439
    if-eqz v2, :cond_15

    .line 441
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 444
    move-result v5

    .line 445
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 448
    move-result-object v6

    .line 449
    if-nez v6, :cond_11

    .line 451
    goto :goto_d

    .line 452
    :cond_11
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    move-result v5

    .line 456
    if-eqz v5, :cond_14

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 461
    move-result-object v3

    .line 462
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 465
    move-result v5

    .line 466
    :goto_d
    :try_start_2
    iget-object v3, v1, Lcom/android/server/locales/LocaleManagerShellCommand;->mBinderService:Landroid/app/ILocaleManager;

    .line 468
    invoke-interface {v3, v2, v5}, Landroid/app/ILocaleManager;->getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;

    .line 471
    move-result-object v3

    .line 472
    if-nez v3, :cond_12

    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 477
    move-result-object v3

    .line 478
    new-instance v6, Ljava/lang/StringBuilder;

    .line 480
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    const-string v0, " is null"

    .line 494
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    goto :goto_f

    .line 505
    :catch_4
    move-exception v0

    .line 506
    goto :goto_e

    .line 507
    :cond_12
    invoke-virtual {v3}, Landroid/app/LocaleConfig;->getSupportedLocales()Landroid/os/LocaleList;

    .line 510
    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 511
    const-string v3, "Locales within the LocaleConfig for "

    .line 513
    if-nez v0, :cond_13

    .line 515
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 518
    move-result-object v0

    .line 519
    new-instance v6, Ljava/lang/StringBuilder;

    .line 521
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    const-string v2, " are null"

    .line 535
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    move-result-object v2

    .line 542
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    goto :goto_f

    .line 546
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 549
    move-result-object v6

    .line 550
    new-instance v7, Ljava/lang/StringBuilder;

    .line 552
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 570
    move-result-object v0

    .line 571
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 580
    move-result-object v0

    .line 581
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 584
    goto :goto_f

    .line 585
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 588
    move-result-object v1

    .line 589
    invoke-static {v4, v0, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 592
    :goto_f
    const/4 v5, 0x0

    .line 593
    goto :goto_10

    .line 594
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 596
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 599
    move-result-object v1

    .line 600
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 603
    throw v0

    .line 604
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 607
    move-result-object v0

    .line 608
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    move v5, v6

    .line 612
    :goto_10
    return v5

    .line 613
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 616
    move-result-object v0

    .line 617
    if-eqz v0, :cond_1d

    .line 619
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 622
    move-result v5

    .line 623
    const/4 v8, 0x0

    .line 624
    :goto_11
    move-object v6, v8

    .line 625
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 628
    move-result-object v9

    .line 629
    if-nez v9, :cond_17

    .line 631
    if-nez v6, :cond_16

    .line 633
    goto :goto_13

    .line 634
    :cond_16
    :try_start_4
    new-instance v8, Landroid/app/LocaleConfig;

    .line 636
    invoke-direct {v8, v6}, Landroid/app/LocaleConfig;-><init>(Landroid/os/LocaleList;)V

    .line 639
    :goto_13
    iget-object v2, v1, Lcom/android/server/locales/LocaleManagerShellCommand;->mBinderService:Landroid/app/ILocaleManager;

    .line 641
    invoke-interface {v2, v0, v5, v8}, Landroid/app/ILocaleManager;->setOverrideLocaleConfig(Ljava/lang/String;ILandroid/app/LocaleConfig;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    .line 644
    goto :goto_14

    .line 645
    :catch_5
    move-exception v0

    .line 646
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 649
    move-result-object v1

    .line 650
    invoke-static {v4, v0, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 653
    :goto_14
    const/4 v5, 0x0

    .line 654
    goto :goto_15

    .line 655
    :cond_17
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 658
    move-result v10

    .line 659
    if-nez v10, :cond_1c

    .line 661
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 664
    move-result v6

    .line 665
    if-eqz v6, :cond_1b

    .line 667
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 670
    move-result-object v6

    .line 671
    if-nez v6, :cond_18

    .line 673
    goto :goto_11

    .line 674
    :cond_18
    const-string/jumbo v9, "empty"

    .line 677
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 680
    move-result v9

    .line 681
    if-eqz v9, :cond_19

    .line 683
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 686
    move-result-object v6

    .line 687
    goto :goto_12

    .line 688
    :cond_19
    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 691
    move-result v9

    .line 692
    if-nez v9, :cond_1a

    .line 694
    invoke-static {v6}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 697
    move-result-object v6

    .line 698
    goto :goto_12

    .line 699
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 701
    invoke-virtual {v11, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 704
    move-result-object v1

    .line 705
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 708
    throw v0

    .line 709
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 711
    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 714
    move-result-object v1

    .line 715
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 718
    throw v0

    .line 719
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 722
    move-result-object v5

    .line 723
    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 726
    move-result v5

    .line 727
    goto :goto_12

    .line 728
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 731
    move-result-object v0

    .line 732
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    move v5, v6

    .line 736
    :goto_15
    return v5

    .line 737
    :sswitch_data_0
    .sparse-switch
        -0x3245d7ad -> :sswitch_3
        -0xddbe421 -> :sswitch_2
        0x30dbb9b6 -> :sswitch_1
        0x6724b4c2 -> :sswitch_0
    .end sparse-switch

    .line 755
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 767
    :sswitch_data_1
    .sparse-switch
        0x31c64325 -> :sswitch_6
        0x4f7b216b -> :sswitch_5
        0x66c823b9 -> :sswitch_4
    .end sparse-switch

    .line 781
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Locale manager (locale) shell commands:"

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string v0, "  help"

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string v0, "      Print this help text."

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    const-string v0, "  set-app-locales <PACKAGE_NAME> [--user <USER_ID>] [--locales <LOCALE_INFO>][--delegate <FROM_DELEGATE>]"

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v0, "      Set the locales for the specified app."

    .line 27
    const-string v1, "      --user <USER_ID>: apply for the given user, the current user is used when unspecified."

    .line 29
    const-string v2, "      --locales <LOCALE_INFO>: The language tags of locale to be included as a single String separated by commas."

    .line 31
    const-string v3, "                 eg. en,en-US,hi "

    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "                 Empty locale list is used when unspecified."

    .line 38
    const-string v4, "      --delegate <FROM_DELEGATE>: The locales are set from a delegate, the value could be true or false. false is the default when unspecified."

    .line 40
    const-string v5, "  get-app-locales <PACKAGE_NAME> [--user <USER_ID>]"

    .line 42
    const-string v6, "      Get the locales for the specified app."

    .line 44
    invoke-static {p0, v0, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "      --user <USER_ID>: get for the given user, the current user is used when unspecified."

    .line 49
    const-string v4, "  set-app-localeconfig <PACKAGE_NAME> [--user <USER_ID>] [--locales <LOCALE_INFO>]"

    .line 51
    const-string v5, "      Set the override LocaleConfig for the specified app."

    .line 53
    invoke-static {p0, v0, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "                 Empty locale list is used when typing a \'empty\' word"

    .line 58
    const-string v4, "                 NULL is used when unspecified."

    .line 60
    invoke-static {p0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "  get-app-localeconfig <PACKAGE_NAME> [--user <USER_ID>]"

    .line 65
    const-string v2, "      Get the locales within the override LocaleConfig for the specified app."

    .line 67
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
