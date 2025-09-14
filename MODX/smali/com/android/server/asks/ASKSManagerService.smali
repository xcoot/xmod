.class public final Lcom/android/server/asks/ASKSManagerService;
.super Landroid/content/pm/IASKSManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mASKSDeltaPolicyVersion:Ljava/lang/String; = "00000000"

.field public static mASKSPolicyVersion:Ljava/lang/String; = "00000000"


# instance fields
.field public ASKS_UNKNOWN_LIMIT_CALLPEM:Z

.field public final CA_CERT_PATH:Ljava/lang/String;

.field public final CA_CERT_SYSTEM_PATH:Ljava/lang/String;

.field public final EE_CERT_FILE:Ljava/lang/String;

.field public final ROOT_CERT_FILE:Ljava/lang/String;

.field public final TYPE_MOBILE:I

.field public final TYPE_WIFI:I

.field public installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

.field public isFirstTime:Z

.field public final mASKSStates:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public final mFile:Landroid/util/AtomicFile;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mSessions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IASKSManager$Stub;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 13
    new-instance v2, Ljava/util/HashMap;

    .line 15
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 18
    iput-object v2, v1, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    .line 20
    const/4 v2, 0x1

    .line 21
    iput-boolean v2, v1, Lcom/android/server/asks/ASKSManagerService;->isFirstTime:Z

    .line 23
    const-string v3, "/system/etc/ASKS_ROOT_1.crt"

    .line 25
    iput-object v3, v1, Lcom/android/server/asks/ASKSManagerService;->ROOT_CERT_FILE:Ljava/lang/String;

    .line 27
    const-string v3, "/data/system/.aasa/AASApolicy/ASKS_INTER_"

    .line 29
    iput-object v3, v1, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_PATH:Ljava/lang/String;

    .line 31
    const-string v3, "/system/etc/ASKS_INTER_"

    .line 33
    iput-object v3, v1, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_SYSTEM_PATH:Ljava/lang/String;

    .line 35
    const-string v3, "/system/etc/ASKS_EDGE_1.crt"

    .line 37
    iput-object v3, v1, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    .line 39
    iput v2, v1, Lcom/android/server/asks/ASKSManagerService;->TYPE_WIFI:I

    .line 41
    const/4 v3, 0x2

    .line 42
    iput v3, v1, Lcom/android/server/asks/ASKSManagerService;->TYPE_MOBILE:I

    .line 44
    const/4 v4, 0x0

    .line 45
    iput-boolean v4, v1, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    .line 47
    move-object/from16 v5, p1

    .line 49
    iput-object v5, v1, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 51
    const-string/jumbo v5, "security.ASKS.version"

    .line 54
    const-string v6, "9.2 "

    .line 56
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string/jumbo v5, "security.ASKS.time_value"

    .line 62
    const-string v6, "00000000"

    .line 64
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v5, "security.ASKS.policy_version"

    .line 70
    sget-object v6, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 72
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v5, "security.ASKS.delta_policy_version"

    .line 78
    sget-object v6, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    .line 80
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v5, "security.ADP.version"

    .line 86
    const-string v6, "3.1"

    .line 88
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v5, "security.ADP.policy_version"

    .line 94
    const-string v6, "20230510"

    .line 96
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v5, "security.ASKS.smsfilter_enable"

    .line 102
    const-string/jumbo v6, "true"

    .line 105
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v5, "security.ASKS.smsfilter_target"

    .line 111
    const-string/jumbo v6, "false"

    .line 114
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isKorProject()Z

    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_0

    .line 123
    const-string/jumbo v5, "security.ASKS.safeinstall.enable"

    .line 126
    const-string/jumbo v6, "true"

    .line 129
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v5, "ASKSManager"

    .line 134
    const-string v6, "This is KR project. Enable SafeInstall KR."

    .line 136
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    goto :goto_0

    .line 140
    :cond_0
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isGlobalTargetProject()Z

    .line 143
    move-result v5

    .line 144
    if-eqz v5, :cond_1

    .line 146
    const-string/jumbo v5, "security.ASKS.safeinstall.enable"

    .line 149
    const-string/jumbo v6, "true"

    .line 152
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v5, "ASKSManager"

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    .line 159
    const-string v7, "This is "

    .line 161
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v7, "ro.boot.carrierid"

    .line 167
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object v7

    .line 171
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v7, " project. Enable SafeInstall Global"

    .line 176
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v6

    .line 183
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    goto :goto_0

    .line 187
    :cond_1
    const-string/jumbo v5, "security.ASKS.safeinstall.enable"

    .line 190
    const-string/jumbo v6, "false"

    .line 193
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v5, "ASKSManager"

    .line 198
    const-string v6, "This is not target of SafeInstall"

    .line 200
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    new-instance v5, Ljava/io/File;

    .line 205
    const-string v6, "/data/system/.aasa/asks.xml"

    .line 207
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 213
    move-result v6

    .line 214
    if-nez v6, :cond_3

    .line 216
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 219
    move-result-object v6

    .line 220
    if-eqz v6, :cond_2

    .line 222
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 225
    move-result-object v6

    .line 226
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 229
    move-result v6

    .line 230
    if-nez v6, :cond_2

    .line 232
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 235
    move-result-object v6

    .line 236
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 239
    goto :goto_1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    goto :goto_2

    .line 242
    :cond_2
    :goto_1
    new-instance v6, Lcom/android/server/asks/PolicyConvert;

    .line 244
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v7, Ljava/util/HashMap;

    .line 249
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 252
    iput-object v7, v6, Lcom/android/server/asks/PolicyConvert;->pkgInfos:Ljava/util/Map;

    .line 254
    const-string v7, "AASA_PolicyConvert "

    .line 256
    iput-object v7, v6, Lcom/android/server/asks/PolicyConvert;->TAG:Ljava/lang/String;

    .line 258
    sget-object v7, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 260
    invoke-virtual {v6, v7}, Lcom/android/server/asks/PolicyConvert;->convert(Ljava/lang/String;)Z

    .line 263
    move-result v6

    .line 264
    if-nez v6, :cond_3

    .line 266
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    move v6, v2

    .line 270
    goto :goto_3

    .line 271
    :goto_2
    new-instance v1, Ljava/lang/SecurityException;

    .line 273
    const-string/jumbo v2, "cannot create the file even it does not exist"

    .line 276
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    throw v1

    .line 280
    :cond_3
    move v6, v4

    .line 281
    :goto_3
    new-instance v7, Landroid/util/AtomicFile;

    .line 283
    const-string v8, "asks"

    .line 285
    invoke-direct {v7, v5, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 288
    iput-object v7, v1, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    .line 290
    const-string v5, "No existing asks rules "

    .line 292
    const-string v8, "AASA_ASKSManager"

    .line 294
    const-string/jumbo v9, "readStateInner() start"

    .line 297
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    monitor-enter v7

    .line 301
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 302
    const/4 v8, 0x0

    .line 303
    :try_start_2
    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 306
    move-result-object v5
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    :try_start_3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 310
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 313
    move-result-object v0

    .line 314
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 316
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 319
    move-result-object v9

    .line 320
    invoke-interface {v0, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 323
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 326
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 329
    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 330
    if-eq v9, v3, :cond_4

    .line 332
    if-eq v9, v2, :cond_4

    .line 334
    goto :goto_4

    .line 335
    :cond_4
    move v10, v4

    .line 336
    :goto_5
    if-eq v9, v2, :cond_9

    .line 338
    :try_start_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 341
    move-result-object v11

    .line 342
    if-eq v9, v3, :cond_5

    .line 344
    goto/16 :goto_6

    .line 346
    :cond_5
    const-string v9, "asks"

    .line 348
    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 351
    move-result v9

    .line 352
    if-eqz v9, :cond_6

    .line 354
    const-string/jumbo v9, "version"

    .line 357
    invoke-interface {v0, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    move-result-object v9

    .line 361
    if-eqz v9, :cond_8

    .line 363
    sput-object v9, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 365
    const-string v9, "AASA_ASKSManager"

    .line 367
    new-instance v11, Ljava/lang/StringBuilder;

    .line 369
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    const-string/jumbo v12, "policyVersion :"

    .line 375
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    sget-object v12, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 380
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    move-result-object v11

    .line 387
    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string/jumbo v9, "security.ASKS.policy_version"

    .line 393
    sget-object v11, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 395
    invoke-static {v9, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    goto :goto_6

    .line 399
    :catchall_0
    move-exception v0

    .line 400
    move v4, v10

    .line 401
    goto/16 :goto_a

    .line 403
    :catch_1
    move-exception v0

    .line 404
    goto/16 :goto_8

    .line 406
    :cond_6
    const-string/jumbo v9, "safeinstall"

    .line 409
    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 412
    move-result v9

    .line 413
    if-eqz v9, :cond_7

    .line 415
    const-string/jumbo v9, "delta"

    .line 418
    invoke-interface {v0, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 421
    move-result-object v9

    .line 422
    if-eqz v9, :cond_8

    .line 424
    sput-object v9, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    .line 426
    const-string v9, "AASA_ASKSManager"

    .line 428
    new-instance v11, Ljava/lang/StringBuilder;

    .line 430
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    const-string/jumbo v12, "safeInstall delta :"

    .line 436
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    sget-object v12, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    .line 441
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    move-result-object v11

    .line 448
    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string/jumbo v9, "security.ASKS.delta_policy_version"

    .line 454
    sget-object v11, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    .line 456
    invoke-static {v9, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    goto :goto_6

    .line 460
    :cond_7
    const-string/jumbo v9, "package"

    .line 463
    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 466
    move-result v9

    .line 467
    if-eqz v9, :cond_8

    .line 469
    const-string v9, "AASA_ASKSManager"

    .line 471
    new-instance v12, Ljava/lang/StringBuilder;

    .line 473
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    const-string/jumbo v13, "readState : "

    .line 479
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    move-result-object v11

    .line 489
    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 495
    move v10, v2

    .line 496
    :cond_8
    :goto_6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 499
    move-result v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 500
    goto/16 :goto_5

    .line 502
    :cond_9
    if-nez v10, :cond_a

    .line 504
    :try_start_6
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 506
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 509
    goto :goto_7

    .line 510
    :catchall_1
    move-exception v0

    .line 511
    goto/16 :goto_1a

    .line 513
    :cond_a
    :goto_7
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 516
    goto :goto_9

    .line 517
    :catchall_2
    move-exception v0

    .line 518
    goto :goto_a

    .line 519
    :catch_2
    move-exception v0

    .line 520
    move v10, v4

    .line 521
    :goto_8
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 524
    if-nez v10, :cond_a

    .line 526
    :try_start_9
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 528
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 531
    goto :goto_7

    .line 532
    :catch_3
    :goto_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 533
    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 534
    goto :goto_b

    .line 535
    :catchall_3
    move-exception v0

    .line 536
    goto/16 :goto_1b

    .line 538
    :goto_a
    if-nez v4, :cond_b

    .line 540
    :try_start_b
    iget-object v2, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 542
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 545
    :cond_b
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 548
    :catch_4
    :try_start_d
    throw v0

    .line 549
    :catch_5
    const-string v0, "AASA_ASKSManager"

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    .line 553
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    iget-object v5, v1, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    .line 558
    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 561
    move-result-object v5

    .line 562
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 565
    const-string v5, "; starting empty"

    .line 567
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    move-result-object v3

    .line 574
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 578
    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 579
    :goto_b
    new-instance v0, Ljava/io/File;

    .line 581
    const-string v3, "/system/etc/"

    .line 583
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 586
    new-instance v5, Lcom/android/server/asks/ASKSManagerService$1;

    .line 588
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 591
    invoke-virtual {v0, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 594
    move-result-object v5

    .line 595
    const-string v7, "AASA_ASKSManager"

    .line 597
    if-nez v5, :cond_c

    .line 599
    const-string v0, "There are no target file in /system/etc/"

    .line 601
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    move v14, v4

    .line 605
    goto/16 :goto_17

    .line 607
    :cond_c
    new-instance v0, Ljava/io/File;

    .line 609
    const-string v9, "/data/system/.aasa/AASApolicy/"

    .line 611
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 614
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 617
    move-result v10

    .line 618
    if-nez v10, :cond_d

    .line 620
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 623
    :cond_d
    const-string v0, "/data/system/.aasa/asks.xml"

    .line 625
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 628
    move-result v10

    .line 629
    if-eqz v10, :cond_f

    .line 631
    const-string v10, "ASKS file exists."

    .line 633
    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v10, "ASKS_FILE"

    .line 638
    invoke-static {v10, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 641
    move-result-object v10

    .line 642
    sput-object v10, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 644
    const-string v10, "ASKS_DELTA"

    .line 646
    invoke-static {v10, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 649
    move-result-object v0

    .line 650
    sput-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    .line 652
    const-string v10, "00000000"

    .line 654
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 657
    move-result v0

    .line 658
    if-eqz v0, :cond_e

    .line 660
    sget-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 662
    sput-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    .line 664
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 666
    const-string/jumbo v10, "policy version : "

    .line 669
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 672
    sget-object v10, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 674
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    const-string v10, "::"

    .line 679
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    sget-object v10, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    .line 684
    invoke-static {v0, v10, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string/jumbo v0, "security.ASKS.policy_version"

    .line 690
    sget-object v10, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 692
    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string/jumbo v0, "security.ASKS.delta_policy_version"

    .line 698
    sget-object v10, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    .line 700
    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_f
    sget-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 705
    array-length v10, v5

    .line 706
    move-object v11, v0

    .line 707
    move v12, v4

    .line 708
    :goto_c
    if-ge v12, v10, :cond_1c

    .line 710
    aget-object v13, v5, v12

    .line 712
    new-instance v0, Ljava/io/File;

    .line 714
    invoke-static {v3, v13}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 717
    move-result-object v14

    .line 718
    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 721
    new-instance v14, Ljava/io/File;

    .line 723
    invoke-static {v9, v13}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 726
    move-result-object v15

    .line 727
    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 733
    move-result v15

    .line 734
    if-eqz v15, :cond_1b

    .line 736
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 739
    move-result-object v15

    .line 740
    const-string v2, "ASKS_RULE_FILE"

    .line 742
    invoke-static {v2, v15}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 745
    move-result-object v15

    .line 746
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    .line 749
    move-result v16

    .line 750
    const-string v8, "RPAB"

    .line 752
    if-eqz v16, :cond_12

    .line 754
    new-instance v4, Ljava/lang/StringBuilder;

    .line 756
    move-object/from16 v17, v3

    .line 758
    const-string v3, "There are already exist xml files in /.aasa/"

    .line 760
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    move-result-object v3

    .line 770
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 776
    move-result-object v3

    .line 777
    invoke-static {v2, v3}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 780
    move-result-object v2

    .line 781
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 784
    move-result v3

    .line 785
    const/16 v4, 0x8

    .line 787
    if-ge v3, v4, :cond_10

    .line 789
    const-string v3, "20"

    .line 791
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 794
    move-result-object v2

    .line 795
    :cond_10
    invoke-static {v15, v2}, Lcom/android/server/asks/ASKSManagerService;->isVersionGreaterThan(Ljava/lang/String;Ljava/lang/String;)Z

    .line 798
    move-result v3

    .line 799
    if-eqz v3, :cond_13

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    .line 803
    const-string v3, "Skip, Current "

    .line 805
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    const-string v3, " rule is latest version."

    .line 813
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 819
    move-result-object v0

    .line 820
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 826
    move-result v0

    .line 827
    if-nez v0, :cond_11

    .line 829
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 832
    move-result v0

    .line 833
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 836
    move-result v3

    .line 837
    if-le v0, v3, :cond_11

    .line 839
    move-object v11, v2

    .line 840
    :cond_11
    move-object/from16 v18, v5

    .line 842
    goto/16 :goto_15

    .line 844
    :cond_12
    move-object/from16 v17, v3

    .line 846
    :cond_13
    const/16 v2, 0x800

    .line 848
    new-array v3, v2, [B

    .line 850
    :try_start_f
    new-instance v4, Ljava/io/FileInputStream;

    .line 852
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 855
    :try_start_10
    new-instance v2, Ljava/io/FileOutputStream;

    .line 857
    invoke-direct {v2, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 860
    move-object/from16 v18, v5

    .line 862
    :goto_d
    const/16 v0, 0x800

    .line 864
    const/4 v14, 0x0

    .line 865
    :try_start_11
    invoke-virtual {v4, v3, v14, v0}, Ljava/io/FileInputStream;->read([BII)I

    .line 868
    move-result v5

    .line 869
    const/4 v0, -0x1

    .line 870
    if-eq v5, v0, :cond_14

    .line 872
    invoke-virtual {v2, v3, v14, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 875
    goto :goto_d

    .line 876
    :catchall_4
    move-exception v0

    .line 877
    move-object v1, v0

    .line 878
    move-object v8, v4

    .line 879
    goto/16 :goto_11

    .line 881
    :catch_6
    move-exception v0

    .line 882
    goto :goto_e

    .line 883
    :catch_7
    move-exception v0

    .line 884
    goto :goto_f

    .line 885
    :cond_14
    :try_start_12
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 888
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 891
    goto :goto_10

    .line 892
    :catch_8
    move-exception v0

    .line 893
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 896
    goto :goto_10

    .line 897
    :catchall_5
    move-exception v0

    .line 898
    move-object v1, v0

    .line 899
    move-object v8, v4

    .line 900
    const/4 v2, 0x0

    .line 901
    goto :goto_11

    .line 902
    :catch_9
    move-exception v0

    .line 903
    move-object/from16 v18, v5

    .line 905
    const/4 v2, 0x0

    .line 906
    goto :goto_e

    .line 907
    :catch_a
    move-exception v0

    .line 908
    move-object/from16 v18, v5

    .line 910
    const/4 v2, 0x0

    .line 911
    goto :goto_f

    .line 912
    :catchall_6
    move-exception v0

    .line 913
    move-object v1, v0

    .line 914
    const/4 v2, 0x0

    .line 915
    const/4 v8, 0x0

    .line 916
    goto :goto_11

    .line 917
    :catch_b
    move-exception v0

    .line 918
    move-object/from16 v18, v5

    .line 920
    const/4 v2, 0x0

    .line 921
    const/4 v4, 0x0

    .line 922
    goto :goto_e

    .line 923
    :catch_c
    move-exception v0

    .line 924
    move-object/from16 v18, v5

    .line 926
    const/4 v2, 0x0

    .line 927
    const/4 v4, 0x0

    .line 928
    goto :goto_f

    .line 929
    :goto_e
    :try_start_13
    const-string v3, "IOException"

    .line 931
    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 937
    if-eqz v4, :cond_15

    .line 939
    :try_start_14
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 942
    :cond_15
    if-eqz v2, :cond_17

    .line 944
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    .line 947
    goto :goto_10

    .line 948
    :goto_f
    :try_start_15
    const-string v3, "FileNotFoundException"

    .line 950
    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 956
    if-eqz v4, :cond_16

    .line 958
    :try_start_16
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 961
    :cond_16
    if-eqz v2, :cond_17

    .line 963
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    .line 966
    :cond_17
    :goto_10
    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 969
    move-result v0

    .line 970
    if-nez v0, :cond_18

    .line 972
    invoke-static {v11, v15}, Lcom/android/server/asks/ASKSManagerService;->isVersionGreaterThan(Ljava/lang/String;Ljava/lang/String;)Z

    .line 975
    move-result v0

    .line 976
    if-eqz v0, :cond_18

    .line 978
    move-object v11, v15

    .line 979
    :cond_18
    const-string/jumbo v0, "there is xml file /system/etc/"

    .line 982
    invoke-virtual {v0, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 985
    move-result-object v0

    .line 986
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    goto :goto_15

    .line 990
    :goto_11
    if-eqz v8, :cond_19

    .line 992
    :try_start_17
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 995
    goto :goto_12

    .line 996
    :catch_d
    move-exception v0

    .line 997
    goto :goto_13

    .line 998
    :cond_19
    :goto_12
    if-eqz v2, :cond_1a

    .line 1000
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d

    .line 1003
    goto :goto_14

    .line 1004
    :goto_13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1007
    :cond_1a
    :goto_14
    throw v1

    .line 1008
    :cond_1b
    move-object/from16 v17, v3

    .line 1010
    move-object/from16 v18, v5

    .line 1012
    const-string/jumbo v0, "there is no xml file /system/etc/"

    .line 1015
    invoke-static {v0, v13, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :goto_15
    add-int/lit8 v12, v12, 0x1

    .line 1020
    move-object/from16 v3, v17

    .line 1022
    move-object/from16 v5, v18

    .line 1024
    const/4 v2, 0x1

    .line 1025
    const/4 v4, 0x0

    .line 1026
    const/4 v8, 0x0

    .line 1027
    goto/16 :goto_c

    .line 1029
    :cond_1c
    sget-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 1031
    invoke-static {v0, v11}, Lcom/android/server/asks/ASKSManagerService;->isVersionGreaterThan(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1034
    move-result v0

    .line 1035
    if-eqz v0, :cond_1d

    .line 1037
    sput-object v11, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 1039
    const/4 v14, 0x1

    .line 1040
    goto :goto_16

    .line 1041
    :cond_1d
    const/4 v14, 0x0

    .line 1042
    :goto_16
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_ALLOWLIST.xml"

    .line 1044
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    .line 1047
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_BLOCKLIST.xml"

    .line 1049
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    .line 1052
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_DANLIST.xml"

    .line 1054
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    .line 1057
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_DANEXCEPTPKG.xml"

    .line 1059
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    .line 1062
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_DANBLOCKPKG.xml"

    .line 1064
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    .line 1067
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_PRE_INSTALLER.xml"

    .line 1069
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    .line 1072
    :goto_17
    if-eqz v14, :cond_1e

    .line 1074
    const/4 v2, 0x0

    .line 1075
    invoke-virtual {v1, v2}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    .line 1078
    const/4 v6, 0x1

    .line 1079
    :cond_1e
    if-eqz v6, :cond_1f

    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    .line 1084
    :cond_1f
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->checkExistUnknownAppList()V
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e

    .line 1087
    goto :goto_18

    .line 1088
    :catch_e
    move-exception v0

    .line 1089
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1092
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictedTargetPackages()V

    .line 1095
    const-string/jumbo v0, "ro.product.model"

    .line 1098
    const-string v2, "Unknown"

    .line 1100
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1103
    move-result-object v0

    .line 1104
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1107
    move-result-object v0

    .line 1108
    if-eqz v0, :cond_21

    .line 1110
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1113
    move-result v2

    .line 1114
    if-lez v2, :cond_21

    .line 1116
    const-string v2, "CALLPEMLIMIT"

    .line 1118
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1121
    move-result v0

    .line 1122
    if-eqz v0, :cond_20

    .line 1124
    const/4 v2, 0x1

    .line 1125
    iput-boolean v2, v1, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    .line 1127
    const-string v0, "AASA_ASKSManager"

    .line 1129
    const-string/jumbo v1, "enable LIMIT_CALLPEM"

    .line 1132
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    goto :goto_19

    .line 1136
    :cond_20
    const/4 v2, 0x0

    .line 1137
    iput-boolean v2, v1, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    .line 1139
    const-string v0, "AASA_ASKSManager"

    .line 1141
    const-string/jumbo v1, "disable LIMIT_CALLPEM"

    .line 1144
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_21
    :goto_19
    return-void

    .line 1148
    :goto_1a
    :try_start_19
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 1149
    :try_start_1a
    throw v0

    .line 1150
    :goto_1b
    monitor-exit v7
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 1151
    throw v0
.end method

.method public static checkAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "name"

    .line 5
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_a

    .line 11
    const-string/jumbo v2, "execute"

    .line 14
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_a

    .line 20
    const-string/jumbo v3, "overlay"

    .line 23
    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_a

    .line 29
    const-string/jumbo v4, "requestInstallerZip"

    .line 32
    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v5

    .line 36
    if-eqz v5, :cond_a

    .line 38
    const-string/jumbo v5, "initType"

    .line 41
    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v6

    .line 45
    if-nez v6, :cond_0

    .line 47
    goto/16 :goto_1

    .line 49
    :cond_0
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v6

    .line 57
    const-string/jumbo v7, "block"

    .line 60
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_1

    .line 66
    const-string/jumbo v2, "blockExecute"

    .line 69
    invoke-static {v2, v1, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const-string v6, "allow"

    .line 75
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 85
    const-string v2, "allowExecute"

    .line 87
    invoke-static {v2, v1, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 90
    :cond_2
    :goto_0
    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_3

    .line 100
    invoke-static {v3, v1, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 103
    :cond_3
    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    const-string/jumbo v3, "true"

    .line 110
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_4

    .line 116
    invoke-static {v4, v1, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 119
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 122
    move-result v2

    .line 123
    if-nez v2, :cond_5

    .line 125
    const-string/jumbo v2, "isInstalledList"

    .line 128
    invoke-static {v2, v1, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 131
    :cond_5
    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 138
    move-result v2

    .line 139
    const-string v4, ","

    .line 141
    if-nez v2, :cond_6

    .line 143
    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object v2

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    .line 149
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v2

    .line 165
    invoke-static {v5, v2, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 168
    :cond_6
    const-string v2, "accessibility"

    .line 170
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_7

    .line 180
    invoke-static {v2, v1, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 183
    :cond_7
    const-string/jumbo v2, "hasReqInstallPEM"

    .line 186
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result v3

    .line 194
    if-eqz v3, :cond_8

    .line 196
    invoke-static {v2, v1, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 199
    :cond_8
    const-string/jumbo v2, "initPkg"

    .line 202
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    move-result-object v3

    .line 206
    if-eqz v3, :cond_9

    .line 208
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 215
    move-result v3

    .line 216
    if-nez v3, :cond_9

    .line 218
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    move-result-object v3

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    .line 224
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object v3

    .line 240
    invoke-static {v2, v3, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 243
    :cond_9
    const-string/jumbo v2, "installAuthority"

    .line 246
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    move-result-object v3

    .line 250
    if-eqz v3, :cond_a

    .line 252
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    move-result-object v3

    .line 256
    const-string/jumbo v5, "installAuthorityDate"

    .line 259
    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    move-result-object p0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    move-result-object p0

    .line 287
    invoke-static {v2, p0, p1}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 290
    :cond_a
    :goto_1
    return-void
.end method

.method public static checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    if-eqz v1, :cond_3

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez p2, :cond_0

    .line 19
    :goto_0
    move v2, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/util/ArrayList;

    .line 27
    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 38
    move-result v2

    .line 39
    :cond_1
    const/16 p2, 0x9

    .line 41
    if-eq p0, p2, :cond_2

    .line 43
    const/16 p2, 0xe

    .line 45
    if-eq p0, p2, :cond_2

    .line 47
    const/16 p2, 0xf

    .line 49
    if-ne p0, p2, :cond_3

    .line 51
    :cond_2
    if-eqz p1, :cond_3

    .line 53
    const-string p0, "ALL"

    .line 55
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_3

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    :goto_1
    return v2
.end method

.method public static checkPolicyFileWithDelta(Ljava/util/ArrayList;I)Ljava/util/HashMap;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    :try_start_0
    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    move-result v3

    .line 14
    sget-object v4, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move v4, v1

    .line 22
    move v3, v2

    .line 23
    :goto_0
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 26
    move-result v5

    .line 27
    const-string v6, "PackageInformation"

    .line 29
    if-eqz v5, :cond_0

    .line 31
    const-string v5, "base: "

    .line 33
    const-string v7, ", delta: "

    .line 35
    invoke-static {v3, v4, v5, v7, v6}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    if-ge v3, v4, :cond_2

    .line 40
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 46
    const-string v3, "add delta data first."

    .line 48
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    invoke-static {p1, p0, v0, v2}, Lcom/android/server/asks/ASKSManagerService;->getUnknownAppsDataFromXML(ILjava/util/ArrayList;Ljava/util/HashMap;Z)V

    .line 54
    :cond_2
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 60
    const-string v2, "add base data."

    .line 62
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getUnknownAppsDataFromXML(ILjava/util/ArrayList;Ljava/util/HashMap;Z)V

    .line 68
    return-object v0
.end method

.method public static checkTarget(Lcom/android/server/asks/ASKSManagerService$CURPARAM;[Landroid/content/pm/Signature;Ljava/util/HashMap;Ljava/lang/String;ILcom/android/server/asks/ASKSManagerService$CURSTATUS;[Ljava/lang/String;Z)Lcom/android/server/asks/RETVALUE;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    move/from16 v4, p4

    .line 9
    move-object/from16 v5, p5

    .line 11
    move-object/from16 v6, p6

    .line 13
    new-instance v15, Lcom/android/server/asks/RETVALUE;

    .line 15
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v11, 0x0

    .line 19
    const-string v12, ""

    .line 21
    const/4 v8, 0x4

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v10, 0x0

    .line 24
    const-string v13, ""

    .line 26
    const/4 v14, 0x0

    .line 27
    move-object v7, v15

    .line 28
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string v7, " checkTarget sign BEFORE status:"

    .line 35
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget v7, v15, Lcom/android/server/asks/RETVALUE;->status:I

    .line 40
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v7, " SA:"

    .line 45
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v7, v15, Lcom/android/server/asks/RETVALUE;->SA:I

    .line 50
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v7, " policy="

    .line 55
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v7, v15, Lcom/android/server/asks/RETVALUE;->policy:I

    .line 60
    const-string v8, "PackageInformation"

    .line 62
    invoke-static {v0, v7, v8}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 65
    const/4 v7, 0x1

    .line 66
    const/4 v8, 0x2

    .line 67
    const-string/jumbo v9, "null"

    .line 70
    if-eqz v2, :cond_3

    .line 72
    const/4 v0, 0x0

    .line 73
    move v10, v0

    .line 74
    :goto_0
    array-length v0, v2

    .line 75
    if-ge v10, v0, :cond_3

    .line 77
    :try_start_0
    aget-object v0, v2, v10

    .line 79
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 82
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 88
    const/4 v0, 0x0

    .line 89
    :goto_1
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 94
    move-result v11

    .line 95
    if-eqz v11, :cond_2

    .line 97
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-result-object v0

    .line 101
    move-object v2, v0

    .line 102
    check-cast v2, Lcom/android/server/asks/UnknownStore;

    .line 104
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    .line 106
    iput-object v0, v2, Lcom/android/server/asks/UnknownStore;->PKGNAME:Ljava/lang/String;

    .line 108
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    .line 110
    iput-object v0, v2, Lcom/android/server/asks/UnknownStore;->SIGHASH:Ljava/lang/String;

    .line 112
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgSigHash:Ljava/lang/String;

    .line 114
    iput-object v0, v2, Lcom/android/server/asks/UnknownStore;->PKGSIGHASH:Ljava/lang/String;

    .line 116
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->baseCodePath:Ljava/lang/String;

    .line 118
    iput-object v0, v2, Lcom/android/server/asks/UnknownStore;->BASE_CODE_PATH:Ljava/lang/String;

    .line 120
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    .line 122
    invoke-virtual {v2, v0, v15}, Lcom/android/server/asks/UnknownStore;->checkPolicy(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V

    .line 125
    iget v0, v15, Lcom/android/server/asks/RETVALUE;->status:I

    .line 127
    if-ne v0, v7, :cond_0

    .line 129
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    .line 132
    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v10

    .line 143
    if-nez v10, :cond_0

    .line 145
    iget-object v10, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    .line 147
    invoke-virtual {v2, v10, v0, v15}, Lcom/android/server/asks/UnknownStore;->checkPolicyWithAppHash(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    goto :goto_2

    .line 151
    :catch_1
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    :cond_0
    :goto_2
    if-nez p7, :cond_1

    .line 157
    iget v0, v15, Lcom/android/server/asks/RETVALUE;->status:I

    .line 159
    if-ne v0, v8, :cond_1

    .line 161
    iget-boolean v0, v5, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocUrlCase:Z

    .line 163
    invoke-virtual {v2, v6, v4, v0, v15}, Lcom/android/server/asks/UnknownStore;->checkPolicyWithPEM([Ljava/lang/String;IZLcom/android/server/asks/RETVALUE;)V

    .line 166
    :cond_1
    iget v0, v15, Lcom/android/server/asks/RETVALUE;->status:I

    .line 168
    if-nez v0, :cond_3

    .line 170
    return-object v15

    .line 171
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 173
    goto :goto_0

    .line 174
    :cond_3
    const-string v0, "ALL"

    .line 176
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_5

    .line 182
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-result-object v0

    .line 186
    move-object v2, v0

    .line 187
    check-cast v2, Lcom/android/server/asks/UnknownStore;

    .line 189
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    .line 191
    iput-object v0, v2, Lcom/android/server/asks/UnknownStore;->PKGNAME:Ljava/lang/String;

    .line 193
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    .line 195
    iput-object v0, v2, Lcom/android/server/asks/UnknownStore;->SIGHASH:Ljava/lang/String;

    .line 197
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgSigHash:Ljava/lang/String;

    .line 199
    iput-object v0, v2, Lcom/android/server/asks/UnknownStore;->PKGSIGHASH:Ljava/lang/String;

    .line 201
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->baseCodePath:Ljava/lang/String;

    .line 203
    iput-object v0, v2, Lcom/android/server/asks/UnknownStore;->BASE_CODE_PATH:Ljava/lang/String;

    .line 205
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    .line 207
    invoke-virtual {v2, v0, v15}, Lcom/android/server/asks/UnknownStore;->checkPolicy(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V

    .line 210
    iget v0, v15, Lcom/android/server/asks/RETVALUE;->status:I

    .line 212
    if-ne v0, v7, :cond_4

    .line 214
    :try_start_2
    invoke-static/range {p3 .. p3}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    .line 217
    move-result-object v0

    .line 218
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    .line 221
    move-result-object v0

    .line 222
    if-eqz v0, :cond_4

    .line 224
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    move-result v3

    .line 228
    if-nez v3, :cond_4

    .line 230
    iget-object v1, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    .line 232
    invoke-virtual {v2, v1, v0, v15}, Lcom/android/server/asks/UnknownStore;->checkPolicyWithAppHash(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 235
    goto :goto_3

    .line 236
    :catch_2
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 240
    :cond_4
    :goto_3
    if-nez p7, :cond_5

    .line 242
    iget v0, v15, Lcom/android/server/asks/RETVALUE;->status:I

    .line 244
    if-ne v0, v8, :cond_5

    .line 246
    iget-boolean v0, v5, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocUrlCase:Z

    .line 248
    invoke-virtual {v2, v6, v4, v0, v15}, Lcom/android/server/asks/UnknownStore;->checkPolicyWithPEM([Ljava/lang/String;IZLcom/android/server/asks/RETVALUE;)V

    .line 251
    :cond_5
    return-object v15
.end method

.method public static convertItoS(I)Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "except"

    .line 4
    if-eqz p0, :cond_4

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq p0, v1, :cond_3

    .line 9
    const/16 v1, 0x64

    .line 11
    if-eq p0, v1, :cond_2

    .line 13
    const/16 v1, 0x65

    .line 15
    if-eq p0, v1, :cond_2

    .line 17
    const/16 v1, 0x8c

    .line 19
    if-eq p0, v1, :cond_1

    .line 21
    const/16 v1, 0x96

    .line 23
    if-eq p0, v1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string/jumbo v0, "block1"

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string/jumbo v0, "warning1"

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string/jumbo v0, "warning"

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    const-string/jumbo v0, "block"

    .line 41
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static convertMillsToString(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string/jumbo v1, "yyyyMMdd"

    .line 6
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 16
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static convertStoI(Ljava/lang/String;)I
    .locals 6

    .line 1
    const-string/jumbo v0, "warning"

    .line 4
    const-string/jumbo v1, "block"

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz p0, :cond_6

    .line 11
    const/4 v4, -0x1

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 15
    move-result v5

    .line 16
    sparse-switch v5, :sswitch_data_0

    .line 19
    goto :goto_0

    .line 20
    :sswitch_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v4, 0x4

    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    const-string/jumbo v5, "warning1"

    .line 32
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v5

    .line 36
    if-nez v5, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v4, 0x3

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_2

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v4, 0x2

    .line 49
    goto :goto_0

    .line 50
    :sswitch_3
    const-string/jumbo v5, "except"

    .line 53
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_3

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    move v4, v2

    .line 61
    goto :goto_0

    .line 62
    :sswitch_4
    const-string/jumbo v5, "block1"

    .line 65
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_4

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    move v4, v3

    .line 73
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_5

    .line 82
    goto :goto_1

    .line 83
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    :cond_6
    :goto_1
    :pswitch_0
    move v2, v3

    .line 87
    goto :goto_2

    .line 88
    :pswitch_1
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isKorProject()Z

    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_7

    .line 94
    const/16 v2, 0x64

    .line 96
    goto :goto_2

    .line 97
    :cond_7
    const/16 v2, 0x65

    .line 99
    goto :goto_2

    .line 100
    :pswitch_2
    const/16 v2, 0x8c

    .line 102
    goto :goto_2

    .line 103
    :pswitch_3
    const/16 v2, 0x96

    .line 105
    :goto_2
    :pswitch_4
    return v2

    .line 106
    nop

    .line 107
    :sswitch_data_0
    .sparse-switch
        -0x529f32bc -> :sswitch_4
        -0x4cdcfae7 -> :sswitch_3
        0x597c48d -> :sswitch_2
        0x1db04415 -> :sswitch_1
        0x4305af9c -> :sswitch_0
    .end sparse-switch

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    if-nez p0, :cond_0

    .line 8
    const-string/jumbo p0, "null"

    .line 11
    return-object p0

    .line 12
    :cond_0
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v1, :cond_3

    .line 17
    aget-byte v4, p0, v3

    .line 19
    ushr-int/lit8 v5, v4, 0x4

    .line 21
    and-int/lit8 v5, v5, 0xf

    .line 23
    move v6, v2

    .line 24
    :goto_1
    if-ltz v5, :cond_1

    .line 26
    const/16 v7, 0x9

    .line 28
    if-gt v5, v7, :cond_1

    .line 30
    add-int/lit8 v5, v5, 0x30

    .line 32
    :goto_2
    int-to-char v5, v5

    .line 33
    goto :goto_3

    .line 34
    :cond_1
    add-int/lit8 v5, v5, 0x57

    .line 36
    goto :goto_2

    .line 37
    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    and-int/lit8 v5, v4, 0xf

    .line 42
    add-int/lit8 v7, v6, 0x1

    .line 44
    const/4 v8, 0x1

    .line 45
    if-lt v6, v8, :cond_2

    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v6, v7

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result p0

    .line 10
    const-string v1, "PackageInformation"

    .line 12
    if-eqz p0, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 17
    move-result p0

    .line 18
    const-string/jumbo v2, "delete File : "

    .line 21
    if-eqz p0, :cond_0

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v0, " success"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, " fail"

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v0, " is does not exist"

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void
.end method

.method public static enforceSystemOrRoot(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_1

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 4
    rem-int/lit16 v2, v0, 0x2710

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static enforceSystemOrRoot()Z
    .locals 3

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 8
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_1

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 9
    rem-int/lit16 v0, v0, 0x2710

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B
    .locals 10

    .line 1
    const-string v0, ""

    .line 3
    const-string v1, "21"

    .line 5
    const-string v2, "AASA_ASKSManager"

    .line 7
    const-string v3, " "

    .line 9
    const-string/jumbo v4, "mTokenName : "

    .line 12
    const-string/jumbo v5, "index : "

    .line 15
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 18
    move-result-object v6

    .line 19
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 22
    move-result-object v6

    .line 23
    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 25
    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-interface {v6, v7, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    const-string v7, "INDEX"

    .line 34
    new-instance v8, Ljava/util/HashMap;

    .line 36
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 39
    const-string v9, "NONE"

    .line 41
    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {v6, v8}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew$1(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    .line 47
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v5

    .line 65
    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v5, "0.0"

    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_0

    .line 76
    const-string p0, "ENG Cert Index"

    .line 78
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception p0

    .line 83
    goto/16 :goto_1

    .line 85
    :cond_0
    const-string v5, "\\."

    .line 87
    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 90
    move-result-object v5

    .line 91
    iget-object v6, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    .line 93
    const-string v7, "[^0-9]"

    .line 95
    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v6

    .line 99
    const/4 v7, 0x0

    .line 100
    aget-object v8, v5, v7

    .line 102
    iput-object v8, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    .line 111
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string p0, " SignerVersion : "

    .line 116
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_1

    .line 135
    const-string v6, "1"

    .line 137
    :cond_1
    const/4 p0, 0x1

    .line 138
    aget-object v0, v5, p0

    .line 140
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_2

    .line 146
    const-string p0, "Signer Cert File is not matched with index!"

    .line 148
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 154
    move-result-object p0

    .line 155
    return-object p0

    .line 156
    :cond_2
    const-string v0, "SIGNER"

    .line 158
    aget-object p0, v5, p0

    .line 160
    const/16 v4, 0xc

    .line 162
    invoke-static {v4, v0, p0}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    .line 165
    move-result p0

    .line 166
    const/4 v0, -0x1

    .line 167
    if-eq p0, v0, :cond_3

    .line 169
    const-string p0, "SIGNER is in CRL"

    .line 171
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 177
    move-result-object p0

    .line 178
    return-object p0

    .line 179
    :cond_3
    const-string p0, "INTER"

    .line 181
    aget-object v5, v5, v7

    .line 183
    invoke-static {v4, p0, v5}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    .line 186
    move-result p0

    .line 187
    if-eq p0, v0, :cond_4

    .line 189
    const-string p0, "INTER is in CRL"

    .line 191
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 197
    move-result-object p0

    .line 198
    return-object p0

    .line 199
    :cond_4
    :goto_0
    return-object p1

    .line 200
    :catch_1
    move-exception p0

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    .line 203
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 209
    move-result-object p0

    .line 210
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object p0

    .line 217
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 223
    move-result-object p0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 224
    return-object p0

    .line 225
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    .line 233
    move-result-object p0

    .line 234
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object p0

    .line 241
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 247
    move-result-object p0

    .line 248
    return-object p0
.end method

.method public static get3rdTargetNodeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_3RDPARTY_INSTALLER.xml"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const-string v3, "PackageInformation"

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 38
    const-string/jumbo p0, "failed to created folder related 3RDPARTY"

    .line 41
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-object v4

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 48
    move-result-object v1

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-virtual {v1, v2, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 59
    return-object v4

    .line 60
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    .line 62
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 65
    move-result-object v5

    .line 66
    invoke-direct {v1, v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 69
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 80
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 83
    move-result v5

    .line 84
    move-object v6, v4

    .line 85
    :goto_0
    if-eq v5, v2, :cond_7

    .line 87
    const/4 v7, 0x2

    .line 88
    if-eq v5, v7, :cond_3

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 94
    move-result-object v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    const-string/jumbo v7, "name"

    .line 98
    if-eqz v5, :cond_4

    .line 100
    :try_start_2
    const-string/jumbo v8, "package"

    .line 103
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_4

    .line 109
    invoke-interface {v0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object v6

    .line 113
    goto :goto_1

    .line 114
    :catch_0
    move-exception p0

    .line 115
    goto :goto_2

    .line 116
    :catch_1
    move-exception p0

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    if-eqz v5, :cond_6

    .line 120
    const-string/jumbo v8, "policy"

    .line 123
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_6

    .line 129
    if-eqz v6, :cond_5

    .line 131
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_5

    .line 137
    invoke-interface {v0, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    const-string v2, "3rdtargetPolicy:: : "

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 158
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 164
    return-object p0

    .line 165
    :cond_5
    move-object v6, v4

    .line 166
    :cond_6
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 169
    move-result v5

    .line 170
    goto :goto_0

    .line 171
    :cond_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 174
    return-object v4

    .line 175
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 178
    :catch_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    return-object v4

    .line 182
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 185
    :catch_3
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 188
    return-object v4

    .line 189
    :catch_4
    move-exception p0

    .line 190
    goto :goto_4

    .line 191
    :catch_5
    move-exception p0

    .line 192
    goto :goto_5

    .line 193
    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 196
    return-object v4

    .line 197
    :goto_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 200
    return-object v4
.end method

.method public static getASKSDataFromXML(ILjava/util/HashMap;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/16 v1, 0x2e

    .line 8
    const-string v2, "CERT"

    .line 10
    const-string/jumbo v3, "package"

    .line 13
    if-eq p0, v1, :cond_0

    .line 15
    const-string v1, "DUMMY"

    .line 17
    const-string v4, "STORE"

    .line 19
    const-string v5, "HASH"

    .line 21
    const-string v6, "HASHVALUE"

    .line 23
    packed-switch p0, :pswitch_data_0

    .line 26
    const-string v1, "TARGET"

    .line 28
    const-string v4, "DEVICE"

    .line 30
    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TARGETDEVICE.xml"

    .line 32
    packed-switch p0, :pswitch_data_1

    .line 35
    const-string v6, "PEMLIST"

    .line 37
    const-string v7, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_PEMLIST.xml"

    .line 39
    const-string/jumbo v8, "pid"

    .line 42
    const-string/jumbo v9, "contents"

    .line 45
    packed-switch p0, :pswitch_data_2

    .line 48
    return-void

    .line 49
    :pswitch_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const-string p0, "VALUE"

    .line 54
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_DEVPARAM.xml"

    .line 59
    goto/16 :goto_1

    .line 61
    :pswitch_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v5, "/data/system/.aasa/AASApolicy/RPAB2.xml"

    .line 69
    goto/16 :goto_1

    .line 71
    :pswitch_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v5, "/data/system/.aasa/AASApolicy/RPAB1.xml"

    .line 79
    goto/16 :goto_1

    .line 81
    :pswitch_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v5, "/data/system/.aasa/AASApolicy/RPAB.xml"

    .line 89
    goto/16 :goto_1

    .line 91
    :pswitch_4
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_BLOCK_NUM_LIST.xml"

    .line 99
    goto/16 :goto_1

    .line 101
    :pswitch_5
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_BLOCK_URL_LIST.xml"

    .line 109
    goto/16 :goto_1

    .line 111
    :pswitch_6
    const-string/jumbo p0, "config"

    .line 114
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const-string/jumbo p0, "value"

    .line 120
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_SPAM_CONFIG.xml"

    .line 125
    goto/16 :goto_1

    .line 127
    :pswitch_7
    const-string p0, "REGIONAL"

    .line 129
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    goto/16 :goto_1

    .line 137
    :pswitch_8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_SIMPLETRUSTEDSTORE.xml"

    .line 145
    goto/16 :goto_1

    .line 147
    :pswitch_9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TRUSTEDSTORE.xml"

    .line 155
    goto/16 :goto_1

    .line 157
    :pswitch_a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const-string/jumbo p0, "policy"

    .line 163
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_3RDPARTY_INSTALLER.xml"

    .line 168
    goto/16 :goto_1

    .line 170
    :pswitch_b
    const-string p0, "TARGETZIP"

    .line 172
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_0
    move-object v5, v7

    .line 179
    goto/16 :goto_1

    .line 181
    :pswitch_c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    goto :goto_0

    .line 188
    :pswitch_d
    const-string p0, "ZIPCERTTARGET"

    .line 190
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    goto/16 :goto_1

    .line 198
    :pswitch_e
    const-string p0, "ZIPTARGET"

    .line 200
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    goto :goto_1

    .line 207
    :pswitch_f
    const-string p0, "CERTTARGET"

    .line 209
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    goto :goto_1

    .line 216
    :pswitch_10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    goto :goto_1

    .line 223
    :pswitch_11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_PRE_INSTALLER_H.xml"

    .line 231
    goto :goto_1

    .line 232
    :pswitch_12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    const-string/jumbo p0, "digest"

    .line 238
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v5, "/data/system/.aasa/AASApolicy/protection_list.xml"

    .line 243
    goto :goto_1

    .line 244
    :pswitch_13
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    const-string v5, "/data/system/.aasa/AASApolicy/ASKSHB.xml"

    .line 252
    goto :goto_1

    .line 253
    :pswitch_14
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    const-string v5, "/data/system/.aasa/AASApolicy/ASKSK.xml"

    .line 261
    goto :goto_1

    .line 262
    :pswitch_15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    const-string p0, "NUM"

    .line 267
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    const-string v5, "/data/system/.aasa/AASApolicy/ASKSC.xml"

    .line 272
    goto :goto_1

    .line 273
    :pswitch_16
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v5, "/data/system/.aasa/AASApolicy/ASKSTS.xml"

    .line 281
    goto :goto_1

    .line 282
    :pswitch_17
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    const-string p0, "UID"

    .line 287
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    const-string v5, "/data/system/.aasa/AASApolicy/ASKSP.xml"

    .line 292
    goto :goto_1

    .line 293
    :pswitch_18
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    const-string v5, "/data/system/.aasa/AASApolicy/ASKSB.xml"

    .line 301
    goto :goto_1

    .line 302
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_PREINSTALLER_GLOBAL.xml"

    .line 310
    :goto_1
    new-instance p0, Ljava/io/File;

    .line 312
    invoke-direct {p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 318
    move-result-object v1

    .line 319
    const/4 v2, 0x1

    .line 320
    const/4 v3, 0x0

    .line 321
    if-eqz v1, :cond_1

    .line 323
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 330
    move-result v1

    .line 331
    if-nez v1, :cond_1

    .line 333
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 340
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 347
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 350
    move-result v1

    .line 351
    if-nez v1, :cond_2

    .line 353
    return-void

    .line 354
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    .line 356
    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 359
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 362
    move-result-object p0

    .line 363
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 366
    const-string v4, ""

    .line 368
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 371
    move-result v5

    .line 372
    const/4 v6, 0x0

    .line 373
    :goto_2
    if-eq v5, v2, :cond_8

    .line 375
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 378
    move-result-object v7

    .line 379
    const/4 v8, 0x2

    .line 380
    if-eq v5, v8, :cond_4

    .line 382
    const/4 v8, 0x3

    .line 383
    if-eq v5, v8, :cond_3

    .line 385
    goto :goto_3

    .line 386
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 389
    move-result-object v5

    .line 390
    check-cast v5, Ljava/lang/String;

    .line 392
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    move-result v5

    .line 396
    if-eqz v5, :cond_7

    .line 398
    invoke-virtual {p1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    goto :goto_3

    .line 402
    :catch_0
    move-exception p0

    .line 403
    goto :goto_4

    .line 404
    :catch_1
    move-exception p0

    .line 405
    goto :goto_5

    .line 406
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 409
    move-result-object v5

    .line 410
    check-cast v5, Ljava/lang/String;

    .line 412
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    move-result v5

    .line 416
    if-eqz v5, :cond_6

    .line 418
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 421
    move-result-object v5

    .line 422
    if-eqz v5, :cond_5

    .line 424
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 427
    move-result-object v4

    .line 428
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    .line 430
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 433
    move-object v6, v5

    .line 434
    goto :goto_3

    .line 435
    :cond_6
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 438
    move-result v5

    .line 439
    if-eqz v5, :cond_7

    .line 441
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 444
    move-result-object v5

    .line 445
    if-eqz v5, :cond_7

    .line 447
    if-eqz v6, :cond_7

    .line 449
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 452
    move-result-object v5

    .line 453
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_7
    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 459
    move-result v5

    .line 460
    goto :goto_2

    .line 461
    :cond_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 464
    return-void

    .line 465
    :goto_4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 468
    :catch_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 471
    return-void

    .line 472
    :goto_5
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 475
    :catch_3
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 478
    return-void

    .line 479
    :catch_4
    move-exception p0

    .line 480
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 483
    return-void

    .line 484
    nop

    .line 485
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    .line 503
    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 517
    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "00000000"

    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    const-string v2, "<asks version=\""

    .line 10
    const-string v3, "\""

    .line 12
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    const-string v4, "ASKS_FILE"

    .line 18
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v2, "<VERSION value=\""

    .line 23
    const-string v4, "\"/>"

    .line 25
    filled-new-array {v2, v4}, [Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    const-string v4, "ASKS_RULE_FILE"

    .line 31
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v2, "<safeinstall delta=\""

    .line 36
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    const-string v3, "ASKS_DELTA"

    .line 42
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .line 47
    const/4 v3, 0x0

    .line 48
    new-array v4, v3, [Ljava/lang/String;

    .line 50
    invoke-static {p1, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 57
    move-result-object v4

    .line 58
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 61
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v4

    .line 65
    check-cast v4, [Ljava/lang/String;

    .line 67
    aget-object v4, v4, v3

    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    array-length v4, v2

    .line 74
    const/4 v5, 0x1

    .line 75
    if-le v4, v5, :cond_0

    .line 77
    aget-object v2, v2, v5

    .line 79
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object p0

    .line 83
    check-cast p0, [Ljava/lang/String;

    .line 85
    aget-object p0, p0, v5

    .line 87
    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    aget-object v1, p0, v3

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 96
    move-result v1

    .line 97
    if-lez v1, :cond_1

    .line 99
    aget-object v0, p0, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-exception p0

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    return-object v0

    .line 105
    :catch_1
    const-string p0, "Policy version is wrong : "

    .line 107
    const-string v1, "ASKSManager"

    .line 109
    invoke-static {p0, p1, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    goto :goto_1

    .line 113
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getAdvancedHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "AASA_ASKSManager"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "SHA-1"

    .line 6
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 9
    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v2

    .line 12
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 15
    move-object v2, v1

    .line 16
    :goto_0
    :try_start_1
    new-instance v3, Landroid/util/jar/StrictJarFile;

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-direct {v3, p0, v5, v4}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    new-instance p0, Ljava/util/ArrayList;

    .line 25
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 30
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v6

    .line 37
    :goto_1
    move v7, v5

    .line 38
    :cond_0
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v8

    .line 42
    if-eqz v8, :cond_4

    .line 44
    add-int/lit8 v7, v7, 0x1

    .line 46
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 52
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 55
    move-result-object v9

    .line 56
    const-string v10, "META-INF/"

    .line 58
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 61
    move-result v10

    .line 62
    if-eqz v10, :cond_1

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    const-string v10, "SEC-INF/"

    .line 67
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    move-result v10

    .line 71
    if-eqz v10, :cond_2

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    const-string/jumbo v10, "token/"

    .line 77
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    move-result v10

    .line 81
    if-eqz v10, :cond_3

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    invoke-static {v3, v8, v2}, Lcom/android/server/asks/ASKSManagerService;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;Ljava/security/MessageDigest;)V

    .line 87
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 90
    move-result-object v8

    .line 91
    invoke-static {v8}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    .line 94
    move-result-object v8

    .line 95
    invoke-virtual {v4, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const v8, 0xc350

    .line 101
    if-lt v7, v8, :cond_0

    .line 103
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Ljava/util/LinkedHashMap;

    .line 109
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    move-object v1, v3

    .line 118
    goto/16 :goto_9

    .line 120
    :catch_1
    move-exception p0

    .line 121
    goto/16 :goto_7

    .line 123
    :cond_4
    if-eqz v7, :cond_5

    .line 125
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 131
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 137
    :cond_5
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :try_start_3
    const-string v2, "SHA-256"

    .line 142
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 145
    move-result-object v2
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    goto :goto_3

    .line 147
    :catch_2
    move-exception v2

    .line 148
    :try_start_4
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 151
    move-object v2, v1

    .line 152
    :goto_3
    move v4, v5

    .line 153
    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 156
    move-result v6

    .line 157
    if-ge v4, v6, :cond_7

    .line 159
    new-instance v6, Ljava/util/TreeMap;

    .line 161
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    move-result-object v7

    .line 165
    check-cast v7, Ljava/util/Map;

    .line 167
    invoke-direct {v6, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 170
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 173
    move-result-object v7

    .line 174
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 177
    move-result-object v7

    .line 178
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    move-result v8

    .line 182
    if-eqz v8, :cond_6

    .line 184
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    move-result-object v8

    .line 188
    check-cast v8, Ljava/lang/String;

    .line 190
    invoke-virtual {v6, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    move-result-object v8

    .line 194
    check-cast v8, Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    :try_start_5
    const-string v9, "ISO-8859-1"

    .line 198
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 201
    move-result-object v9

    .line 202
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 205
    move-result v8

    .line 206
    invoke-virtual {v2, v9, v5, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 209
    goto :goto_5

    .line 210
    :catch_3
    move-exception v8

    .line 211
    :try_start_6
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 214
    goto :goto_5

    .line 215
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 217
    goto :goto_4

    .line 218
    :cond_7
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 221
    move-result-object p0

    .line 222
    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    .line 225
    move-result-object p0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    const-string v4, " advanced hash::"

    .line 233
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object v2

    .line 243
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 246
    :try_start_7
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 249
    goto :goto_6

    .line 250
    :catch_4
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 254
    :goto_6
    return-object p0

    .line 255
    :catchall_1
    move-exception p0

    .line 256
    goto :goto_9

    .line 257
    :catch_5
    move-exception p0

    .line 258
    move-object v3, v1

    .line 259
    :goto_7
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 261
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    const-string v4, " ERROR: AASA_VerifyToken check hash "

    .line 266
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object p0

    .line 276
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 279
    if-eqz v3, :cond_8

    .line 281
    :try_start_9
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 284
    goto :goto_8

    .line 285
    :catch_6
    move-exception p0

    .line 286
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 289
    :cond_8
    :goto_8
    return-object v1

    .line 290
    :goto_9
    if-eqz v1, :cond_9

    .line 292
    :try_start_a
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 295
    goto :goto_a

    .line 296
    :catch_7
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 300
    :cond_9
    :goto_a
    throw p0
.end method

.method public static getApkFileHashBytes(Ljava/lang/String;)[B
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "SHA-256"

    .line 4
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 7
    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5

    .line 8
    new-instance v2, Ljava/io/File;

    .line 10
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_3

    .line 21
    const/16 p0, 0x1000

    .line 23
    :try_start_1
    new-array p0, p0, [B

    .line 25
    new-instance v3, Ljava/io/FileInputStream;

    .line 27
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :goto_0
    :try_start_2
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I

    .line 33
    move-result v2

    .line 34
    const/4 v4, -0x1

    .line 35
    if-eq v2, v4, :cond_0

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v1, p0, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    move-object v0, v3

    .line 44
    goto :goto_2

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 50
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 54
    goto :goto_3

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :catch_1
    move-exception p0

    .line 58
    move-object v3, v0

    .line 59
    :goto_1
    :try_start_4
    const-string v1, "AASA_ASKSManager"

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v4, " ERROR: getApkFileHash:"

    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    if-eqz v3, :cond_1

    .line 83
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 86
    :catch_2
    :cond_1
    return-object v0

    .line 87
    :goto_2
    if-eqz v0, :cond_2

    .line 89
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 92
    :catch_3
    :cond_2
    throw p0

    .line 93
    :catch_4
    :cond_3
    :goto_3
    return-object v0

    .line 94
    :catch_5
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 98
    return-object v0
.end method

.method public static getDataByDevice(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 10

    .line 1
    const-string v0, " does not exist."

    .line 3
    const-string/jumbo v1, "size = "

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 9
    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 15
    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    const-string v5, "APKFromUnknownSource"

    .line 18
    if-eqz v4, :cond_6

    .line 20
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 23
    move-result-wide v6

    .line 24
    const-wide/16 v8, 0x2710

    .line 26
    cmp-long v0, v6, v8

    .line 28
    if-gez v0, :cond_4

    .line 30
    new-instance v0, Ljava/io/FileReader;

    .line 32
    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 43
    move-result-wide v6

    .line 44
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, " :"

    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance p0, Ljava/io/BufferedReader;

    .line 64
    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_3

    .line 73
    const-string v2, ","

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 81
    array-length v2, v1

    .line 82
    const/4 v3, 0x1

    .line 83
    if-ne v2, v3, :cond_1

    .line 85
    const-string/jumbo v2, "noCert"

    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    move-object v2, p0

    .line 91
    goto :goto_6

    .line 92
    :catch_0
    move-exception p1

    .line 93
    move-object v2, p0

    .line 94
    goto :goto_4

    .line 95
    :cond_1
    array-length v2, v1

    .line 96
    const/4 v4, 0x2

    .line 97
    if-ne v2, v4, :cond_2

    .line 99
    aget-object v2, v1, v3

    .line 101
    :goto_1
    const/4 v3, 0x0

    .line 102
    aget-object v4, v1, v3

    .line 104
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_0

    .line 110
    new-instance v4, Ljava/util/ArrayList;

    .line 112
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    aget-object v1, v1, v3

    .line 120
    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 127
    :cond_3
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    move-object v2, p0

    .line 131
    goto :goto_2

    .line 132
    :catchall_1
    move-exception p1

    .line 133
    goto :goto_6

    .line 134
    :catch_1
    move-exception p1

    .line 135
    goto :goto_4

    .line 136
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 139
    move-result p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    const-string p1, "ASKSManager"

    .line 142
    if-eqz p0, :cond_5

    .line 144
    :try_start_4
    const-string p0, "BigSize File is deleted"

    .line 146
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    goto :goto_2

    .line 150
    :cond_5
    const-string p0, "BigSize file is not deleted"

    .line 152
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    goto :goto_2

    .line 156
    :cond_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object p0

    .line 160
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    :goto_2
    if-eqz v2, :cond_7

    .line 165
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 168
    goto :goto_5

    .line 169
    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 172
    if-eqz v2, :cond_7

    .line 174
    goto :goto_3

    .line 175
    :catch_2
    :cond_7
    :goto_5
    return-void

    .line 176
    :goto_6
    if-eqz v2, :cond_8

    .line 178
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 181
    :catch_3
    :cond_8
    throw p1
.end method

.method public static getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string/jumbo v1, "name"

    .line 6
    new-instance v2, Ljava/util/HashMap;

    .line 8
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v4, Ljava/io/File;

    .line 18
    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml"

    .line 20
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 26
    move-result-object v5

    .line 27
    const/4 v6, 0x1

    .line 28
    const/4 v7, 0x0

    .line 29
    if-eqz v5, :cond_1

    .line 31
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_1

    .line 41
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_0

    .line 51
    const-string v0, "PackageInformation"

    .line 53
    const-string/jumbo v1, "failed to created folder related INFOLIST"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-object v7

    .line 60
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 63
    move-result-object v5

    .line 64
    const/4 v8, 0x0

    .line 65
    invoke-virtual {v5, v6, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 68
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_2

    .line 74
    return-object v7

    .line 75
    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    .line 77
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 80
    move-result-object v8

    .line 81
    invoke-direct {v5, v4, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 91
    move-result-object v4

    .line 92
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 95
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 98
    move-result v8

    .line 99
    :goto_0
    if-eq v8, v6, :cond_6

    .line 101
    const/4 v9, 0x2

    .line 102
    if-eq v8, v9, :cond_4

    .line 104
    :cond_3
    :goto_1
    move-object/from16 v10, p1

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 110
    move-result-object v8

    .line 111
    if-eqz v0, :cond_5

    .line 113
    if-eqz v8, :cond_3

    .line 115
    const-string/jumbo v9, "package"

    .line 118
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_3

    .line 124
    invoke-static {v4, v2}, Lcom/android/server/asks/ASKSManagerService;->checkAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    .line 127
    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    goto :goto_3

    .line 130
    :cond_5
    new-instance v8, Lcom/android/server/asks/InstalledAppInfo;

    .line 132
    invoke-direct {v8}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    .line 135
    invoke-interface {v4, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v10

    .line 139
    const-string/jumbo v9, "signature"

    .line 142
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object v11

    .line 146
    const-string/jumbo v9, "execute"

    .line 149
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object v12

    .line 153
    const-string/jumbo v9, "overlay"

    .line 156
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v13

    .line 160
    const-string/jumbo v9, "requestInstallerZip"

    .line 163
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    move-result-object v14

    .line 167
    const-string/jumbo v9, "initType"

    .line 170
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    move-result-object v15

    .line 174
    const-string v9, "accessibility"

    .line 176
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    move-result-object v16

    .line 180
    const-string/jumbo v9, "hasReqInstallPEM"

    .line 183
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    move-result-object v17

    .line 187
    const-string/jumbo v9, "installAuthority"

    .line 190
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    move-result-object v18

    .line 194
    const-string/jumbo v9, "installAuthorityDate"

    .line 197
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    move-result-object v19

    .line 201
    move-object v9, v8

    .line 202
    invoke-virtual/range {v9 .. v19}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string/jumbo v9, "initPkg"

    .line 208
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    move-result-object v9

    .line 212
    iput-object v9, v8, Lcom/android/server/asks/InstalledAppInfo;->initPkg:Ljava/lang/String;

    .line 214
    invoke-interface {v4, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    move-result-object v9

    .line 218
    move-object/from16 v10, p1

    .line 220
    invoke-virtual {v10, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 226
    move-result v8

    .line 227
    goto :goto_0

    .line 228
    :cond_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_7

    .line 237
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    move-result-object v0

    .line 241
    move-object v3, v0

    .line 242
    check-cast v3, Ljava/util/ArrayList;

    .line 244
    :cond_7
    return-object v3

    .line 245
    :catch_1
    move-exception v0

    .line 246
    move-object v5, v7

    .line 247
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    if-eqz v5, :cond_8

    .line 252
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 255
    goto :goto_4

    .line 256
    :catch_2
    move-exception v0

    .line 257
    move-object v1, v0

    .line 258
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 261
    :cond_8
    :goto_4
    return-object v7
.end method

.method public static getInstalledPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "PackageInformation"

    .line 3
    const-string/jumbo v1, "installAuthority"

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 10
    move-result-object v1

    .line 11
    const-string/jumbo v2, "none"

    .line 14
    if-eqz v1, :cond_6

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v1

    .line 20
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_6

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 32
    const-string v4, ","

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_0

    .line 40
    array-length v4, v3

    .line 41
    const/4 v5, 0x3

    .line 42
    if-ne v4, v5, :cond_0

    .line 44
    const/4 v4, 0x0

    .line 45
    aget-object v5, v3, v4

    .line 47
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_1

    .line 53
    if-eqz p1, :cond_0

    .line 55
    aget-object v4, v3, v4

    .line 57
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_0

    .line 63
    :cond_1
    const/4 p0, 0x1

    .line 64
    aget-object p0, v3, p0

    .line 66
    if-eqz p0, :cond_6

    .line 68
    const/4 p1, 0x2

    .line 69
    aget-object p1, v3, p1

    .line 71
    if-eqz p1, :cond_6

    .line 73
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_5

    .line 79
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_5

    .line 85
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 88
    move-result v1

    .line 89
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 96
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const-string v4, ""

    .line 99
    if-lt v1, v3, :cond_3

    .line 101
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string v1, "[Token] exist Parents policy "

    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_2

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    const-string v2, " installedTokenPolicy :"

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v4

    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception p1

    .line 136
    goto :goto_1

    .line 137
    :cond_2
    :goto_0
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object p0

    .line 148
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    const-string v3, "[Token] exist Parents policy : but...expiration date"

    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_4

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    const-string v4, " installedTokenPolicyDate :"

    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v4

    .line 181
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object p1

    .line 188
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    return-object v2

    .line 192
    :goto_1
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    .line 195
    move-result-object p1

    .line 196
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_5
    move-object v2, p0

    .line 200
    :cond_6
    return-object v2
.end method

.method public static getSHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "SHA-256"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "ISO-8859-1"

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    move-result p0

    .line 18
    invoke-virtual {v0, v1, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 21
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string p0, "AASAASKS"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    const-string p0, ""

    .line 25
    :goto_0
    return-object p0
.end method

.method public static getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SHA-256"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 14
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/io/File;

    .line 8
    const-string v2, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TARGETDEVICE.xml"

    .line 10
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 41
    const-string p0, "PackageInformation"

    .line 43
    const-string/jumbo v0, "failed to created folder related TAGETDEVICE"

    .line 46
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-object v4

    .line 50
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 53
    move-result-object v2

    .line 54
    const/4 v5, 0x0

    .line 55
    invoke-virtual {v2, v3, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 58
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 64
    return-object v4

    .line 65
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    .line 67
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 70
    move-result-object v5

    .line 71
    invoke-direct {v2, v1, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 74
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 85
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 88
    move-result v5

    .line 89
    :goto_0
    if-eq v5, v3, :cond_7

    .line 91
    const/4 v6, 0x2

    .line 92
    if-eq v5, v6, :cond_3

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 98
    move-result-object v5

    .line 99
    const-string v6, "DEVICE"

    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v6

    .line 105
    if-nez v6, :cond_6

    .line 107
    const-string v6, "LIST"

    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v6

    .line 113
    if-nez v6, :cond_6

    .line 115
    const-string v6, "TARGET"

    .line 117
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v6

    .line 121
    if-nez v6, :cond_6

    .line 123
    const-string v6, "CERTTARGET"

    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result v6

    .line 129
    if-nez v6, :cond_6

    .line 131
    const-string v6, "ZIPTARGET"

    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v6

    .line 137
    if-nez v6, :cond_6

    .line 139
    const-string v6, "ZIPCERTTARGET"

    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_4

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    const-string/jumbo v6, "value"

    .line 151
    invoke-interface {v1, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-result-object v6

    .line 155
    if-eqz v6, :cond_6

    .line 157
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    move-result v7

    .line 161
    if-nez v7, :cond_5

    .line 163
    const-string v7, "ALL"

    .line 165
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    move-result v6

    .line 169
    if-eqz v6, :cond_6

    .line 171
    goto :goto_1

    .line 172
    :catch_0
    move-exception p0

    .line 173
    goto :goto_3

    .line 174
    :catch_1
    move-exception p0

    .line 175
    goto :goto_4

    .line 176
    :cond_5
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 179
    move-result v6

    .line 180
    if-nez v6, :cond_6

    .line 182
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_6
    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 188
    move-result v5

    .line 189
    goto :goto_0

    .line 190
    :cond_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    return-object v0

    .line 194
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 197
    :catch_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    return-object v4

    .line 201
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 204
    :catch_3
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 207
    return-object v4

    .line 208
    :catch_4
    move-exception p0

    .line 209
    goto :goto_5

    .line 210
    :catch_5
    move-exception p0

    .line 211
    goto :goto_6

    .line 212
    :goto_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 215
    return-object v4

    .line 216
    :goto_6
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 219
    return-object v4
.end method

.method public static getTokenContents([B)[B
    .locals 6

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [B

    .line 4
    const/16 v1, 0x200

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    aget-byte v4, p0, v1

    .line 10
    const/16 v5, 0x2c

    .line 12
    if-eq v4, v5, :cond_1

    .line 14
    const/4 v5, 0x5

    .line 15
    if-lt v3, v5, :cond_0

    .line 17
    const-string p0, "22"

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    aput-byte v4, v0, v3

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-array v1, v3, [B

    .line 33
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 50
    move v0, v2

    .line 51
    :goto_1
    new-array v1, v0, [B

    .line 53
    add-int/lit16 v3, v3, 0x201

    .line 55
    invoke-static {p0, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    return-object v1
.end method

.method public static getTrustedFile()[Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "AASA_ASKSManager_SECURETIME"

    .line 3
    const-string/jumbo v1, "getTrustedFile : "

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 v0, 0x3

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    .line 13
    const-string v3, "/data/system/.aasa/trustedTime"

    .line 15
    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v3, Ljava/io/BufferedReader;

    .line 20
    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    move-object v4, v1

    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 27
    move-result-object v5

    .line 28
    if-eqz v5, :cond_1

    .line 30
    const-string v6, ","

    .line 32
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_0

    .line 38
    array-length v5, v4

    .line 39
    if-ne v5, v0, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    move-object v1, v3

    .line 44
    goto :goto_4

    .line 45
    :catch_0
    move-exception v2

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 53
    goto :goto_3

    .line 54
    :catchall_1
    move-exception v0

    .line 55
    goto :goto_4

    .line 56
    :catch_1
    move-exception v2

    .line 57
    move-object v3, v1

    .line 58
    move-object v4, v3

    .line 59
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    if-eqz v3, :cond_2

    .line 64
    goto :goto_1

    .line 65
    :catch_2
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 67
    array-length v2, v4

    .line 68
    if-ne v2, v0, :cond_3

    .line 70
    return-object v4

    .line 71
    :cond_3
    return-object v1

    .line 72
    :goto_4
    if-eqz v1, :cond_4

    .line 74
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 77
    :catch_3
    :cond_4
    throw v0
.end method

.method public static getTrustedToday()Ljava/lang/String;
    .locals 5

    .line 1
    const-string/jumbo v0, "security.ASKS.time_value"

    .line 4
    const-string v1, "00000000"

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_4

    .line 18
    :cond_0
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    move-result-wide v0

    .line 28
    invoke-static {v0, v1}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_3

    .line 39
    array-length v1, v0

    .line 40
    const/4 v2, 0x3

    .line 41
    if-eq v1, v2, :cond_2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v1, 0x1

    .line 45
    aget-object v1, v0, v1

    .line 47
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 50
    move-result-wide v1

    .line 51
    const/4 v3, 0x2

    .line 52
    aget-object v0, v0, v3

    .line 54
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 57
    move-result-wide v3

    .line 58
    sub-long/2addr v1, v3

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    move-result-wide v3

    .line 63
    add-long/2addr v3, v1

    .line 64
    invoke-static {v3, v4}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    const-string/jumbo v1, "getElapsedToday : "

    .line 71
    const-string v2, "AASA_ASKSManager_SECURETIME"

    .line 73
    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    move-result-wide v0

    .line 81
    invoke-static {v0, v1}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static getUnknownAppsDataFromXML(ILjava/util/ArrayList;Ljava/util/HashMap;Z)V
    .locals 52

    .line 1
    move/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    const-string v3, "CERT"

    .line 9
    const-string/jumbo v4, "value"

    .line 12
    const-string v5, ""

    .line 14
    if-eqz p3, :cond_0

    .line 16
    const-string v6, "_DELTA"

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v6, v5

    .line 20
    :goto_0
    const-string/jumbo v7, "ro.build.official.release"

    .line 23
    const-string/jumbo v8, "false"

    .line 26
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v7

    .line 30
    const-string/jumbo v8, "true"

    .line 33
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_1

    .line 39
    move-object v7, v5

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string v7, "_ENG"

    .line 43
    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v8

    .line 47
    const-string v15, "PackageInformation"

    .line 49
    if-nez v8, :cond_2

    .line 51
    const-string/jumbo v8, "getUnknownAppsData() : ENG Option is enabled."

    .line 54
    invoke-static {v15, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    const/16 v8, 0x1b

    .line 59
    const-string v9, ".xml"

    .line 61
    if-eq v0, v8, :cond_7

    .line 63
    const/16 v8, 0x1c

    .line 65
    if-eq v0, v8, :cond_6

    .line 67
    const/16 v8, 0x1e

    .line 69
    if-eq v0, v8, :cond_5

    .line 71
    const/16 v8, 0x1f

    .line 73
    if-eq v0, v8, :cond_4

    .line 75
    const/16 v8, 0x2d

    .line 77
    if-eq v0, v8, :cond_3

    .line 79
    const/4 v0, 0x0

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOTALLIST_GLOBAL"

    .line 83
    invoke-static {v0, v6, v7, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOTALLIST_WEB"

    .line 90
    invoke-static {v0, v6, v7, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOTALLIST_A11Y"

    .line 97
    invoke-static {v0, v6, v7, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    goto :goto_2

    .line 102
    :cond_6
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOTALLIST"

    .line 104
    invoke-static {v0, v6, v7, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    goto :goto_2

    .line 109
    :cond_7
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOTALLIST_COMMON"

    .line 111
    invoke-static {v0, v6, v7, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    :goto_2
    if-eqz v0, :cond_38

    .line 117
    new-instance v6, Ljava/io/File;

    .line 119
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 125
    move-result-object v0

    .line 126
    const/4 v13, 0x1

    .line 127
    const/4 v12, 0x0

    .line 128
    if-eqz v0, :cond_9

    .line 130
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_9

    .line 140
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_8

    .line 150
    const-string/jumbo v0, "failed to created folder related TOTALLIST"

    .line 153
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 157
    :cond_8
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0, v13, v12}, Ljava/io/File;->setReadable(ZZ)Z

    .line 164
    :cond_9
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_a

    .line 170
    return-void

    .line 171
    :cond_a
    :try_start_0
    new-instance v11, Ljava/io/FileReader;

    .line 173
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 176
    move-result-object v0

    .line 177
    invoke-direct {v11, v6, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 180
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 187
    move-result-object v10

    .line 188
    invoke-interface {v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 191
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 194
    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    const/16 v22, -0x1

    .line 197
    move-object v8, v5

    .line 198
    move-object/from16 v18, v8

    .line 200
    move-object/from16 v19, v18

    .line 202
    move v6, v12

    .line 203
    move v7, v6

    .line 204
    move/from16 v20, v7

    .line 206
    move/from16 v21, v20

    .line 208
    move/from16 v26, v21

    .line 210
    move/from16 v27, v26

    .line 212
    move/from16 v36, v27

    .line 214
    move/from16 v37, v36

    .line 216
    move/from16 v25, v22

    .line 218
    move/from16 v29, v25

    .line 220
    move/from16 v30, v29

    .line 222
    move/from16 v33, v30

    .line 224
    move/from16 v39, v33

    .line 226
    const/4 v9, 0x0

    .line 227
    const/4 v12, 0x0

    .line 228
    const/16 v16, 0x0

    .line 230
    const/16 v17, 0x0

    .line 232
    const/16 v38, 0x0

    .line 234
    const/16 v40, 0x0

    .line 236
    :goto_3
    if-eq v0, v13, :cond_37

    .line 238
    const-string/jumbo v13, "package"

    .line 241
    const/4 v14, 0x2

    .line 242
    if-eq v0, v14, :cond_f

    .line 244
    const/4 v14, 0x3

    .line 245
    if-eq v0, v14, :cond_d

    .line 247
    const/4 v14, 0x4

    .line 248
    if-eq v0, v14, :cond_b

    .line 250
    goto/16 :goto_6

    .line 252
    :cond_b
    if-eqz v6, :cond_c

    .line 254
    if-eqz v7, :cond_c

    .line 256
    if-eqz v8, :cond_c

    .line 258
    if-eqz v16, :cond_c

    .line 260
    :try_start_2
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_c

    .line 266
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 269
    move-result-object v28

    .line 270
    if-eqz v9, :cond_c

    .line 272
    if-eqz v28, :cond_c

    .line 274
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_c

    .line 280
    iget-object v0, v9, Lcom/android/server/asks/UnknownStore;->KEY_VALUE:Ljava/lang/String;

    .line 282
    move-object/from16 v23, v9

    .line 284
    move-object/from16 v24, v16

    .line 286
    move-object/from16 v31, v0

    .line 288
    move-object/from16 v32, v17

    .line 290
    move-object/from16 v34, v18

    .line 292
    move-object/from16 v35, v19

    .line 294
    invoke-virtual/range {v23 .. v35}, Lcom/android/server/asks/UnknownStore;->addCertPolicy(Ljava/lang/String;IIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    move/from16 v25, v22

    .line 299
    move/from16 v29, v25

    .line 301
    move/from16 v30, v29

    .line 303
    move/from16 v33, v30

    .line 305
    const/16 v26, 0x0

    .line 307
    const/16 v27, 0x0

    .line 309
    goto :goto_4

    .line 310
    :catch_0
    move-exception v0

    .line 311
    move-object/from16 v32, v11

    .line 313
    goto/16 :goto_21

    .line 315
    :catch_1
    move-exception v0

    .line 316
    move-object/from16 v32, v11

    .line 318
    goto/16 :goto_22

    .line 320
    :cond_c
    :goto_4
    move-object/from16 v31, v3

    .line 322
    move-object/from16 v48, v4

    .line 324
    move-object/from16 v35, v5

    .line 326
    move-object v5, v10

    .line 327
    move-object/from16 v32, v11

    .line 329
    move-object/from16 v44, v15

    .line 331
    const/4 v2, 0x0

    .line 332
    const/4 v6, 0x0

    .line 333
    :goto_5
    const/16 v41, 0x1

    .line 335
    const/16 v43, 0x0

    .line 337
    goto/16 :goto_20

    .line 339
    :cond_d
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 346
    move-result v0

    .line 347
    if-eqz v0, :cond_e

    .line 349
    if-eqz v9, :cond_e

    .line 351
    invoke-virtual {v2, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    move-object/from16 v31, v3

    .line 356
    move-object/from16 v48, v4

    .line 358
    move-object/from16 v35, v5

    .line 360
    move-object v5, v10

    .line 361
    move-object/from16 v32, v11

    .line 363
    move-object/from16 v44, v15

    .line 365
    const/4 v2, 0x0

    .line 366
    const/4 v7, 0x0

    .line 367
    const/4 v12, 0x0

    .line 368
    const/16 v20, 0x0

    .line 370
    const/16 v21, 0x0

    .line 372
    const/16 v36, 0x0

    .line 374
    goto :goto_5

    .line 375
    :cond_e
    :goto_6
    move-object/from16 v31, v3

    .line 377
    move-object/from16 v48, v4

    .line 379
    move-object/from16 v35, v5

    .line 381
    move-object v5, v10

    .line 382
    move-object/from16 v32, v11

    .line 384
    move-object/from16 v44, v15

    .line 386
    const/4 v2, 0x0

    .line 387
    goto :goto_5

    .line 388
    :cond_f
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 391
    move-result-object v8

    .line 392
    const/4 v14, 0x0

    .line 393
    invoke-interface {v10, v14, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    move-result-object v0

    .line 397
    if-eqz v0, :cond_10

    .line 399
    new-instance v14, Ljava/lang/StringBuilder;

    .line 401
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    move-result-object v40

    .line 414
    :cond_10
    const/4 v14, 0x0

    .line 415
    invoke-interface {v10, v14, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    move-result-object v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 419
    const-string v14, "ALL"

    .line 421
    if-eqz v0, :cond_13

    .line 423
    :try_start_3
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    move-result v18

    .line 427
    if-eqz v18, :cond_11

    .line 429
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_11

    .line 435
    const-string/jumbo v19, "unknown"

    .line 438
    :goto_7
    move-object/from16 v31, v3

    .line 440
    move-object/from16 v24, v8

    .line 442
    :goto_8
    move-object/from16 v28, v19

    .line 444
    goto :goto_9

    .line 445
    :cond_11
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    move-result v0

    .line 449
    if-eqz v0, :cond_12

    .line 451
    const-string/jumbo v19, "signature"

    .line 454
    goto :goto_7

    .line 455
    :cond_12
    const-string/jumbo v19, "permission"
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 458
    goto :goto_7

    .line 459
    :cond_13
    move-object/from16 v31, v3

    .line 461
    move-object/from16 v24, v18

    .line 463
    goto :goto_8

    .line 464
    :goto_9
    const-string/jumbo v3, "reported"

    .line 467
    move/from16 v18, v6

    .line 469
    const-string v6, "applyPolicy"

    .line 471
    move v0, v7

    .line 472
    const-string v7, "SA"

    .line 474
    move-object/from16 v19, v9

    .line 476
    const-string/jumbo v9, "policy"

    .line 479
    move-object/from16 v32, v11

    .line 481
    const-string/jumbo v11, "block"

    .line 484
    move-object/from16 v34, v12

    .line 486
    const-string v12, "URL"

    .line 488
    move-object/from16 v35, v13

    .line 490
    const-string/jumbo v13, "nonURL"

    .line 493
    const/16 v43, 0x1f5

    .line 495
    const/16 v44, 0x1f7

    .line 497
    const/16 v45, 0x1f6

    .line 499
    const/16 v46, 0x1f4

    .line 501
    if-eqz v8, :cond_24

    .line 503
    :try_start_4
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 506
    move-result v47

    .line 507
    if-eqz v47, :cond_24

    .line 509
    move-object/from16 v47, v8

    .line 511
    const/4 v1, 0x0

    .line 512
    invoke-interface {v10, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 515
    move-result-object v8

    .line 516
    if-eqz v8, :cond_15

    .line 518
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 521
    move-result v0

    .line 522
    if-eqz v0, :cond_14

    .line 524
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    move-result-object v0

    .line 528
    check-cast v0, Lcom/android/server/asks/UnknownStore;

    .line 530
    :goto_a
    move-object v1, v0

    .line 531
    goto :goto_b

    .line 532
    :catch_2
    move-exception v0

    .line 533
    goto/16 :goto_21

    .line 535
    :catch_3
    move-exception v0

    .line 536
    goto/16 :goto_22

    .line 538
    :cond_14
    new-instance v0, Lcom/android/server/asks/UnknownStore;

    .line 540
    invoke-direct {v0}, Lcom/android/server/asks/UnknownStore;-><init>()V

    .line 543
    goto :goto_a

    .line 544
    :cond_15
    move-object/from16 v1, v19

    .line 546
    :goto_b
    if-eqz v1, :cond_16

    .line 548
    iput-object v8, v1, Lcom/android/server/asks/UnknownStore;->KEY_VALUE:Ljava/lang/String;

    .line 550
    :cond_16
    const/4 v2, 0x0

    .line 551
    invoke-interface {v10, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 554
    move-result-object v0

    .line 555
    move-object/from16 v48, v4

    .line 557
    const-string v4, "MIN"

    .line 559
    invoke-interface {v10, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 562
    move-result-object v4

    .line 563
    move-object/from16 v34, v8

    .line 565
    const-string v8, "MAX"

    .line 567
    invoke-interface {v10, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 570
    move-result-object v8

    .line 571
    if-eqz v0, :cond_23

    .line 573
    if-eqz v4, :cond_23

    .line 575
    if-eqz v8, :cond_23

    .line 577
    move-object/from16 v49, v7

    .line 579
    invoke-interface {v10, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 582
    move-result-object v7

    .line 583
    move-object/from16 v50, v6

    .line 585
    invoke-interface {v10, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 588
    move-result-object v6

    .line 589
    move-object/from16 v51, v3

    .line 591
    const-string v3, "applyOption"

    .line 593
    invoke-interface {v10, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 596
    move-result-object v3

    .line 597
    move-object/from16 v19, v0

    .line 599
    const-string/jumbo v0, "moreRule"

    .line 602
    invoke-interface {v10, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    move-result-object v0

    .line 606
    if-eqz v7, :cond_19

    .line 608
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    move-result v2

    .line 612
    if-eqz v2, :cond_17

    .line 614
    move/from16 v29, v43

    .line 616
    goto :goto_c

    .line 617
    :cond_17
    invoke-virtual {v13, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 620
    move-result v2

    .line 621
    if-eqz v2, :cond_18

    .line 623
    move/from16 v29, v45

    .line 625
    goto :goto_c

    .line 626
    :cond_18
    invoke-virtual {v12, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 629
    move-result v2

    .line 630
    if-eqz v2, :cond_19

    .line 632
    move/from16 v29, v44

    .line 634
    goto :goto_c

    .line 635
    :cond_19
    move/from16 v29, v46

    .line 637
    :goto_c
    if-eqz v6, :cond_1c

    .line 639
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 642
    move-result v2

    .line 643
    if-eqz v2, :cond_1a

    .line 645
    move/from16 v30, v43

    .line 647
    goto :goto_d

    .line 648
    :cond_1a
    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 651
    move-result v2

    .line 652
    if-eqz v2, :cond_1b

    .line 654
    move/from16 v30, v45

    .line 656
    goto :goto_d

    .line 657
    :cond_1b
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 660
    move-result v2

    .line 661
    if-eqz v2, :cond_1c

    .line 663
    move/from16 v30, v44

    .line 665
    goto :goto_d

    .line 666
    :cond_1c
    move/from16 v30, v46

    .line 668
    :goto_d
    if-eqz v3, :cond_1f

    .line 670
    const-string v2, "AND"

    .line 672
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 675
    move-result v2

    .line 676
    if-eqz v2, :cond_1f

    .line 678
    const/4 v2, 0x0

    .line 679
    invoke-interface {v10, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 682
    move-result-object v3

    .line 683
    if-eqz v1, :cond_1e

    .line 685
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 688
    move-result v2

    .line 689
    if-eqz v2, :cond_1d

    .line 691
    const/4 v2, 0x1

    .line 692
    invoke-virtual {v1, v2}, Lcom/android/server/asks/UnknownStore;->addPermissionGroup(Z)V

    .line 695
    const/4 v2, 0x0

    .line 696
    goto :goto_e

    .line 697
    :cond_1d
    const/4 v2, 0x0

    .line 698
    invoke-virtual {v1, v2}, Lcom/android/server/asks/UnknownStore;->addPermissionGroup(Z)V

    .line 701
    goto :goto_e

    .line 702
    :cond_1e
    const/4 v2, 0x0

    .line 703
    const-string/jumbo v3, "store is null !!"

    .line 706
    invoke-static {v15, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :goto_e
    const/16 v37, 0x1

    .line 711
    goto :goto_f

    .line 712
    :cond_1f
    const/4 v2, 0x0

    .line 713
    move/from16 v37, v2

    .line 715
    :goto_f
    if-eqz v0, :cond_22

    .line 717
    const-string v3, " "

    .line 719
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 722
    move-result-object v0

    .line 723
    const-string v3, "="

    .line 725
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 728
    move-result-object v3

    .line 729
    array-length v6, v3

    .line 730
    const/4 v7, 0x2

    .line 731
    if-ne v6, v7, :cond_22

    .line 733
    const/4 v6, 0x1

    .line 734
    aget-object v7, v3, v6

    .line 736
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 739
    move-result v7

    .line 740
    if-nez v7, :cond_21

    .line 742
    aget-object v7, v3, v6

    .line 744
    const-string/jumbo v2, "except"

    .line 747
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 750
    move-result v2

    .line 751
    if-nez v2, :cond_21

    .line 753
    aget-object v2, v3, v6

    .line 755
    const-string/jumbo v6, "warning"

    .line 758
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 761
    move-result v2

    .line 762
    if-eqz v2, :cond_20

    .line 764
    const/4 v2, 0x1

    .line 765
    goto :goto_11

    .line 766
    :cond_20
    move/from16 v39, v22

    .line 768
    const/4 v2, 0x1

    .line 769
    :goto_10
    const/16 v38, 0x0

    .line 771
    goto :goto_12

    .line 772
    :cond_21
    move v2, v6

    .line 773
    :goto_11
    aget-object v3, v3, v2

    .line 775
    invoke-static {v3}, Lcom/android/server/asks/ASKSManagerService;->convertStoI(Ljava/lang/String;)I

    .line 778
    move-result v3
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 779
    move-object/from16 v38, v0

    .line 781
    move/from16 v39, v3

    .line 783
    goto :goto_12

    .line 784
    :cond_22
    const/4 v2, 0x1

    .line 785
    move/from16 v39, v22

    .line 787
    goto :goto_10

    .line 788
    :goto_12
    :try_start_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 791
    move-result v20

    .line 792
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 795
    move-result v21

    .line 796
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 799
    move-result v36
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 800
    :goto_13
    move-object v3, v1

    .line 801
    move v1, v2

    .line 802
    :goto_14
    move/from16 v4, v20

    .line 804
    move/from16 v23, v21

    .line 806
    goto :goto_15

    .line 807
    :catch_4
    move-exception v0

    .line 808
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 810
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 813
    const-string/jumbo v4, "numberformat exception"

    .line 816
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 825
    move-result-object v0

    .line 826
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 829
    goto :goto_13

    .line 830
    :cond_23
    move-object/from16 v51, v3

    .line 832
    move-object/from16 v50, v6

    .line 834
    move-object/from16 v49, v7

    .line 836
    const/4 v2, 0x1

    .line 837
    goto :goto_13

    .line 838
    :cond_24
    move-object/from16 v51, v3

    .line 840
    move-object/from16 v48, v4

    .line 842
    move-object/from16 v50, v6

    .line 844
    move-object/from16 v49, v7

    .line 846
    move-object/from16 v47, v8

    .line 848
    const/4 v2, 0x1

    .line 849
    move v1, v0

    .line 850
    move-object/from16 v3, v19

    .line 852
    goto :goto_14

    .line 853
    :goto_15
    const-string/jumbo v6, "name"

    .line 856
    if-eqz v1, :cond_32

    .line 858
    if-eqz v47, :cond_32

    .line 860
    move-object/from16 v7, v35

    .line 862
    move-object/from16 v8, v47

    .line 864
    :try_start_7
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 867
    move-result v0

    .line 868
    if-eqz v0, :cond_31

    .line 870
    const/4 v7, 0x0

    .line 871
    invoke-interface {v10, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 874
    move-result-object v16

    .line 875
    invoke-interface {v10, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 878
    move-result-object v17

    .line 879
    move-object/from16 v2, v49

    .line 881
    invoke-interface {v10, v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 884
    move-result-object v0

    .line 885
    move-object/from16 v2, v50

    .line 887
    invoke-interface {v10, v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 890
    move-result-object v2

    .line 891
    move-object/from16 v35, v5

    .line 893
    move-object/from16 v5, v51

    .line 895
    invoke-interface {v10, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 898
    move-result-object v5

    .line 899
    move/from16 v47, v4

    .line 901
    const-string/jumbo v4, "rgxUrl"

    .line 904
    invoke-interface {v10, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 907
    move-result-object v4

    .line 908
    if-eqz v2, :cond_27

    .line 910
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 913
    move-result v7

    .line 914
    if-eqz v7, :cond_25

    .line 916
    move/from16 v2, v43

    .line 918
    goto :goto_16

    .line 919
    :cond_25
    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 922
    move-result v7

    .line 923
    if-eqz v7, :cond_26

    .line 925
    move/from16 v2, v45

    .line 927
    goto :goto_16

    .line 928
    :cond_26
    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 931
    move-result v2

    .line 932
    if-eqz v2, :cond_27

    .line 934
    move/from16 v2, v44

    .line 936
    goto :goto_16

    .line 937
    :cond_27
    move/from16 v2, v46

    .line 939
    :goto_16
    if-eqz v5, :cond_2a

    .line 941
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 944
    move-result v7

    .line 945
    if-eqz v7, :cond_28

    .line 947
    goto :goto_17

    .line 948
    :cond_28
    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 951
    move-result v7

    .line 952
    if-eqz v7, :cond_29

    .line 954
    move/from16 v43, v45

    .line 956
    goto :goto_17

    .line 957
    :cond_29
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 960
    move-result v5

    .line 961
    if-eqz v5, :cond_2a

    .line 963
    move/from16 v43, v44

    .line 965
    goto :goto_17

    .line 966
    :cond_2a
    move/from16 v43, v46

    .line 968
    :goto_17
    if-eqz v4, :cond_2c

    .line 970
    const-string v5, "DOMAIN"

    .line 972
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 975
    move-result v5

    .line 976
    if-eqz v5, :cond_2b

    .line 978
    move/from16 v33, v44

    .line 980
    goto :goto_18

    .line 981
    :cond_2b
    const-string v5, "PKG"

    .line 983
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 986
    move-result v4

    .line 987
    if-eqz v4, :cond_2c

    .line 989
    move/from16 v33, v45

    .line 991
    goto :goto_18

    .line 992
    :cond_2c
    move/from16 v33, v46

    .line 994
    :goto_18
    if-eqz v17, :cond_2d

    .line 996
    invoke-static/range {v17 .. v17}, Lcom/android/server/asks/ASKSManagerService;->convertStoI(Ljava/lang/String;)I

    .line 999
    move-result v27
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1000
    :cond_2d
    if-eqz v0, :cond_2e

    .line 1002
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1005
    move-result v26
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1006
    goto :goto_19

    .line 1007
    :catch_5
    move-exception v0

    .line 1008
    move-object v4, v0

    .line 1009
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1011
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1014
    const-string v5, "PKG SA numberformat exception"

    .line 1016
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1022
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1025
    move-result-object v0

    .line 1026
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    goto :goto_19

    .line 1030
    :cond_2e
    move/from16 v26, v46

    .line 1032
    :goto_19
    const-string/jumbo v0, "execute"

    .line 1035
    const/4 v4, 0x0

    .line 1036
    invoke-interface {v10, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1039
    move-result-object v0

    .line 1040
    if-eqz v0, :cond_30

    .line 1042
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1045
    move-result v0

    .line 1046
    if-eqz v0, :cond_2f

    .line 1048
    const/16 v0, 0x1f8

    .line 1050
    :goto_1a
    move/from16 v25, v0

    .line 1052
    goto :goto_1b

    .line 1053
    :cond_2f
    const/16 v0, 0x1f9

    .line 1055
    goto :goto_1a

    .line 1056
    :cond_30
    move/from16 v25, v46

    .line 1058
    :goto_1b
    move/from16 v29, v2

    .line 1060
    move-object/from16 v0, v17

    .line 1062
    move/from16 v30, v43

    .line 1064
    const/16 v18, 0x1

    .line 1066
    goto :goto_1d

    .line 1067
    :cond_31
    move/from16 v47, v4

    .line 1069
    move-object/from16 v35, v5

    .line 1071
    goto :goto_1c

    .line 1072
    :cond_32
    move-object/from16 v35, v5

    .line 1074
    move-object/from16 v8, v47

    .line 1076
    move/from16 v47, v4

    .line 1078
    :goto_1c
    move-object/from16 v0, v17

    .line 1080
    :goto_1d
    if-eqz v1, :cond_36

    .line 1082
    if-eqz v8, :cond_36

    .line 1084
    const-string/jumbo v2, "pem"

    .line 1087
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1090
    move-result v2

    .line 1091
    if-eqz v2, :cond_36

    .line 1093
    const/4 v2, 0x0

    .line 1094
    invoke-interface {v10, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1097
    move-result-object v4

    .line 1098
    invoke-interface {v10, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1101
    move-result-object v5

    .line 1102
    if-eqz v5, :cond_33

    .line 1104
    invoke-static {v5}, Lcom/android/server/asks/ASKSManagerService;->convertStoI(Ljava/lang/String;)I

    .line 1107
    move-result v12

    .line 1108
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1111
    move-result v5

    .line 1112
    if-eqz v5, :cond_34

    .line 1114
    if-eqz v3, :cond_33

    .line 1116
    const/4 v5, 0x1

    .line 1117
    move-object v6, v3

    .line 1118
    move-object v7, v4

    .line 1119
    move-object/from16 v42, v8

    .line 1121
    move v8, v5

    .line 1122
    move/from16 v9, v36

    .line 1124
    move-object v5, v10

    .line 1125
    move/from16 v10, v47

    .line 1127
    move/from16 v11, v23

    .line 1129
    const/16 v43, 0x0

    .line 1131
    const/16 v41, 0x1

    .line 1133
    move/from16 v13, v29

    .line 1135
    move/from16 v14, v30

    .line 1137
    move-object/from16 v44, v15

    .line 1139
    move/from16 v15, v37

    .line 1141
    move-object/from16 v16, v38

    .line 1143
    move/from16 v17, v39

    .line 1145
    move-object/from16 v18, v24

    .line 1147
    move-object/from16 v19, v28

    .line 1149
    move-object/from16 v20, v40

    .line 1151
    move/from16 v21, p3

    .line 1153
    invoke-virtual/range {v6 .. v21}, Lcom/android/server/asks/UnknownStore;->addPermission(Ljava/lang/String;ZIIIIIIZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1156
    goto :goto_1e

    .line 1157
    :cond_33
    move-object/from16 v42, v8

    .line 1159
    move-object v5, v10

    .line 1160
    move-object/from16 v44, v15

    .line 1162
    const/16 v41, 0x1

    .line 1164
    const/16 v43, 0x0

    .line 1166
    goto :goto_1e

    .line 1167
    :cond_34
    move-object/from16 v42, v8

    .line 1169
    move-object v5, v10

    .line 1170
    move-object/from16 v44, v15

    .line 1172
    const/16 v41, 0x1

    .line 1174
    const/16 v43, 0x0

    .line 1176
    if-eqz v3, :cond_35

    .line 1178
    const/4 v8, 0x0

    .line 1179
    move-object v6, v3

    .line 1180
    move-object v7, v4

    .line 1181
    move/from16 v9, v36

    .line 1183
    move/from16 v10, v47

    .line 1185
    move/from16 v11, v23

    .line 1187
    move/from16 v13, v29

    .line 1189
    move/from16 v14, v30

    .line 1191
    move/from16 v15, v37

    .line 1193
    move-object/from16 v16, v38

    .line 1195
    move/from16 v17, v39

    .line 1197
    move-object/from16 v18, v24

    .line 1199
    move-object/from16 v19, v28

    .line 1201
    move-object/from16 v20, v40

    .line 1203
    move/from16 v21, p3

    .line 1205
    invoke-virtual/range {v6 .. v21}, Lcom/android/server/asks/UnknownStore;->addPermission(Ljava/lang/String;ZIIIIIIZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1208
    :cond_35
    :goto_1e
    move-object/from16 v17, v0

    .line 1210
    move v7, v1

    .line 1211
    move-object v9, v3

    .line 1212
    move-object/from16 v16, v4

    .line 1214
    move/from16 v21, v23

    .line 1216
    move-object/from16 v18, v24

    .line 1218
    move-object/from16 v19, v28

    .line 1220
    move-object/from16 v12, v34

    .line 1222
    move/from16 v6, v41

    .line 1224
    :goto_1f
    move-object/from16 v8, v42

    .line 1226
    move/from16 v20, v47

    .line 1228
    goto :goto_20

    .line 1229
    :cond_36
    move-object/from16 v42, v8

    .line 1231
    move-object v5, v10

    .line 1232
    move-object/from16 v44, v15

    .line 1234
    const/4 v2, 0x0

    .line 1235
    const/16 v41, 0x1

    .line 1237
    const/16 v43, 0x0

    .line 1239
    move-object/from16 v17, v0

    .line 1241
    move v7, v1

    .line 1242
    move-object v9, v3

    .line 1243
    move/from16 v6, v18

    .line 1245
    move/from16 v21, v23

    .line 1247
    move-object/from16 v18, v24

    .line 1249
    move-object/from16 v19, v28

    .line 1251
    move-object/from16 v12, v34

    .line 1253
    goto :goto_1f

    .line 1254
    :goto_20
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1257
    move-result v0

    .line 1258
    move-object/from16 v1, p1

    .line 1260
    move-object/from16 v2, p2

    .line 1262
    move-object v10, v5

    .line 1263
    move-object/from16 v3, v31

    .line 1265
    move-object/from16 v11, v32

    .line 1267
    move-object/from16 v5, v35

    .line 1269
    move/from16 v13, v41

    .line 1271
    move-object/from16 v15, v44

    .line 1273
    move-object/from16 v4, v48

    .line 1275
    goto/16 :goto_3

    .line 1277
    :cond_37
    move-object/from16 v32, v11

    .line 1279
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 1282
    return-void

    .line 1283
    :goto_21
    :try_start_a
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1286
    :catch_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1289
    return-void

    .line 1290
    :goto_22
    :try_start_b
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 1293
    :catch_7
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1296
    return-void

    .line 1297
    :catch_8
    move-exception v0

    .line 1298
    goto :goto_23

    .line 1299
    :catch_9
    move-exception v0

    .line 1300
    goto :goto_24

    .line 1301
    :goto_23
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1304
    return-void

    .line 1305
    :goto_24
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1308
    :cond_38
    return-void
.end method

.method public static hasTrustedTime()Z
    .locals 1

    .line 1
    const-string v0, "/data/system/.aasa/trustedTime"

    .line 3
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public static isASKSToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)Z
    .locals 12

    .line 1
    const-string v0, " ERROR: AASA_ASKSIsToken "

    .line 3
    const-string v1, "AASA_ASKSManager"

    .line 5
    const-string v2, "META-INF"

    .line 7
    const-string v3, "SEC-INF"

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    :try_start_0
    new-instance v6, Landroid/util/jar/StrictJarFile;

    .line 13
    const/4 v7, 0x1

    .line 14
    invoke-direct {v6, p1, v4, v7}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-virtual {v6}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v5

    .line 21
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v8

    .line 25
    if-eqz v8, :cond_2

    .line 27
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v8

    .line 31
    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 33
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    const-string/jumbo v10, "buildConfirm.crt"

    .line 44
    const-string/jumbo v11, "buildinfo"

    .line 47
    if-eqz v9, :cond_1

    .line 49
    :try_start_2
    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_1

    .line 55
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    .line 57
    iput-object v8, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    .line 81
    :goto_0
    move v4, v7

    .line 82
    goto :goto_4

    .line 83
    :goto_1
    move-object v5, v6

    .line 84
    goto/16 :goto_9

    .line 86
    :goto_2
    move-object v5, v6

    .line 87
    goto :goto_5

    .line 88
    :goto_3
    move-object v5, v6

    .line 89
    goto :goto_7

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception p0

    .line 93
    goto :goto_2

    .line 94
    :catch_1
    move-exception p0

    .line 95
    goto :goto_3

    .line 96
    :cond_1
    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_0

    .line 102
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_0

    .line 108
    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_0

    .line 114
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    .line 116
    iput-object v8, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 128
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    goto :goto_0

    .line 147
    :cond_2
    :goto_4
    invoke-virtual {v6}, Landroid/util/jar/StrictJarFile;->close()V

    .line 150
    goto :goto_8

    .line 151
    :catchall_1
    move-exception p0

    .line 152
    goto :goto_9

    .line 153
    :catch_2
    move-exception p0

    .line 154
    goto :goto_5

    .line 155
    :catch_3
    move-exception p0

    .line 156
    goto :goto_7

    .line 157
    :goto_5
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object p0

    .line 172
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 175
    if-eqz v5, :cond_3

    .line 177
    :goto_6
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->close()V

    .line 180
    goto :goto_8

    .line 181
    :goto_7
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 183
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object p0

    .line 196
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 199
    if-eqz v5, :cond_3

    .line 201
    goto :goto_6

    .line 202
    :cond_3
    :goto_8
    return v4

    .line 203
    :goto_9
    if-eqz v5, :cond_4

    .line 205
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->close()V

    .line 208
    :cond_4
    throw p0
.end method

.method public static isAutoTimeEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const-string v0, "AASA_ASKSManager_SECURETIME"

    .line 3
    const-string/jumbo v1, "isAutoTimeEnabled : "

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 12
    const-string/jumbo p0, "context is null. "

    .line 15
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return v1

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    move-result-object p0

    .line 23
    const-string v2, "auto_time"

    .line 25
    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 28
    move-result p0

    .line 29
    const/4 v2, 0x1

    .line 30
    if-ne p0, v2, :cond_1

    .line 32
    const-string/jumbo p0, "isAutoTimeEnabled : ON"

    .line 35
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    move v1, v2

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string/jumbo p0, "isAutoTimeEnabled : OFF"

    .line 45
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_1

    .line 49
    :goto_0
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 52
    :goto_1
    return v1
.end method

.method public static isDevDevice()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.boot.em.status"

    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "0x1"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public static isGlobalTargetProject()Z
    .locals 14

    .line 1
    const-string v10, "S02"

    .line 3
    const-string v11, "S06"

    .line 5
    const-string v0, "THL"

    .line 7
    const-string v1, "MYM"

    .line 9
    const-string v2, "XSP"

    .line 11
    const-string v3, "SIN"

    .line 13
    const-string v4, "STH"

    .line 15
    const-string v5, "MM1"

    .line 17
    const-string v6, "XME"

    .line 19
    const-string v7, "XXV"

    .line 21
    const-string v8, "CAM"

    .line 23
    const-string v9, "LAO"

    .line 25
    const-string v12, "S09"

    .line 27
    const-string v13, "S10"

    .line 29
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    move-result-object v0

    .line 37
    const-string/jumbo v1, "ro.boot.carrierid"

    .line 40
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "Carrier ID : "

    .line 54
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    const-string v1, "PackageInformation"

    .line 70
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x1

    .line 74
    return v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 76
    return v0
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public static isKorProject()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "CountryISO"

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "KR"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public static isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I
    .locals 10

    .line 1
    const-string v8, "3082041830820300a003020102020601670c27ef2d300d06092a864886f70d01010505003081c1310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e6573733131302f0603550403132853616d73756e67204d65646961204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038323030325a180f32313138313131323135303030305a3081c1310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e6573733131302f0603550403132853616d73756e67204d65646961204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100bb60b4487c7c006073d54adf1e85ee3352f323e7ed751880b7ff99313fa6e4d94236cbc474aad528bfdc5a1a2ba33bdbd17996439ab3746b8bfd243852429c2c036a0d634e2ee2774ae92dede65430698e77368be3fbe640d842a445fe57118111e479ed018142157095b17dd146e689e049e5182931347113c38391c3cec258ca6b675f5bdb4158de58a64c0f37fb86e0f4517d879eb265fc44ee33aca2f1185b74f23e4a48c8a7eb8941055d374c485ca0ae5adb04607e9aedf43d3ae7e15f3e0ef6f05a922c3925fa11488371f94a3847f7cefbbf5fbcf18416f21171b946c6be5acbbe9e55bf610fa333b4d1e6d0c0278bba1817cd70aa1beefb73756fb90203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d0101050500038201010057f1b2b239f9551f4de9fb5afd88b0b7bc67d37bf9bfe8748583d35d14c9291355322e896bbb66d0d56c9708215fad9c40e9398620ea3b1e4641a5883a88472f852cc36afa88b695d5a7af408d5eb583bd4cec9452d0f901b6c38e1f97b55325b596e742fade940391b44d8f19352e8a543fe1c89ad600a8ba32373b1d84fb1b8d34e7541337254fdc9716b2adcfed7105f713ec4fc98c4eee56f7ffa2d2355e16161e2f276a075eda15cc2cdba93c6a49907ad01463cc752708051b8d87001028a6869187589425d3a8992cb9044a7c4d5e3e74a270f6bd1ebf57fd3afb82ab74399a40db820103ea361f7e87b172302ce14b29527bde67c01f4b71832c8665"

    .line 3
    const-string v9, "3082041a30820302a003020102020601670c278709300d06092a864886f70d01010505003081c2310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313230300603550403132953616d73756e6720536861726564204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038313933365a180f32313138313131323135303030305a3081c2310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313230300603550403132953616d73756e6720536861726564204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a02820101009fce256105db13cb1ec14f133d799cf889bf7c29cb8a1a8e8ba1d618a03e01b6705901e7fe2d012b3ad2cfdcad80a2718b4fb09f2d0ef0142cea5fd17afbddb4a1e7d2c99f2a1650ca17faedae9cbc5c13561e723b9ae120f55109aa992d57d2ba7e3c495620e5957c7c75c2ade6d03c5b204ceb460754ccdcd5791267f46283f37923ce3d828ee78a8702770a6356824086c956e403048059d8d07797b1b3d2671f8134b97bcdc009ce0fde7f9fda53d9175440309920838bb7dd129189322cd47851f2be587d288a38af2c32bf1024d9b7e265009db694d6d24d40576eb777b0b3713ac24cbbf1cf0534e565ce5030503c842e43438ca27557b209f475337d0203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101009bddfa8de87f1d9e7467e0251ca54441f6a68f4f3fc84b0fe273ffd7f01598df91b61b5bd61b14d1ecaa633d20c96b950797432e85f144d2cc04b59770e7ec912ffd59573dcc79d438ef04ed81ea98f09c8b4a2f1e7701dcac789ab33c2a2b39d026b72f3bcff9c29bdfbe34edd6be30ac6b050c10e259d4ed99b6efb4c9d0c32020f842e74984fd00bc59bb32e28ca5f32e052e19fa30859da473a402539bf58d87140edc935792f5e2da4a017e71304fbc3a20f25129a19f7f3ff3e6e1c75a6c1cf489d13e80d8a86fc8b6dd879088c4272d4bbd069b4a43bb61210b066c5280293aa580751337b24fda13553d7294b5916433e730a021520330236639e89c"

    .line 5
    const-string v0, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    .line 7
    const-string v1, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    .line 9
    const-string v2, "308204d4308203bca003020102020900f3a752a8cbb7ac6a300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303732373132323632335a170d3338313231323132323632335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bd20d27f5127981cf0855e43e64d8018b92401ff0b4b241eeb54c4fb0e84dcf94cf8da888e34c1c370bc437f77880819f3a9894019f05d5514bc3d20d17e968167d85990fa1a44b9e79aa1da9681dc8d2c39b98b3b257918748c6f5bb9126330d72fdc26065e717f1a5c27c8b075f1a8d7325f7eb2d57ee34d93d76a5c529d2e0789392793c68c8f5090c4d2d093190b3279943550e2f5c864118e84d6c6c6bc67815148db8752e4bf69a9ca729ca4704d966e8dd591506dfc9dd9c8c33bdc7bf58660df6be3b45753983a092c3a4ae899d1f2253017ba606a5b1dda2f5511fcf530ea43c7dc05ff1621d305f12a37148e72078aaf644dadc98f3b6789cb6655020103a382010b30820107301d0603551d0e041604142fa3167aab7de1f13b4edef062fa715c0609f0bf3081d70603551d230481cf3081cc80142fa3167aab7de1f13b4edef062fa715c0609f0bfa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900f3a752a8cbb7ac6a300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100498ed96cbc503fb1b72402dcb8ba364d8aa11dc5b9a7e191d200af4051272519b3099eba16e538044f086a1e36710abf2980efb437b6a9bebfab93417c068ea18cbfdeb8570fca73951684c674eb33c4240e236928ba1197d6b385c40454c3980f6f764131149dbba80756b7b18c5951a8630a6692fdb30227b431175f793a6e39479e8ad8b4b4beca6faabf9fc243b9be47447229524487f5f04cf6661ec818a3756221360bfeee3ccaec9a6dc67694b791a80957b28f11f15fd81eaeb361e4c9f907d3ceb4176f9947b513f8cd89d77044adae7c7f631f27a2e40a8d655a9c73515c796b17a39d0e9de675d62bf785c1e0d65a937c65aadacf788b2dfc14e2"

    .line 11
    const-string v3, "308204d4308203bca003020102020900b830e7f5ede090a8300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009a280ff8cebd5954fbac141d450be91a980a6597b379cb64a19bc4ab39aecb5f06fe2599d3767bb0c27e3e8ac3846cf0b80c09817f8d22be8a55418a068c6983958ffc233a99cd793bc468b0bda139b87ff1550e5ce184647214a1fa4fe2121a0ecdbb1cd33c644c06e7b70455ff097a4f8c51eca2ebefb4602b5d8bb6ed811ec959c1e99e8f353667703563c3c3277bbbd872fe7fa84bd8041efa98d32bb35c44d9c55aa8e766da065176722103fdb63677392c94bd20f5a5ac5c780046bc729a2eec3575a05ddb39836235c8c939f95493aa8f32dd7e7016392716219f0c5fe48874f283af0c217b4c08536b5df7bc302c9e2af08db61ecb49a198c7c4bd2b020103a382010b30820107301d0603551d0e041604144d2270829d5cf4a65bf55a756224bea659c2dfda3081d70603551d230481cf3081cc80144d2270829d5cf4a65bf55a756224bea659c2dfdaa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b830e7f5ede090a8300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100751ea54edeb751de01436db8009352bee64209020fe40641ac09d0016c807fd89258aca374299520e30bc79e77a161c98ddb8ccfc9c8184969114e4478d1b1b374a97e52e07e056dd6b6de5b063c12203e55e284d1de58af2fc6e43c198857b87ac9a472633b8a1cd7e6ebc4e2d675b680d1844d86ab7569129d24e2bcf10cddb2e66c85c1335a3d6479749152058a27135440b795bf509d78009fbda18a6c0cb31b741f79a4ac189d44fd04f65887bb9d950cc2b6f43275e71900fba03b06a9ab9ecd58af0f8c2e0b3569197b043da0601563b0af26a0f52c4b7e834c7ccf5dec4d330d8fd0a049360cd3d9ef0bff09b9812c9ba406c8a6650688b0919a040b"

    .line 13
    const-string v4, "30820411308202f9a003020102020900fd222d6fc87acde0300d06092a864886f70d010105050030819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d3020170d3133303132343035323231305a180f32313132313233313035323231305a30819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100a2c51f56a1c8bf64ada0af152ced2344ac070b447efc85f1b69ce90fbc2b7a71257240c215eedbf7445c474fe34d62bc3035d79ba110859118f1200ecc9ae48b56400e187591272d59734e456d9dfd5a1f3227a30b9448bda84c2901b501295445e204ddb6f9f9e36b2560998f1764e446176fe5d83987220f8ed15106dc7c8ecb6798de45f5fbae54efe2b35a379631f545f84c98243aa4d92ef339330f954ad32e4e97aff69cbf68928484b03a8fa8eafdc8ff2a9801f249302d467b05f99a1680e4fb5b11624d5e53d67f09e86b82dd7305e3e483b12e3720fcccc2bc8857f13b6e1d60512074004f67d86241940eaba34afda2af3904b04913fa50f499f7020103a350304e301d0603551d0e04160414eef0f8211dccf6e442f3388889c9a3ea3ce0236c301f0603551d23041830168014eef0f8211dccf6e442f3388889c9a3ea3ce0236c300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100395c7e7900c471e03fa9850905c6ab1edc5a8b7d43a16689d9bb1ec1a06513c4ea8f7471c6e474244174261cc151ae8d1a61019e0ed81fffee8afa1d01d85a32de796f4b46d0d5ddfcca7d1f90d523b54751f505a4e3b059569f24ba2564d72fbc4081533840f618c2993d935134d3c987605e032f6a12889af3190af1714a90f2a3476b8e0016ab45564bf10e611899babd86af33149ca6838b0a885c752ffe879f37997f262e819c62cf59caa794cfaaf8e3c462f5092a34264f0634316b13a67a644e104dc4070e8b6628a46f41da7e3c741f6edc21152f9f947dde6fe14b58f34e4d9e7abd103cb1ca9e09eb4fa5b553baa413329bd3919caca2d52e6d4b"

    .line 15
    const-string v5, "308204d4308203bca003020102020900b161f3869153be27300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e93d8694c493d50a6224a473d70ddcecd84a2f40ac48bb8206c83a09a94f2db98aaa34f9fcc343b91a87c61254c3a43b0caed03cd839a63037253ea77d949a284dd0b44ebfbabbc2cea838213609d9a5813e88863210ee62c0c0e415611aa7f938ad2bc627c147ac6cf558002028d2e38b1d31aba794867717ddcfcadbeeac6bd345a7bf6433e52cfc93a2157cb048298bd33bf30c143b777e3f074897bcf3b5b181316b678256fd3accf64e88160b0781efd90711ef4acae86848d87e1c10a1747e780c48bcb378a7b437e0405ec54ed7e22c4dbc39f8b03ab1d5eeb7cf4804455fbcab35afb775d79e8f4c4fa4da00b2ce48c991fd94020f7ad089fba13003020103a382010b30820107301d0603551d0e04160414b58d96dcf0127466098625e3ffb03a4f8d0654743081d70603551d230481cf3081cc8014b58d96dcf0127466098625e3ffb03a4f8d065474a181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b161f3869153be27300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010091327721aa614451a785e200349ce2f402049371943001266827c29abdf975dc7b3e6eaa02c41a07b445bb9de0bc43ce25c3c98928a94ff67ad81eec822cbd083ae686cd7126860655adb8d6a6228cf1f7a4a196699669c05b506efa1fca2cad1a150cabd01380e56bb1842651b4ff33bcb619b3c6e65a10cfd99350ea777c3866135523c1bece17f59fba76a2eb429453f7a2a9e6a6cc9e62e5f4b56706ba4c74cb86975aa865bead2209787b33261b9fa222a7117b1724ea3217ad680fd0408c5634278fbdfca0e32b16dc1a6cc245e931cbe84fc7cccdaa7778459e3003a082662ac6d84d485dd368e0eb4c2c9019420c82d1cd0fbd6fcc097353b059baea"

    .line 17
    const-string v6, "308204d4308203bca003020102020900e49d6da353f759af300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3039303630393135353934365a170d3336313032353135353934365a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009ba004179d8018ab0fa3ab3c804899c2ecb6d66784225ae99936b71fd7f059969bb2076b8f2b9d7a5c20d0622e0a766de9602e3e8d60d9d335bdeab78100188f734b4678c7369c2e764913c8f43eede582827b8d1dc679c8fd0f0d0605fc6b87d331e2544bf11790b2a55c3a13463ec4cd35a931ad40dc687f116f1d6ba79eb63a01f96d107b1b166ddacb6d2fe8ac618217dabe6b69d4d9e692ab1970bb4346fd4860586e8387ef7682b07a428bc8036db143079bc37c8830e5a8c3d690f6b0cef5596ed80a9830f2e61c055894be1c2a7b3048602ef6df0e51073e06f0d55177f6aeb96b91b3b4c66b8b6e5b32bbe2afe46f45b0f48300a6ac9f9de1c500b7020103a382010b30820107301d0603551d0e041604149b6890fb4274c2e32d6c5daea2fac4dd0756529a3081d70603551d230481cf3081cc80149b6890fb4274c2e32d6c5daea2fac4dd0756529aa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e49d6da353f759af300c0603551d13040530030101ff300d06092a864886f70d010105050003820101001a76d67e729785f9f22015d9eb9d1998f2d8ce5bc147f65060d58f2f29004a592dd065b651e8d746cf050f3389b1632970d1334e9bce20b43a77a18b6226be0da0a4ab4420dd734dcdd0e049c4f07cf45f3faee8ac90332c14b1f7c4e4f55866a8e3aa71ad1814b5c591e07085dadbe15544ef9bc9591b2c75b373ca9214f8a49acd18ccf061b484c3cd1448bb2af149694d58a53d4c6878b8e06c12e214e2847117ef95348eca3acaa3fffecd7924cb1dd67251eaee14b01870cae92a4238cecac4cda5ba2a2640055303e98e62121a9e49ac0dfcde32b28606f3fc613709fe5ab8aefea4ed53a310c4c9dac7f90242d55697b5690ade195f5253da947f2eaa"

    .line 19
    const-string v7, "3082041e30820306a003020102020601670c2687f3300d06092a864886f70d01010505003081c4310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313430320603550403132b53616d73756e6720506c6174666f726d204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038313833315a180f32313138313131323135303030305a3081c4310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313430320603550403132b53616d73756e6720506c6174666f726d204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100f7049ae9aa6c64c27ebcf799f32bd9118c2870a54b4c9cd200aa33d2f332903b2a6430c608aac3038b65f644d7a82127ec187099beb680c71d3593d2522f94c894c018fb8fb08d3282bea8feafe902ce1a11da806d63366f514b97c6e286221537f758ece2bcb0b2278c4ae9217ff1c078ddb9401ce490f07557b50f6ddbbe43aacae52849a5e465010af4bdf13eae532771f6c8dc370fe715988d615e67dff7870bd4393490d17ab71584dbe7eb549df5b402fb7f0b4db5cc86e4a818601a183fe94a4a2bafd29367507f131490ac3e4e38c61f9f86c82cf2b583656b95139ce4e46c3ce04d9a9587316a47062ced72e186d546bcc39896491ad3242bb658b70203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101003347014ea4d8c43a387b28331fd3ba02a4aee7b9ecd340bce8e517c21ee6cc0e295d999ac5e68352ca59f30b82aa2c0736715cc20710338c34beacec99ba7a153cead3ec03640f6b764dcfa0fabfa4df5972b7abbecf532238ae1a1e2b404379f065c4ea8d148f60eb6f51c783b82b28bc97cc4486bfb08f9bba956323044b67d4fefb560c44fa18aeb397c0d87841295de021be9599396a0e734d2ec69dde9b70545db7aa106901437f07dc6d26f99d97b83380bad7b42536a47742935fe143684d8f31f07df44a7c274eaa33ba51863dbe57a1bc66cb988a97ed17f0f86e596c03a511391ec72dc4c79c039657d8b4b4ddd8a2910fa4872a3935d93a6947ad"

    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    const/16 v1, 0xa

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, -0x1

    .line 29
    if-eqz p1, :cond_2

    .line 31
    move v4, v2

    .line 32
    move v5, v3

    .line 33
    :goto_0
    array-length v6, p1

    .line 34
    if-ge v4, v6, :cond_3

    .line 36
    aget-object v6, p1, v4

    .line 38
    if-eqz v6, :cond_1

    .line 40
    move v6, v2

    .line 41
    :goto_1
    if-ge v6, v1, :cond_1

    .line 43
    aget-object v7, v0, v6

    .line 45
    aget-object v8, p1, v4

    .line 47
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 50
    move-result-object v8

    .line 51
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 58
    move-result v7

    .line 59
    if-nez v7, :cond_0

    .line 61
    move v5, v6

    .line 62
    goto :goto_2

    .line 63
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move v5, v3

    .line 70
    :cond_3
    if-ne v5, v3, :cond_5

    .line 72
    const-string v0, "/data/system/.aasa/AASApolicy/ASKSK.xml"

    .line 74
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 80
    if-eqz p1, :cond_5

    .line 82
    :goto_3
    array-length v0, p1

    .line 83
    if-ge v2, v0, :cond_5

    .line 85
    aget-object v0, p1, v2

    .line 87
    if-eqz v0, :cond_4

    .line 89
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    const/16 v4, 0xd

    .line 99
    const/4 v6, 0x0

    .line 100
    invoke-static {v4, v0, v6}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    .line 103
    move-result v4

    .line 104
    if-eq v4, v3, :cond_4

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    .line 108
    const-string v2, " pkg:"

    .line 110
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string p0, " signValue is same with "

    .line 118
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    const-string p1, "AASA_ASKSManager"

    .line 130
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    goto :goto_4

    .line 134
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    move v1, v5

    .line 138
    :goto_4
    return v1
.end method

.method public static isValidZipFormat(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "AASA_ASKSManager"

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p0, :cond_9

    .line 6
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 12
    const-string v2, "PackageInformation"

    .line 14
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    move-result v2

    .line 21
    add-int/lit8 v2, v2, -0x4

    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const-string v3, ".apk"

    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 39
    return v1

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    .line 44
    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 47
    :try_start_1
    new-instance v5, Ljava/util/zip/ZipInputStream;

    .line 49
    new-instance v6, Ljava/io/FileInputStream;

    .line 51
    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-direct {v5, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 60
    move-result-object p0

    .line 61
    if-nez p0, :cond_2

    .line 63
    move v2, v3

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move v2, v1

    .line 66
    :goto_0
    const/16 v6, 0xf

    .line 68
    :goto_1
    if-eqz v2, :cond_3

    .line 70
    if-eqz p0, :cond_3

    .line 72
    if-eqz v6, :cond_3

    .line 74
    invoke-virtual {v4, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 77
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 80
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 83
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 86
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 89
    move-result-object p0
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    add-int/lit8 v6, v6, -0x1

    .line 92
    goto :goto_1

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    :goto_2
    move-object v2, v4

    .line 95
    goto/16 :goto_c

    .line 97
    :catch_0
    :goto_3
    move-object v2, v4

    .line 98
    goto :goto_6

    .line 99
    :catch_1
    :goto_4
    move-object v2, v4

    .line 100
    goto :goto_9

    .line 101
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 104
    goto :goto_5

    .line 105
    :catch_2
    move v2, v1

    .line 106
    :goto_5
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 109
    move v1, v2

    .line 110
    goto :goto_b

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    move-object v5, v2

    .line 113
    goto :goto_2

    .line 114
    :catch_3
    move-object v5, v2

    .line 115
    goto :goto_3

    .line 116
    :catch_4
    move-object v5, v2

    .line 117
    goto :goto_4

    .line 118
    :catchall_2
    move-exception p0

    .line 119
    move-object v5, v2

    .line 120
    goto :goto_c

    .line 121
    :catch_5
    move-object v5, v2

    .line 122
    goto :goto_6

    .line 123
    :catch_6
    move-object v5, v2

    .line 124
    goto :goto_9

    .line 125
    :goto_6
    :try_start_5
    const-string p0, "Non-Valid Format[2]"

    .line 127
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 130
    if-eqz v2, :cond_4

    .line 132
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 135
    goto :goto_7

    .line 136
    :catch_7
    move v3, v1

    .line 137
    :cond_4
    :goto_7
    if-eqz v5, :cond_5

    .line 139
    :goto_8
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 142
    :cond_5
    move v1, v3

    .line 143
    goto :goto_b

    .line 144
    :catchall_3
    move-exception p0

    .line 145
    goto :goto_c

    .line 146
    :goto_9
    :try_start_8
    const-string p0, "Non-Valid Format[1]"

    .line 148
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 151
    if-eqz v2, :cond_6

    .line 153
    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 156
    goto :goto_a

    .line 157
    :catch_8
    move v3, v1

    .line 158
    :cond_6
    :goto_a
    if-eqz v5, :cond_5

    .line 160
    goto :goto_8

    .line 161
    :catch_9
    :goto_b
    return v1

    .line 162
    :goto_c
    if-eqz v2, :cond_7

    .line 164
    :try_start_a
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 167
    :catch_a
    :cond_7
    if-eqz v5, :cond_8

    .line 169
    :try_start_b
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    .line 172
    :catch_b
    :cond_8
    throw p0

    .line 173
    :cond_9
    return v1
.end method

.method public static isVersionGreaterThan(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    if-le p1, p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string p1, "ASKSManager"

    .line 16
    const-string v0, "Policy version is wrong."

    .line 18
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;Ljava/security/MessageDigest;)V
    .locals 7

    .line 1
    const-string v0, "AASA_ASKSManager"

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x1000

    .line 3
    new-array v3, v2, [B

    if-eqz v1, :cond_1

    :goto_0
    const/4 v4, 0x0

    .line 4
    invoke-virtual {v1, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 5
    invoke-virtual {p2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getCertificates(Ljava/util/zip/ZipEntry;)[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "loadCert(md) : TinyAASA + No RUN "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 9
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 10
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "loadCert(md) : TinyAASA + No IO "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 11
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    :goto_3
    return-void
.end method

.method public static loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;[B)V
    .locals 4

    .line 12
    const-string v0, "AASA_ASKSManager"

    const/4 v1, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 14
    :goto_0
    array-length v2, p2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    .line 16
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getCertificates(Ljava/util/zip/ZipEntry;)[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 17
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "loadCert(B) : No RUN "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 18
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    .line 19
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "loadCert(B) : No IO "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 20
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    :goto_4
    return-void
.end method

.method public static parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    const/4 v3, 0x3

    .line 18
    if-ne v2, v3, :cond_1

    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 23
    move-result v4

    .line 24
    if-le v4, v0, :cond_2

    .line 26
    :cond_1
    if-eq v2, v3, :cond_0

    .line 28
    const/4 v3, 0x4

    .line 29
    if-eq v2, v3, :cond_0

    .line 31
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    const-string/jumbo v3, "package"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 44
    const/4 v2, 0x0

    .line 45
    const-string/jumbo v3, "name"

    .line 48
    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_0

    .line 58
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_0

    .line 64
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-object v1
.end method

.method public static parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew$1(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    .line 4
    return-void
.end method

.method public static parseXMLNew$1(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 4
    move-result v0

    .line 5
    :goto_0
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_3

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 24
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 27
    move-result v2

    .line 28
    if-eq v2, v1, :cond_1

    .line 30
    const-string/jumbo v1, "this is an exceptional case"

    .line 33
    const-string v2, "AASA_ASKSManager"

    .line 35
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-void
.end method

.method public static putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2

    .line 1
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p1}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-virtual {p2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public static readRestrictPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_3

    .line 12
    const/4 v2, 0x3

    .line 13
    if-ne v1, v2, :cond_1

    .line 15
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 18
    move-result v3

    .line 19
    if-le v3, v0, :cond_3

    .line 21
    :cond_1
    if-eq v1, v2, :cond_0

    .line 23
    const/4 v2, 0x4

    .line 24
    if-ne v1, v2, :cond_2

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string/jumbo v2, "permission"

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 40
    const/4 v1, 0x0

    .line 41
    const-string/jumbo v2, "value"

    .line 44
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_0

    .line 50
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 61
    return-void
.end method

.method public static readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "type"

    .line 5
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string/jumbo v2, "datelimit"

    .line 12
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    if-nez p2, :cond_0

    .line 18
    const-string/jumbo p2, "version"

    .line 21
    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    :cond_0
    iget-object v3, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    .line 27
    if-nez v3, :cond_1

    .line 29
    const-string/jumbo v3, "from"

    .line 32
    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    :cond_1
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x1

    .line 38
    if-nez p2, :cond_2

    .line 40
    move v6, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v6, v4

    .line 43
    :goto_0
    if-nez v1, :cond_3

    .line 45
    move v4, v5

    .line 46
    :cond_3
    or-int/2addr v4, v6

    .line 47
    if-nez v4, :cond_6

    .line 49
    if-eqz v2, :cond_6

    .line 51
    if-nez v3, :cond_4

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    const-string v4, "REVOKE"

    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_5

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-static {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->readRestrictPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    .line 70
    :cond_5
    iput-object p2, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    .line 72
    iput-object v1, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    .line 74
    iput-object v2, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    .line 76
    iput-object v3, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    .line 78
    iput-object v0, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    .line 80
    :cond_6
    :goto_1
    return-void
.end method

.method public static setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "package"

    .line 4
    const-string v1, "LIST"

    .line 6
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 13
    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml"

    .line 15
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 21
    move-result v5

    .line 22
    if-nez v5, :cond_0

    .line 24
    const-string p0, "PackageInformation"

    .line 26
    const-string/jumbo v0, "failed to created file related INFOLIST"

    .line 29
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto/16 :goto_3

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto/16 :goto_1

    .line 39
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    .line 41
    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    const-string v4, "UTF-8"

    .line 46
    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 49
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 54
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 57
    const/4 v6, 0x1

    .line 58
    invoke-interface {v2, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 61
    invoke-interface {v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    if-eqz p0, :cond_1

    .line 66
    const/4 v4, 0x0

    .line 67
    :goto_0
    move-object v6, p0

    .line 68
    check-cast v6, Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 73
    move-result v7

    .line 74
    if-ge v4, v7, :cond_1

    .line 76
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    const-string/jumbo v7, "name"

    .line 82
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v8

    .line 86
    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    .line 88
    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 90
    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    const-string/jumbo v7, "signature"

    .line 96
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v8

    .line 100
    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    .line 102
    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    .line 104
    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    const-string/jumbo v7, "execute"

    .line 110
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object v8

    .line 114
    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    .line 116
    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 118
    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    const-string/jumbo v7, "overlay"

    .line 124
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v8

    .line 128
    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    .line 130
    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    .line 132
    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const-string/jumbo v7, "requestInstallerZip"

    .line 138
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    move-result-object v8

    .line 142
    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    .line 144
    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    .line 146
    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const-string/jumbo v7, "initType"

    .line 152
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    move-result-object v8

    .line 156
    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    .line 158
    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    .line 160
    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 163
    const-string v7, "accessibility"

    .line 165
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    move-result-object v8

    .line 169
    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    .line 171
    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    .line 173
    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    const-string/jumbo v7, "hasReqInstallPEM"

    .line 179
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    move-result-object v8

    .line 183
    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    .line 185
    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->hasReqInstallPEM:Ljava/lang/String;

    .line 187
    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    const-string/jumbo v7, "initPkg"

    .line 193
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    move-result-object v8

    .line 197
    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    .line 199
    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->initPkg:Ljava/lang/String;

    .line 201
    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    const-string/jumbo v7, "installAuthority"

    .line 207
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v8

    .line 211
    check-cast v8, Lcom/android/server/asks/InstalledAppInfo;

    .line 213
    iget-object v8, v8, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 215
    invoke-interface {v2, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    const-string/jumbo v7, "installAuthorityDate"

    .line 221
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    move-result-object v6

    .line 225
    check-cast v6, Lcom/android/server/asks/InstalledAppInfo;

    .line 227
    iget-object v6, v6, Lcom/android/server/asks/InstalledAppInfo;->installAuthorityDate:Ljava/lang/String;

    .line 229
    invoke-interface {v2, v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 235
    add-int/lit8 v4, v4, 0x1

    .line 237
    goto/16 :goto_0

    .line 239
    :catchall_1
    move-exception p0

    .line 240
    move-object v3, v5

    .line 241
    goto :goto_3

    .line 242
    :catch_1
    move-exception p0

    .line 243
    move-object v3, v5

    .line 244
    goto :goto_1

    .line 245
    :cond_1
    invoke-interface {v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 251
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 254
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 260
    goto :goto_2

    .line 261
    :catch_2
    move-exception p0

    .line 262
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 265
    goto :goto_2

    .line 266
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    if-eqz v3, :cond_2

    .line 271
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 274
    :cond_2
    :goto_2
    return-void

    .line 275
    :goto_3
    if-eqz v3, :cond_3

    .line 277
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 280
    goto :goto_4

    .line 281
    :catch_3
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 285
    :cond_3
    :goto_4
    throw p0
.end method

.method public static setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V
    .locals 24

    .line 1
    move/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string v2, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml"

    .line 7
    const-string v3, "UTF-8"

    .line 9
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x0

    .line 14
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 17
    move-result-object v4

    .line 18
    new-instance v6, Ljava/io/File;

    .line 20
    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v7, Ljava/io/FileInputStream;

    .line 25
    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 28
    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    .line 30
    invoke-direct {v5, v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 33
    new-instance v6, Lorg/xml/sax/InputSource;

    .line 35
    invoke-direct {v6, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 38
    invoke-virtual {v6, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v4, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 48
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    const-string v6, "PackageInformation"

    .line 51
    if-eqz v5, :cond_9

    .line 53
    const-string/jumbo v9, "installAuthorityDate"

    .line 56
    const-string/jumbo v10, "installAuthority"

    .line 59
    const-string/jumbo v11, "initPkg"

    .line 62
    const-string/jumbo v12, "hasReqInstallPEM"

    .line 65
    const-string v13, "accessibility"

    .line 67
    const-string/jumbo v14, "initType"

    .line 70
    const-string/jumbo v15, "requestInstallerZip"

    .line 73
    const-string/jumbo v8, "overlay"

    .line 76
    move-object/from16 v16, v7

    .line 78
    const-string/jumbo v7, "execute"

    .line 81
    move-object/from16 v17, v2

    .line 83
    const-string/jumbo v2, "package"

    .line 86
    move-object/from16 v18, v3

    .line 88
    const-string/jumbo v3, "signature"

    .line 91
    move-object/from16 v19, v6

    .line 93
    const-string/jumbo v6, "name"

    .line 96
    move-object/from16 v20, v5

    .line 98
    const/4 v5, 0x1

    .line 99
    if-ne v0, v5, :cond_0

    .line 101
    :try_start_2
    invoke-interface {v4, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 104
    move-result-object v0

    .line 105
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 107
    invoke-interface {v0, v6, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    .line 112
    invoke-interface {v0, v3, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 117
    invoke-interface {v0, v7, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    .line 122
    invoke-interface {v0, v8, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    .line 127
    invoke-interface {v0, v15, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    .line 132
    invoke-interface {v0, v14, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    .line 137
    invoke-interface {v0, v13, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->hasReqInstallPEM:Ljava/lang/String;

    .line 142
    invoke-interface {v0, v12, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->initPkg:Ljava/lang/String;

    .line 147
    invoke-interface {v0, v11, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 152
    invoke-interface {v0, v10, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, v1, Lcom/android/server/asks/InstalledAppInfo;->installAuthorityDate:Ljava/lang/String;

    .line 157
    invoke-interface {v0, v9, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    move-object/from16 v5, v20

    .line 162
    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 165
    goto/16 :goto_6

    .line 167
    :catchall_0
    move-exception v0

    .line 168
    :goto_0
    move-object v1, v0

    .line 169
    move-object/from16 v5, v16

    .line 171
    goto/16 :goto_a

    .line 173
    :catch_0
    move-exception v0

    .line 174
    :goto_1
    move-object/from16 v5, v16

    .line 176
    goto/16 :goto_8

    .line 178
    :cond_0
    move-object/from16 v5, v20

    .line 180
    move-object/from16 v20, v9

    .line 182
    const/4 v9, 0x2

    .line 183
    const/16 v21, 0x0

    .line 185
    if-ne v0, v9, :cond_5

    .line 187
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 190
    move-result-object v0

    .line 191
    move-object/from16 v22, v5

    .line 193
    move/from16 v9, v21

    .line 195
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 198
    move-result v5

    .line 199
    if-ge v9, v5, :cond_4

    .line 201
    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 204
    move-result-object v5

    .line 205
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 208
    move-result v5

    .line 209
    move-object/from16 v23, v10

    .line 211
    const/4 v10, 0x1

    .line 212
    if-ne v5, v10, :cond_3

    .line 214
    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Lorg/w3c/dom/Element;

    .line 220
    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    move-result-object v10

    .line 224
    move-object/from16 p0, v0

    .line 226
    iget-object v0, v1, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 228
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_2

    .line 234
    invoke-interface {v5, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    move-result-object v0

    .line 238
    iget-object v10, v1, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    .line 240
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_2

    .line 246
    invoke-interface {v4, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 249
    move-result-object v0

    .line 250
    if-eqz v0, :cond_1

    .line 252
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 254
    invoke-interface {v0, v6, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    .line 259
    invoke-interface {v0, v3, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 264
    invoke-interface {v0, v7, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    .line 269
    invoke-interface {v0, v8, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    .line 274
    invoke-interface {v0, v15, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    .line 279
    invoke-interface {v0, v14, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    .line 284
    invoke-interface {v0, v13, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->hasReqInstallPEM:Ljava/lang/String;

    .line 289
    invoke-interface {v0, v12, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->initPkg:Ljava/lang/String;

    .line 294
    invoke-interface {v0, v11, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v2, v1, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 299
    move-object/from16 v10, v23

    .line 301
    invoke-interface {v0, v10, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v1, v1, Lcom/android/server/asks/InstalledAppInfo;->installAuthorityDate:Ljava/lang/String;

    .line 306
    move-object/from16 v2, v20

    .line 308
    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    move-object/from16 v1, v22

    .line 313
    invoke-interface {v1, v0, v5}, Lorg/w3c/dom/Element;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 316
    move-object v5, v1

    .line 317
    goto/16 :goto_6

    .line 319
    :cond_1
    move-object/from16 v5, v22

    .line 321
    move-object/from16 v10, v23

    .line 323
    const-string v0, "Element tempNode is null"

    .line 325
    move-object/from16 v22, v2

    .line 327
    move-object/from16 v2, v19

    .line 329
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    goto :goto_4

    .line 333
    :cond_2
    :goto_3
    move-object/from16 v5, v22

    .line 335
    move-object/from16 v10, v23

    .line 337
    move-object/from16 v22, v2

    .line 339
    move-object/from16 v2, v19

    .line 341
    goto :goto_4

    .line 342
    :cond_3
    move-object/from16 p0, v0

    .line 344
    goto :goto_3

    .line 345
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 347
    move-object/from16 v0, p0

    .line 349
    move-object/from16 v19, v2

    .line 351
    move-object/from16 v2, v22

    .line 353
    move-object/from16 v22, v5

    .line 355
    goto/16 :goto_2

    .line 357
    :cond_4
    move-object/from16 v5, v22

    .line 359
    goto :goto_6

    .line 360
    :cond_5
    const/4 v2, 0x3

    .line 361
    if-ne v0, v2, :cond_8

    .line 363
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 366
    move-result-object v0

    .line 367
    move/from16 v3, v21

    .line 369
    :goto_5
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 372
    move-result v7

    .line 373
    if-ge v3, v7, :cond_8

    .line 375
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 378
    move-result-object v7

    .line 379
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 382
    move-result v7

    .line 383
    const/4 v8, 0x1

    .line 384
    if-ne v7, v8, :cond_7

    .line 386
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 389
    move-result-object v7

    .line 390
    check-cast v7, Lorg/w3c/dom/Element;

    .line 392
    invoke-interface {v7, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    move-result-object v9

    .line 396
    if-eqz v9, :cond_7

    .line 398
    invoke-interface {v7, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    move-result-object v9

    .line 402
    iget-object v10, v1, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 404
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    move-result v9

    .line 408
    if-eqz v9, :cond_7

    .line 410
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getPreviousSibling()Lorg/w3c/dom/Node;

    .line 413
    move-result-object v0

    .line 414
    if-eqz v0, :cond_6

    .line 416
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 419
    move-result v1

    .line 420
    if-ne v1, v2, :cond_6

    .line 422
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 433
    move-result v1

    .line 434
    if-nez v1, :cond_6

    .line 436
    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 439
    :cond_6
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 442
    goto :goto_6

    .line 443
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 445
    goto :goto_5

    .line 446
    :cond_8
    :goto_6
    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    .line 449
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    .line 456
    move-result-object v0

    .line 457
    const-string/jumbo v1, "{http://xml.apache.org/xslt}indent-amount"

    .line 460
    const-string v2, "4"

    .line 462
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string/jumbo v1, "indent"

    .line 468
    const-string/jumbo v2, "yes"

    .line 471
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string/jumbo v1, "encoding"

    .line 477
    move-object/from16 v2, v18

    .line 479
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    .line 484
    invoke-direct {v1, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 487
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    .line 489
    move-object/from16 v3, v17

    .line 491
    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 497
    goto :goto_7

    .line 498
    :cond_9
    move-object v2, v6

    .line 499
    move-object/from16 v16, v7

    .line 501
    const-string v0, "Element root is null"

    .line 503
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    :goto_7
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 509
    goto :goto_9

    .line 510
    :catch_1
    move-exception v0

    .line 511
    move-object v1, v0

    .line 512
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 515
    goto :goto_9

    .line 516
    :catchall_1
    move-exception v0

    .line 517
    move-object/from16 v16, v7

    .line 519
    goto/16 :goto_0

    .line 521
    :catch_2
    move-exception v0

    .line 522
    move-object/from16 v16, v7

    .line 524
    goto/16 :goto_1

    .line 526
    :catchall_2
    move-exception v0

    .line 527
    move-object v1, v0

    .line 528
    goto :goto_a

    .line 529
    :catch_3
    move-exception v0

    .line 530
    :goto_8
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 533
    if-eqz v5, :cond_a

    .line 535
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 538
    :cond_a
    :goto_9
    return-void

    .line 539
    :goto_a
    if-eqz v5, :cond_b

    .line 541
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 544
    goto :goto_b

    .line 545
    :catch_4
    move-exception v0

    .line 546
    move-object v2, v0

    .line 547
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 550
    :cond_b
    :goto_b
    throw v1
.end method

.method public static setSafeInstallResult(I)I
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 3
    const/16 v0, 0x82

    .line 5
    if-eq p0, v0, :cond_1

    .line 7
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isKorProject()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    return p0

    .line 14
    :cond_0
    const-string p0, "PackageInformation"

    .line 16
    const-string v0, "SafeInstallResult(): This is V OS global project."

    .line 18
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/16 p0, 0x65

    .line 23
    return p0

    .line 24
    :cond_1
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isKorProject()Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 30
    const/4 p0, 0x0

    .line 31
    :cond_2
    return p0
.end method

.method public static setSafeInstallSAInfo(Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string/jumbo v1, "packageName"

    .line 9
    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string/jumbo p4, "signature"

    .line 15
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, p4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string/jumbo p0, "initiatingPackageName"

    .line 23
    invoke-virtual {v0, p0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string/jumbo p0, "originatingPackageName"

    .line 29
    invoke-virtual {v0, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string/jumbo p0, "url"

    .line 35
    invoke-virtual {v0, p0, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string p0, "asksVersion"

    .line 40
    sget-object p4, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, p0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo p0, "policyFile"

    .line 48
    iget-object p2, p2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalListString:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo p0, "policy"

    .line 56
    invoke-virtual {v0, p0, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p0, p1, Lcom/android/server/asks/RETVALUE;->tagName:Ljava/lang/String;

    .line 61
    const-string/jumbo p2, "tagName"

    .line 64
    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p0, p1, Lcom/android/server/asks/RETVALUE;->morerules:Lcom/android/server/asks/MORERULES;

    .line 69
    if-eqz p0, :cond_0

    .line 71
    iget-boolean p0, p0, Lcom/android/server/asks/MORERULES;->result_moreRule_RandomPkg:Z

    .line 73
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    const-string/jumbo p2, "moreRulesRandomPackage"

    .line 80
    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p0, p1, Lcom/android/server/asks/RETVALUE;->morerules:Lcom/android/server/asks/MORERULES;

    .line 85
    iget-boolean p0, p0, Lcom/android/server/asks/MORERULES;->result_moreRule_Malformed:Z

    .line 87
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    const-string/jumbo p2, "moreRulesMalformed"

    .line 94
    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p0, p1, Lcom/android/server/asks/RETVALUE;->morerules:Lcom/android/server/asks/MORERULES;

    .line 99
    iget-boolean p0, p0, Lcom/android/server/asks/MORERULES;->result_moreRule_RANK:Z

    .line 101
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    const-string/jumbo p2, "moreRulesRank"

    .line 108
    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    invoke-static {p9}, Lcom/android/server/asks/ASKSManagerService;->isValidZipFormat(Ljava/lang/String;)Z

    .line 114
    move-result p0

    .line 115
    if-nez p0, :cond_1

    .line 117
    const-string/jumbo p0, "malformed"

    .line 120
    invoke-virtual {v0, p0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    const-string/jumbo p0, "carrierID"

    .line 126
    invoke-virtual {v0, p0, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string/jumbo p0, "koreaTarget"

    .line 132
    invoke-static {p11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    array-length p0, p3

    .line 140
    new-array p0, p0, [Ljava/lang/String;

    .line 142
    const/4 p2, 0x0

    .line 143
    :goto_0
    array-length p4, p3

    .line 144
    if-ge p2, p4, :cond_2

    .line 146
    aget-object p4, p3, p2

    .line 148
    const-string p5, "android.permission."

    .line 150
    const-string p6, ""

    .line 152
    invoke-virtual {p4, p5, p6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 155
    move-result-object p4

    .line 156
    aput-object p4, p0, p2

    .line 158
    add-int/lit8 p2, p2, 0x1

    .line 160
    goto :goto_0

    .line 161
    :cond_2
    const-string p2, ","

    .line 163
    invoke-static {p2, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 166
    move-result-object p0

    .line 167
    const-string/jumbo p2, "permissionList"

    .line 170
    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance p0, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;

    .line 175
    iget-object p2, p1, Lcom/android/server/asks/RETVALUE;->eventNameForSA:Ljava/lang/String;

    .line 177
    iget p1, p1, Lcom/android/server/asks/RETVALUE;->SA:I

    .line 179
    int-to-long p3, p1

    .line 180
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 183
    move-result-object p1

    .line 184
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/util/HashMap;)V

    .line 187
    return-object p0
.end method

.method public static setTrustTimeByToken(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string/jumbo v1, "yyyyMMdd"

    .line 6
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 16
    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    .line 22
    const-wide/16 v0, -0x1

    .line 24
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    move-result-wide v2

    .line 28
    const/4 p0, 0x3

    .line 29
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    .line 32
    return-void
.end method

.method public static setTrustedFile(IJJ)V
    .locals 7

    .line 1
    const-string v0, ","

    .line 3
    const-string/jumbo v1, "setTrustedTime() "

    .line 6
    const-string v2, ""

    .line 8
    const-string v3, "AASA_ASKSManager_SECURETIME"

    .line 10
    const-string/jumbo v4, "setTrustedFile : "

    .line 13
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const-string/jumbo v4, "security.ASKS.time_value"

    .line 19
    invoke-static {p1, p2}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    .line 22
    move-result-object v5

    .line 23
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v4, 0x0

    .line 27
    :try_start_0
    new-instance v5, Ljava/io/PrintWriter;

    .line 29
    const-string v6, "/data/system/.aasa/trustedTime"

    .line 31
    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 64
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    move-object v4, v5

    .line 73
    goto :goto_2

    .line 74
    :catch_0
    move-exception p0

    .line 75
    move-object v4, v5

    .line 76
    goto :goto_0

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    goto :goto_2

    .line 79
    :catch_1
    move-exception p0

    .line 80
    :goto_0
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    if-eqz v4, :cond_0

    .line 97
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 100
    :cond_0
    :goto_1
    return-void

    .line 101
    :goto_2
    if-eqz v4, :cond_1

    .line 103
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 106
    :cond_1
    throw p0
.end method

.method public static updateSmsFilterFeatures()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    const/16 v2, 0x28

    .line 13
    invoke-static {v2, v1}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 16
    const/16 v2, 0x27

    .line 18
    invoke-static {v2, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 21
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v1, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 35
    move v0, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v0, v2

    .line 38
    :goto_0
    const-string/jumbo v1, "security.ASKS.smsfilter_enable"

    .line 41
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "ro.product.model"

    .line 51
    const-string v1, "Unknown"

    .line 53
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Ljava/util/HashMap;

    .line 59
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 62
    const/16 v4, 0x26

    .line 64
    invoke-static {v4, v1}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 67
    const-string/jumbo v4, "target_model"

    .line 70
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_1

    .line 76
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isKorProject()Z

    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_1

    .line 82
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Ljava/util/ArrayList;

    .line 88
    const-string v6, "ALL"

    .line 90
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 93
    move-result v5

    .line 94
    if-nez v5, :cond_2

    .line 96
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    move v2, v3

    .line 110
    :cond_2
    :goto_1
    const-string/jumbo v0, "security.ASKS.smsfilter_target"

    .line 113
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static updateTrustedFile()V
    .locals 8

    .line 1
    const-string v0, "AASA_ASKSManager_SECURETIME"

    .line 3
    const-string/jumbo v1, "updateTrustedFile : "

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    array-length v1, v0

    .line 22
    const/4 v2, 0x3

    .line 23
    if-ne v1, v2, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 26
    aget-object v1, v0, v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x1

    .line 33
    aget-object v2, v0, v2

    .line 35
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 38
    move-result-wide v2

    .line 39
    const/4 v4, 0x2

    .line 40
    aget-object v0, v0, v4

    .line 42
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 45
    move-result-wide v4

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 49
    move-result-wide v6

    .line 50
    sub-long/2addr v2, v4

    .line 51
    add-long/2addr v2, v6

    .line 52
    invoke-static {v1, v2, v3, v6, v7}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    .line 55
    :cond_0
    return-void
.end method

.method public static writeBlockApkList(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "AASA_ASKSManager"

    .line 3
    const-string/jumbo v1, "writeBlockApkList() Fail "

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 9
    const-string v4, "/data/system/.aasa/blockedList.log"

    .line 11
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v4, Ljava/io/FileOutputStream;

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 20
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    .line 22
    invoke-direct {v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 31
    const-string/jumbo p0, "writeBlockApkList() Success"

    .line 34
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    move-object v2, v3

    .line 43
    goto :goto_2

    .line 44
    :catch_0
    move-exception p0

    .line 45
    move-object v2, v3

    .line 46
    goto :goto_0

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :catch_1
    move-exception p0

    .line 50
    :goto_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 70
    :cond_0
    :goto_1
    return-void

    .line 71
    :goto_2
    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 76
    :cond_1
    throw p0
.end method


# virtual methods
.method public final SAreport(Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V
    .locals 7

    .line 1
    if-eqz p4, :cond_5

    .line 3
    const-string/jumbo v0, "isInstalledList"

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_4

    .line 21
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    const-string v1, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_SA_REPORTED_NEW.xml"

    .line 28
    invoke-static {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->getDataByDevice(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    iget-object v3, p3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v3, p3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_4

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    iget-object v2, p3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v2, p3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    new-instance v2, Ljava/io/File;

    .line 77
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 83
    move-result-wide v3

    .line 84
    const-wide/16 v5, 0x2710

    .line 86
    cmp-long v1, v3, v5

    .line 88
    const/4 v3, 0x1

    .line 89
    const-string v4, "APKFromUnknownSource"

    .line 91
    if-gez v1, :cond_1

    .line 93
    const-string v1, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_SA_REPORTED_NEW.xml adding."

    .line 95
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    move v1, v3

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    const-string v1, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_SA_REPORTED_NEW.xml init.."

    .line 102
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, 0x0

    .line 106
    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    .line 108
    invoke-direct {v4, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :try_start_1
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    .line 113
    invoke-direct {v1, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 122
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    :try_start_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 131
    goto :goto_5

    .line 132
    :catch_0
    move-exception v0

    .line 133
    goto :goto_4

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    goto :goto_2

    .line 136
    :catchall_1
    move-exception v0

    .line 137
    :try_start_5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 140
    goto :goto_1

    .line 141
    :catchall_2
    move-exception v1

    .line 142
    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 145
    :goto_1
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 146
    :goto_2
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 149
    goto :goto_3

    .line 150
    :catchall_3
    move-exception v1

    .line 151
    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 154
    :goto_3
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 155
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    :goto_5
    iget-boolean v0, p2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    .line 160
    if-eq v0, v3, :cond_2

    .line 162
    const-wide/16 v0, 0xbea

    .line 164
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    move-result-object v0

    .line 168
    iput-object v0, p4, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->eventValue:Ljava/lang/Long;

    .line 170
    const/16 v0, 0x96

    .line 172
    iput v0, p1, Lcom/android/server/asks/RETVALUE;->policy:I

    .line 174
    :cond_2
    iget-boolean p1, p2, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocWebCase:Z

    .line 176
    if-eqz p1, :cond_3

    .line 178
    iget-object p1, p3, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->referralUrl:Ljava/lang/String;

    .line 180
    if-eqz p1, :cond_3

    .line 182
    const-string p2, "_"

    .line 184
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 187
    move-result-object p1

    .line 188
    if-eqz p1, :cond_3

    .line 190
    array-length p2, p1

    .line 191
    if-le p2, v3, :cond_3

    .line 193
    const-string p2, "K"

    .line 195
    aget-object p1, p1, v3

    .line 197
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result p1

    .line 201
    if-eqz p1, :cond_3

    .line 203
    iget-object p1, p4, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->customDimensionMap:Ljava/util/HashMap;

    .line 205
    const-string p2, "3rdParty"

    .line 207
    const-string/jumbo p3, "kakao"

    .line 210
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_3
    invoke-virtual {p0, p4}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSALog(Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    .line 216
    :cond_4
    return-void

    .line 217
    :cond_5
    const-string p0, "PackageInformation"

    .line 219
    const-string p1, "abnormal SAreport"

    .line 221
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public final addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1
    :try_start_0
    new-instance v0, Lcom/android/server/asks/InstalledAppInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v1, p2, v1

    .line 9
    invoke-static {v1}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    move-object v1, p3

    .line 14
    iget v1, v1, Lcom/android/server/asks/RETVALUE;->isExecute:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    const/16 v2, 0x1f9

    .line 18
    const-string/jumbo v4, "block"

    .line 21
    const-string v5, "allow"

    .line 23
    if-ne v1, v2, :cond_0

    .line 25
    move-object v6, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v6, v4

    .line 28
    :goto_0
    :try_start_1
    const-string/jumbo v1, "except"

    .line 31
    move-object/from16 v7, p4

    .line 33
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    if-eqz v1, :cond_1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v5, v4

    .line 41
    :goto_1
    const-string/jumbo v1, "false"

    .line 44
    const-string/jumbo v2, "true"

    .line 47
    if-eqz p5, :cond_2

    .line 49
    move-object v8, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move-object v8, v1

    .line 52
    :goto_2
    if-eqz p6, :cond_3

    .line 54
    move-object v9, v2

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    move-object v9, v1

    .line 57
    :goto_3
    if-eqz p7, :cond_4

    .line 59
    move-object v10, v2

    .line 60
    goto :goto_4

    .line 61
    :cond_4
    move-object v10, v1

    .line 62
    :goto_4
    move-object v1, v0

    .line 63
    move-object v2, p1

    .line 64
    move-object v4, v6

    .line 65
    move-object v6, v8

    .line 66
    move-object/from16 v7, p4

    .line 68
    move-object v8, v9

    .line 69
    move-object v9, v10

    .line 70
    move-object/from16 v10, p8

    .line 72
    move-object/from16 v11, p9

    .line 74
    :try_start_2
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    move-object v1, p0

    .line 78
    iput-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    goto :goto_5

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 85
    :goto_5
    return-void
.end method

.method public final applyExecutePolicy()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    const-string/jumbo v0, "blockExecute"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 12
    move-result-object v0

    .line 13
    const-string v2, "allowExecute"

    .line 15
    invoke-static {v2, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "PackageInformation"

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_2

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result v4

    .line 34
    new-array v5, v4, [Ljava/lang/String;

    .line 36
    move v6, v3

    .line 37
    :goto_0
    if-ge v6, v4, :cond_1

    .line 39
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Ljava/lang/String;

    .line 45
    aput-object v7, v5, v6

    .line 47
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_0

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    .line 55
    const-string v8, "B::"

    .line 57
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    aget-object v8, v5, v6

    .line 62
    invoke-static {v7, v8, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 70
    const/4 v4, 0x1

    .line 71
    invoke-static {v0, v5, v4}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$Helper;->suspendUnknownSourceAppsForAllUsers(Landroid/content/Context;[Ljava/lang/String;Z)V

    .line 74
    :cond_2
    if-eqz v1, :cond_5

    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_5

    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 85
    move-result v0

    .line 86
    new-array v4, v0, [Ljava/lang/String;

    .line 88
    move v5, v3

    .line 89
    :goto_1
    if-ge v5, v0, :cond_4

    .line 91
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Ljava/lang/String;

    .line 97
    aput-object v6, v4, v5

    .line 99
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_3

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    .line 107
    const-string v7, "A::"

    .line 109
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    aget-object v7, v4, v5

    .line 114
    invoke-static {v6, v7, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 122
    invoke-static {p0, v4, v3}, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager$Helper;->suspendUnknownSourceAppsForAllUsers(Landroid/content/Context;[Ljava/lang/String;Z)V

    .line 125
    :cond_5
    return-void
.end method

.method public final applyScpmPolicy()Z
    .locals 16

    .line 1
    const-string/jumbo v1, "security.ASKS.delta_policy_version"

    .line 4
    const-string/jumbo v2, "security.ASKS.policy_version"

    .line 7
    const-string v3, "/data/system/.aasa/ASKS.zip"

    .line 9
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    const-string v4, "PackageInformation"

    .line 15
    const/4 v5, 0x0

    .line 16
    if-eqz v0, :cond_7

    .line 18
    new-instance v6, Lcom/android/server/asks/RUFSContainer;

    .line 20
    invoke-direct {v6}, Lcom/android/server/asks/RUFSContainer;-><init>()V

    .line 23
    new-instance v7, Lcom/android/server/asks/RuleUpdateForSecurity;

    .line 25
    invoke-direct {v7, v6}, Lcom/android/server/asks/RuleUpdateForSecurity;-><init>(Lcom/android/server/asks/RUFSContainer;)V

    .line 28
    const-string v0, "abnormal version format. "

    .line 30
    const-string/jumbo v8, "try Base policy update from "

    .line 33
    const-string/jumbo v9, "try Delta policy update from "

    .line 36
    const-string v10, "/system/etc/security/askscerts.zip"

    .line 38
    const-string v11, "AASA_RuleUpdateForSecurity_RUFS"

    .line 40
    const-string/jumbo v12, "start to check verification"

    .line 43
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v12, 0x1

    .line 47
    const/4 v13, 0x2

    .line 48
    :try_start_0
    new-instance v14, Ljava/io/File;

    .line 50
    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v15, Ljava/io/File;

    .line 55
    invoke-direct {v15, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    const/4 v10, 0x0

    .line 59
    invoke-static {v14, v10, v15}, Landroid/os/RecoverySystem;->verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V

    .line 62
    const-string v10, "Success to verify SCPM policy file"

    .line 64
    invoke-static {v11, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/android/server/asks/RuleUpdateForSecurity;->getScpmPolicyVersion()Ljava/lang/String;

    .line 70
    move-result-object v10

    .line 71
    const-string v14, "_"

    .line 73
    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 76
    move-result-object v14

    .line 77
    const-string v15, ""

    .line 79
    if-eqz v14, :cond_2

    .line 81
    iput-boolean v12, v6, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    .line 83
    array-length v15, v14

    .line 84
    if-ne v15, v13, :cond_0

    .line 86
    aget-object v15, v14, v12

    .line 88
    const-string v13, "D"

    .line 90
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v13

    .line 94
    if-eqz v13, :cond_0

    .line 96
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v15

    .line 100
    iput-boolean v12, v6, Lcom/android/server/asks/RUFSContainer;->mIsDelta:Z

    .line 102
    aget-object v0, v14, v5

    .line 104
    iput-object v0, v6, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyDeltaVersion:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    goto :goto_2

    .line 128
    :catch_1
    move-exception v0

    .line 129
    goto :goto_3

    .line 130
    :cond_0
    array-length v9, v14

    .line 131
    const/4 v13, 0x2

    .line 132
    if-ne v9, v13, :cond_1

    .line 134
    aget-object v9, v14, v12

    .line 136
    const-string v13, "B"

    .line 138
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v9

    .line 142
    if-eqz v9, :cond_1

    .line 144
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v15

    .line 148
    iput-boolean v5, v6, Lcom/android/server/asks/RUFSContainer;->mIsDelta:Z

    .line 150
    aget-object v0, v14, v5

    .line 152
    iput-object v0, v6, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    move-result-object v8

    .line 163
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object v0

    .line 178
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    move v0, v5

    .line 182
    goto :goto_4

    .line 183
    :cond_2
    :goto_1
    invoke-virtual {v7, v15}, Lcom/android/server/asks/RuleUpdateForSecurity;->isUpdatePolicy(Ljava/lang/String;)Z

    .line 186
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_4

    .line 188
    :goto_2
    const-string v8, "Signature verification is failed."

    .line 190
    invoke-static {v11, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 196
    goto :goto_0

    .line 197
    :goto_3
    const-string v8, "IOException is occurred."

    .line 199
    invoke-static {v11, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 205
    goto :goto_0

    .line 206
    :goto_4
    if-eqz v0, :cond_6

    .line 208
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 211
    move-result v0

    .line 212
    const/16 v4, 0x3e8

    .line 214
    if-ne v0, v4, :cond_3

    .line 216
    move v0, v12

    .line 217
    goto :goto_5

    .line 218
    :cond_3
    move v0, v5

    .line 219
    :goto_5
    if-nez v0, :cond_4

    .line 221
    const-string/jumbo v0, "updatePolicyFromSCPM: enforced fail"

    .line 224
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    move v0, v5

    .line 228
    goto :goto_6

    .line 229
    :cond_4
    const/4 v4, 0x2

    .line 230
    invoke-virtual {v7, v4, v3}, Lcom/android/server/asks/RuleUpdateForSecurity;->updatePolicy(ILjava/lang/String;)Z

    .line 233
    move-result v0

    .line 234
    :goto_6
    if-eqz v0, :cond_8

    .line 236
    iget-boolean v0, v6, Lcom/android/server/asks/RUFSContainer;->mIsDelta:Z

    .line 238
    const-string v3, "AASA_ASKSManager_RUFS"

    .line 240
    if-eqz v0, :cond_5

    .line 242
    iget-object v0, v6, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyDeltaVersion:Ljava/lang/String;

    .line 244
    sput-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    .line 246
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    .line 251
    const-string/jumbo v2, "policy(D) update to   "

    .line 254
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    move-result-object v0

    .line 268
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    goto :goto_7

    .line 272
    :cond_5
    iget-object v0, v6, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    .line 274
    sput-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 276
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    .line 281
    const-string/jumbo v1, "policy(B) update to   "

    .line 284
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v0

    .line 298
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_7
    const-string v0, "adding delta version to asks.xml"

    .line 303
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    .line 309
    move v5, v12

    .line 310
    goto :goto_8

    .line 311
    :cond_6
    const-string v0, "Fail to update SCPM policy."

    .line 313
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    goto :goto_8

    .line 317
    :cond_7
    const-string v0, "SCPM file does not exist"

    .line 319
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_8
    :goto_8
    return v5
.end method

.method public final applyScpmPolicyFromService(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "Only the system can claim applyScpmPolicyFromApp"

    .line 3
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->applyScpmPolicy()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const-string v0, "PackageInformation"

    .line 14
    const-string/jumbo v1, "success to apply Scpm Policy."

    .line 17
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSAInfoForUpdatePolicy(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    .line 28
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->applyExecutePolicy()V

    .line 31
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->updateSmsFilterFeatures()V

    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    return p0
.end method

.method public final checkASKSTarget(I)[Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, " checkASKSTarget type:"

    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const-string v0, "AASA_ASKSManager"

    .line 24
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v2, Ljava/util/HashMap;

    .line 34
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 43
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 45
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 48
    move-result-object p0

    .line 49
    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 52
    move-result-object p0

    .line 53
    const/16 v3, 0x9

    .line 55
    invoke-static {v3, v2}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 58
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_0

    .line 64
    return-object v1

    .line 65
    :cond_0
    if-eqz p0, :cond_8

    .line 67
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object p0

    .line 75
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v3

    .line 79
    const/4 v4, 0x0

    .line 80
    if-eqz v3, :cond_6

    .line 82
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 88
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 91
    move-result-object v3

    .line 92
    if-eqz v3, :cond_1

    .line 94
    move-object v5, v3

    .line 95
    check-cast v5, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 97
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    .line 100
    move-result-object v6

    .line 101
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 103
    const/4 v7, 0x1

    .line 104
    and-int/2addr v6, v7

    .line 105
    if-eqz v6, :cond_2

    .line 107
    move v6, v4

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    move v6, v7

    .line 110
    :goto_1
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    .line 113
    move-result-object v8

    .line 114
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 116
    and-int/lit8 v8, v8, 0x8

    .line 118
    if-eqz v8, :cond_3

    .line 120
    goto :goto_2

    .line 121
    :cond_3
    move v4, v6

    .line 122
    :goto_2
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_4

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v5, "isUpdatedSystemApp:"

    .line 137
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 151
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    goto :goto_3

    .line 155
    :cond_4
    move v7, v4

    .line 156
    :goto_3
    if-eqz v7, :cond_1

    .line 158
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 161
    move-result-object v4

    .line 162
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v5}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 169
    move-result-object v5

    .line 170
    invoke-static {v4, v5}, Lcom/android/server/asks/ASKSManagerService;->isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I

    .line 173
    move-result v4

    .line 174
    const/4 v5, -0x1

    .line 175
    if-eq v4, v5, :cond_1

    .line 177
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 180
    move-result-object v4

    .line 181
    invoke-static {v4}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_1

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v6, "checkDevice Target app :"

    .line 196
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 202
    move-result-object v6

    .line 203
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v6, " ::"

    .line 208
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v5

    .line 218
    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 224
    move-result-object v5

    .line 225
    const-string v6, ""

    .line 227
    :try_start_0
    invoke-static {v5}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    .line 230
    move-result-object v5

    .line 231
    if-eqz v5, :cond_5

    .line 233
    invoke-static {v5}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    .line 236
    move-result-object v5

    .line 237
    invoke-static {v5}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :catch_0
    :cond_5
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    move-result-object v4

    .line 245
    check-cast v4, Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 250
    move-result v4

    .line 251
    if-eqz v4, :cond_1

    .line 253
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 260
    move-result v4

    .line 261
    if-nez v4, :cond_1

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 271
    move-result-object v5

    .line 272
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v5, " is in Blist"

    .line 277
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object v4

    .line 284
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 290
    move-result-object v3

    .line 291
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    goto/16 :goto_0

    .line 296
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 299
    move-result p0

    .line 300
    if-eqz p0, :cond_8

    .line 302
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 305
    move-result p0

    .line 306
    new-array p0, p0, [Ljava/lang/String;

    .line 308
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 311
    move-result v1

    .line 312
    if-ge v4, v1, :cond_7

    .line 314
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    move-result-object v1

    .line 318
    check-cast v1, Ljava/lang/String;

    .line 320
    aput-object v1, p0, v4

    .line 322
    const-string/jumbo v1, "return value["

    .line 325
    const-string v2, "]:"

    .line 327
    invoke-static {v4, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    move-result-object v1

    .line 331
    aget-object v2, p0, v4

    .line 333
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    move-result-object v1

    .line 340
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    add-int/lit8 v4, v4, 0x1

    .line 345
    goto :goto_4

    .line 346
    :cond_7
    return-object p0

    .line 347
    :cond_8
    return-object v1
.end method

.method public final checkCertificateChaining(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[BLjava/security/cert/X509Certificate;)[B
    .locals 12

    .line 1
    const-string v0, ".crt"

    .line 3
    const-string v1, "22"

    .line 5
    const-string v2, "AASA_ASKSManager"

    .line 7
    const-string v3, "ERROR: SignerCert is not verified by CACert "

    .line 9
    const-string v4, "ERROR: CACert is not verified by RootCert "

    .line 11
    const-string v5, "ERROR: rootCert is not verified "

    .line 13
    const-string v6, "Look at system File. "

    .line 15
    const/4 v7, 0x0

    .line 16
    :try_start_0
    const-string/jumbo v8, "x.509"

    .line 19
    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 22
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 23
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    iget-object v10, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_PATH:Ljava/lang/String;

    .line 30
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v10, p1, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    .line 35
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v9

    .line 45
    new-instance v10, Ljava/io/FileInputStream;

    .line 47
    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    :try_start_2
    invoke-virtual {v8, v10}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 53
    move-result-object v9

    .line 54
    check-cast v9, Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v9

    .line 58
    goto :goto_0

    .line 59
    :catch_1
    move-exception v9

    .line 60
    move-object v10, v7

    .line 61
    :goto_0
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v6

    .line 73
    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    iget-object v9, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_SYSTEM_PATH:Ljava/lang/String;

    .line 83
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object p1, p1, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    .line 88
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    new-instance v0, Ljava/io/FileInputStream;

    .line 100
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 103
    :try_start_4
    invoke-virtual {v8, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 106
    move-result-object p1

    .line 107
    move-object v9, p1

    .line 108
    check-cast v9, Ljava/security/cert/X509Certificate;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 110
    move-object v10, v0

    .line 111
    :goto_1
    :try_start_5
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p3, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 118
    const-string/jumbo p1, "signerCert is verificated!"

    .line 121
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 124
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 127
    :try_start_7
    new-instance p1, Ljava/io/FileInputStream;

    .line 129
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->ROOT_CERT_FILE:Ljava/lang/String;

    .line 131
    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 134
    :try_start_8
    invoke-virtual {v8, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 140
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {v9, p3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 147
    const-string p3, "CAcert is verificated!"

    .line 149
    invoke-static {v2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 152
    :try_start_9
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 155
    move-result-object p3

    .line 156
    invoke-virtual {p0, p3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 159
    const-string/jumbo p0, "rootCert is verificated!"

    .line 162
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 168
    return-object p2

    .line 169
    :catch_2
    move-exception p0

    .line 170
    :try_start_a
    new-instance p2, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object p0

    .line 182
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 191
    move-result-object p0

    .line 192
    return-object p0

    .line 193
    :catch_3
    move-object v7, p1

    .line 194
    goto :goto_2

    .line 195
    :catch_4
    move-exception p0

    .line 196
    new-instance p2, Ljava/lang/StringBuilder;

    .line 198
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object p0

    .line 208
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 214
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 217
    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 218
    return-object p0

    .line 219
    :catch_5
    move-object v7, v10

    .line 220
    goto :goto_2

    .line 221
    :catch_6
    move-exception p0

    .line 222
    :try_start_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 224
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object p0

    .line 234
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 240
    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 241
    return-object p0

    .line 242
    :catch_7
    move-object v7, v0

    .line 243
    :catch_8
    :goto_2
    const-string p0, "Token is NOT verificated in CheckCRL!"

    .line 245
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-eqz v7, :cond_0

    .line 250
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 253
    goto :goto_3

    .line 254
    :catch_9
    move-exception p0

    .line 255
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 258
    :cond_0
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 261
    move-result-object p0

    .line 262
    return-object p0
.end method

.method public final checkCurStatus(Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Ljava/util/ArrayList;Z)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isDevDevice:Z

    .line 7
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    .line 15
    const-string v0, "ALLOWSELFUPDATE"

    .line 17
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz v0, :cond_0

    .line 24
    if-eqz p4, :cond_0

    .line 26
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isAllowSelfUpdate:Z

    .line 28
    :cond_0
    const-string v0, "BLOCKSELFUPDATEwithPEM"

    .line 30
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 36
    if-eqz p4, :cond_1

    .line 38
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isBlockSelfUpdateWithPEM:Z

    .line 40
    :cond_1
    const-string v0, "MALFORMED"

    .line 42
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 48
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckZipFormat:Z

    .line 50
    :cond_2
    const-string v0, "CALLPEMLIMIT"

    .line 52
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 56
    const/4 v2, 0x0

    .line 57
    if-eqz v0, :cond_3

    .line 59
    iput-boolean v1, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    .line 64
    :goto_0
    const-string p0, "MCCKORONLY"

    .line 66
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_4

    .line 72
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLimitOnlyKorMCC:Z

    .line 74
    :cond_4
    const-string p0, "TABLETEXCEPT"

    .line 76
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_5

    .line 82
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isTabletExcepted:Z

    .line 84
    :cond_5
    const-string p0, "REQUEST_INSTALL"

    .line 86
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_6

    .line 92
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckRequestInstallPEM:Z

    .line 94
    :cond_6
    const-string p0, "PackageInformation"

    .line 96
    if-eqz p4, :cond_7

    .line 98
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    .line 100
    new-instance p3, Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo p4, "zip case:"

    .line 105
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    iget-boolean p4, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    .line 110
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    const-string p4, " by self update"

    .line 115
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p3

    .line 122
    invoke-static {p0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_7
    iget-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->referralUrl:Ljava/lang/String;

    .line 127
    if-eqz p3, :cond_8

    .line 129
    const-string p4, "WEB"

    .line 131
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 134
    move-result p4

    .line 135
    if-eqz p4, :cond_8

    .line 137
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocWebCase:Z

    .line 139
    new-instance p4, Ljava/lang/StringBuilder;

    .line 141
    const-string v0, "This is Web case:"

    .line 143
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    iget-boolean v0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocWebCase:Z

    .line 148
    invoke-static {p0, p4, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 151
    :cond_8
    if-eqz p3, :cond_9

    .line 153
    const-string p4, "ZIP"

    .line 155
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result p3

    .line 159
    if-eqz p3, :cond_9

    .line 161
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    .line 163
    new-instance p3, Ljava/lang/StringBuilder;

    .line 165
    const-string p4, "This is zip case:"

    .line 167
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    iget-boolean p4, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    .line 172
    invoke-static {p0, p3, p4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 175
    :cond_9
    iget-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->downloadUrl:Ljava/lang/String;

    .line 177
    const/4 p4, 0x0

    .line 178
    if-eqz p3, :cond_13

    .line 180
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocUrlCase:Z

    .line 182
    const-string v0, "HTTPS"

    .line 184
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 187
    move-result v0

    .line 188
    const-string/jumbo v3, "www"

    .line 191
    const/4 v4, 0x4

    .line 192
    const-string/jumbo v5, "http"

    .line 195
    if-eqz v0, :cond_a

    .line 197
    const/4 v0, 0x5

    .line 198
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 201
    move-result-object p3

    .line 202
    invoke-static {v5, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    move-result-object p3

    .line 206
    goto :goto_1

    .line 207
    :cond_a
    const-string v0, "HTTP"

    .line 209
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_b

    .line 215
    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 218
    move-result-object p3

    .line 219
    invoke-static {v5, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    move-result-object p3

    .line 223
    goto :goto_1

    .line 224
    :cond_b
    const-string/jumbo v0, "http://www"

    .line 227
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 230
    move-result v0

    .line 231
    const-string/jumbo v6, "http://"

    .line 234
    if-eqz v0, :cond_c

    .line 236
    const/16 v0, 0xb

    .line 238
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 241
    move-result-object p3

    .line 242
    invoke-static {v6, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    move-result-object p3

    .line 246
    goto :goto_1

    .line 247
    :cond_c
    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 250
    move-result v0

    .line 251
    if-nez v0, :cond_e

    .line 253
    const-string/jumbo v0, "https"

    .line 256
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 259
    move-result v0

    .line 260
    if-nez v0, :cond_e

    .line 262
    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_d

    .line 268
    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 271
    move-result-object p3

    .line 272
    :cond_d
    invoke-static {v6, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    move-result-object p3

    .line 276
    :cond_e
    :goto_1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 278
    invoke-direct {v0, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_2

    .line 282
    :catch_0
    move-exception p3

    .line 283
    invoke-virtual {p3}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 286
    move-object v0, p4

    .line 287
    :goto_2
    if-eqz v0, :cond_f

    .line 289
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 292
    move-result-object p3

    .line 293
    if-eqz p3, :cond_f

    .line 295
    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_10

    .line 301
    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 304
    move-result-object p3

    .line 305
    goto :goto_3

    .line 306
    :cond_f
    move-object p3, p4

    .line 307
    :cond_10
    :goto_3
    iput-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->domain:Ljava/lang/String;

    .line 309
    if-eqz p3, :cond_12

    .line 311
    const-string v0, "(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])"

    .line 313
    :try_start_1
    invoke-virtual {p3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 316
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    goto :goto_4

    .line 318
    :catch_1
    move v0, v2

    .line 319
    :goto_4
    if-eqz v0, :cond_11

    .line 321
    const-string v3, "IP:"

    .line 323
    invoke-virtual {v3, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    move-result-object p3

    .line 327
    invoke-static {p0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    goto :goto_5

    .line 331
    :cond_11
    const-string v3, "Not IP:"

    .line 333
    invoke-virtual {v3, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    move-result-object p3

    .line 337
    invoke-static {p0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    goto :goto_5

    .line 341
    :cond_12
    move v0, v2

    .line 342
    :goto_5
    iput-boolean v0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isIP:Z

    .line 344
    iget-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->domain:Ljava/lang/String;

    .line 346
    invoke-static {p3}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    move-result-object p3

    .line 350
    iput-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->hashDomain:Ljava/lang/String;

    .line 352
    :cond_13
    iget-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->signatures:[Landroid/content/pm/Signature;

    .line 354
    if-eqz p3, :cond_14

    .line 356
    array-length v0, p3

    .line 357
    if-lez v0, :cond_14

    .line 359
    :try_start_2
    aget-object p3, p3, v2

    .line 361
    invoke-static {p3}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 364
    move-result-object p3

    .line 365
    iput-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 367
    goto :goto_6

    .line 368
    :catch_2
    move-exception p3

    .line 369
    iput-object p4, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    .line 371
    invoke-virtual {p3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 374
    :cond_14
    :goto_6
    iget-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    .line 376
    if-eqz p3, :cond_15

    .line 378
    new-instance p3, Ljava/lang/StringBuilder;

    .line 380
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    .line 385
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    .line 390
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    move-result-object p3

    .line 397
    invoke-static {p3}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 400
    move-result-object p3

    .line 401
    iput-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgSigHash:Ljava/lang/String;

    .line 403
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 406
    move-result p3

    .line 407
    if-eqz p3, :cond_16

    .line 409
    new-instance p3, Ljava/lang/StringBuilder;

    .line 411
    const-string/jumbo v0, "pkgSigHash::"

    .line 414
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgSigHash:Ljava/lang/String;

    .line 419
    invoke-static {p3, v0, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    goto :goto_7

    .line 423
    :cond_15
    iput-object p4, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgSigHash:Ljava/lang/String;

    .line 425
    :cond_16
    :goto_7
    iget-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    .line 427
    if-eqz p3, :cond_18

    .line 429
    iput-boolean v2, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    .line 431
    move p3, v2

    .line 432
    :goto_8
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    .line 434
    array-length v3, v0

    .line 435
    if-ge p3, v3, :cond_18

    .line 437
    aget-object v0, v0, p3

    .line 439
    const-string v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 441
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    move-result v0

    .line 445
    if-eqz v0, :cond_17

    .line 447
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    .line 449
    goto :goto_9

    .line 450
    :cond_17
    add-int/lit8 p3, p3, 0x1

    .line 452
    goto :goto_8

    .line 453
    :cond_18
    :goto_9
    iget-object p3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    .line 455
    if-eqz p3, :cond_1a

    .line 457
    move p3, v2

    .line 458
    :goto_a
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    .line 460
    array-length v3, v0

    .line 461
    if-ge p3, v3, :cond_1a

    .line 463
    aget-object v0, v0, p3

    .line 465
    const-string v3, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    move-result v0

    .line 471
    if-eqz v0, :cond_19

    .line 473
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    .line 475
    goto :goto_b

    .line 476
    :cond_19
    add-int/lit8 p3, p3, 0x1

    .line 478
    goto :goto_a

    .line 479
    :cond_1a
    :goto_b
    const-string/jumbo p3, "initType"

    .line 482
    invoke-static {p3, p4}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 485
    move-result-object p3

    .line 486
    if-eqz p3, :cond_1f

    .line 488
    move v0, v2

    .line 489
    :goto_c
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 492
    move-result v3

    .line 493
    if-ge v0, v3, :cond_1f

    .line 495
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 498
    move-result-object v3

    .line 499
    check-cast v3, Ljava/lang/String;

    .line 501
    const-string v4, ","

    .line 503
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 506
    move-result-object v3

    .line 507
    iget-object v4, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    .line 509
    if-eqz v4, :cond_1b

    .line 511
    aget-object v5, v3, v2

    .line 513
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    move-result v4

    .line 517
    if-nez v4, :cond_1c

    .line 519
    :cond_1b
    iget-object v4, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    .line 521
    if-eqz v4, :cond_1e

    .line 523
    aget-object v5, v3, v2

    .line 525
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 528
    move-result v4

    .line 529
    if-eqz v4, :cond_1e

    .line 531
    :cond_1c
    aget-object p3, v3, v1

    .line 533
    const-string/jumbo v0, "except"

    .line 536
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    move-result p3

    .line 540
    if-eqz p3, :cond_1d

    .line 542
    goto :goto_d

    .line 543
    :cond_1d
    new-instance p3, Ljava/lang/StringBuilder;

    .line 545
    const-string/jumbo v0, "installer:"

    .line 548
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 551
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    .line 553
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v0, " :: "

    .line 558
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    .line 563
    invoke-static {p3, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    move v2, v1

    .line 567
    goto :goto_d

    .line 568
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    .line 570
    goto :goto_c

    .line 571
    :cond_1f
    :goto_d
    iget-boolean p3, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    .line 573
    if-nez p3, :cond_22

    .line 575
    if-eqz v2, :cond_22

    .line 577
    const-string/jumbo p3, "requestInstallerZip"

    .line 580
    invoke-static {p3, p4}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 583
    move-result-object p3

    .line 584
    if-eqz p3, :cond_22

    .line 586
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    .line 588
    if-eqz v0, :cond_20

    .line 590
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 593
    move-result v0

    .line 594
    if-nez v0, :cond_21

    .line 596
    :cond_20
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    .line 598
    if-eqz v0, :cond_22

    .line 600
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 603
    move-result p3

    .line 604
    if-eqz p3, :cond_22

    .line 606
    :cond_21
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    .line 608
    :cond_22
    iget-boolean p3, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    .line 610
    if-nez p3, :cond_25

    .line 612
    if-eqz v2, :cond_25

    .line 614
    const-string p3, "accessibility"

    .line 616
    invoke-static {p3, p4}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 619
    move-result-object p3

    .line 620
    if-eqz p3, :cond_25

    .line 622
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    .line 624
    if-eqz v0, :cond_23

    .line 626
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 629
    move-result v0

    .line 630
    if-nez v0, :cond_24

    .line 632
    :cond_23
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    .line 634
    if-eqz v0, :cond_25

    .line 636
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 639
    move-result p3

    .line 640
    if-eqz p3, :cond_25

    .line 642
    :cond_24
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    .line 644
    :cond_25
    iget-boolean p3, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    .line 646
    if-nez p3, :cond_28

    .line 648
    iget-boolean p3, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckRequestInstallPEM:Z

    .line 650
    if-eqz p3, :cond_28

    .line 652
    if-eqz v2, :cond_28

    .line 654
    const-string/jumbo p3, "hasReqInstallPEM"

    .line 657
    invoke-static {p3, p4}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 660
    move-result-object p3

    .line 661
    if-eqz p3, :cond_28

    .line 663
    iget-object p4, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    .line 665
    if-eqz p4, :cond_26

    .line 667
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 670
    move-result p4

    .line 671
    if-nez p4, :cond_27

    .line 673
    :cond_26
    iget-object p2, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    .line 675
    if-eqz p2, :cond_28

    .line 677
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 680
    move-result p2

    .line 681
    if-eqz p2, :cond_28

    .line 683
    :cond_27
    iput-boolean v1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    .line 685
    :cond_28
    const/16 p2, 0x1c

    .line 687
    iput p2, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalList:I

    .line 689
    iget-boolean p2, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    .line 691
    iget-object p3, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->target_model:Ljava/lang/String;

    .line 693
    const/16 p4, 0x1e

    .line 695
    const/16 v0, 0x1f

    .line 697
    const-string v1, "ALL"

    .line 699
    const/16 v2, 0x1a

    .line 701
    if-nez p2, :cond_2b

    .line 703
    iget-boolean p2, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    .line 705
    if-eqz p2, :cond_29

    .line 707
    goto :goto_e

    .line 708
    :cond_29
    iget-boolean p2, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isIP:Z

    .line 710
    if-eqz p2, :cond_2f

    .line 712
    const-string/jumbo p2, "changed By IP"

    .line 715
    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    new-instance p0, Ljava/util/HashMap;

    .line 720
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 723
    invoke-static {v2, p0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 726
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 729
    move-result p2

    .line 730
    if-nez p2, :cond_2a

    .line 732
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 735
    move-result p0

    .line 736
    if-eqz p0, :cond_2f

    .line 738
    :cond_2a
    iput v0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalList:I

    .line 740
    goto :goto_10

    .line 741
    :cond_2b
    :goto_e
    new-instance p2, Ljava/util/HashMap;

    .line 743
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 746
    invoke-static {v2, p2}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 749
    iget-boolean v2, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    .line 751
    if-eqz v2, :cond_2c

    .line 753
    const-string/jumbo v2, "changed By zip"

    .line 756
    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    goto :goto_f

    .line 760
    :cond_2c
    iget-boolean v2, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    .line 762
    if-eqz v2, :cond_2d

    .line 764
    const-string/jumbo v2, "changed By A11Y"

    .line 767
    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_2d
    :goto_f
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 773
    move-result p0

    .line 774
    if-nez p0, :cond_2e

    .line 776
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 779
    move-result p0

    .line 780
    if-eqz p0, :cond_2f

    .line 782
    :cond_2e
    iput p4, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalList:I

    .line 784
    :cond_2f
    :goto_10
    iget p0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalList:I

    .line 786
    if-eq p0, p4, :cond_31

    .line 788
    if-eq p0, v0, :cond_30

    .line 790
    const-string p0, "TOTALLIST"

    .line 792
    iput-object p0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalListString:Ljava/lang/String;

    .line 794
    goto :goto_11

    .line 795
    :cond_30
    const-string p0, "TOTALLIST_WEB"

    .line 797
    iput-object p0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalListString:Ljava/lang/String;

    .line 799
    goto :goto_11

    .line 800
    :cond_31
    const-string p0, "TOTALLIST_A11Y"

    .line 802
    iput-object p0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalListString:Ljava/lang/String;

    .line 804
    :goto_11
    return-void
.end method

.method public final checkDeletableListForASKS()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "AASA_ASKSManager_DELETABLE"

    .line 7
    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 15
    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/util/HashMap;

    .line 21
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v3

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_3

    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 51
    iget-object v6, v5, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 53
    if-eqz v6, :cond_0

    .line 55
    iget-object v6, v6, Lcom/android/server/asks/ASKSManagerService$Deletable;->mDatelimit:Ljava/lang/String;

    .line 57
    if-eqz v0, :cond_0

    .line 59
    if-eqz v6, :cond_0

    .line 61
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 64
    move-result v7

    .line 65
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    move-result v6

    .line 69
    if-le v7, v6, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 74
    move-result-object v6

    .line 75
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 78
    move-result-object v7

    .line 79
    check-cast v7, Ljava/lang/String;

    .line 81
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 84
    move-result-object v6

    .line 85
    const/4 v7, 0x0

    .line 86
    iput-object v7, v5, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 88
    if-eqz v6, :cond_1

    .line 90
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 93
    move-result-object v5

    .line 94
    const-string v6, "/data"

    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    if-eqz v5, :cond_1

    .line 102
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string v6, "a app deleted by the restricted policy. the date is expired ["

    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Ljava/lang/String;

    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v6, "]"

    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v5

    .line 130
    const/4 v6, 0x4

    .line 131
    invoke-static {v6, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 134
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 137
    move-result-object v7

    .line 138
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 141
    move-result-object v4

    .line 142
    move-object v8, v4

    .line 143
    check-cast v8, Ljava/lang/String;

    .line 145
    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    .line 150
    move-result v11

    .line 151
    const/4 v9, -0x1

    .line 152
    const/4 v10, 0x0

    .line 153
    const/4 v12, 0x0

    .line 154
    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    goto :goto_1

    .line 158
    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    const-string/jumbo v6, "does not found delete target - "

    .line 166
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Ljava/lang/String;

    .line 175
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v4

    .line 182
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :catch_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 188
    goto/16 :goto_0

    .line 190
    :catch_1
    const-string v4, "NumberFormatException ::"

    .line 192
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    goto/16 :goto_0

    .line 197
    :cond_2
    const-string p0, "ERROR::: Unknown caller"

    .line 199
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_3
    return-void
.end method

.method public final checkExistUnknownAppList()V
    .locals 20

    .line 1
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml"

    .line 3
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    const-string v1, "PackageInformation"

    .line 11
    const-string/jumbo v0, "info_list not exists"

    .line 14
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Ljava/io/File;

    .line 19
    const-string v2, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_LIST.xml"

    .line 21
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 27
    move-result v3

    .line 28
    const-string v4, "Installed Unknown app list : "

    .line 30
    const/4 v5, 0x0

    .line 31
    if-eqz v3, :cond_3

    .line 33
    new-instance v3, Ljava/util/HashMap;

    .line 35
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 38
    invoke-static {v2, v3}, Lcom/android/server/asks/ASKSManagerService;->getDataByDevice(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 46
    move-result-object v6

    .line 47
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    new-instance v6, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 55
    move v7, v5

    .line 56
    :goto_0
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 59
    move-result v8

    .line 60
    if-ge v7, v8, :cond_1

    .line 62
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v8

    .line 66
    move-object v10, v8

    .line 67
    check-cast v10, Ljava/lang/String;

    .line 69
    new-instance v8, Lcom/android/server/asks/InstalledAppInfo;

    .line 71
    invoke-direct {v8}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    .line 74
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v9

    .line 78
    if-eqz v9, :cond_0

    .line 80
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object v9

    .line 84
    check-cast v9, Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 89
    move-result v9

    .line 90
    if-nez v9, :cond_0

    .line 92
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v9

    .line 96
    check-cast v9, Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v9

    .line 102
    move-object v11, v9

    .line 103
    check-cast v11, Ljava/lang/String;

    .line 105
    const-string/jumbo v18, "none"

    .line 108
    const-string/jumbo v19, "none"

    .line 111
    const-string v12, "allow"

    .line 113
    const-string/jumbo v13, "block"

    .line 116
    const-string/jumbo v14, "false"

    .line 119
    const-string/jumbo v15, "warning"

    .line 122
    const-string/jumbo v16, "false"

    .line 125
    const-string/jumbo v17, "false"

    .line 128
    move-object v9, v8

    .line 129
    invoke-virtual/range {v9 .. v19}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 137
    goto :goto_0

    .line 138
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v2

    .line 154
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {v6}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_2

    .line 169
    const-string/jumbo v0, "installed_list File is deleted"

    .line 172
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    goto/16 :goto_9

    .line 177
    :cond_2
    const-string/jumbo v0, "installed_list File is not deleted"

    .line 180
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    goto/16 :goto_9

    .line 185
    :cond_3
    new-instance v0, Ljava/io/File;

    .line 187
    const-string v2, "/data/system/UnknownSourceAppList.xml"

    .line 189
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    .line 194
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 200
    move-result v3

    .line 201
    const/4 v6, 0x0

    .line 202
    if-eqz v3, :cond_9

    .line 204
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 211
    move-result-object v3

    .line 212
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    .line 214
    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    :try_start_1
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 220
    invoke-static {v3}, Lcom/android/server/asks/ASKSManagerService;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    .line 223
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    goto :goto_2

    .line 228
    :catch_0
    move-exception v0

    .line 229
    move-object v3, v0

    .line 230
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 233
    goto :goto_2

    .line 234
    :catchall_0
    move-exception v0

    .line 235
    move-object v1, v0

    .line 236
    move-object v6, v7

    .line 237
    goto/16 :goto_7

    .line 239
    :catch_1
    move-exception v0

    .line 240
    goto :goto_1

    .line 241
    :catchall_1
    move-exception v0

    .line 242
    move-object v1, v0

    .line 243
    goto/16 :goto_7

    .line 245
    :catch_2
    move-exception v0

    .line 246
    move-object v7, v6

    .line 247
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    if-eqz v7, :cond_4

    .line 252
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 255
    :cond_4
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    .line 257
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_7

    .line 266
    move v6, v5

    .line 267
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 270
    move-result v0

    .line 271
    if-ge v6, v0, :cond_6

    .line 273
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 276
    move-result-object v0

    .line 277
    check-cast v0, Ljava/lang/String;

    .line 279
    move-object/from16 v15, p0

    .line 281
    :try_start_5
    iget-object v7, v15, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 286
    move-result-object v7

    .line 287
    const/high16 v8, 0x8000000

    .line 289
    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 292
    move-result-object v7

    .line 293
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 295
    invoke-virtual {v7}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 298
    move-result-object v7

    .line 299
    const-string v8, ""

    .line 301
    if-eqz v7, :cond_5

    .line 303
    array-length v9, v7

    .line 304
    const/4 v10, 0x1

    .line 305
    if-lt v9, v10, :cond_5

    .line 307
    aget-object v7, v7, v5

    .line 309
    invoke-static {v7}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 312
    move-result-object v7

    .line 313
    move-object v9, v7

    .line 314
    goto :goto_4

    .line 315
    :catch_3
    move-exception v0

    .line 316
    goto :goto_5

    .line 317
    :cond_5
    move-object v9, v8

    .line 318
    :goto_4
    const-string v10, "allow"

    .line 320
    const-string/jumbo v11, "block"

    .line 323
    const-string/jumbo v12, "false"

    .line 326
    const-string/jumbo v13, "warning"

    .line 329
    const-string/jumbo v14, "false"

    .line 332
    const-string/jumbo v16, "false"

    .line 335
    const-string/jumbo v17, "none"

    .line 338
    const-string/jumbo v18, "none"

    .line 341
    new-instance v8, Lcom/android/server/asks/InstalledAppInfo;

    .line 343
    invoke-direct {v8}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    .line 346
    move-object v7, v8

    .line 347
    move-object v5, v8

    .line 348
    move-object v8, v0

    .line 349
    move-object/from16 v15, v16

    .line 351
    move-object/from16 v16, v17

    .line 353
    move-object/from16 v17, v18

    .line 355
    invoke-virtual/range {v7 .. v17}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_3

    .line 361
    goto :goto_6

    .line 362
    :goto_5
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 365
    goto :goto_6

    .line 366
    :catch_4
    const-string v5, "NameNotFoundException packageName : "

    .line 368
    invoke-static {v5, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 373
    const/4 v5, 0x0

    .line 374
    goto :goto_3

    .line 375
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 377
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 383
    move-result-object v2

    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    move-result-object v0

    .line 391
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {v3}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    .line 400
    goto :goto_9

    .line 401
    :cond_7
    invoke-static {v6}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V

    .line 404
    const-string v0, "Create file info_list"

    .line 406
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    goto :goto_9

    .line 410
    :goto_7
    if-eqz v6, :cond_8

    .line 412
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 415
    goto :goto_8

    .line 416
    :catch_5
    move-exception v0

    .line 417
    move-object v2, v0

    .line 418
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 421
    :cond_8
    :goto_8
    throw v1

    .line 422
    :cond_9
    invoke-static {v6}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V

    .line 425
    const-string v0, "Unknown app does not exist but create file info_list "

    .line 427
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_a
    :goto_9
    return-void
.end method

.method public final checkFollowingLegitimateWay(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    const-string p2, "Only the system can claim checkFollowingLegitimateWay"

    .line 3
    invoke-static {p2}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string p1, " has not followed legitimate way"

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    const-string p1, "ASKSManager"

    .line 35
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final checkIfSuspiciousValue(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string p0, "Only the system and sub system can claim checkIfTargetFromManager()"

    .line 3
    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    new-instance p0, Ljava/io/File;

    .line 8
    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 14
    move-result p0

    .line 15
    const/4 v0, 0x0

    .line 16
    if-nez p0, :cond_0

    .line 18
    return-object v0

    .line 19
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    .line 21
    new-instance v1, Ljava/io/File;

    .line 23
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 32
    move-result-object p2

    .line 33
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 40
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 43
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 46
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    const-string v2, ""

    .line 49
    move-object v3, v2

    .line 50
    :goto_0
    const/4 v4, 0x1

    .line 51
    if-eq v1, v4, :cond_5

    .line 53
    :try_start_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 56
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    const/4 v5, 0x2

    .line 58
    if-ne v1, v5, :cond_4

    .line 60
    const-string/jumbo v1, "type"

    .line 63
    const-string/jumbo v5, "value"

    .line 66
    const-string/jumbo v6, "contents"

    .line 69
    if-eqz v4, :cond_2

    .line 71
    :try_start_3
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_2

    .line 77
    invoke-interface {p2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    if-nez v1, :cond_1

    .line 87
    const-string/jumbo v1, "block"

    .line 90
    :cond_1
    move-object v3, v1

    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_3

    .line 94
    :cond_2
    if-eqz v4, :cond_4

    .line 96
    const-string/jumbo v7, "pId"

    .line 99
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_4

    .line 105
    if-eqz v2, :cond_4

    .line 107
    if-eqz p3, :cond_3

    .line 109
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_4

    .line 115
    invoke-interface {p2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    invoke-interface {p4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-interface {p4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_4

    .line 132
    invoke-interface {p2, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    invoke-interface {p4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-interface {p4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    goto :goto_2

    .line 143
    :cond_4
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 146
    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    goto :goto_0

    .line 148
    :cond_5
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 151
    goto :goto_6

    .line 152
    :catch_0
    move-exception p0

    .line 153
    goto :goto_5

    .line 154
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 157
    goto :goto_4

    .line 158
    :catchall_1
    move-exception p0

    .line 159
    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 162
    :goto_4
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 163
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    :goto_6
    return-object v0
.end method

.method public final checkIntegrityNew(Lcom/android/server/asks/ASKSManagerService$ASKSSession;I[B[B)[B
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move-object/from16 v4, p4

    .line 11
    const-string v5, "AASA_ASKSManager"

    .line 13
    const-string v6, "ERROR: checkIntegrity "

    .line 15
    const-string v7, "[Token] fail check verify : "

    .line 17
    array-length v8, v3

    .line 18
    const-string v9, "22"

    .line 20
    const/16 v10, 0x200

    .line 22
    if-ge v8, v10, :cond_0

    .line 24
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_0
    :try_start_0
    new-array v11, v10, [B

    .line 31
    const/4 v12, 0x0

    .line 32
    invoke-static {v3, v12, v11, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    invoke-static/range {p3 .. p3}, Lcom/android/server/asks/ASKSManagerService;->getTokenContents([B)[B

    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_19

    .line 41
    array-length v10, v3

    .line 42
    const/4 v13, 0x1

    .line 43
    if-ne v10, v13, :cond_1

    .line 45
    goto/16 :goto_7

    .line 47
    :cond_1
    const-string v10, "SHA256WithRSAEncryption"

    .line 49
    invoke-static {v10}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 52
    move-result-object v10

    .line 53
    const-string/jumbo v14, "x.509"

    .line 56
    invoke-static {v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 59
    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/4 v15, 0x2

    .line 61
    const-string v12, "PackageInformation"

    .line 63
    const/4 v8, 0x3

    .line 64
    if-eq v2, v13, :cond_7

    .line 66
    if-eq v2, v15, :cond_5

    .line 68
    if-eq v2, v8, :cond_3

    .line 70
    const/4 v4, 0x0

    .line 71
    :cond_2
    const/4 v7, 0x0

    .line 72
    :goto_0
    const/16 v16, 0x0

    .line 74
    goto/16 :goto_5

    .line 76
    :cond_3
    :try_start_1
    const-string v15, "[Token] check verify "

    .line 78
    invoke-static {v12, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    if-eqz v4, :cond_4

    .line 83
    :try_start_2
    new-instance v15, Ljava/io/ByteArrayInputStream;

    .line 85
    invoke-direct {v15, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    invoke-virtual {v14, v15}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    :try_start_4
    invoke-virtual {v15}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    move-object v7, v4

    .line 98
    const/4 v4, 0x0

    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    const/4 v8, 0x0

    .line 102
    :goto_1
    const/16 v16, 0x0

    .line 104
    goto/16 :goto_9

    .line 106
    :catch_0
    move-exception v0

    .line 107
    goto :goto_3

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    move-object v1, v0

    .line 110
    :try_start_5
    invoke-virtual {v15}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 113
    goto :goto_2

    .line 114
    :catchall_2
    move-exception v0

    .line 115
    move-object v2, v0

    .line 116
    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 119
    :goto_2
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 120
    :goto_3
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 139
    const/4 v1, 0x0

    .line 140
    return-object v1

    .line 141
    :catch_1
    move-exception v0

    .line 142
    const/4 v8, 0x0

    .line 143
    :goto_4
    const/16 v16, 0x0

    .line 145
    goto/16 :goto_8

    .line 147
    :cond_4
    const/4 v1, 0x0

    .line 148
    return-object v1

    .line 149
    :cond_5
    :try_start_8
    new-instance v4, Ljava/io/File;

    .line 151
    iget-object v7, v0, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    .line 153
    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 159
    move-result v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 160
    if-eqz v4, :cond_6

    .line 162
    :try_start_9
    new-instance v4, Ljava/io/FileInputStream;

    .line 164
    new-instance v7, Ljava/io/File;

    .line 166
    iget-object v15, v0, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    .line 168
    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 174
    :try_start_a
    invoke-static {v1, v3}, Lcom/android/server/asks/ASKSManagerService;->findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B

    .line 177
    move-result-object v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 178
    if-eqz v7, :cond_2

    .line 180
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 183
    :catch_2
    return-object v7

    .line 184
    :catchall_3
    move-exception v0

    .line 185
    move-object/from16 v16, v4

    .line 187
    const/4 v8, 0x0

    .line 188
    goto/16 :goto_9

    .line 190
    :catch_3
    move-exception v0

    .line 191
    move-object/from16 v16, v4

    .line 193
    const/4 v8, 0x0

    .line 194
    goto/16 :goto_8

    .line 196
    :cond_6
    const/4 v4, 0x0

    .line 197
    return-object v4

    .line 198
    :catchall_4
    move-exception v0

    .line 199
    const/4 v4, 0x0

    .line 200
    move-object v8, v4

    .line 201
    move-object/from16 v16, v8

    .line 203
    goto/16 :goto_9

    .line 205
    :catch_4
    move-exception v0

    .line 206
    const/4 v4, 0x0

    .line 207
    move-object v8, v4

    .line 208
    move-object/from16 v16, v8

    .line 210
    goto/16 :goto_8

    .line 212
    :cond_7
    const/4 v4, 0x0

    .line 213
    :try_start_c
    new-instance v7, Landroid/util/jar/StrictJarFile;

    .line 215
    iget-object v15, v1, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    .line 217
    const/4 v4, 0x0

    .line 218
    invoke-direct {v7, v15, v4, v13}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 221
    :try_start_d
    iget-object v4, v1, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    .line 223
    invoke-virtual {v7, v4}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 226
    move-result-object v4

    .line 227
    if-eqz v4, :cond_18

    .line 229
    invoke-virtual {v7, v4}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 232
    move-result-object v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 233
    :try_start_e
    invoke-static {v1, v3}, Lcom/android/server/asks/ASKSManagerService;->findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B

    .line 236
    move-result-object v15
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 237
    if-eqz v15, :cond_9

    .line 239
    :try_start_f
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V

    .line 242
    if-eqz v4, :cond_8

    .line 244
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 247
    :catch_5
    :cond_8
    return-object v15

    .line 248
    :cond_9
    move-object/from16 v16, v7

    .line 250
    const/4 v7, 0x0

    .line 251
    :goto_5
    if-eq v2, v8, :cond_a

    .line 253
    :try_start_10
    invoke-virtual {v14, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 256
    move-result-object v7

    .line 257
    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 259
    goto :goto_6

    .line 260
    :catchall_5
    move-exception v0

    .line 261
    move-object/from16 v8, v16

    .line 263
    move-object/from16 v16, v4

    .line 265
    goto/16 :goto_9

    .line 267
    :catch_6
    move-exception v0

    .line 268
    move-object/from16 v8, v16

    .line 270
    move-object/from16 v16, v4

    .line 272
    goto/16 :goto_8

    .line 274
    :cond_a
    :goto_6
    if-eqz v16, :cond_b

    .line 276
    invoke-virtual/range {v16 .. v16}, Landroid/util/jar/StrictJarFile;->close()V

    .line 279
    :cond_b
    if-eqz v4, :cond_c

    .line 281
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 284
    :cond_c
    invoke-virtual {v10, v7}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 287
    array-length v14, v3

    .line 288
    const/4 v15, 0x0

    .line 289
    invoke-virtual {v10, v3, v15, v14}, Ljava/security/Signature;->update([BII)V

    .line 292
    invoke-virtual {v10, v11}, Ljava/security/Signature;->verify([B)Z

    .line 295
    move-result v10

    .line 296
    if-nez v10, :cond_f

    .line 298
    const-string v0, "Token is NOT verificated in checkIntegrity!"

    .line 300
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    .line 306
    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 307
    if-eqz v16, :cond_d

    .line 309
    :try_start_11
    invoke-virtual/range {v16 .. v16}, Landroid/util/jar/StrictJarFile;->close()V

    .line 312
    :cond_d
    if-eqz v4, :cond_e

    .line 314
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    .line 317
    :catch_7
    :cond_e
    return-object v0

    .line 318
    :cond_f
    :try_start_12
    const-string/jumbo v10, "sigCert verify OK"

    .line 321
    invoke-static {v12, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 324
    if-eq v2, v13, :cond_15

    .line 326
    const/4 v10, 0x2

    .line 327
    if-eq v2, v10, :cond_15

    .line 329
    if-eq v2, v8, :cond_12

    .line 331
    if-eqz v16, :cond_10

    .line 333
    :try_start_13
    invoke-virtual/range {v16 .. v16}, Landroid/util/jar/StrictJarFile;->close()V

    .line 336
    :cond_10
    if-eqz v4, :cond_11

    .line 338
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 341
    :catch_8
    :cond_11
    const-string/jumbo v0, "this is not on the way to check integrity"

    .line 344
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    .line 350
    move-result-object v0

    .line 351
    return-object v0

    .line 352
    :cond_12
    :try_start_14
    invoke-virtual {v0, v3, v7}, Lcom/android/server/asks/ASKSManagerService;->checkRootCertificate([BLjava/security/cert/X509Certificate;)[B

    .line 355
    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 356
    if-eqz v16, :cond_13

    .line 358
    :try_start_15
    invoke-virtual/range {v16 .. v16}, Landroid/util/jar/StrictJarFile;->close()V

    .line 361
    :cond_13
    if-eqz v4, :cond_14

    .line 363
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    .line 366
    :catch_9
    :cond_14
    return-object v0

    .line 367
    :cond_15
    :try_start_16
    invoke-virtual {v0, v1, v3, v7}, Lcom/android/server/asks/ASKSManagerService;->checkCertificateChaining(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[BLjava/security/cert/X509Certificate;)[B

    .line 370
    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 371
    if-eqz v16, :cond_16

    .line 373
    :try_start_17
    invoke-virtual/range {v16 .. v16}, Landroid/util/jar/StrictJarFile;->close()V

    .line 376
    :cond_16
    if-eqz v4, :cond_17

    .line 378
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a

    .line 381
    :catch_a
    :cond_17
    return-object v0

    .line 382
    :catchall_6
    move-exception v0

    .line 383
    move-object/from16 v16, v4

    .line 385
    move-object v8, v7

    .line 386
    goto :goto_9

    .line 387
    :catch_b
    move-exception v0

    .line 388
    move-object/from16 v16, v4

    .line 390
    move-object v8, v7

    .line 391
    goto :goto_8

    .line 392
    :catchall_7
    move-exception v0

    .line 393
    move-object v8, v7

    .line 394
    goto/16 :goto_1

    .line 396
    :catch_c
    move-exception v0

    .line 397
    move-object v8, v7

    .line 398
    goto/16 :goto_4

    .line 400
    :cond_18
    :try_start_18
    const-string v0, "Token Cert does not exist!"

    .line 402
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V

    .line 408
    const-string v0, "21"

    .line 410
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 413
    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 414
    :try_start_19
    invoke-virtual {v7}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d

    .line 417
    :catch_d
    return-object v0

    .line 418
    :cond_19
    :goto_7
    return-object v3

    .line 419
    :goto_8
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 421
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    move-result-object v0

    .line 431
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    .line 437
    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 438
    if-eqz v8, :cond_1a

    .line 440
    :try_start_1b
    invoke-virtual {v8}, Landroid/util/jar/StrictJarFile;->close()V

    .line 443
    :cond_1a
    if-eqz v16, :cond_1b

    .line 445
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_e

    .line 448
    :catch_e
    :cond_1b
    return-object v0

    .line 449
    :catchall_8
    move-exception v0

    .line 450
    :goto_9
    if-eqz v8, :cond_1c

    .line 452
    :try_start_1c
    invoke-virtual {v8}, Landroid/util/jar/StrictJarFile;->close()V

    .line 455
    :cond_1c
    if-eqz v16, :cond_1d

    .line 457
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_f

    .line 460
    :catch_f
    :cond_1d
    throw v0
.end method

.method public final checkNetworkConnection(Landroid/content/Context;)I
    .locals 3

    .line 1
    const-string/jumbo v0, "checkNetworkConnection : "

    .line 4
    const-string v1, "AASA_ASKSManager_SECURETIME"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 12
    const-string/jumbo p0, "context is null. "

    .line 15
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return v0

    .line 19
    :cond_0
    const-string/jumbo v1, "connectivity"

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 28
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x1

    .line 39
    if-ne v1, v2, :cond_1

    .line 41
    iget p0, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_WIFI:I

    .line 43
    return p0

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 50
    iget p0, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_MOBILE:I

    .line 52
    return p0

    .line 53
    :cond_2
    return v0
.end method

.method public final checkRestrictedPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 9
    const/4 p1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 15
    if-eqz p0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    move-result v1

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    move-result v0

    .line 35
    if-le v1, v0, :cond_1

    .line 37
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    .line 39
    if-eqz p0, :cond_1

    .line 41
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_1

    .line 47
    const/4 p1, 0x4

    .line 48
    :cond_1
    return p1
.end method

.method public final checkRootCertificate([BLjava/security/cert/X509Certificate;)[B
    .locals 8

    .line 1
    const-string v0, "22"

    .line 3
    const-string v1, "AASA_ASKSManager"

    .line 5
    const-string v2, "[Token] ERROR: SignerCert is not verified by RootCert "

    .line 7
    const-string v3, "[Token] ERROR: rootCert is not verified "

    .line 9
    const-string v4, "PackageInformation"

    .line 11
    const-string v5, "[Token] checkRootCertificate start "

    .line 13
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const/4 v5, 0x0

    .line 17
    :try_start_0
    const-string/jumbo v6, "x.509"

    .line 20
    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 23
    move-result-object v6

    .line 24
    new-instance v7, Ljava/io/FileInputStream;

    .line 26
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->ROOT_CERT_FILE:Ljava/lang/String;

    .line 28
    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 31
    :try_start_1
    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 37
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {p2, v5}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 44
    const-string p2, "[Token] Signer authentication has been confirmed."

    .line 46
    invoke-static {v4, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 49
    :try_start_2
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p0, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 56
    const-string p0, "[Token] rootCert is verificated!"

    .line 58
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    return-object p1

    .line 65
    :catch_0
    move-exception p0

    .line 66
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :catch_1
    move-object v5, v7

    .line 90
    goto :goto_0

    .line 91
    :catch_2
    move-exception p0

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 113
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 114
    return-object p0

    .line 115
    :catch_3
    :goto_0
    const-string p0, "Token is NOT verificated in CheckCRL!"

    .line 117
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz v5, :cond_0

    .line 122
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 125
    goto :goto_1

    .line 126
    :catch_4
    move-exception p0

    .line 127
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 133
    move-result-object p0

    .line 134
    return-object p0
.end method

.method public final checkSecurityEnabled()I
    .locals 0

    .line 1
    const/16 p0, 0x80

    .line 3
    return p0
.end method

.method public final checkUnknownSourcePackage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 46

    move-object/from16 v11, p0

    move-object/from16 v10, p1

    move-object/from16 v9, p2

    move-object/from16 v8, p5

    move-object/from16 v7, p6

    move-object/from16 v6, p7

    move/from16 v0, p12

    move-object/from16 v5, p13

    move-object/from16 v4, p14

    .line 1
    const-string v1, "Only the system can claim checkUnknownSourcePackage"

    invoke-static {v1}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2
    const-string v2, "PackageInformation"

    if-eqz v10, :cond_0

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    if-nez v9, :cond_1

    :cond_0
    move-object v10, v2

    move/from16 v25, v3

    goto/16 :goto_3d

    .line 3
    :cond_1
    const-string v1, " ::"

    .line 4
    invoke-static {v10, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    sget-object v12, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "::"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    const-string/jumbo v1, "ro.boot.carrierid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 7
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isGlobalTargetProject()Z

    move-result v1

    const/4 v14, 0x1

    if-eqz v1, :cond_2

    .line 8
    const-string v1, "Global Target devices......"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v27, v3

    move v1, v14

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isKorProject()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    move/from16 v27, v14

    goto :goto_0

    :cond_3
    move v1, v3

    move/from16 v27, v1

    .line 10
    :goto_0
    iget-object v12, v11, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "rampart_blocked_unknown_apps"

    invoke-static {v12, v13, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 11
    const-string v13, " "

    const/16 v28, 0x82

    if-ne v12, v14, :cond_9

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x2b

    .line 13
    invoke-static {v2, v1}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 14
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    const-string v4, "RAMPARTPackageInformation"

    if-ge v2, v14, :cond_4

    .line 15
    const-string/jumbo v1, "rampart: no superpass rule"

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {v11, v4, v1, v6, v0}, Lcom/android/server/asks/ASKSManagerService;->isTrustedStoreCheck(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Z

    move-result v2

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "rampart: superpass:"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_5

    .line 18
    invoke-virtual {v11, v4, v1, v7, v0}, Lcom/android/server/asks/ASKSManagerService;->isTrustedStoreCheck(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Z

    move-result v2

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    :goto_1
    if-eqz v6, :cond_7

    .line 20
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 21
    invoke-virtual {v11, v0, v6, v14}, Lcom/android/server/asks/ASKSManagerService;->isSimpleTrustore(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 22
    :cond_7
    :try_start_0
    aget-object v0, v8, v3

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v10, v0, v7, v6}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSAInfoForTrustStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 24
    :goto_2
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    const-string/jumbo v0, "self update -> block for rampart"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, v28

    goto :goto_3

    .line 26
    :cond_8
    const-string v0, ""

    .line 27
    invoke-static {v0, v10, v15, v7, v15}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-static {v0, v6, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x7f

    :goto_3
    return v3

    :cond_9
    if-nez v1, :cond_c

    if-eqz v27, :cond_a

    goto :goto_4

    .line 29
    :cond_a
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "This is not target of Safe Install"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v3

    .line 30
    :cond_c
    :goto_4
    invoke-static {v10, v8}, Lcom/android/server/asks/ASKSManagerService;->isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_d

    .line 31
    const-string v0, "OEM SIGNED:"

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_d
    if-eqz v6, :cond_e

    .line 32
    invoke-virtual {v11, v0, v6, v3}, Lcom/android/server/asks/ASKSManagerService;->isSimpleTrustore(ILjava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Simple TS:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " From "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 34
    :cond_e
    const-string v12, ","

    if-eqz v1, :cond_29

    .line 35
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    if-eqz v6, :cond_10

    .line 36
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    goto :goto_6

    :cond_f
    :goto_5
    move-object v3, v15

    goto/16 :goto_18

    .line 37
    :cond_10
    :goto_6
    const-string/jumbo v14, "com.google.android.packageinstaller"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/4 v14, 0x0

    move/from16 v25, v1

    move-object/from16 v19, v13

    goto :goto_8

    .line 38
    :cond_11
    const-string/jumbo v14, "com.sec.android.app.samsungapps"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    const-string/jumbo v14, "com.android.vending"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    :cond_12
    move/from16 v25, v1

    move-object/from16 v19, v13

    const/4 v1, 0x1

    goto :goto_7

    .line 39
    :cond_13
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0x29

    .line 40
    invoke-static {v3, v14}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 41
    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v3

    move-object/from16 v19, v13

    const-string v13, "PackageInformation"

    move/from16 v25, v1

    const/4 v1, 0x1

    if-ge v3, v1, :cond_14

    .line 42
    const-string/jumbo v3, "skip TS due to non policy"

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move v14, v1

    goto :goto_8

    .line 43
    :cond_14
    const-string/jumbo v1, "checking.. ts: "

    .line 44
    invoke-static {v1, v7, v13}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v11, v13, v14, v7, v0}, Lcom/android/server/asks/ASKSManagerService;->isTrustedStoreCheck(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Z

    move-result v14

    :goto_8
    if-eqz v14, :cond_15

    goto :goto_5

    :cond_15
    if-nez v6, :cond_16

    move-object v1, v7

    goto :goto_9

    :cond_16
    move-object v1, v6

    .line 46
    :goto_9
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 47
    const-string v3, "1 :"

    const-string v13, " init:"

    .line 48
    invoke-static {v3, v10, v13, v7, v15}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 49
    invoke-static/range {p6 .. p6}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_17

    .line 50
    const-string v3, "2 :"

    const-string v13, " org:"

    .line 51
    invoke-static {v3, v10, v13, v6, v15}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 52
    invoke-static/range {p7 .. p7}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_17
    const-string/jumbo v3, "initPkg"

    const/4 v13, 0x0

    invoke-static {v3, v13}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1c

    const/4 v13, 0x0

    const/16 v18, 0x1

    .line 54
    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_1b

    .line 55
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_19

    .line 56
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v20, v3

    const-string v3, " compared "

    .line 57
    invoke-static {v10, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v22, v12

    const/16 v21, 0x0

    .line 58
    aget-object v12, v14, v21

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " from "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v16, 0x1

    aget-object v12, v14, v16

    .line 59
    invoke-static {v3, v12, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_18
    move-object/from16 v20, v3

    move-object/from16 v22, v12

    const/16 v16, 0x1

    const/16 v21, 0x0

    .line 60
    :goto_b
    aget-object v3, v14, v21

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/16 v18, 0x0

    goto :goto_c

    :cond_19
    move-object/from16 v20, v3

    move-object/from16 v22, v12

    const/16 v16, 0x1

    :cond_1a
    :goto_c
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v20

    move-object/from16 v12, v22

    goto :goto_a

    :cond_1b
    move-object/from16 v22, v12

    const/16 v16, 0x1

    move/from16 v14, v18

    goto :goto_d

    :cond_1c
    move-object/from16 v22, v12

    const/16 v16, 0x1

    move/from16 v14, v16

    :goto_d
    if-eqz v14, :cond_28

    .line 61
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/16 v12, 0x2e

    .line 62
    invoke-static {v12, v3}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 63
    invoke-static {v1}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 64
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "::"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v15

    const-string v15, "PackageInformation"

    invoke-static {v15, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    const/16 v20, 0x1

    const/16 v21, 0x0

    if-eqz v13, :cond_1f

    .line 66
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_1f

    .line 67
    const-string v12, "ALL"

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    :goto_e
    move/from16 v0, v20

    goto :goto_f

    .line 68
    :cond_1d
    invoke-virtual {v11, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getSigByPackage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 70
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v15, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_e

    :cond_1f
    move/from16 v0, v21

    :goto_f
    if-eqz v0, :cond_20

    .line 72
    const-string v3, "SafeInstall warning."

    invoke-static {v15, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 p12, v0

    goto/16 :goto_13

    .line 73
    :cond_20
    const-string/jumbo v3, "initPkg"

    const/4 v12, 0x0

    invoke-static {v3, v12}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_26

    move/from16 v12, v21

    move v13, v12

    .line 74
    :goto_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_25

    .line 75
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move/from16 p12, v0

    const-string v0, ","

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 76
    array-length v14, v0

    move-object/from16 v29, v3

    const/4 v3, 0x2

    if-lt v14, v3, :cond_24

    .line 77
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 78
    const-string/jumbo v3, "comp: "

    const-string v14, " with "

    .line 79
    invoke-static {v3, v1, v14}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 80
    aget-object v14, v0, v21

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " from "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, v0, v20

    .line 81
    invoke-static {v3, v14, v15}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_21
    aget-object v3, v0, v21

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    aget-object v0, v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_23
    move-object/from16 v29, v3

    :cond_24
    :goto_11
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p12

    move-object/from16 v3, v29

    goto :goto_10

    :cond_25
    move/from16 p12, v0

    move/from16 v21, v13

    goto :goto_12

    :cond_26
    move/from16 p12, v0

    :goto_12
    if-nez v21, :cond_27

    .line 83
    const-string v0, "SafeInstall warning.."

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_27
    :goto_13
    move/from16 v20, p12

    :goto_14
    move/from16 v3, v20

    goto :goto_15

    :cond_28
    move-object/from16 v18, v15

    const/4 v3, 0x0

    .line 84
    :goto_15
    :try_start_1
    new-instance v0, Lcom/android/server/asks/InstalledAppInfo;

    invoke-direct {v0}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    const/4 v12, 0x0

    .line 85
    aget-object v12, v8, v12

    invoke-static {v12}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "allow"

    const-string v20, "allow"

    const-string/jumbo v21, "true"

    const-string/jumbo v29, "nonStore"

    const-string/jumbo v30, "true"

    const-string/jumbo v31, "false"

    const-string/jumbo v32, "none"

    const-string/jumbo v33, "none"
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v13, v22

    move-object v12, v0

    move-object/from16 v35, v13

    move-object/from16 v34, v19

    move-object/from16 v13, p1

    move/from16 p12, v3

    move/from16 v3, v16

    move-object/from16 v3, v18

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    move-object/from16 v18, v29

    move-object/from16 v19, v30

    move-object/from16 v20, v31

    move-object/from16 v21, v32

    move-object/from16 v22, v33

    :try_start_2
    invoke-virtual/range {v12 .. v22}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput-object v1, v0, Lcom/android/server/asks/InstalledAppInfo;->initPkg:Ljava/lang/String;

    .line 87
    iput-object v0, v11, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_17

    :catch_1
    move-exception v0

    goto :goto_16

    :catch_2
    move-exception v0

    move/from16 p12, v3

    move-object/from16 v3, v18

    move-object/from16 v34, v19

    move-object/from16 v35, v22

    .line 88
    :goto_16
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_17
    move/from16 v21, p12

    goto :goto_19

    .line 89
    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " From :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_29
    move/from16 v25, v1

    move-object/from16 v35, v12

    move-object/from16 v34, v13

    move-object v3, v15

    const/16 v21, 0x0

    .line 90
    :goto_19
    const-string/jumbo v0, "ro.product.model"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_88

    .line 92
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_88

    .line 93
    new-instance v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;

    .line 94
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v10, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    iput-object v9, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    move-object/from16 v13, p3

    iput-object v13, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    move-object/from16 v12, p4

    iput-object v12, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->baseCodePath:Ljava/lang/String;

    .line 96
    iput-object v8, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->signatures:[Landroid/content/pm/Signature;

    iput-object v7, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    iput-object v6, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    move/from16 v1, p9

    .line 97
    iput v1, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sdkVersion:I

    move-object/from16 v13, p10

    iput-object v13, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->referralUrl:Ljava/lang/String;

    move-object/from16 v13, p11

    iput-object v13, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->downloadUrl:Ljava/lang/String;

    .line 98
    new-instance v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;

    invoke-direct {v13, v0}, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v0

    const-string v1, "PackageInformation"

    if-nez v0, :cond_2b

    .line 100
    const-string/jumbo v0, "disable DevParm option."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v3

    :cond_2a
    :goto_1a
    const/4 v3, 0x0

    goto/16 :goto_1e

    .line 101
    :cond_2b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v18, v3

    const/16 v3, 0x2c

    .line 102
    invoke-static {v3, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 103
    const-string/jumbo v3, "changeStatusForDev"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string/jumbo v3, "initiatingPackageName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    const-string v6, " is changed to "

    if-eqz v16, :cond_2c

    .line 105
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_2c

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "changeStatus[init]:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 107
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    .line 108
    :cond_2c
    const-string/jumbo v3, "originatingPackageName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 109
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_2d

    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "changeStatus[orig]:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 111
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    .line 112
    :cond_2d
    const-string/jumbo v3, "downloadUrl"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 113
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_2e

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "changeStatus[downUrl]:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 115
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->downloadUrl:Ljava/lang/String;

    .line 116
    :cond_2e
    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 117
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_2f

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "changeStatus[PkgName]:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 119
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    goto :goto_1b

    :cond_2f
    const/4 v7, 0x0

    .line 120
    :goto_1b
    const-string/jumbo v3, "permList"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    .line 121
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_31

    .line 122
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    .line 123
    :goto_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_30

    .line 124
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "changeStatus[Pem]:"

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v9, v7

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v8, p5

    goto :goto_1c

    .line 126
    :cond_30
    iput-object v9, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    .line 127
    :cond_31
    const-string/jumbo v3, "servicePermList"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 128
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 130
    :goto_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_32

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "changeStatus[ServicePem]:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 133
    :cond_32
    iput-object v3, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    goto/16 :goto_1a

    .line 134
    :goto_1e
    invoke-virtual {v11, v13, v14, v15, v3}, Lcom/android/server/asks/ASKSManagerService;->checkCurStatus(Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Ljava/util/ArrayList;Z)V

    .line 135
    const-string v12, "[Token] Popup result : "

    const/4 v9, 0x2

    const-string/jumbo v1, "none"

    if-eqz v5, :cond_42

    if-eqz v4, :cond_42

    .line 136
    const-string v0, "[Token] safeInstallToken exists"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :try_start_3
    invoke-static {v5, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 138
    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 139
    invoke-virtual {v11, v8, v7, v0, v6}, Lcom/android/server/asks/ASKSManagerService;->checkIntegrityNew(Lcom/android/server/asks/ASKSManagerService$ASKSSession;I[B[B)[B

    move-result-object v0

    if-nez v0, :cond_34

    move/from16 v6, v25

    .line 140
    invoke-virtual {v11, v10, v14, v13, v6}, Lcom/android/server/asks/ASKSManagerService;->updateTokenValue(Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Z)V

    .line 141
    const-string v0, "[Token] tokenContents is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    move-object v9, v11

    move-object/from16 v19, v15

    move-object/from16 v44, v18

    move-object v15, v2

    move-object v11, v10

    goto/16 :goto_28

    :catch_3
    move-exception v0

    move-object v9, v11

    move-object/from16 v19, v15

    move-object/from16 v44, v18

    move-object v15, v2

    move-object v11, v10

    goto/16 :goto_27

    :cond_34
    move/from16 v6, v25

    .line 142
    array-length v7, v0

    const/4 v3, 0x1

    if-eq v7, v3, :cond_35

    array-length v7, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-ne v7, v9, :cond_36

    :cond_35
    move-object v9, v11

    move-object/from16 v19, v15

    move-object/from16 v44, v18

    move-object v15, v2

    move-object v11, v10

    goto/16 :goto_26

    :cond_36
    const/4 v7, 0x0

    .line 143
    :try_start_4
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v16

    .line 144
    invoke-virtual/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 145
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 146
    invoke-static {v3}, Lcom/android/server/asks/AuthorizedTokenManager;->parseXML(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/asks/AuthorizedToken;

    move-result-object v7
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1f

    :catch_4
    move-exception v0

    .line 147
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "[Token] parseAuthorizedToken parsing error :"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageInformation_Token"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    if-eqz v7, :cond_41

    .line 148
    iget-object v0, v7, Lcom/android/server/asks/AuthorizedToken;->policy:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 149
    iget-object v0, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    iget-object v3, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/asks/ASKSManagerService;->getInstalledPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v3, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v8

    .line 151
    const-string/jumbo v9, "none"

    .line 152
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    .line 153
    const-string v4, "PackageInformation_Token"

    if-eqz v9, :cond_38

    move-object/from16 v9, p5

    .line 154
    invoke-static {v7, v3, v9, v8}, Lcom/android/server/asks/AuthorizedTokenManager;->checkTokenConditions(Lcom/android/server/asks/AuthorizedToken;Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 155
    const-string v3, "[Token] exist parents  : token conditions success"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v3, v7, Lcom/android/server/asks/AuthorizedToken;->policy:Ljava/lang/String;

    :goto_20
    move-object v8, v3

    goto :goto_21

    .line 157
    :cond_37
    const-string/jumbo v3, "safeInstallParents"

    goto :goto_20

    :cond_38
    move-object/from16 v9, p5

    .line 158
    invoke-static {v7, v3, v9, v8}, Lcom/android/server/asks/AuthorizedTokenManager;->checkTokenConditions(Lcom/android/server/asks/AuthorizedToken;Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 159
    const-string v3, "[Token] not exist parents : token conditions success"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v3, v7, Lcom/android/server/asks/AuthorizedToken;->policy:Ljava/lang/String;

    goto :goto_20

    .line 161
    :cond_39
    const-string/jumbo v3, "safeInstall"

    goto :goto_20

    .line 162
    :goto_21
    const-string/jumbo v3, "safeInstall"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-nez v3, :cond_40

    .line 163
    :try_start_6
    const-string/jumbo v3, "safeInstallParents"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz v3, :cond_3b

    .line 164
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Token] parent policy"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_3a

    if-eqz v21, :cond_3a

    const/16 v21, 0x0

    .line 165
    :cond_3a
    iget-object v1, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v1, v14, v13, v6}, Lcom/android/server/asks/ASKSManagerService;->updateTokenValue(Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v19, v15

    move-object/from16 v44, v18

    move-object v15, v2

    goto/16 :goto_24

    .line 166
    :cond_3b
    :try_start_8
    new-instance v4, Lcom/android/server/asks/RETVALUE;

    .line 167
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 168
    const-string v41, ""

    const-string v42, ""

    const/16 v39, 0x0

    const/16 v40, 0x1f9

    const/16 v43, 0x0

    const/16 v37, 0x4

    const/16 v38, 0x0

    move-object/from16 v36, v4

    invoke-virtual/range {v36 .. v43}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 169
    iget-object v0, v7, Lcom/android/server/asks/AuthorizedToken;->installAuthority:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    if-nez v0, :cond_3c

    .line 170
    :try_start_9
    iget-object v0, v7, Lcom/android/server/asks/AuthorizedToken;->installAuthority:Ljava/lang/String;

    .line 171
    iget-object v1, v7, Lcom/android/server/asks/AuthorizedToken;->expireDate:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-object v3, v1

    goto :goto_22

    .line 172
    :cond_3c
    :try_start_a
    const-string v0, "[Token] not exist parents policy in Token"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    move-object v0, v1

    move-object v3, v0

    :goto_22
    if-eqz v6, :cond_3d

    if-eqz v21, :cond_3d

    const/16 v21, 0x0

    :cond_3d
    if-eqz v6, :cond_3f

    .line 173
    :try_start_b
    iget-object v1, v11, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

    if-eqz v1, :cond_3e

    .line 174
    iput-object v0, v1, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 175
    iput-object v3, v1, Lcom/android/server/asks/InstalledAppInfo;->installAuthorityDate:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :cond_3e
    move-object v11, v8

    move-object/from16 v19, v15

    move-object/from16 v44, v18

    move-object v15, v2

    goto :goto_23

    .line 176
    :cond_3f
    :try_start_c
    iget-object v6, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    iget-object v7, v7, Lcom/android/server/asks/AuthorizedToken;->policy:Ljava/lang/String;

    iget-boolean v1, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    move-object/from16 v16, v8

    iget-boolean v8, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v9, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    move/from16 v17, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v15

    move-object v15, v2

    move-object v2, v6

    move-object/from16 v44, v18

    const/4 v6, 0x0

    move-object/from16 v18, v3

    move-object/from16 v3, p5

    move-object v5, v7

    move v7, v6

    move/from16 v6, v17

    move v7, v8

    move-object/from16 v11, v16

    move v8, v9

    move-object v9, v0

    move-object/from16 v10, v18

    :try_start_d
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    .line 178
    :goto_24
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->convertStoI(Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    return v0

    :catch_5
    move-exception v0

    :goto_25
    move-object/from16 v9, p0

    move-object/from16 v11, p1

    goto :goto_27

    :catch_6
    move-exception v0

    move-object/from16 v19, v15

    move-object/from16 v44, v18

    move-object v15, v2

    goto :goto_25

    :cond_40
    move-object v9, v11

    move-object/from16 v19, v15

    move-object/from16 v44, v18

    move-object v15, v2

    move-object v11, v10

    .line 179
    :try_start_e
    invoke-virtual {v9, v11, v14, v13, v6}, Lcom/android/server/asks/ASKSManagerService;->updateTokenValue(Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Z)V

    goto :goto_28

    :catch_7
    move-exception v0

    goto :goto_27

    :cond_41
    move-object v9, v11

    move-object/from16 v19, v15

    move-object/from16 v44, v18

    move-object v15, v2

    move-object v11, v10

    .line 180
    invoke-virtual {v9, v11, v14, v13, v6}, Lcom/android/server/asks/ASKSManagerService;->updateTokenValue(Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Z)V

    .line 181
    const-string v0, "[Token] token policy is empty"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 182
    :goto_26
    invoke-virtual {v9, v11, v14, v13, v6}, Lcom/android/server/asks/ASKSManagerService;->updateTokenValue(Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Z)V

    .line 183
    const-string v0, "[Token] tokenContents length error"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_28

    .line 184
    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Token] parsing token error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-static {v0, v1, v15}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_28
    move/from16 v0, v21

    goto/16 :goto_2a

    :cond_42
    move-object v9, v11

    move-object/from16 v19, v15

    move-object/from16 v44, v18

    move/from16 v6, v25

    move-object v15, v2

    move-object v11, v10

    .line 186
    const-string v0, "[Token] safeInstallToken does not exist"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    iget-object v2, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/asks/ASKSManagerService;->getInstalledPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    if-eqz v6, :cond_43

    .line 189
    iget-object v2, v9, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

    if-eqz v2, :cond_44

    .line 190
    iput-object v1, v2, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 191
    iput-object v1, v2, Lcom/android/server/asks/InstalledAppInfo;->installAuthorityDate:Ljava/lang/String;

    goto :goto_29

    .line 192
    :cond_43
    new-instance v4, Lcom/android/server/asks/RETVALUE;

    .line 193
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x1f9

    .line 194
    const-string v2, ""

    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    move-object/from16 p6, v4

    move/from16 p7, v3

    move/from16 p8, v5

    move/from16 p9, v6

    move/from16 p10, v1

    move-object/from16 p11, v2

    move-object/from16 p12, v7

    move-object/from16 p13, v8

    invoke-virtual/range {p6 .. p13}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 195
    iget-object v2, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    iget-boolean v6, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v7, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v8, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    const-string/jumbo v10, "none"

    const-string/jumbo v11, "none"

    move-object/from16 v1, p0

    move-object/from16 v3, p5

    move-object v5, v0

    move-object v9, v10

    move-object v10, v11

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_44
    :goto_29
    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->convertStoI(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 198
    :cond_45
    invoke-virtual {v9, v11, v14, v13, v6}, Lcom/android/server/asks/ASKSManagerService;->updateTokenValue(Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Z)V

    .line 199
    const-string v0, "[Token] parental authority not exist"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :goto_2a
    const/16 v1, 0x1b

    if-eqz v27, :cond_46

    move v2, v1

    goto :goto_2b

    :cond_46
    const/16 v2, 0x2d

    .line 200
    :goto_2b
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v3

    if-eqz v3, :cond_48

    if-ne v2, v1, :cond_47

    const-string v1, "_COMMON"

    goto :goto_2c

    :cond_47
    const-string v1, "_GLOBAL"

    :goto_2c
    const-string v3, "FIRST RULE: TOTALLIST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    const-string v10, "CERT"

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static {v1, v2}, Lcom/android/server/asks/ASKSManagerService;->checkPolicyFileWithDelta(Ljava/util/ArrayList;I)Ljava/util/HashMap;

    move-result-object v3

    .line 204
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const-string/jumbo v12, "block"

    const-string/jumbo v8, "except"

    if-nez v1, :cond_5b

    .line 205
    iget-object v7, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    const/16 v16, 0x1

    move-object v1, v14

    move-object/from16 v2, p5

    move-object/from16 v4, p4

    move/from16 v5, p9

    move-object v6, v13

    move-object/from16 p12, v10

    move-object v10, v8

    move/from16 v8, v16

    invoke-static/range {v1 .. v8}, Lcom/android/server/asks/ASKSManagerService;->checkTarget(Lcom/android/server/asks/ASKSManagerService$CURPARAM;[Landroid/content/pm/Signature;Ljava/util/HashMap;Ljava/lang/String;ILcom/android/server/asks/ASKSManagerService$CURSTATUS;[Ljava/lang/String;Z)Lcom/android/server/asks/RETVALUE;

    move-result-object v4

    move-object/from16 v8, p6

    .line 206
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 207
    const-string/jumbo v1, "initType"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4e

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 208
    :goto_2d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4d

    .line 209
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v7, v35

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4b

    .line 210
    array-length v2, v6

    move-object/from16 v16, v1

    const/4 v1, 0x2

    if-ne v2, v1, :cond_4a

    const/4 v2, 0x0

    aget-object v1, v6, v2

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v1, 0x1

    .line 211
    aget-object v6, v6, v1

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 212
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/asks/ASKSManagerService;->isTrustedSelfUpdate(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    goto :goto_2f

    :cond_49
    const/4 v1, 0x1

    goto :goto_2f

    :cond_4a
    :goto_2e
    const/4 v1, 0x1

    const/4 v2, 0x0

    goto :goto_2f

    :cond_4b
    move-object/from16 v16, v1

    goto :goto_2e

    :cond_4c
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v35, v7

    move-object/from16 v1, v16

    const/4 v2, 0x0

    goto :goto_2d

    :cond_4d
    const/4 v1, 0x1

    const/4 v2, 0x0

    goto :goto_30

    :cond_4e
    const/4 v1, 0x1

    const/4 v2, 0x0

    move v5, v1

    :goto_30
    if-eqz v5, :cond_4f

    .line 213
    const-string v0, "SELF UPDATE: "

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-boolean v6, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v7, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v8, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    const-string/jumbo v10, "none"

    const-string/jumbo v5, "except"

    const-string/jumbo v0, "none"

    move-object/from16 v1, p0

    move v12, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v9, v0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_4f
    move v7, v2

    move-object/from16 v2, v19

    .line 215
    invoke-virtual {v9, v13, v14, v2, v1}, Lcom/android/server/asks/ASKSManagerService;->checkCurStatus(Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Ljava/util/ArrayList;Z)V

    move v3, v1

    goto :goto_31

    :cond_50
    move-object/from16 v2, v19

    const/4 v1, 0x1

    const/4 v7, 0x0

    move v3, v7

    .line 216
    :goto_31
    iget-boolean v5, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isDevDevice:Z

    if-eqz v5, :cond_51

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->applyScpmPolicy()Z

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->applyExecutePolicy()V

    .line 220
    :cond_51
    iget v5, v4, Lcom/android/server/asks/RETVALUE;->status:I

    if-nez v5, :cond_59

    .line 221
    iget v5, v4, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v5}, Lcom/android/server/asks/ASKSManagerService;->convertItoS(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v12

    move-object v12, v14

    move-object/from16 v29, v13

    move-object v13, v4

    move-object v8, v14

    move-object/from16 v14, v29

    move-object v7, v15

    move-object/from16 v15, p2

    move-object/from16 v16, p1

    move-object/from16 v17, p6

    move-object/from16 v18, p8

    move-object/from16 v19, p11

    move-object/from16 v20, v5

    move-object/from16 v21, p4

    move-object/from16 v22, v26

    move/from16 v23, v27

    .line 222
    invoke-static/range {v12 .. v23}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSAInfo(Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;

    move-result-object v12

    .line 223
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v13

    if-eqz v13, :cond_52

    const-string v13, "[FIRST RET]:"

    move-object/from16 v15, v44

    .line 224
    invoke-static {v13, v11, v15}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 225
    iget-object v14, v8, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v8, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v4, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_52
    move-object/from16 v15, v44

    .line 226
    :goto_32
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "TOTALLIST_COMMON"

    const-string/jumbo v1, "policyFile"

    if-eqz v13, :cond_55

    .line 227
    iget-object v0, v12, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->customDimensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v29

    .line 228
    invoke-virtual {v9, v4, v13, v8, v12}, Lcom/android/server/asks/ASKSManagerService;->SAreport(Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    .line 229
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "[FIRST BL]:"

    .line 230
    invoke-static {v0, v11, v15}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    iget-object v1, v8, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/server/asks/RETVALUE;->SA:I

    .line 232
    invoke-static {v0, v1, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_53
    if-eqz v3, :cond_54

    .line 233
    invoke-static/range {v28 .. v28}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    .line 234
    :cond_54
    iget v0, v4, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    :cond_55
    move-object/from16 v13, v29

    .line 235
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_57

    .line 236
    iget-object v0, v12, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->customDimensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-virtual {v9, v4, v13, v8, v12}, Lcom/android/server/asks/ASKSManagerService;->SAreport(Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    .line 238
    iget-boolean v6, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v0, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v10, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    const-string/jumbo v12, "none"

    const-string/jumbo v13, "none"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v9, v7

    const/4 v14, 0x0

    move v7, v0

    move-object v14, v8

    move v8, v10

    move-object v10, v9

    move-object v9, v12

    move-object v12, v10

    move-object v10, v13

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "[FIRST AL]:"

    .line 240
    invoke-static {v0, v11, v15}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    iget-object v1, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    .line 242
    invoke-static {v0, v1, v12}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    const/4 v1, 0x0

    return v1

    :cond_57
    move-object v14, v8

    move-object v8, v7

    .line 243
    iget-boolean v1, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isAllowSelfUpdate:Z

    if-eqz v1, :cond_58

    .line 244
    const-string v0, " is selfupdated.."

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-boolean v6, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v7, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v8, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    const-string/jumbo v10, "none"

    const-string/jumbo v5, "except"

    const-string/jumbo v0, "none"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v9, v0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_58
    const/4 v1, 0x0

    .line 246
    const-string/jumbo v4, "more checking........"

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v29, v3

    move-object v3, v12

    goto :goto_33

    :cond_59
    move v1, v7

    move-object v6, v12

    move-object v8, v15

    move-object/from16 v15, v44

    .line 247
    iget-boolean v4, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isAllowSelfUpdate:Z

    if-eqz v4, :cond_5a

    .line 248
    const-string v0, " is selfupdated.. but ret is null"

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5a
    move/from16 v29, v3

    const/4 v3, 0x0

    goto :goto_33

    :cond_5b
    move-object/from16 p12, v10

    move-object v6, v12

    move-object/from16 v2, v19

    move-object v10, v8

    move-object v8, v15

    move-object/from16 v15, v44

    const/4 v3, 0x0

    const/16 v29, 0x0

    :goto_33
    if-nez v27, :cond_5e

    .line 249
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v1, "End"

    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_5c
    new-instance v1, Lcom/android/server/asks/RETVALUE;

    .line 251
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 252
    invoke-virtual {v9, v1, v13, v14, v3}, Lcom/android/server/asks/ASKSManagerService;->SAreport(Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    if-eqz v0, :cond_5d

    const/16 v0, 0x65

    return v0

    :cond_5d
    const/4 v1, 0x0

    return v1

    .line 253
    :cond_5e
    invoke-virtual {v9, v13, v14}, Lcom/android/server/asks/ASKSManagerService;->printCurInfo(Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;)V

    .line 254
    iget-boolean v0, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLimitOnlyKorMCC:Z

    if-eqz v0, :cond_63

    .line 255
    iget-object v0, v9, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_65

    .line 256
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCarrierIdFromSimMccMnc()I

    move-result v1

    .line 257
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v4, " stop checking by "

    const/4 v5, -0x1

    if-eq v1, v5, :cond_62

    .line 259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_61

    .line 260
    const-string v5, "450"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " Keep checking by "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v34

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :cond_5f
    move-object/from16 v5, v34

    .line 262
    iget-boolean v7, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isDevDevice:Z

    if-eqz v7, :cond_60

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " DevDevice, Keep checking by "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 264
    :cond_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    .line 265
    :cond_61
    const-string v0, " Keep checking by no operator"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :cond_62
    move-object/from16 v5, v34

    .line 266
    iget-boolean v7, v13, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isDevDevice:Z

    if-eqz v7, :cond_64

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " DevDevice, keep checking by "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    :goto_34
    const/4 v1, 0x0

    goto :goto_35

    .line 268
    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_65
    const/4 v1, 0x0

    .line 269
    const-string/jumbo v0, "telephonyManager null"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_35
    const-string v0, "AASAService Start"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :try_start_f
    new-instance v0, Lcom/android/server/asks/safeInstall/SafeInstallVo;

    aget-object v4, p5, v1

    invoke-static {v4}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v17

    move-object v12, v0

    move-object v7, v13

    move-object/from16 v13, p1

    move v5, v1

    move-object v4, v14

    move-object/from16 v14, p2

    move-object v1, v15

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    move-object/from16 v23, p11

    move-object/from16 v24, p13

    move-object/from16 v25, p14

    invoke-direct/range {v12 .. v25}, Lcom/android/server/asks/safeInstall/SafeInstallVo;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_f} :catch_8

    .line 272
    new-instance v12, Lcom/android/server/asks/safeInstall/AASAServiceChecker;

    iget-object v13, v9, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v12, v0, v13}, Lcom/android/server/asks/safeInstall/AASAServiceChecker;-><init>(Lcom/android/server/asks/safeInstall/SafeInstallVo;Landroid/content/Context;)V

    .line 273
    invoke-virtual {v12}, Lcom/android/server/asks/safeInstall/AASAServiceChecker;->getPolicyResult()I

    move-result v0

    .line 274
    const-string v12, "AASAService Result : "

    .line 275
    invoke-static {v0, v12, v8}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x64

    if-eq v0, v12, :cond_6c

    .line 276
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isKorProject()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_66

    goto :goto_36

    :cond_66
    const/4 v3, 0x1

    if-ne v0, v3, :cond_67

    move v2, v3

    goto :goto_36

    :cond_67
    const/4 v3, 0x2

    if-ne v0, v3, :cond_68

    const/16 v2, 0x96

    goto :goto_36

    :cond_68
    const/4 v3, 0x3

    if-ne v0, v3, :cond_6a

    if-eqz v1, :cond_69

    const/16 v2, 0x64

    goto :goto_36

    :cond_69
    const/16 v2, 0x65

    goto :goto_36

    :cond_6a
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6b

    const/16 v2, 0x8c

    :cond_6b
    :goto_36
    return v2

    .line 277
    :cond_6c
    const-string/jumbo v0, "more checking..."

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f

    .line 278
    invoke-static {v2, v0}, Lcom/android/server/asks/ASKSManagerService;->checkPolicyFileWithDelta(Ljava/util/ArrayList;I)Ljava/util/HashMap;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    const-string v15, "::zipFormat:"

    if-nez v12, :cond_77

    .line 280
    const-string v12, "ALL"

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_77

    .line 281
    new-instance v13, Lcom/android/server/asks/RETVALUE;

    .line 282
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    const/16 v20, 0x0

    .line 283
    const-string v21, ""

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v22, ""

    const/16 v23, 0x0

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v23}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 284
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/UnknownStore;

    .line 285
    iget-object v12, v0, Lcom/android/server/asks/UnknownStore;->regexDomainRule:Ljava/util/ArrayList;

    .line 286
    const-string v14, "[D]:"

    move-object/from16 v24, v2

    if-eqz v12, :cond_6d

    .line 287
    :goto_37
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_6d

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v12

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v12, v17

    goto :goto_37

    .line 289
    :cond_6d
    iget-object v2, v4, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->domain:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v13, v5}, Lcom/android/server/asks/UnknownStore;->checkRegexTarget(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;Z)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 290
    const-string/jumbo v2, "regex domain Hit"

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    goto :goto_38

    .line 291
    :cond_6e
    iget-object v2, v4, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v0, v2, v13, v12}, Lcom/android/server/asks/UnknownStore;->checkRegexTarget(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;Z)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 292
    const-string/jumbo v2, "regex package Hit"

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_6f
    :goto_38
    iget v2, v13, Lcom/android/server/asks/RETVALUE;->status:I

    if-nez v2, :cond_73

    .line 294
    iget v2, v13, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v2}, Lcom/android/server/asks/ASKSManagerService;->convertItoS(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-virtual {v9, v13, v7, v4, v3}, Lcom/android/server/asks/ASKSManagerService;->SAreport(Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    .line 296
    const-string v5, "[DD]:"

    .line 297
    invoke-static {v5, v11, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 298
    iget-object v12, v4, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v13, Lcom/android/server/asks/RETVALUE;->policy:I

    .line 299
    invoke-static {v12, v1, v2, v15, v5}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 300
    iget-boolean v12, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v13, Lcom/android/server/asks/RETVALUE;->SA:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    if-eqz v29, :cond_70

    return v28

    .line 302
    :cond_70
    iget v0, v13, Lcom/android/server/asks/RETVALUE;->policy:I

    return v0

    .line 303
    :cond_71
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 304
    iget-boolean v6, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v0, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v8, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    const-string/jumbo v10, "none"

    const-string/jumbo v12, "none"

    move-object/from16 v1, p0

    move-object v5, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v13

    const/16 v25, 0x0

    move v7, v0

    move-object v9, v10

    move-object v10, v12

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    return v25

    :cond_72
    const/16 v25, 0x0

    goto :goto_39

    :cond_73
    move/from16 v25, v12

    :goto_39
    const/16 v20, 0x0

    .line 305
    const-string v21, ""

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v22, ""

    const/16 v23, 0x0

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v23}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 306
    iget-object v2, v4, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2, v13}, Lcom/android/server/asks/UnknownStore;->checkDomain(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V

    .line 307
    iget v0, v13, Lcom/android/server/asks/RETVALUE;->status:I

    if-nez v0, :cond_78

    .line 308
    iget v0, v13, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->convertItoS(I)Ljava/lang/String;

    move-result-object v5

    .line 309
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 310
    :cond_74
    invoke-virtual {v9, v13, v7, v4, v3}, Lcom/android/server/asks/ASKSManagerService;->SAreport(Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    .line 311
    invoke-static {v14, v11, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    iget-object v2, v4, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/asks/RETVALUE;->policy:I

    .line 313
    invoke-static {v2, v1, v5, v15, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 314
    iget-boolean v2, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/asks/RETVALUE;->SA:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    if-eqz v29, :cond_75

    return v28

    .line 316
    :cond_75
    iget v0, v13, Lcom/android/server/asks/RETVALUE;->policy:I

    return v0

    .line 317
    :cond_76
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 318
    iget-boolean v6, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v0, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v8, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    const-string/jumbo v10, "none"

    const-string/jumbo v12, "none"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v13

    move v7, v0

    move-object v9, v10

    move-object v10, v12

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    return v25

    :cond_77
    move-object/from16 v24, v2

    move/from16 v25, v5

    .line 319
    :cond_78
    invoke-static/range {p6 .. p6}, Lcom/android/server/asks/ASKSManagerService;->get3rdTargetNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 320
    invoke-static/range {p12 .. p12}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 321
    invoke-static/range {p6 .. p6}, Lcom/android/server/asks/ASKSManagerService;->get3rdTargetNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    const-string/jumbo v2, "third party case.."

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 323
    :cond_79
    invoke-static/range {p7 .. p7}, Lcom/android/server/asks/ASKSManagerService;->get3rdTargetNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 324
    invoke-static/range {p12 .. p12}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 325
    invoke-static/range {p7 .. p7}, Lcom/android/server/asks/ASKSManagerService;->get3rdTargetNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    const-string/jumbo v2, "third party case..(origin)"

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :cond_7a
    move-object/from16 v0, v24

    .line 327
    :goto_3a
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v2

    if-eqz v2, :cond_7b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " total list["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalListString:Ljava/lang/String;

    const-string v5, "]"

    .line 328
    invoke-static {v2, v3, v5, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_7b
    iget v2, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->totalList:I

    invoke-static {v0, v2}, Lcom/android/server/asks/ASKSManagerService;->checkPolicyFileWithDelta(Ljava/util/ArrayList;I)Ljava/util/HashMap;

    move-result-object v3

    .line 330
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_87

    .line 331
    iget-object v0, v4, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    const/4 v12, 0x0

    move-object v14, v1

    const/16 v24, 0x1

    move-object v1, v4

    move-object/from16 v2, p5

    move-object v13, v4

    move-object/from16 v4, p4

    move/from16 v5, p9

    move-object/from16 v45, v6

    move-object v6, v7

    move-object/from16 p3, v7

    move-object v7, v0

    move-object v0, v10

    move-object v10, v8

    move v8, v12

    invoke-static/range {v1 .. v8}, Lcom/android/server/asks/ASKSManagerService;->checkTarget(Lcom/android/server/asks/ASKSManagerService$CURPARAM;[Landroid/content/pm/Signature;Ljava/util/HashMap;Ljava/lang/String;ILcom/android/server/asks/ASKSManagerService$CURSTATUS;[Ljava/lang/String;Z)Lcom/android/server/asks/RETVALUE;

    move-result-object v8

    .line 332
    iget v1, v8, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v1}, Lcom/android/server/asks/ASKSManagerService;->convertItoS(I)Ljava/lang/String;

    move-result-object v5

    move-object v12, v13

    move-object v1, v13

    move-object v13, v8

    move-object v2, v14

    move-object/from16 v14, p3

    move-object v3, v15

    move-object/from16 v15, p2

    move-object/from16 v16, p1

    move-object/from16 v17, p6

    move-object/from16 v18, p8

    move-object/from16 v19, p11

    move-object/from16 v20, v5

    move-object/from16 v21, p4

    move-object/from16 v22, v26

    move/from16 v23, v27

    .line 333
    invoke-static/range {v12 .. v23}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSAInfo(Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;

    move-result-object v4

    .line 334
    const-string/jumbo v6, "warning"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7c

    move-object/from16 v7, p3

    .line 335
    iget-boolean v12, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckZipFormat:Z

    if-eqz v12, :cond_7d

    .line 336
    invoke-static/range {p4 .. p4}, Lcom/android/server/asks/ASKSManagerService;->isValidZipFormat(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    goto :goto_3b

    :cond_7c
    move-object/from16 v7, p3

    .line 337
    :cond_7d
    :goto_3b
    invoke-virtual {v9, v8, v7, v1, v4}, Lcom/android/server/asks/ASKSManagerService;->SAreport(Lcom/android/server/asks/RETVALUE;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    .line 338
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    move-result v4

    const-string v12, "[RET]:"

    if-eqz v4, :cond_7e

    .line 339
    invoke-static {v12, v11, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 340
    iget-object v12, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sigHashValue:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/asks/RETVALUE;->policy:I

    .line 341
    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 342
    iget-boolean v1, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/asks/RETVALUE;->SA:I

    .line 343
    invoke-static {v4, v1, v10}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_3c

    .line 344
    :cond_7e
    invoke-static {v12, v11, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 345
    iget v3, v8, Lcom/android/server/asks/RETVALUE;->policy:I

    .line 346
    invoke-static {v3, v2, v5, v2, v1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 347
    iget v2, v8, Lcom/android/server/asks/RETVALUE;->SA:I

    .line 348
    invoke-static {v1, v2, v10}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 349
    :goto_3c
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 350
    iget-boolean v0, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    if-nez v0, :cond_80

    .line 351
    const-string v0, ":format:"

    .line 352
    invoke-static {v11, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 353
    iget-boolean v1, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isValidZip:Z

    .line 354
    invoke-static {v10, v0, v1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-eqz v29, :cond_7f

    .line 355
    invoke-static/range {v28 .. v28}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    .line 356
    :cond_7f
    invoke-static/range {v24 .. v24}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    .line 357
    :cond_80
    iget-boolean v0, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isBlockSelfUpdateWithPEM:Z

    if-eqz v0, :cond_81

    .line 358
    const-string v0, " is selfupdated"

    invoke-virtual {v11, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static/range {v28 .. v28}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    .line 360
    :cond_81
    iget-boolean v6, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v0, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v10, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    const-string/jumbo v12, "none"

    const-string/jumbo v13, "none"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v8

    move v7, v0

    move-object v14, v8

    move v8, v10

    move-object v9, v12

    move-object v10, v13

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    if-eqz v29, :cond_82

    return v25

    .line 361
    :cond_82
    iget v0, v14, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    :cond_83
    move-object v14, v8

    move-object/from16 v1, v45

    .line 362
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    if-eqz v29, :cond_84

    .line 363
    invoke-static/range {v28 .. v28}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    .line 364
    :cond_84
    iget v0, v14, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallResult(I)I

    move-result v0

    return v0

    .line 365
    :cond_85
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 366
    iget-boolean v6, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    iget-boolean v0, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    iget-boolean v8, v7, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    const-string/jumbo v10, "none"

    const-string/jumbo v12, "none"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v14

    move v7, v0

    move-object v9, v10

    move-object v10, v12

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    :cond_86
    return v25

    :cond_87
    move-object v10, v8

    .line 367
    const-string v0, "Adnormal case: CHECK TAGET DEVICE"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v25

    :catch_8
    move-exception v0

    .line 368
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_88
    move-object v10, v2

    const/16 v25, 0x0

    .line 369
    const-string v0, "Adnormal case: no nodelist"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v25

    .line 370
    :goto_3d
    const-string v0, "Adnormal case!"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v25
.end method

.method public final clearASKSruleForRemovedPackage(Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "Only the system can claim clearASKSruleForRemovedPackage"

    .line 3
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    .line 24
    :cond_0
    new-instance p0, Lcom/android/server/asks/InstalledAppInfo;

    .line 26
    invoke-direct {p0}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v11, 0x0

    .line 38
    move-object v1, p0

    .line 39
    move-object v2, p1

    .line 40
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x3

    .line 44
    invoke-static {v0, p0}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 47
    new-instance p0, Ljava/util/HashMap;

    .line 49
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 52
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_SA_REPORTED_NEW.xml"

    .line 54
    invoke-static {v0, p0}, Lcom/android/server/asks/ASKSManagerService;->getDataByDevice(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 57
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_7

    .line 63
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 69
    move-result p1

    .line 70
    const-string/jumbo v1, "clearPackageFromFile() : count:"

    .line 73
    const-string v2, "PackageInformation"

    .line 75
    invoke-static {p1, v1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    const/16 v1, 0x64

    .line 80
    if-gt p1, v1, :cond_7

    .line 82
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 85
    move-result-object p0

    .line 86
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object p0

    .line 90
    if-eqz p0, :cond_7

    .line 92
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 94
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 106
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const-string v3, "ASKSManager"

    .line 109
    if-eqz v0, :cond_1

    .line 111
    :try_start_1
    const-string v0, "File is deleted"

    .line 113
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    goto :goto_0

    .line 117
    :catch_0
    move-exception p0

    .line 118
    goto/16 :goto_2

    .line 120
    :cond_1
    const-string v0, "File is not deleted"

    .line 122
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_2
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 127
    const/4 v3, 0x0

    .line 128
    invoke-direct {v0, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 131
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    .line 133
    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 136
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_6

    .line 142
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Ljava/util/Map$Entry;

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 151
    move-result-object v4

    .line 152
    check-cast v4, Ljava/lang/String;

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Ljava/util/ArrayList;

    .line 160
    if-eqz v0, :cond_5

    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 165
    move-result v5

    .line 166
    const/4 v6, 0x1

    .line 167
    if-ne v5, v6, :cond_5

    .line 169
    const-string/jumbo v5, "noCert"

    .line 172
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    move-result-object v6

    .line 176
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    const-string/jumbo v6, "clearPackageFromFile() : adding  :: pkg ="

    .line 183
    if-eqz v5, :cond_4

    .line 185
    :try_start_2
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 203
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    goto :goto_1

    .line 207
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v7, ","

    .line 217
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Ljava/lang/String;

    .line 226
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    .line 238
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object v0

    .line 251
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_5
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 256
    if-nez p1, :cond_3

    .line 258
    :cond_6
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 261
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 264
    goto :goto_3

    .line 265
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 268
    :cond_7
    :goto_3
    return-void
.end method

.method public final compareAttributeValue(Lcom/android/server/asks/UnknownStore;Lcom/android/server/asks/InstalledAppInfo;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p2, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p2, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    .line 11
    const-string v3, "PackageInformation"

    .line 13
    if-eqz v1, :cond_a

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_a

    .line 21
    if-eqz v2, :cond_a

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_a

    .line 29
    const-string v4, "allow"

    .line 31
    const-string/jumbo v5, "block"

    .line 34
    const/4 v6, 0x2

    .line 35
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 40
    move-result v7

    .line 41
    if-nez v7, :cond_0

    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p2, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    .line 51
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 57
    iput-object v4, p2, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    .line 59
    invoke-static {v6, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p2, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 71
    iput-object v5, p2, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    .line 73
    invoke-static {v6, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 76
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 78
    if-eqz v0, :cond_6

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result v7

    .line 84
    if-nez v7, :cond_3

    .line 86
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_6

    .line 92
    :cond_3
    iget-object v0, p2, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 94
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_7

    .line 100
    iput-object v5, p2, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 102
    invoke-static {v6, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 105
    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 107
    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_5

    .line 115
    :cond_4
    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 117
    if-nez v0, :cond_7

    .line 119
    :cond_5
    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 121
    if-eqz v0, :cond_7

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_7

    .line 129
    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 131
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Ljava/util/HashMap;

    .line 137
    const-string v4, "ALL"

    .line 139
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_7

    .line 145
    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 147
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Ljava/util/HashMap;

    .line 153
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Lcom/android/server/asks/PKGINFO;

    .line 159
    iget v0, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    .line 161
    new-instance v4, Ljava/util/HashMap;

    .line 163
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 166
    const-string/jumbo v5, "packageName"

    .line 169
    iget-object v7, p2, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 171
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v5, "signature"

    .line 177
    iget-object v7, p2, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    .line 179
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    int-to-long v7, v0

    .line 183
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    move-result-object v0

    .line 187
    new-instance v5, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;

    .line 189
    const-string/jumbo v7, "executeBlock"

    .line 192
    invoke-direct {v5, v7, v0, v4}, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/util/HashMap;)V

    .line 195
    invoke-virtual {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSALog(Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    .line 198
    goto :goto_1

    .line 199
    :cond_6
    iget-object p0, p2, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 201
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    move-result p0

    .line 205
    if-eqz p0, :cond_7

    .line 207
    iput-object v4, p2, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 209
    invoke-static {v6, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 212
    :cond_7
    :goto_1
    iget-object p0, p1, Lcom/android/server/asks/UnknownStore;->unknownAppsList:Ljava/util/HashMap;

    .line 214
    if-eqz p0, :cond_b

    .line 216
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_b

    .line 222
    const-string/jumbo p1, "initType"

    .line 225
    const/4 v0, 0x0

    .line 226
    invoke-static {p1, v0}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 229
    move-result-object p1

    .line 230
    if-eqz p1, :cond_b

    .line 232
    const/4 v0, 0x0

    .line 233
    move v4, v0

    .line 234
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 237
    move-result v5

    .line 238
    if-ge v4, v5, :cond_b

    .line 240
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    move-result-object v5

    .line 244
    check-cast v5, Ljava/lang/String;

    .line 246
    const-string v7, ","

    .line 248
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 251
    move-result-object v5

    .line 252
    aget-object v7, v5, v0

    .line 254
    if-eqz v7, :cond_9

    .line 256
    const/4 v8, 0x1

    .line 257
    aget-object v9, v5, v8

    .line 259
    if-eqz v9, :cond_9

    .line 261
    invoke-static {v7}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    move-result-object v7

    .line 265
    aget-object v8, v5, v8

    .line 267
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    move-result v7

    .line 271
    if-eqz v7, :cond_9

    .line 273
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    move-result-object v7

    .line 277
    check-cast v7, Ljava/lang/String;

    .line 279
    if-eqz v7, :cond_9

    .line 281
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    move-result v8

    .line 285
    if-nez v8, :cond_9

    .line 287
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 290
    move-result v8

    .line 291
    if-eqz v8, :cond_8

    .line 293
    new-instance v8, Ljava/lang/StringBuilder;

    .line 295
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    aget-object v5, v5, v0

    .line 300
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v5, "\'s policy was changed from "

    .line 305
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v5, p2, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    .line 310
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v5, " to "

    .line 315
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v5

    .line 325
    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_8
    iput-object v7, p2, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    .line 330
    invoke-static {v6, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 333
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 335
    goto :goto_2

    .line 336
    :cond_a
    const-string/jumbo p0, "pkgNameHash is NULL!!"

    .line 339
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_b
    return-void
.end method

.method public final getIMEIList()Ljava/util/List;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v0, "phone"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    if-eqz p0, :cond_3

    .line 19
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 22
    move-result v1

    .line 23
    const-string v2, "ASKSManager"

    .line 25
    if-lez v1, :cond_1

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v1, :cond_3

    .line 30
    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_0

    .line 36
    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    invoke-static {v4}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v4, "ASKSI added list"

    .line 49
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    if-nez v1, :cond_2

    .line 61
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    if-nez v1, :cond_2

    .line 67
    const-string v1, "INVALID_IMEI"

    .line 69
    :cond_2
    const-string p0, "ASKSI added list 2"

    .line 71
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {v1}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_3
    return-object v0
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 13
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 17
    return-object p0
.end method

.method public final getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string p0, "Only the system and sub system can claim getPolicyVersion()"

    .line 3
    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    new-instance p0, Ljava/io/File;

    .line 8
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 14
    move-result p0

    .line 15
    const-string v0, "00000000"

    .line 17
    if-nez p0, :cond_0

    .line 19
    return-object v0

    .line 20
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    .line 22
    new-instance v1, Ljava/io/File;

    .line 24
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 33
    move-result-object p1

    .line 34
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-interface {p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 45
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 48
    move-result v2

    .line 49
    :goto_0
    const/4 v3, 0x1

    .line 50
    if-eq v2, v3, :cond_2

    .line 52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    const/4 v4, 0x2

    .line 57
    if-ne v2, v4, :cond_1

    .line 59
    if-eqz v3, :cond_1

    .line 61
    const-string v2, "VERSION"

    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 69
    const-string/jumbo v2, "value"

    .line 72
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 82
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    goto :goto_5

    .line 88
    :catch_0
    move-exception p0

    .line 89
    goto :goto_4

    .line 90
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    goto :goto_3

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 98
    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 99
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    :goto_5
    return-object v0
.end method

.method public final getSEInfo(Ljava/lang/String;)[B
    .locals 5

    .line 1
    const-string v0, "Only the system can claim getSEInfo"

    .line 3
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    const-string v0, "aasa_blocked"

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz p1, :cond_4

    .line 23
    if-nez v1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, v1, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 28
    iget v1, v1, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 30
    if-eqz p1, :cond_1

    .line 32
    iget-object v3, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    .line 34
    const-string v4, "DENY"

    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 42
    iget-object p1, p1, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_1

    .line 50
    if-eqz p1, :cond_1

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    move-result v3

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    move-result p1

    .line 60
    if-le v3, p1, :cond_1

    .line 62
    return-object v0

    .line 63
    :cond_1
    const/4 p1, -0x1

    .line 64
    if-eq v1, p1, :cond_4

    .line 66
    new-instance p1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 68
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p1, p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_2

    .line 79
    return-object v0

    .line 80
    :cond_2
    invoke-virtual {p1, v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    .line 83
    move-result p0

    .line 84
    const/4 p1, 0x1

    .line 85
    if-ne p0, p1, :cond_3

    .line 87
    return-object v2

    .line 88
    :cond_3
    return-object v0

    .line 89
    :cond_4
    :goto_0
    return-object v2
.end method

.method public final getSigByPackage(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "PackageInformation"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    move-result-object p0

    .line 18
    const/high16 v2, 0x8000000

    .line 20
    invoke-virtual {p0, p2, v2, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 28
    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_0

    .line 36
    array-length p1, p0

    .line 37
    const/4 p2, 0x1

    .line 38
    if-lt p1, p2, :cond_0

    .line 40
    const/4 p1, 0x0

    .line 41
    aget-object p0, p0, p1

    .line 43
    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 46
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :catch_1
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    const-string p2, " Abnormal case : NoSuchAlgorithmException "

    .line 56
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    goto :goto_2

    .line 70
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    const-string p2, " Abnormal case : initiatingPackageName can not be modified "

    .line 74
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    :goto_2
    return-object v1
.end method

.method public final getUNvalueForASKS()Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, "Only the system can claim getUNvalueForASKS"

    .line 3
    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    const-string/jumbo p0, "ro.boot.em.status"

    .line 9
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    const-string v0, "0x1"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    const-string/jumbo p0, "ro.serialno"

    .line 24
    const-string/jumbo v0, "none"

    .line 27
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final getUnknownAppList()Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "Only the system can claim isUnknownApps"

    .line 3
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    iget-boolean p0, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    .line 8
    const/4 v0, 0x0

    .line 9
    const-string v1, "PackageInformation"

    .line 11
    if-nez p0, :cond_0

    .line 13
    const-string p0, "LIMIT_CALLPEM disabled"

    .line 15
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-object v0

    .line 19
    :cond_0
    const-string/jumbo p0, "checking limitCallPem.."

    .line 22
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string/jumbo p0, "overlay"

    .line 28
    invoke-static {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_3

    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    const-string/jumbo v2, "getUnknownAppList : "

    .line 52
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_2
    return-object p0

    .line 70
    :cond_3
    :goto_0
    const-string/jumbo p0, "getUnknownAppList : installedUnknownList is null"

    .line 73
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v0
.end method

.method public final isSimpleTrustore(ILjava/lang/String;Z)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "PackageInformation"

    .line 9
    if-eqz p3, :cond_1

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    .line 13
    const-string v3, "Simple TS  :"

    .line 15
    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v3, " "

    .line 23
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p3

    .line 33
    const-string v3, "RAMPARTPackageInformation"

    .line 35
    invoke-static {v3, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 41
    move-result-object p3

    .line 42
    const-string v4, "CountryISO"

    .line 44
    invoke-virtual {p3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p3

    .line 48
    const-string v4, "CN"

    .line 50
    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 53
    move-result p3

    .line 54
    if-eqz p3, :cond_0

    .line 56
    const/16 p3, 0x2a

    .line 58
    invoke-static {p3, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/16 p3, 0x29

    .line 64
    invoke-static {p3, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 67
    :goto_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 70
    move-result p3

    .line 71
    if-nez p3, :cond_4

    .line 73
    const-string p0, "Simple TS  : list does not exist"

    .line 75
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v1

    .line 79
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/asks/ASKSManagerService;->getSigByPackage(ILjava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p3

    .line 83
    if-nez p3, :cond_2

    .line 85
    const-string/jumbo p3, "null"

    .line 88
    :cond_2
    const-string v3, "Simple TS : "

    .line 90
    const-string v4, ":"

    .line 92
    invoke-static {p1, v3, p2, v4, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    move-result-object v3

    .line 96
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_3

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    const-string p3, ""

    .line 105
    :goto_1
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p3

    .line 112
    invoke-static {v2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string/jumbo p3, "ro.product.model"

    .line 118
    const-string v3, "Unknown"

    .line 120
    invoke-static {p3, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object p3

    .line 124
    invoke-static {p3}, Lcom/android/server/asks/ASKSManagerService;->getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 127
    move-result-object p3

    .line 128
    if-eqz p3, :cond_5

    .line 130
    const-string v3, "SIMPLETRUSTEDSTORE"

    .line 132
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 135
    move-result p3

    .line 136
    if-eqz p3, :cond_5

    .line 138
    const/16 p3, 0x24

    .line 140
    invoke-static {p3, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 143
    :cond_4
    invoke-virtual {p0, v2, v0, p2, p1}, Lcom/android/server/asks/ASKSManagerService;->isTrustedStoreCheck(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Z

    .line 146
    move-result p0

    .line 147
    return p0

    .line 148
    :cond_5
    const-string/jumbo p0, "no target of Simple TS "

    .line 151
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return v1
.end method

.method public final isSuspiciousMsgTarget(Ljava/lang/String;)Z
    .locals 8

    .line 1
    const-string p0, "Only the system and sub system can claim isTargetDevice()"

    .line 3
    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    new-instance p0, Ljava/io/File;

    .line 8
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_SPAM_CONFIG.xml"

    .line 10
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 16
    move-result p0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p0, :cond_0

    .line 20
    const-string p0, "ASKSManager"

    .line 22
    const-string/jumbo p1, "setConfig does not exist."

    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return v1

    .line 29
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    .line 31
    new-instance v2, Ljava/io/File;

    .line 33
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 42
    move-result-object v0

    .line 43
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 46
    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-interface {v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 53
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 56
    move-result v3

    .line 57
    move-object v4, v2

    .line 58
    :goto_0
    const/4 v5, 0x1

    .line 59
    if-eq v3, v5, :cond_4

    .line 61
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 64
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    const/4 v7, 0x2

    .line 66
    if-ne v3, v7, :cond_3

    .line 68
    const-string/jumbo v3, "name"

    .line 71
    if-eqz v6, :cond_1

    .line 73
    :try_start_2
    const-string/jumbo v7, "config"

    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_1

    .line 82
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v4

    .line 86
    goto :goto_1

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto :goto_3

    .line 89
    :cond_1
    if-eqz v6, :cond_3

    .line 91
    const-string/jumbo v7, "value"

    .line 94
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_3

    .line 100
    if-eqz v4, :cond_3

    .line 102
    const-string/jumbo v6, "target_model"

    .line 105
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_3

    .line 111
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v6

    .line 119
    if-nez v6, :cond_2

    .line 121
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 125
    const-string v6, "ALL"

    .line 127
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_3

    .line 133
    :cond_2
    move v1, v5

    .line 134
    goto :goto_2

    .line 135
    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 138
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    goto :goto_0

    .line 140
    :cond_4
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 143
    goto :goto_6

    .line 144
    :catch_0
    move-exception p0

    .line 145
    goto :goto_5

    .line 146
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    goto :goto_4

    .line 150
    :catchall_1
    move-exception p0

    .line 151
    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 154
    :goto_4
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 155
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    :goto_6
    return v1
.end method

.method public final isTargetPackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_1

    .line 12
    if-eqz p3, :cond_0

    .line 14
    iget-object p0, p3, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 22
    const-string/jumbo p0, "isTargetPackage() : There is no information of "

    .line 25
    const-string v1, ", check current session."

    .line 27
    const-string v2, "AASA_ASKSManager_RESTRICTED"

    .line 29
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p0, p3, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return v0

    .line 36
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 43
    move-result-object p0

    .line 44
    :goto_0
    if-eqz p0, :cond_4

    .line 46
    array-length p1, p0

    .line 47
    if-lez p1, :cond_4

    .line 49
    move p1, v0

    .line 50
    :goto_1
    array-length p3, p0

    .line 51
    if-ge p1, p3, :cond_4

    .line 53
    aget-object p3, p0, p1

    .line 55
    invoke-virtual {p3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 58
    move-result-object p3

    .line 59
    move v1, v0

    .line 60
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 63
    move-result v2

    .line 64
    if-ge v1, v2, :cond_3

    .line 66
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Ljava/lang/String;

    .line 72
    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 78
    const/4 p0, 0x1

    .line 79
    return p0

    .line 80
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    return v0
.end method

.method public final isTrustedSelfUpdate(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "PackageInformation"

    .line 3
    const-string/jumbo v1, "check selfupdate.."

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    const/16 v3, 0x20

    .line 21
    invoke-static {v3, v1}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 24
    const-string v3, "CHECK"

    .line 26
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x0

    .line 31
    if-eqz v4, :cond_1

    .line 33
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/ArrayList;

    .line 39
    if-eqz v1, :cond_1

    .line 41
    move v3, v5

    .line 42
    :goto_0
    array-length v4, p2

    .line 43
    if-ge v3, v4, :cond_1

    .line 45
    aget-object v4, p2, v3

    .line 47
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_0

    .line 53
    aget-object v4, p2, v3

    .line 55
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_0

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    const-string v6, "adding pem:"

    .line 68
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    aget-object v6, p2, v3

    .line 73
    invoke-static {v4, v6, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 82
    move-result p2

    .line 83
    if-lez p2, :cond_9

    .line 85
    const-string/jumbo p2, "check change of pem"

    .line 88
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :try_start_0
    iget-object p2, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 93
    if-eqz p2, :cond_9

    .line 95
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 98
    move-result-object p2

    .line 99
    if-eqz p2, :cond_9

    .line 101
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 106
    move-result-object p0

    .line 107
    const/16 p2, 0x1000

    .line 109
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 112
    move-result-object p0

    .line 113
    if-eqz p0, :cond_9

    .line 115
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 117
    if-eqz p1, :cond_8

    .line 119
    move p1, v5

    .line 120
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 123
    move-result p2

    .line 124
    if-ge p1, p2, :cond_9

    .line 126
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object p2

    .line 130
    check-cast p2, Ljava/lang/String;

    .line 132
    move v1, v5

    .line 133
    move v3, v1

    .line 134
    :goto_2
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 136
    array-length v4, v4

    .line 137
    if-ge v1, v4, :cond_5

    .line 139
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_2

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const-string/jumbo v6, "permission:"

    .line 153
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v6, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 158
    aget-object v6, v6, v1

    .line 160
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v4

    .line 167
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    goto :goto_3

    .line 171
    :catch_0
    move-exception p0

    .line 172
    goto :goto_6

    .line 173
    :cond_2
    :goto_3
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 175
    aget-object v4, v4, v1

    .line 177
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_4

    .line 183
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_3

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    const-string/jumbo v4, "installed app already has "

    .line 197
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 207
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    goto :goto_4

    .line 211
    :cond_3
    const-string v1, "The target perm is included in the installed app."

    .line 213
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    goto :goto_4

    .line 217
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 219
    add-int/lit8 v1, v1, 0x1

    .line 221
    goto :goto_2

    .line 222
    :cond_5
    :goto_4
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 224
    array-length v1, v1

    .line 225
    if-ne v3, v1, :cond_7

    .line 227
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 230
    move-result p0

    .line 231
    if-eqz p0, :cond_6

    .line 233
    new-instance p0, Ljava/lang/StringBuilder;

    .line 235
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    const-string/jumbo p1, "installed app does not have "

    .line 241
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string p1, " :"

    .line 249
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    move-result-object p0

    .line 259
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    goto :goto_5

    .line 263
    :cond_6
    const-string p0, "The installed app doesn\'t have target permission."

    .line 265
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_5
    return v5

    .line 269
    :cond_7
    add-int/lit8 p1, p1, 0x1

    .line 271
    goto/16 :goto_1

    .line 273
    :cond_8
    const-string/jumbo p0, "self requestedPermissions is null"

    .line 276
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_7

    .line 280
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 282
    const-string/jumbo p2, "self :"

    .line 285
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object p0

    .line 295
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_9
    :goto_7
    const/4 p0, 0x1

    .line 299
    return p0
.end method

.method public final isTrustedStore(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string/jumbo v1, "userId :"

    .line 9
    const-string v2, "PackageInformation"

    .line 11
    invoke-static {p2, v1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object v1

    .line 20
    const-string/jumbo v3, "rampart_blocked_unknown_apps"

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 27
    move-result v1

    .line 28
    const/4 v3, 0x1

    .line 29
    if-ne v1, v3, :cond_1

    .line 31
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 34
    move-result-object v1

    .line 35
    const-string v2, "CountryISO"

    .line 37
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    const-string v2, "CN"

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 49
    const/16 v1, 0x2a

    .line 51
    invoke-static {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/16 v1, 0x29

    .line 57
    invoke-static {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 60
    :goto_0
    const-string v2, "RAMPARTPackageInformation"

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const-string/jumbo v1, "ro.product.model"

    .line 66
    const-string v4, "Unknown"

    .line 68
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/android/server/asks/ASKSManagerService;->getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_3

    .line 78
    const-string v4, "TRUSTEDSTORE"

    .line 80
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 86
    const/16 v1, 0x23

    .line 88
    invoke-static {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 91
    :goto_1
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 94
    move-result v1

    .line 95
    if-ge v1, v3, :cond_2

    .line 97
    const-string/jumbo p0, "skip TS due to non policy"

    .line 100
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v3

    .line 104
    :cond_2
    invoke-virtual {p0, v2, v0, p1, p2}, Lcom/android/server/asks/ASKSManagerService;->isTrustedStoreCheck(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Z

    .line 107
    move-result p0

    .line 108
    return p0

    .line 109
    :cond_3
    const-string/jumbo p0, "skip TS.."

    .line 112
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v3
.end method

.method public final isTrustedStoreCheck(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;I)Z
    .locals 6

    .line 1
    invoke-static {p3}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    :goto_0
    move v1, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    move v1, v3

    .line 36
    :goto_1
    const-string v4, ":"

    .line 38
    const-string v5, "ALL"

    .line 40
    if-eqz v1, :cond_6

    .line 42
    if-eqz v0, :cond_11

    .line 44
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_2

    .line 50
    const-string p0, "TS Hit:"

    .line 52
    invoke-static {p0, p3, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return v2

    .line 56
    :cond_2
    invoke-virtual {p0, p4, p3}, Lcom/android/server/asks/ASKSManagerService;->getSigByPackage(ILjava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    const-string/jumbo p2, "null"

    .line 63
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_3

    .line 69
    if-eqz p0, :cond_4

    .line 71
    :cond_3
    if-eqz p0, :cond_5

    .line 73
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_5

    .line 79
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    const-string p4, "TS: Hit"

    .line 83
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v2

    .line 103
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    const-string p4, "TS: Hit not sig "

    .line 107
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 123
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v3

    .line 127
    :cond_6
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_11

    .line 133
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Ljava/util/ArrayList;

    .line 139
    if-eqz v0, :cond_11

    .line 141
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_7

    .line 147
    return v2

    .line 148
    :cond_7
    invoke-virtual {p0, p4, p3}, Lcom/android/server/asks/ASKSManagerService;->getSigByPackage(ILjava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object v1

    .line 152
    if-nez v1, :cond_8

    .line 154
    const-string p0, "TS: ALL Unknown:"

    .line 156
    invoke-static {p0, p3, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return v2

    .line 160
    :cond_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_9

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    .line 168
    const-string p2, "TS: ALL "

    .line 170
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p0

    .line 186
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return v2

    .line 190
    :cond_9
    const-string v0, "PERMISSION"

    .line 192
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 195
    move-result v5

    .line 196
    if-eqz v5, :cond_e

    .line 198
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    move-result-object p2

    .line 202
    check-cast p2, Ljava/util/ArrayList;

    .line 204
    if-eqz p2, :cond_f

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 208
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 211
    move-result-object v0

    .line 212
    if-eqz v0, :cond_f

    .line 214
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 219
    move-result-object p0

    .line 220
    const/16 v0, 0x1000

    .line 222
    invoke-virtual {p0, p3, v0, p4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 225
    move-result-object p0

    .line 226
    if-eqz p0, :cond_d

    .line 228
    iget-object p4, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 230
    if-eqz p4, :cond_c

    .line 232
    move p4, v3

    .line 233
    :goto_2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 235
    array-length v5, v0

    .line 236
    if-ge p4, v5, :cond_f

    .line 238
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 240
    aget v5, v5, p4

    .line 242
    and-int/lit8 v5, v5, 0x2

    .line 244
    if-eqz v5, :cond_b

    .line 246
    aget-object v0, v0, p4

    .line 248
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_b

    .line 254
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 257
    move-result p2

    .line 258
    if-eqz p2, :cond_a

    .line 260
    new-instance p2, Ljava/lang/StringBuilder;

    .line 262
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    const-string v0, "TS ALL Hit Permission:"

    .line 267
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 272
    aget-object p0, p0, p4

    .line 274
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object p0

    .line 281
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    goto :goto_3

    .line 285
    :catch_0
    move-exception p0

    .line 286
    goto :goto_4

    .line 287
    :cond_a
    :goto_3
    return v2

    .line 288
    :cond_b
    add-int/lit8 p4, p4, 0x1

    .line 290
    goto :goto_2

    .line 291
    :cond_c
    const-string/jumbo p0, "requestedPermissions is null"

    .line 294
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    goto :goto_5

    .line 298
    :cond_d
    const-string p0, "PackageInfo is null"

    .line 300
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_5

    .line 304
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 306
    const-string p4, "Error : "

    .line 308
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string p4, ":::::"

    .line 316
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object p0

    .line 326
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    goto :goto_5

    .line 330
    :cond_e
    const-string p0, "TS: ALL not Permission"

    .line 332
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_f
    :goto_5
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 338
    move-result p0

    .line 339
    const-string p2, "TS: ALL not sig "

    .line 341
    if-eqz p0, :cond_10

    .line 343
    new-instance p0, Ljava/lang/StringBuilder;

    .line 345
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    move-result-object p0

    .line 361
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    goto :goto_6

    .line 365
    :cond_10
    invoke-static {p2, p3, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_6
    return v3

    .line 369
    :cond_11
    const-string p0, "Check ALL case :"

    .line 371
    invoke-static {p0, p3, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return v3
.end method

.method public final isUnknownApps(Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .locals 4

    .line 1
    const-string v0, "Only the system can claim isUnknownApps"

    .line 3
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    iget-boolean p0, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 11
    return v0

    .line 12
    :cond_0
    const-string p0, "PackageInformation"

    .line 14
    const-string/jumbo v1, "checking limitCallPem....(endCalling)"

    .line 17
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    const-string/jumbo v2, "isUnknownApp "

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    if-eqz p1, :cond_8

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_8

    .line 46
    if-nez p2, :cond_1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .line 51
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-static {v2, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 64
    const-string/jumbo p1, "installedList is null"

    .line 67
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return v0

    .line 71
    :cond_2
    const-string/jumbo v3, "overlay"

    .line 74
    invoke-static {v3, v2}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_7

    .line 80
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_3

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_5

    .line 93
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_4

    .line 99
    :try_start_0
    aget-object p2, p2, v0

    .line 101
    invoke-static {p2}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 108
    move-result v2

    .line 109
    if-lez v2, :cond_6

    .line 111
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lcom/android/server/asks/InstalledAppInfo;

    .line 117
    iget-object p1, p1, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_6

    .line 125
    const-string/jumbo p1, "isUnknownApp is true"

    .line 128
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    const/4 p0, 0x1

    .line 132
    return p0

    .line 133
    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 137
    goto :goto_0

    .line 138
    :cond_4
    const-string/jumbo p1, "packageName is not exist in installedUnknownList"

    .line 141
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    goto :goto_0

    .line 145
    :cond_5
    const-string/jumbo p1, "packageName is not exist in overlayList"

    .line 148
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_6
    :goto_0
    return v0

    .line 152
    :cond_7
    :goto_1
    const-string/jumbo p1, "overlayList is null"

    .line 155
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v0

    .line 159
    :cond_8
    :goto_2
    const-string/jumbo p1, "packageName or hashedSignature is null!!"

    .line 162
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/IASKSManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    instance-of p1, p0, Ljava/lang/SecurityException;

    .line 9
    if-nez p1, :cond_0

    .line 11
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    .line 13
    if-nez p1, :cond_0

    .line 15
    const-string p1, "ASKSManager"

    .line 17
    const-string p2, "ASKS Manager Crash"

    .line 19
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :cond_0
    throw p0
.end method

.method public final postASKSsetup(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string v2, "Only the system can claim postASKSsetup"

    .line 7
    invoke-static {v2}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 13
    move-result v2

    .line 14
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    move/from16 v5, p3

    .line 22
    if-ne v5, v2, :cond_0

    .line 24
    move v2, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v4

    .line 27
    :goto_0
    iget-object v5, v0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    .line 29
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 32
    move-result v5

    .line 33
    const/4 v6, 0x0

    .line 34
    if-eqz v5, :cond_d

    .line 36
    iget-object v5, v0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    .line 38
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    .line 44
    iget-object v7, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    .line 46
    if-eqz v7, :cond_2

    .line 48
    iget-boolean v8, v7, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    .line 50
    if-eqz v8, :cond_2

    .line 52
    new-instance v8, Lcom/android/server/asks/RuleUpdateForSecurity;

    .line 54
    invoke-direct {v8, v7}, Lcom/android/server/asks/RuleUpdateForSecurity;-><init>(Lcom/android/server/asks/RUFSContainer;)V

    .line 57
    const-string v9, "AASA_ASKSManager_RUFS"

    .line 59
    const-string v10, "Start to RUFS update."

    .line 61
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string/jumbo v10, "security.ASKS.policy_version"

    .line 67
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v11

    .line 71
    invoke-virtual {v8, v11}, Lcom/android/server/asks/RuleUpdateForSecurity;->isUpdatePolicy(Ljava/lang/String;)Z

    .line 74
    move-result v11

    .line 75
    if-eqz v11, :cond_2

    .line 77
    new-instance v11, Ljava/lang/StringBuilder;

    .line 79
    const-string v12, "!!path:"

    .line 81
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object v12, v7, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyPath:Ljava/lang/String;

    .line 86
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v11

    .line 93
    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 99
    move-result v11

    .line 100
    const/16 v12, 0x3e8

    .line 102
    if-ne v11, v12, :cond_1

    .line 104
    move-object/from16 v11, p2

    .line 106
    invoke-virtual {v8, v3, v11}, Lcom/android/server/asks/RuleUpdateForSecurity;->updatePolicy(ILjava/lang/String;)Z

    .line 109
    move-result v8

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    const-string v8, "AASA_RuleUpdateForSecurity_RUFS"

    .line 113
    const-string/jumbo v11, "updatePolicyFromToken: enforced fail"

    .line 116
    invoke-static {v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    move v8, v4

    .line 120
    :goto_1
    if-eqz v8, :cond_2

    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v11, "policy update from "

    .line 127
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    move-result-object v11

    .line 134
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v8

    .line 141
    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v7, v7, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;

    .line 146
    sput-object v7, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 148
    invoke-static {v10, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->applyExecutePolicy()V

    .line 157
    const-string/jumbo v7, "ro.product.model"

    .line 160
    const-string/jumbo v8, "null"

    .line 163
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    new-instance v7, Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v8, "policy update to   "

    .line 171
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v7

    .line 185
    invoke-static {v9, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v7, "STORE"

    .line 190
    sget-object v8, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 192
    invoke-virtual {v0, v7, v8}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSAInfoForUpdatePolicy(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->updateSmsFilterFeatures()V

    .line 198
    move v7, v3

    .line 199
    goto :goto_2

    .line 200
    :cond_2
    move v7, v4

    .line 201
    :goto_2
    invoke-virtual {v0, v5}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    .line 204
    move-result v8

    .line 205
    if-eqz v8, :cond_3

    .line 207
    move v7, v3

    .line 208
    :cond_3
    iget-object v8, v0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 210
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 213
    move-result v8

    .line 214
    const/4 v9, -0x1

    .line 215
    if-eqz v8, :cond_9

    .line 217
    if-eqz v2, :cond_9

    .line 219
    iget-object v2, v0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 221
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 227
    iget-object v8, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 229
    iget-object v10, v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 231
    const-string v11, "AASA_ASKSManager_RESTRICTED"

    .line 233
    const-string v12, "Token"

    .line 235
    if-eqz v8, :cond_4

    .line 237
    iget-object v13, v8, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    .line 239
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    move-result v13

    .line 243
    if-eqz v13, :cond_4

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    .line 247
    const-string/jumbo v10, "postASKSsetup() : new restricted rule("

    .line 250
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    iget-object v10, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    .line 255
    const-string v12, ") is updated from Token."

    .line 257
    invoke-static {v7, v10, v12, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iput-object v8, v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 262
    :goto_3
    move v7, v3

    .line 263
    goto :goto_4

    .line 264
    :cond_4
    if-nez v8, :cond_5

    .line 266
    if-eqz v10, :cond_5

    .line 268
    iget-object v8, v10, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    .line 270
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    move-result v8

    .line 274
    if-eqz v8, :cond_5

    .line 276
    new-instance v7, Ljava/lang/StringBuilder;

    .line 278
    const-string/jumbo v8, "updateRestictRule() : There is no restricted rule ("

    .line 281
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    iget-object v8, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    .line 286
    const-string v10, ") from Token. remove and check policy."

    .line 288
    invoke-static {v7, v8, v10, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iput-object v6, v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 293
    invoke-virtual {v0, v5}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    .line 296
    goto :goto_3

    .line 297
    :cond_5
    :goto_4
    iget-object v8, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 299
    if-eqz v8, :cond_7

    .line 301
    iget-object v10, v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 303
    if-eqz v10, :cond_6

    .line 305
    :try_start_0
    iget-object v8, v8, Lcom/android/server/asks/ASKSManagerService$Deletable;->mVersion:Ljava/lang/String;

    .line 307
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 310
    move-result v8

    .line 311
    iget-object v10, v10, Lcom/android/server/asks/ASKSManagerService$Deletable;->mVersion:Ljava/lang/String;

    .line 313
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 316
    move-result v10

    .line 317
    if-lt v8, v10, :cond_8

    .line 319
    iget-object v8, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 321
    iput-object v8, v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    goto :goto_5

    .line 324
    :cond_6
    iput-object v8, v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 326
    :goto_5
    move v7, v3

    .line 327
    goto :goto_6

    .line 328
    :cond_7
    iget-object v8, v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 330
    if-eqz v8, :cond_8

    .line 332
    iput-object v6, v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 334
    goto :goto_5

    .line 335
    :catch_0
    :cond_8
    :goto_6
    iget v8, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    .line 337
    if-eq v8, v9, :cond_e

    .line 339
    iput v8, v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 341
    goto :goto_9

    .line 342
    :cond_9
    iget-boolean v8, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    .line 344
    if-eqz v8, :cond_e

    .line 346
    iget-object v8, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 348
    if-eqz v8, :cond_a

    .line 350
    :goto_7
    move v9, v3

    .line 351
    goto :goto_8

    .line 352
    :cond_a
    iget v10, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    .line 354
    if-eq v10, v9, :cond_b

    .line 356
    goto :goto_7

    .line 357
    :cond_b
    iget-object v9, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 359
    if-eqz v9, :cond_c

    .line 361
    goto :goto_7

    .line 362
    :cond_c
    move v9, v4

    .line 363
    :goto_8
    if-eqz v9, :cond_e

    .line 365
    if-eqz v2, :cond_e

    .line 367
    new-instance v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 369
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object v8, v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 374
    iget v7, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    .line 376
    iput v7, v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 378
    iget-object v7, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 380
    iput-object v7, v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 382
    iget-object v7, v0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 384
    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :goto_9
    move v7, v3

    .line 388
    goto :goto_a

    .line 389
    :cond_d
    move v7, v4

    .line 390
    move-object v5, v6

    .line 391
    :cond_e
    :goto_a
    iget-object v2, v0, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

    .line 393
    const/4 v8, 0x2

    .line 394
    const-string v9, "PackageInformation"

    .line 396
    if-eqz v2, :cond_18

    .line 398
    if-eqz v1, :cond_18

    .line 400
    iget-object v10, v2, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 402
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    move-result v10

    .line 406
    const-string v11, " , "

    .line 408
    const-string v12, "before, after : + "

    .line 410
    const-string v13, ""

    .line 412
    if-eqz v10, :cond_13

    .line 414
    const-string/jumbo v10, "installAuthority"

    .line 417
    invoke-static {v10, v6}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 420
    move-result-object v10

    .line 421
    if-eqz v10, :cond_15

    .line 423
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 426
    move-result v14

    .line 427
    if-nez v14, :cond_15

    .line 429
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 432
    move-result-object v10

    .line 433
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 436
    move-result v14

    .line 437
    if-eqz v14, :cond_15

    .line 439
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 442
    move-result-object v14

    .line 443
    check-cast v14, Ljava/lang/String;

    .line 445
    const-string v15, ","

    .line 447
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 450
    move-result-object v14

    .line 451
    aget-object v15, v14, v4

    .line 453
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    move-result v15

    .line 457
    if-eqz v15, :cond_12

    .line 459
    array-length v15, v14

    .line 460
    const/4 v4, 0x3

    .line 461
    if-ne v15, v4, :cond_12

    .line 463
    aget-object v4, v14, v3

    .line 465
    if-eqz v4, :cond_15

    .line 467
    aget-object v10, v14, v8

    .line 469
    iget-object v14, v2, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 471
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    move-result v14

    .line 475
    if-eqz v14, :cond_f

    .line 477
    iget-object v14, v2, Lcom/android/server/asks/InstalledAppInfo;->installAuthorityDate:Ljava/lang/String;

    .line 479
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    move-result v14

    .line 483
    if-nez v14, :cond_15

    .line 485
    :cond_f
    new-instance v14, Ljava/lang/StringBuilder;

    .line 487
    const-string v15, "[Token] TokenPolicy is different : update "

    .line 489
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 495
    move-result v16

    .line 496
    if-eqz v16, :cond_10

    .line 498
    invoke-static {v12, v4, v11}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    move-result-object v4

    .line 502
    iget-object v3, v2, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 504
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    move-result-object v3

    .line 511
    goto :goto_c

    .line 512
    :cond_10
    move-object v3, v13

    .line 513
    :goto_c
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    move-result-object v3

    .line 520
    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    .line 525
    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 531
    move-result v4

    .line 532
    if-eqz v4, :cond_11

    .line 534
    invoke-static {v12, v10, v11}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    move-result-object v4

    .line 538
    iget-object v10, v2, Lcom/android/server/asks/InstalledAppInfo;->installAuthorityDate:Ljava/lang/String;

    .line 540
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    move-result-object v13

    .line 547
    :cond_11
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    move-result-object v3

    .line 554
    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-static {v8, v2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 560
    goto/16 :goto_f

    .line 562
    :cond_12
    const/4 v3, 0x1

    .line 563
    const/4 v4, 0x0

    .line 564
    goto/16 :goto_b

    .line 566
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 568
    const-string v4, "[Token] package name is different "

    .line 570
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 576
    move-result v4

    .line 577
    if-eqz v4, :cond_14

    .line 579
    const-string/jumbo v4, "packageName : "

    .line 582
    const-string v10, " , InstallAppInfo "

    .line 584
    invoke-static {v4, v1, v10}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    move-result-object v4

    .line 588
    iget-object v10, v2, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 590
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    move-result-object v4

    .line 597
    goto :goto_d

    .line 598
    :cond_14
    move-object v4, v13

    .line 599
    :goto_d
    invoke-static {v3, v4, v9}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_15
    const-string v3, "[Token] compare : not exist token"

    .line 604
    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v3, Ljava/util/HashMap;

    .line 609
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 612
    invoke-static {v6, v3}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 615
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 618
    move-result v4

    .line 619
    if-nez v4, :cond_19

    .line 621
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    move-result-object v3

    .line 625
    check-cast v3, Lcom/android/server/asks/InstalledAppInfo;

    .line 627
    if-eqz v3, :cond_19

    .line 629
    iget-object v4, v3, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 631
    if-nez v4, :cond_19

    .line 633
    iget-object v4, v3, Lcom/android/server/asks/InstalledAppInfo;->installAuthorityDate:Ljava/lang/String;

    .line 635
    if-nez v4, :cond_19

    .line 637
    iget-object v4, v2, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 639
    if-eqz v4, :cond_19

    .line 641
    iget-object v4, v2, Lcom/android/server/asks/InstalledAppInfo;->installAuthorityDate:Ljava/lang/String;

    .line 643
    if-eqz v4, :cond_19

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    .line 647
    const-string v10, "[Token] policy is different "

    .line 649
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 655
    move-result v10

    .line 656
    if-eqz v10, :cond_16

    .line 658
    new-instance v10, Ljava/lang/StringBuilder;

    .line 660
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 663
    iget-object v14, v3, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 665
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    iget-object v14, v2, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 673
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    move-result-object v10

    .line 680
    goto :goto_e

    .line 681
    :cond_16
    move-object v10, v13

    .line 682
    :goto_e
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    move-result-object v4

    .line 689
    invoke-static {v9, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v4, Ljava/lang/StringBuilder;

    .line 694
    const-string v10, "[Token] policy date is different "

    .line 696
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 702
    move-result v10

    .line 703
    if-eqz v10, :cond_17

    .line 705
    new-instance v10, Ljava/lang/StringBuilder;

    .line 707
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 710
    iget-object v3, v3, Lcom/android/server/asks/InstalledAppInfo;->installAuthorityDate:Ljava/lang/String;

    .line 712
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    iget-object v3, v2, Lcom/android/server/asks/InstalledAppInfo;->installAuthorityDate:Ljava/lang/String;

    .line 720
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    move-result-object v13

    .line 727
    :cond_17
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    move-result-object v3

    .line 734
    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-static {v8, v2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 740
    goto :goto_f

    .line 741
    :cond_18
    const-string v2, "[Token] package name is null"

    .line 743
    invoke-static {v9, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_19
    :goto_f
    iget-object v2, v0, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

    .line 748
    if-eqz v2, :cond_1d

    .line 750
    if-eqz v1, :cond_1d

    .line 752
    iget-object v3, v2, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 754
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 757
    move-result v3

    .line 758
    if-eqz v3, :cond_1c

    .line 760
    const-string/jumbo v3, "isInstalledList"

    .line 763
    invoke-static {v3, v6}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 766
    move-result-object v3

    .line 767
    if-nez v3, :cond_1a

    .line 769
    const-string/jumbo v2, "is installed. but info_list is null"

    .line 772
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 775
    move-result-object v2

    .line 776
    invoke-static {v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    goto :goto_11

    .line 780
    :cond_1a
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 783
    move-result v3

    .line 784
    if-eqz v3, :cond_1b

    .line 786
    const-string v3, " is registered to info_list (replace)"

    .line 788
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 791
    move-result-object v3

    .line 792
    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-static {v8, v2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 798
    goto :goto_10

    .line 799
    :cond_1b
    const-string v3, " is registered to info_list"

    .line 801
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 804
    move-result-object v3

    .line 805
    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v3, 0x1

    .line 809
    invoke-static {v3, v2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 812
    :goto_10
    iput-object v6, v0, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

    .line 814
    goto :goto_11

    .line 815
    :cond_1c
    const-string v2, " are different in info_list"

    .line 817
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 820
    move-result-object v2

    .line 821
    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    goto :goto_11

    .line 825
    :cond_1d
    const-string v2, "PackageInfo in info_list"

    .line 827
    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :goto_11
    if-eqz v5, :cond_1e

    .line 832
    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->clear()V

    .line 835
    :cond_1e
    iget-object v2, v0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    .line 837
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 840
    move-result v2

    .line 841
    if-eqz v2, :cond_1f

    .line 843
    iget-object v2, v0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    .line 845
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    :cond_1f
    if-eqz v7, :cond_20

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictedTargetPackages()V

    .line 856
    :cond_20
    return-void
.end method

.method public final printCurInfo(Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Lcom/android/server/asks/ASKSManagerService$CURPARAM;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "pkg:"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "PackageInformation"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "-- initiating :"

    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v2, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->initiatingPackageName:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    const-string v2, "-- originating :"

    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v2, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->originatingPackageName:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    const-string v2, "-- sdkVersion :"

    .line 65
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    iget v2, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->sdkVersion:I

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    const-string v3, "-- ASKS Version : "

    .line 84
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    const-string v3, "-- device "

    .line 103
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v3, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->target_model:Ljava/lang/String;

    .line 108
    invoke-static {v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-boolean v0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isDevDevice:Z

    .line 113
    if-eqz v0, :cond_10

    .line 115
    iget-boolean v0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isCheckZipFormat:Z

    .line 117
    if-eqz v0, :cond_0

    .line 119
    const-string/jumbo v0, "enable CheckZipFormat"

    .line 122
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    goto :goto_0

    .line 126
    :cond_0
    const-string/jumbo v0, "disable CheckZipFormat"

    .line 129
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_LIMIT_CALLPEM:Z

    .line 134
    if-eqz p0, :cond_1

    .line 136
    const-string/jumbo p0, "enable limitCallPem"

    .line 139
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    goto :goto_1

    .line 143
    :cond_1
    const-string/jumbo p0, "disable limitCallPem"

    .line 146
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_1
    iget-boolean p0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLimitOnlyKorMCC:Z

    .line 151
    if-eqz p0, :cond_2

    .line 153
    const-string/jumbo p0, "enable isOnlyKorMCC"

    .line 156
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    goto :goto_2

    .line 160
    :cond_2
    const-string/jumbo p0, "disable isOnlyKorMCC"

    .line 163
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_2
    iget-boolean p0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isTabletExcepted:Z

    .line 168
    if-eqz p0, :cond_3

    .line 170
    const-string/jumbo p0, "enable Mobile Option"

    .line 173
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    goto :goto_3

    .line 177
    :cond_3
    const-string/jumbo p0, "disable Mobile Option"

    .line 180
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_3
    iget-boolean p0, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocUrlCase:Z

    .line 185
    if-eqz p0, :cond_4

    .line 187
    new-instance p0, Ljava/lang/StringBuilder;

    .line 189
    const-string v0, "-- download Url :"

    .line 191
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->downloadUrl:Ljava/lang/String;

    .line 196
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object p0

    .line 203
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance p0, Ljava/lang/StringBuilder;

    .line 208
    const-string v0, "-- Domain :"

    .line 210
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->domain:Ljava/lang/String;

    .line 215
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p0

    .line 222
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance p0, Ljava/lang/StringBuilder;

    .line 227
    const-string v0, "-- IP :"

    .line 229
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    iget-boolean p1, p1, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isIP:Z

    .line 234
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object p0

    .line 241
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    .line 246
    const-string p1, "-- DH :"

    .line 248
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    iget-object p1, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->hashDomain:Ljava/lang/String;

    .line 253
    invoke-static {p0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 258
    const-string p1, "-- referral Url : "

    .line 260
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    iget-object p1, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->referralUrl:Ljava/lang/String;

    .line 265
    invoke-static {p0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 p0, 0x0

    .line 269
    move p1, p0

    .line 270
    :goto_4
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->signatures:[Landroid/content/pm/Signature;

    .line 272
    array-length v3, v0

    .line 273
    const-string v4, "DEBUG pkg:"

    .line 275
    const/4 v5, 0x0

    .line 276
    if-ge p1, v3, :cond_5

    .line 278
    :try_start_0
    aget-object v0, v0, p1

    .line 280
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 283
    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_5

    .line 285
    :catch_0
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 289
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 291
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    iget-object v3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    .line 296
    const-string v4, " sig ["

    .line 298
    const-string v6, "]::"

    .line 300
    invoke-static {p1, v3, v4, v6, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 303
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    move-result-object v0

    .line 310
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    add-int/lit8 p1, p1, 0x1

    .line 315
    goto :goto_4

    .line 316
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 318
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v0, " pkgNameHash::"

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->pkgNameHash:Ljava/lang/String;

    .line 333
    invoke-static {p1, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :try_start_1
    iget-object p1, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->baseCodePath:Ljava/lang/String;

    .line 338
    invoke-static {p1}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    .line 341
    move-result-object p1

    .line 342
    invoke-static {p1}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    .line 345
    move-result-object p1

    .line 346
    const-string/jumbo v0, "null"

    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    move-result v0

    .line 353
    if-nez v0, :cond_6

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    .line 357
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v3, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    .line 365
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v3, " apkFileHash::"

    .line 370
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    move-result-object p1

    .line 380
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 383
    goto :goto_6

    .line 384
    :catch_1
    move-exception p1

    .line 385
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 388
    :cond_6
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 390
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    .line 395
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string v0, " api::"

    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    move-result-object p1

    .line 410
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    move p1, p0

    .line 414
    :goto_7
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    .line 416
    array-length v0, v0

    .line 417
    if-ge p1, v0, :cond_7

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    .line 421
    const-string v2, "DEBUG pem:"

    .line 423
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    iget-object v2, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->permList:[Ljava/lang/String;

    .line 428
    aget-object v2, v2, p1

    .line 430
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    move-result-object v0

    .line 437
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    add-int/lit8 p1, p1, 0x1

    .line 442
    goto :goto_7

    .line 443
    :cond_7
    iget-object p1, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    .line 445
    if-eqz p1, :cond_8

    .line 447
    :goto_8
    iget-object p1, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    .line 449
    array-length p1, p1

    .line 450
    if-ge p0, p1, :cond_8

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    .line 454
    const-string v0, "DEBUG servicePem:"

    .line 456
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    iget-object v0, p2, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->servicePermList:[Ljava/lang/String;

    .line 461
    aget-object v0, v0, p0

    .line 463
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    move-result-object p1

    .line 470
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    add-int/lit8 p0, p0, 0x1

    .line 475
    goto :goto_8

    .line 476
    :cond_8
    const-string/jumbo p0, "isInstalledList"

    .line 479
    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 482
    move-result-object p0

    .line 483
    if-eqz p0, :cond_9

    .line 485
    new-instance p1, Ljava/lang/StringBuilder;

    .line 487
    const-string p2, "DEBUG isInstalledList "

    .line 489
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 495
    move-result-object p0

    .line 496
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    move-result-object p0

    .line 503
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_9
    const-string/jumbo p0, "requestInstallerZip"

    .line 509
    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 512
    move-result-object p0

    .line 513
    if-eqz p0, :cond_a

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    .line 517
    const-string p2, "DEBUG requestInstallerZip "

    .line 519
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 525
    move-result-object p0

    .line 526
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    move-result-object p0

    .line 533
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_a
    const-string/jumbo p0, "overlay"

    .line 539
    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 542
    move-result-object p0

    .line 543
    if-eqz p0, :cond_b

    .line 545
    new-instance p1, Ljava/lang/StringBuilder;

    .line 547
    const-string p2, "DEBUG overlay "

    .line 549
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 555
    move-result-object p0

    .line 556
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    move-result-object p0

    .line 563
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_b
    const-string/jumbo p0, "blockExecute"

    .line 569
    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 572
    move-result-object p0

    .line 573
    if-eqz p0, :cond_c

    .line 575
    new-instance p1, Ljava/lang/StringBuilder;

    .line 577
    const-string p2, "DEBUG blockExecute "

    .line 579
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 585
    move-result-object p0

    .line 586
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    move-result-object p0

    .line 593
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_c
    const-string p0, "allowExecute"

    .line 598
    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 601
    move-result-object p0

    .line 602
    if-eqz p0, :cond_d

    .line 604
    new-instance p1, Ljava/lang/StringBuilder;

    .line 606
    const-string p2, "DEBUG allowExecute "

    .line 608
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 614
    move-result-object p0

    .line 615
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    move-result-object p0

    .line 622
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_d
    const-string/jumbo p0, "initType"

    .line 628
    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 631
    move-result-object p0

    .line 632
    if-eqz p0, :cond_e

    .line 634
    new-instance p1, Ljava/lang/StringBuilder;

    .line 636
    const-string p2, "DEBUG initType "

    .line 638
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 644
    move-result-object p0

    .line 645
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 651
    move-result-object p0

    .line 652
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_e
    const-string p0, "accessibility"

    .line 657
    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 660
    move-result-object p0

    .line 661
    if-eqz p0, :cond_f

    .line 663
    new-instance p1, Ljava/lang/StringBuilder;

    .line 665
    const-string p2, "DEBUG accessibility "

    .line 667
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 673
    move-result-object p0

    .line 674
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    move-result-object p0

    .line 681
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_f
    const-string/jumbo p0, "hasReqInstallPEM"

    .line 687
    invoke-static {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 690
    move-result-object p0

    .line 691
    if-eqz p0, :cond_10

    .line 693
    new-instance p1, Ljava/lang/StringBuilder;

    .line 695
    const-string p2, "DEBUG hasReqInstallPEM "

    .line 697
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 703
    move-result-object p0

    .line 704
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 710
    move-result-object p0

    .line 711
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_10
    return-void
.end method

.method public final readASKSFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string p0, "Only the system can claim readASKSFiles"

    .line 3
    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    new-instance p0, Ljava/io/File;

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 17
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    .line 19
    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .line 24
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 30
    move-result p2

    .line 31
    :goto_0
    const/4 v0, -0x1

    .line 32
    if-eq p2, v0, :cond_0

    .line 34
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 37
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 40
    move-result p2

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p2

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 51
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 58
    return-object p2

    .line 59
    :catch_0
    move-exception p0

    .line 60
    goto :goto_5

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    goto :goto_3

    .line 63
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 66
    goto :goto_2

    .line 67
    :catchall_2
    move-exception p0

    .line 68
    :try_start_6
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 71
    :goto_2
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 72
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 75
    goto :goto_4

    .line 76
    :catchall_3
    move-exception p1

    .line 77
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 80
    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 81
    :goto_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 84
    const-string p0, ""

    .line 86
    return-object p0

    .line 87
    :cond_1
    const-string p0, "No file exists"

    .line 89
    return-object p0
.end method

.method public final readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "name"

    .line 5
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v3, "readPackage() : packageName = "

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    const-string v3, "AASA_ASKSManager"

    .line 26
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v2, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 31
    invoke-direct {v2}, Lcom/android/server/asks/ASKSManagerService$ASKSState;-><init>()V

    .line 34
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 36
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 42
    move-result v2

    .line 43
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x1

    .line 48
    if-eq v3, v4, :cond_7

    .line 50
    const/4 v4, 0x3

    .line 51
    if-ne v3, v4, :cond_1

    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 56
    move-result v5

    .line 57
    if-le v5, v2, :cond_7

    .line 59
    :cond_1
    if-eq v3, v4, :cond_0

    .line 61
    const/4 v4, 0x4

    .line 62
    if-ne v3, v4, :cond_2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    const-string/jumbo v4, "restrict"

    .line 72
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_3

    .line 78
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 80
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 86
    if-eqz v3, :cond_0

    .line 88
    new-instance v4, Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 90
    invoke-direct {v4}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    .line 93
    invoke-static {p1, v4, v0}, Lcom/android/server/asks/ASKSManagerService;->readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V

    .line 96
    iput-object v4, v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    const-string/jumbo v4, "emmode"

    .line 102
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_4

    .line 108
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 110
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 116
    if-eqz v3, :cond_0

    .line 118
    const-string/jumbo v4, "value"

    .line 121
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v4

    .line 125
    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 132
    move-result v4

    .line 133
    iput v4, v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 135
    goto :goto_0

    .line 136
    :cond_4
    const-string/jumbo v4, "delete"

    .line 139
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result v3

    .line 143
    if-eqz v3, :cond_6

    .line 145
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 147
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 153
    if-eqz v3, :cond_0

    .line 155
    const-string/jumbo v4, "version"

    .line 158
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    move-result-object v4

    .line 162
    const-string/jumbo v5, "datelimit"

    .line 165
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object v5

    .line 169
    if-eqz v4, :cond_0

    .line 171
    if-nez v5, :cond_5

    .line 173
    goto/16 :goto_0

    .line 175
    :cond_5
    new-instance v6, Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 177
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object v4, v6, Lcom/android/server/asks/ASKSManagerService$Deletable;->mVersion:Ljava/lang/String;

    .line 182
    iput-object v5, v6, Lcom/android/server/asks/ASKSManagerService$Deletable;->mDatelimit:Ljava/lang/String;

    .line 184
    iput-object v6, v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 186
    goto/16 :goto_0

    .line 188
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    const-string v4, "Unknown element under <pkg>: "

    .line 192
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v3

    .line 206
    const-string v4, "ASKSManager"

    .line 208
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 214
    goto/16 :goto_0

    .line 216
    :cond_7
    return-void
.end method

.method public final refreshInstalledUnknownList_NEW()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v2, v0}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 15
    move-result v3

    .line 16
    const-string v4, "PackageInformation"

    .line 18
    if-eqz v3, :cond_0

    .line 20
    const-string/jumbo v0, "installedUnknownList is null"

    .line 23
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void

    .line 27
    :cond_0
    const-string/jumbo v3, "ro.product.model"

    .line 30
    const-string v5, "Unknown"

    .line 32
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Lcom/android/server/asks/ASKSManagerService;->getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_5

    .line 42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 45
    move-result v5

    .line 46
    if-lez v5, :cond_5

    .line 48
    const/16 v5, 0x1b

    .line 50
    invoke-static {v3, v5}, Lcom/android/server/asks/ASKSManagerService;->checkPolicyFileWithDelta(Ljava/util/ArrayList;I)Ljava/util/HashMap;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 57
    move-result-object v5

    .line 58
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v5

    .line 62
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_5

    .line 68
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Lcom/android/server/asks/InstalledAppInfo;

    .line 80
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Ljava/lang/String;

    .line 86
    if-eqz v7, :cond_1

    .line 88
    if-eqz v6, :cond_1

    .line 90
    invoke-static {v6}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v8

    .line 94
    iget-object v9, v7, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    .line 96
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 99
    move-result v9

    .line 100
    const-string v10, ""

    .line 102
    const-string v11, " hash:"

    .line 104
    if-eqz v9, :cond_3

    .line 106
    new-instance v9, Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v12, "try to check "

    .line 111
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_2

    .line 123
    invoke-static {v11, v8}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object v10

    .line 127
    :cond_2
    invoke-static {v9, v10, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v6, v7, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    .line 132
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    move-result-object v6

    .line 136
    check-cast v6, Lcom/android/server/asks/UnknownStore;

    .line 138
    if-eqz v6, :cond_1

    .line 140
    invoke-virtual {v1, v6, v7}, Lcom/android/server/asks/ASKSManagerService;->compareAttributeValue(Lcom/android/server/asks/UnknownStore;Lcom/android/server/asks/InstalledAppInfo;)V

    .line 143
    goto :goto_0

    .line 144
    :cond_3
    const-string v9, "ALL"

    .line 146
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 149
    move-result v12

    .line 150
    if-eqz v12, :cond_1

    .line 152
    new-instance v12, Ljava/lang/StringBuilder;

    .line 154
    const-string/jumbo v13, "try to check(ALL) "

    .line 157
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_4

    .line 169
    invoke-static {v11, v8}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    move-result-object v10

    .line 173
    :cond_4
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object v6

    .line 180
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    move-result-object v6

    .line 187
    check-cast v6, Lcom/android/server/asks/UnknownStore;

    .line 189
    if-eqz v6, :cond_1

    .line 191
    invoke-virtual {v1, v6, v7}, Lcom/android/server/asks/ASKSManagerService;->compareAttributeValue(Lcom/android/server/asks/UnknownStore;Lcom/android/server/asks/InstalledAppInfo;)V

    .line 194
    goto/16 :goto_0

    .line 196
    :cond_5
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->isDevDevice()Z

    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_6

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    .line 204
    const-string v5, "ASKS Unknown List  NEW: "

    .line 206
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 212
    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/Set;->toString()Ljava/lang/String;

    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v0

    .line 224
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_6
    const-string/jumbo v0, "ro.build.official.release"

    .line 230
    const-string/jumbo v3, "false"

    .line 233
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    move-result-object v0

    .line 237
    const-string/jumbo v3, "true"

    .line 240
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_7

    .line 246
    const-string/jumbo v0, "isInstalledList"

    .line 249
    invoke-static {v0, v2}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 252
    move-result-object v2

    .line 253
    new-instance v3, Lcom/android/server/asks/InstalledAppInfo;

    .line 255
    invoke-direct {v3}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    .line 258
    if-eqz v2, :cond_7

    .line 260
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 263
    move-result v0

    .line 264
    if-nez v0, :cond_7

    .line 266
    const/4 v0, 0x0

    .line 267
    move v15, v0

    .line 268
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 271
    move-result v0

    .line 272
    if-ge v15, v0, :cond_7

    .line 274
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Ljava/lang/String;

    .line 280
    const/4 v14, 0x0

    .line 281
    const/16 v16, 0x0

    .line 283
    const/4 v7, 0x0

    .line 284
    const/4 v8, 0x0

    .line 285
    const/4 v9, 0x0

    .line 286
    const/4 v10, 0x0

    .line 287
    const/4 v11, 0x0

    .line 288
    const/4 v12, 0x0

    .line 289
    const/4 v13, 0x0

    .line 290
    move-object v5, v3

    .line 291
    move-object v6, v0

    .line 292
    move/from16 v17, v15

    .line 294
    move-object/from16 v15, v16

    .line 296
    invoke-virtual/range {v5 .. v15}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :try_start_0
    iget-object v5, v1, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 301
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 304
    move-result-object v5

    .line 305
    const/high16 v6, 0x8000000

    .line 307
    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    goto :goto_2

    .line 311
    :catch_0
    move-exception v0

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    .line 314
    const-string v6, "ERROR:: Abnormal App : "

    .line 316
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object v0

    .line 326
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v0, 0x3

    .line 330
    invoke-static {v0, v3}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 333
    :goto_2
    add-int/lit8 v15, v17, 0x1

    .line 335
    goto :goto_1

    .line 336
    :cond_7
    return-void
.end method

.method public final setASKSPolicyVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p0, "Only the system can claim setASKSPolicyVersion"

    .line 3
    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    const-string/jumbo p0, "security.ASKS.policy_version"

    .line 9
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 16
    move-result v1

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    move-result v0

    .line 21
    if-le v1, v0, :cond_0

    .line 23
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v0, "setASKSPolicyVersion() : Numberformat exception "

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    const-string p1, "AASA_ASKSManager"

    .line 45
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    :goto_0
    return-void
.end method

.method public final setSafeInstallSAInfoForTrustStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string/jumbo v1, "packageName"

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string/jumbo p1, "signature"

    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string/jumbo p1, "policy"

    .line 21
    const-string/jumbo p2, "block"

    .line 24
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string/jumbo p1, "module"

    .line 30
    const-string p2, "AutoBlocker"

    .line 32
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo p1, "initiatingPackageName"

    .line 38
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string/jumbo p1, "originatingPackageName"

    .line 44
    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance p1, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;

    .line 49
    const-wide/16 p2, 0x0

    .line 51
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    move-result-object p2

    .line 55
    const-string/jumbo p3, "ts_sts"

    .line 58
    invoke-direct {p1, p3, p2, v0}, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/util/HashMap;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSALog(Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    .line 64
    return-void
.end method

.method public final setSafeInstallSAInfoForUpdatePolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string/jumbo v1, "using"

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string p1, "asksVersion"

    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p1, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;

    .line 19
    const-wide/16 v1, 0x2336

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    move-result-object p2

    .line 25
    const-string/jumbo v1, "updatePolicy"

    .line 28
    invoke-direct {p1, v1, p2, v0}, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/util/HashMap;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->setSafeInstallSALog(Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V

    .line 34
    return-void
.end method

.method public final setSafeInstallSALog(Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;)V
    .locals 5

    .line 1
    const-string v0, "PackageInformation"

    .line 3
    const-string/jumbo v1, "tracking_id"

    .line 6
    const-string v2, "4B5-399-9751101"

    .line 8
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p1, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->eventName:Ljava/lang/String;

    .line 14
    const-string v3, ""

    .line 16
    if-eqz v2, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, v3

    .line 20
    :goto_0
    const-string/jumbo v4, "feature"

    .line 23
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v2, "pkg_name"

    .line 29
    const-string/jumbo v4, "com.samsung.aasaservice"

    .line 32
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v2, "type"

    .line 38
    const-string/jumbo v4, "ev"

    .line 41
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v2, p1, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->eventValue:Ljava/lang/Long;

    .line 46
    if-eqz v2, :cond_1

    .line 48
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    :cond_1
    const-string/jumbo v2, "value"

    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_0
    iget-object p1, p1, Lcom/android/server/asks/ASKSManagerService$SafeInstallSAInfo;->customDimensionMap:Ljava/util/HashMap;

    .line 60
    if-eqz p1, :cond_2

    .line 62
    const-string/jumbo v2, "dimension"

    .line 65
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception p1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    const-string v3, "ClassCastException: "

    .line 74
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2
    :goto_1
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    .line 93
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 96
    const-string/jumbo v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 99
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v2, "com.sec.android.diagmonagent"

    .line 105
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 113
    if-eqz v1, :cond_3

    .line 115
    new-instance v1, Landroid/os/Handler;

    .line 117
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 120
    move-result-object v2

    .line 121
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 124
    new-instance v2, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticLambda1;

    .line 126
    invoke-direct {v2, p0, p1}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/asks/ASKSManagerService;Landroid/content/Intent;)V

    .line 129
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    goto :goto_3

    .line 133
    :catch_1
    move-exception p0

    .line 134
    goto :goto_2

    .line 135
    :cond_3
    const-string p0, "Context is null, failed to send SA"

    .line 137
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    goto :goto_3

    .line 141
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "Exception: "

    .line 145
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-static {p0, p1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 151
    :goto_3
    return-void
.end method

.method public final setTrustTimebyStatusChanged()V
    .locals 6

    .line 1
    const-string v0, "AASA_ASKSManager_SECURETIME"

    .line 3
    const-string/jumbo v1, "setTrustTimebyStatusChanged : "

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 11
    if-nez v1, :cond_0

    .line 13
    const-string/jumbo p0, "mContext is null. "

    .line 16
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 33
    array-length v2, v0

    .line 34
    const/4 v3, 0x3

    .line 35
    if-ne v2, v3, :cond_1

    .line 37
    aget-object v0, v0, v1

    .line 39
    const-string v2, "0"

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 47
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->updateTrustedFile()V

    .line 50
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->checkNetworkConnection(Landroid/content/Context;)I

    .line 56
    move-result v0

    .line 57
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p0}, Lcom/android/server/asks/ASKSManagerService;->isAutoTimeEnabled(Landroid/content/Context;)Z

    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_2

    .line 65
    if-lez v0, :cond_2

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    move-result-wide v2

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 74
    move-result-wide v4

    .line 75
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->updateTrustedFile()V

    .line 82
    :goto_0
    return-void
.end method

.method public final systemReady()V
    .locals 4

    .line 1
    const-string v0, "Only the system can claim the system is ready"

    .line 3
    invoke-static {v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->checkDeletableListForASKS()V

    .line 9
    const/4 p0, 0x1

    .line 10
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    const-string/jumbo v0, "security.ASKS.rufs_enable"

    .line 17
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->updateSmsFilterFeatures()V

    .line 23
    const-string/jumbo p0, "ro.build.date.utc"

    .line 26
    const-wide/16 v0, -0x1

    .line 28
    invoke-static {p0, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 31
    move-result-wide v0

    .line 32
    const-wide/16 v2, 0x3e8

    .line 34
    mul-long/2addr v0, v2

    .line 35
    const-wide/16 v2, 0x0

    .line 37
    cmp-long p0, v0, v2

    .line 39
    const-string/jumbo v2, "security.ASKS.expiration_date"

    .line 42
    if-gez p0, :cond_0

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Ljava/util/Date;

    .line 54
    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 64
    const/4 p0, 0x5

    .line 65
    const/4 v1, 0x3

    .line 66
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    .line 69
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 71
    const-string/jumbo v1, "yyyyMMdd"

    .line 74
    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void
.end method

.method public final updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    new-instance v2, Ljava/util/HashMap;

    .line 5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v0, Ljava/io/File;

    .line 10
    const-string v3, "/data/system/.aasa/AASApolicy/ASKSRNEW.xml"

    .line 12
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    const-string v5, "Policy"

    .line 22
    const/4 v6, 0x1

    .line 23
    const-string v7, "AASA_ASKSManager_RESTRICTED"

    .line 25
    if-nez v3, :cond_0

    .line 27
    const-string v0, "There is no restict rule in system."

    .line 29
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    goto/16 :goto_a

    .line 34
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    .line 36
    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 50
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 53
    move-result v8

    .line 54
    const/4 v9, 0x2

    .line 55
    if-eq v8, v9, :cond_1

    .line 57
    if-eq v8, v6, :cond_1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    .line 62
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 65
    const-string v9, "VERSION"

    .line 67
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 70
    move-result-object v10

    .line 71
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    const-string/jumbo v10, "value"

    .line 78
    if-eqz v9, :cond_2

    .line 80
    :try_start_2
    invoke-interface {v0, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v9

    .line 84
    move-object v11, v4

    .line 85
    :goto_1
    move-object v12, v11

    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    move-object v6, v0

    .line 89
    goto/16 :goto_6

    .line 91
    :cond_2
    move-object v9, v4

    .line 92
    move-object v11, v9

    .line 93
    goto :goto_1

    .line 94
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 97
    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    if-eq v13, v6, :cond_c

    .line 100
    const/4 v14, 0x3

    .line 101
    const-string v15, "PACKAGE"

    .line 103
    if-ne v13, v14, :cond_7

    .line 105
    :try_start_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 108
    move-result-object v13

    .line 109
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 112
    move-result v13

    .line 113
    if-eqz v13, :cond_6

    .line 115
    if-eqz v11, :cond_5

    .line 117
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 120
    move-result v13

    .line 121
    if-eqz v13, :cond_5

    .line 123
    move-object/from16 v14, p1

    .line 125
    invoke-virtual {v1, v11, v8, v14}, Lcom/android/server/asks/ASKSManagerService;->isTargetPackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    .line 128
    move-result v13

    .line 129
    if-eqz v13, :cond_4

    .line 131
    if-nez v12, :cond_3

    .line 133
    new-instance v12, Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 135
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object v9, v12, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    .line 140
    iput-object v4, v12, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    .line 142
    iput-object v4, v12, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    .line 144
    iput-object v5, v12, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    .line 146
    iput-object v4, v12, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    .line 148
    :cond_3
    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v13, Ljava/lang/StringBuilder;

    .line 153
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v15, " : "

    .line 161
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v12}, Lcom/android/server/asks/ASKSManagerService$Restrict;->toString()Ljava/lang/String;

    .line 167
    move-result-object v12

    .line 168
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v12

    .line 175
    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 181
    :goto_3
    move-object v12, v4

    .line 182
    goto :goto_2

    .line 183
    :cond_5
    move-object/from16 v14, p1

    .line 185
    const-string v12, "The package information is wrong."

    .line 187
    invoke-static {v7, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    goto :goto_3

    .line 191
    :cond_6
    move-object/from16 v14, p1

    .line 193
    goto :goto_5

    .line 194
    :cond_7
    move-object/from16 v14, p1

    .line 196
    const/4 v6, 0x4

    .line 197
    if-ne v13, v6, :cond_9

    .line 199
    :cond_8
    :goto_4
    const/4 v6, 0x1

    .line 200
    goto :goto_2

    .line 201
    :cond_9
    :goto_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 204
    move-result-object v6

    .line 205
    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 208
    move-result v13

    .line 209
    if-eqz v13, :cond_a

    .line 211
    const-string/jumbo v6, "name"

    .line 214
    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    move-result-object v6

    .line 218
    move-object v11, v6

    .line 219
    goto :goto_4

    .line 220
    :cond_a
    const-string v13, "CERT"

    .line 222
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    move-result v6

    .line 226
    if-eqz v6, :cond_b

    .line 228
    invoke-interface {v0, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    move-result-object v6

    .line 232
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    goto :goto_4

    .line 236
    :cond_b
    const-string v6, "RESTRICT"

    .line 238
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 241
    move-result-object v13

    .line 242
    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 245
    move-result v6

    .line 246
    if-eqz v6, :cond_8

    .line 248
    new-instance v6, Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 250
    invoke-direct {v6}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    .line 253
    iput-object v5, v6, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    .line 255
    invoke-static {v0, v6, v9}, Lcom/android/server/asks/ASKSManagerService;->readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    move-object v12, v6

    .line 259
    goto :goto_4

    .line 260
    :cond_c
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 263
    goto :goto_9

    .line 264
    :catch_0
    move-exception v0

    .line 265
    goto :goto_8

    .line 266
    :goto_6
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 269
    goto :goto_7

    .line 270
    :catchall_1
    move-exception v0

    .line 271
    move-object v3, v0

    .line 272
    :try_start_6
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 275
    :goto_7
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 276
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    :goto_9
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 282
    :goto_a
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_d

    .line 288
    const-string v0, "There is no restricted rule."

    .line 290
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_d
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 295
    const/4 v3, 0x0

    .line 296
    if-eqz v0, :cond_13

    .line 298
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 301
    move-result v0

    .line 302
    if-nez v0, :cond_13

    .line 304
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 306
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 309
    move-result-object v0

    .line 310
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 313
    move-result-object v0

    .line 314
    :cond_e
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 317
    move-result v6

    .line 318
    if-eqz v6, :cond_13

    .line 320
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 323
    move-result-object v6

    .line 324
    check-cast v6, Ljava/util/Map$Entry;

    .line 326
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 329
    move-result-object v8

    .line 330
    check-cast v8, Ljava/lang/String;

    .line 332
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 335
    move-result-object v9

    .line 336
    check-cast v9, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 338
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 341
    move-result v10

    .line 342
    const-string/jumbo v11, "updateRestictRule() : current restricted rule("

    .line 345
    const-string v12, "Token"

    .line 347
    if-eqz v10, :cond_11

    .line 349
    iget-object v10, v9, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 351
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    move-result-object v13

    .line 355
    check-cast v13, Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 357
    const-string/jumbo v14, "updateRestrictRule() : new restricted rule exists."

    .line 360
    invoke-static {v7, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-eqz v10, :cond_f

    .line 365
    iget-object v14, v10, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    .line 367
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    move-result v12

    .line 371
    if-eqz v12, :cond_f

    .line 373
    const-string v6, ") is from Token. Skipped."

    .line 375
    invoke-static {v11, v8, v6, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    goto :goto_b

    .line 379
    :cond_f
    if-eqz v10, :cond_10

    .line 381
    iget-object v8, v10, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    .line 383
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    move-result v8

    .line 387
    if-eqz v8, :cond_e

    .line 389
    iget-object v8, v13, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    .line 391
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 394
    move-result v8

    .line 395
    iget-object v10, v10, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    .line 397
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 400
    move-result v10

    .line 401
    if-le v8, v10, :cond_e

    .line 403
    :cond_10
    iput-object v13, v9, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    .line 407
    const-string/jumbo v8, "updateRestrictRule() : update restricted rule for "

    .line 410
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 416
    move-result-object v6

    .line 417
    check-cast v6, Ljava/lang/String;

    .line 419
    invoke-static {v3, v6, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :goto_c
    const/4 v3, 0x1

    .line 423
    goto :goto_b

    .line 424
    :cond_11
    const-string/jumbo v8, "updateRestrictRule() : new restricted rule doesn\'t exists."

    .line 427
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v8, v9, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 432
    if-eqz v8, :cond_12

    .line 434
    iget-object v8, v8, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    .line 436
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    move-result v8

    .line 440
    if-eqz v8, :cond_12

    .line 442
    iput-object v4, v9, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    .line 446
    const-string/jumbo v8, "updateRestrictRule() : remove restricted rule for "

    .line 449
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 455
    move-result-object v6

    .line 456
    check-cast v6, Ljava/lang/String;

    .line 458
    invoke-static {v3, v6, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    goto :goto_c

    .line 462
    :cond_12
    iget-object v8, v9, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 464
    if-eqz v8, :cond_e

    .line 466
    iget-object v8, v8, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    .line 468
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    move-result v8

    .line 472
    if-eqz v8, :cond_e

    .line 474
    new-instance v8, Ljava/lang/StringBuilder;

    .line 476
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 482
    move-result-object v6

    .line 483
    check-cast v6, Ljava/lang/String;

    .line 485
    const-string v9, ") is from Token. not removed."

    .line 487
    invoke-static {v8, v6, v9, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    goto/16 :goto_b

    .line 492
    :cond_13
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 495
    move-result-object v0

    .line 496
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 499
    move-result-object v0

    .line 500
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 503
    move-result v2

    .line 504
    if-eqz v2, :cond_16

    .line 506
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 509
    move-result-object v2

    .line 510
    check-cast v2, Ljava/util/Map$Entry;

    .line 512
    iget-object v4, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 514
    if-nez v4, :cond_14

    .line 516
    goto :goto_e

    .line 517
    :cond_14
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 520
    move-result-object v5

    .line 521
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 524
    move-result v4

    .line 525
    if-eqz v4, :cond_15

    .line 527
    goto :goto_d

    .line 528
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 530
    const-string/jumbo v4, "updateRestrictRule() : new restricted rule for "

    .line 533
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 539
    move-result-object v4

    .line 540
    check-cast v4, Ljava/lang/String;

    .line 542
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    move-result-object v3

    .line 549
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 554
    invoke-direct {v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;-><init>()V

    .line 557
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 560
    move-result-object v4

    .line 561
    check-cast v4, Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 563
    iput-object v4, v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 565
    iget-object v4, v1, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 567
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 570
    move-result-object v2

    .line 571
    check-cast v2, Ljava/lang/String;

    .line 573
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const/4 v3, 0x1

    .line 577
    goto :goto_d

    .line 578
    :cond_16
    :goto_e
    return v3
.end method

.method public final updateRestrictedTargetPackages()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 8
    invoke-virtual {p0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Ljava/util/HashMap;

    .line 14
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 44
    iget-object v4, v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 46
    if-eqz v4, :cond_1

    .line 48
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/String;

    .line 54
    iget-object v3, v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 56
    iget-object v3, v3, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget v3, v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 64
    const/4 v4, -0x1

    .line 65
    if-eq v3, v4, :cond_0

    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/lang/String;

    .line 73
    const-string v3, "DENY"

    .line 75
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-static {v0}, Landroid/content/pm/ASKSManager;->updateRestrictedTargetPackages(Ljava/util/HashMap;)V

    .line 82
    return-void
.end method

.method public final updateTokenValue(Ljava/lang/String;Lcom/android/server/asks/ASKSManagerService$CURPARAM;Lcom/android/server/asks/ASKSManagerService$CURSTATUS;Z)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v1, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    move/from16 v4, p4

    .line 11
    new-instance v5, Ljava/util/HashMap;

    .line 13
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 16
    const/4 v6, 0x0

    .line 17
    invoke-static {v6, v5}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_4

    .line 26
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    move-object v12, v5

    .line 31
    check-cast v12, Lcom/android/server/asks/InstalledAppInfo;

    .line 33
    iget-object v5, v12, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 35
    const-string/jumbo v6, "block"

    .line 38
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 44
    const/16 v5, 0x1f8

    .line 46
    :goto_0
    move/from16 v17, v5

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/16 v5, 0x1f9

    .line 51
    goto :goto_0

    .line 52
    :goto_1
    iget-object v5, v12, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 54
    if-eqz v5, :cond_4

    .line 56
    const-string/jumbo v6, "none"

    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 62
    move-result v5

    .line 63
    const-string v7, "PackageInformation"

    .line 65
    if-nez v5, :cond_3

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    const-string v8, "[Token] updateTokenValue isGlobal : "

    .line 71
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v5

    .line 81
    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v5, Lcom/android/server/asks/RETVALUE;

    .line 86
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v16, 0x0

    .line 91
    const-string v18, ""

    .line 93
    const/4 v14, 0x4

    .line 94
    const/4 v15, 0x0

    .line 95
    const-string v19, ""

    .line 97
    const/16 v20, 0x0

    .line 99
    move-object v13, v5

    .line 100
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/asks/RETVALUE;->set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V

    .line 103
    if-eqz v4, :cond_2

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    .line 107
    const-string v8, "[Token] updateTokenValue global: "

    .line 109
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iget-object v8, v12, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 114
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v8, " isGlobal : "

    .line 119
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    const-string v4, " pem : "

    .line 127
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-boolean v3, v3, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    .line 132
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v3, "packagenName : "

    .line 138
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    .line 143
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v1

    .line 150
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v13, Lcom/android/server/asks/InstalledAppInfo;

    .line 155
    invoke-direct {v13}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    .line 158
    iget-object v1, v0, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

    .line 160
    if-eqz v1, :cond_1

    .line 162
    const-string v1, "[Token] updateTokenValue global getInfo "

    .line 164
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, v0, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

    .line 169
    iput-object v6, v0, Lcom/android/server/asks/InstalledAppInfo;->installAuthority:Ljava/lang/String;

    .line 171
    iput-object v6, v0, Lcom/android/server/asks/InstalledAppInfo;->installAuthorityDate:Ljava/lang/String;

    .line 173
    goto :goto_2

    .line 174
    :cond_1
    const-string v1, "[Token] updateTokenValue global: setInfo "

    .line 176
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v3, v12, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    .line 181
    iget-object v7, v12, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    .line 183
    iget-object v9, v12, Lcom/android/server/asks/InstalledAppInfo;->hasReqInstallPEM:Ljava/lang/String;

    .line 185
    const-string/jumbo v6, "true"

    .line 188
    const-string/jumbo v8, "true"

    .line 191
    const-string v4, "allow"

    .line 193
    const-string v5, "allow"

    .line 195
    const-string/jumbo v10, "none"

    .line 198
    const-string/jumbo v11, "none"

    .line 201
    move-object v1, v13

    .line 202
    move-object/from16 v2, p1

    .line 204
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, v12, Lcom/android/server/asks/InstalledAppInfo;->initPkg:Ljava/lang/String;

    .line 209
    iput-object v1, v13, Lcom/android/server/asks/InstalledAppInfo;->initPkg:Ljava/lang/String;

    .line 211
    iput-object v13, v0, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

    .line 213
    goto :goto_2

    .line 214
    :cond_2
    const-string v2, "[Token] updateTokenValue kor: setInfo "

    .line 216
    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->packageName:Ljava/lang/String;

    .line 221
    iget-object v4, v1, Lcom/android/server/asks/ASKSManagerService$CURPARAM;->signatures:[Landroid/content/pm/Signature;

    .line 223
    iget-object v6, v12, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    .line 225
    iget-boolean v7, v3, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocZipCase:Z

    .line 227
    iget-boolean v8, v3, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->isLocAccessibilityCase:Z

    .line 229
    iget-boolean v9, v3, Lcom/android/server/asks/ASKSManagerService$CURSTATUS;->hasReqInstallPEM:Z

    .line 231
    const-string/jumbo v10, "none"

    .line 234
    const-string/jumbo v11, "none"

    .line 237
    move-object/from16 v0, p0

    .line 239
    move-object v1, v2

    .line 240
    move-object v2, v4

    .line 241
    move-object v3, v5

    .line 242
    move-object v4, v6

    .line 243
    move v5, v7

    .line 244
    move v6, v8

    .line 245
    move v7, v9

    .line 246
    move-object v8, v10

    .line 247
    move-object v9, v11

    .line 248
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 251
    goto :goto_2

    .line 252
    :cond_3
    const-string v0, "[Token] not updateTokenValue : default "

    .line 254
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_4
    :goto_2
    return-void
.end method

.method public final verifyASKStokenForPackage(Ljava/lang/String;Ljava/lang/String;J[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    .line 1
    const-string v2, "Only the system can claim verifyASKStokenForPackage"

    invoke-static {v2}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 2
    iget-boolean v2, v7, Lcom/android/server/asks/ASKSManagerService;->isFirstTime:Z

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_3

    .line 3
    iput-boolean v12, v7, Lcom/android/server/asks/ASKSManagerService;->isFirstTime:Z

    .line 4
    iget-object v2, v7, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    .line 5
    const-string/jumbo v3, "readyForBooting : "

    const-string v4, "AASA_ASKSManager_SECURETIME"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    .line 6
    const-string/jumbo v2, "context is null. "

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v7, v2}, Lcom/android/server/asks/ASKSManagerService;->checkNetworkConnection(Landroid/content/Context;)I

    move-result v3

    .line 8
    invoke-static {v2}, Lcom/android/server/asks/ASKSManagerService;->isAutoTimeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v3, :cond_1

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v12, v2, v3, v4, v5}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 12
    array-length v3, v2

    if-ne v3, v10, :cond_3

    .line 13
    aget-object v3, v2, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v9, :cond_2

    move v3, v9

    .line 14
    :cond_2
    aget-object v2, v2, v11

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {v3, v4, v5, v13, v14}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    .line 15
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ASKS_VERSION: 9.2  ::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v13, "AASA_ASKSManager"

    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initiating = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", installer = "

    .line 17
    invoke-static {v2, v3, v0, v13}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    const/4 v14, 0x0

    .line 18
    invoke-static {v2, v8, v14}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v15, -0x7

    const/4 v6, -0x1

    if-eq v4, v6, :cond_4

    .line 19
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/asks/ASKSManagerService;->getAdvancedHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v4, v14

    .line 20
    :goto_1
    invoke-static {v2, v8, v4}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_5

    return v15

    :cond_4
    move-object v4, v14

    .line 21
    :cond_5
    iget-object v2, v7, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, ""

    if-eqz v2, :cond_6

    .line 22
    iget-object v2, v7, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    .line 23
    invoke-virtual {v2}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->clear()V

    .line 24
    iput-object v8, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    :goto_2
    move-object v15, v2

    goto :goto_3

    .line 25
    :cond_6
    new-instance v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    .line 26
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v14, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mVersion:Ljava/lang/String;

    .line 28
    iput-object v5, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    .line 29
    iput-object v5, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    .line 30
    iput-object v5, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    .line 31
    iput-object v5, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    .line 32
    iput-object v5, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCertName:Ljava/lang/String;

    .line 33
    iput-object v5, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCAKeyIndex:Ljava/lang/String;

    .line 34
    iput-object v14, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    .line 35
    iput-boolean v12, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    .line 36
    iput-object v14, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRestrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 37
    iput v6, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->emMode:I

    .line 38
    iput-object v14, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mDeletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 39
    iput-object v14, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mRufsContainer:Lcom/android/server/asks/RUFSContainer;

    .line 40
    iput-object v8, v2, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageName:Ljava/lang/String;

    .line 41
    iget-object v15, v7, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v15, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :goto_3
    if-eqz v4, :cond_7

    .line 42
    iput-object v4, v15, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    .line 43
    :cond_7
    invoke-virtual/range {p5 .. p5}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Signature;

    iput-object v2, v15, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mSignature:[Landroid/content/pm/Signature;

    move-object/from16 v2, p5

    .line 44
    invoke-static {v8, v2}, Lcom/android/server/asks/ASKSManagerService;->isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I

    move-result v4

    if-eq v4, v6, :cond_39

    .line 45
    iput-boolean v11, v15, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget:Z

    .line 46
    const-string v2, " "

    const-string/jumbo v10, "cannot found package information - "

    const-string/jumbo v12, "wrong installer - "

    const-string/jumbo v9, "checking initiating = "

    .line 47
    const-string/jumbo v16, "ro.boot.em.status"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "0x1"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    const-string/jumbo v11, "ro.build.official.release"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v14, "true"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 49
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 50
    iput-object v14, v15, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    .line 51
    iget-object v14, v15, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    .line 52
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 53
    invoke-static/range {p2 .. p2}, Lcom/android/server/asks/ASKSManagerService;->getAdvancedHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 54
    iput-object v5, v15, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :catch_1
    :cond_8
    :try_start_2
    iget-object v5, v15, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    .line 56
    iget-object v14, v15, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    const/16 v6, 0x9

    .line 57
    :try_start_3
    invoke-static {v6, v5, v14}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    const-string v14, "anyway continue to install since this binary is not official"

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    if-eqz v11, :cond_9

    const/4 v1, -0x1

    const/4 v2, -0x7

    goto/16 :goto_22

    .line 58
    :cond_9
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is in BlackList, so fail to install"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_a
    move-object/from16 v5, p2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v12, v2

    const/4 v6, -0x1

    const/4 v10, -0x1

    goto/16 :goto_f

    .line 60
    :goto_4
    :try_start_5
    invoke-static {v15, v5}, Lcom/android/server/asks/ASKSManagerService;->isASKSToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    const/16 v9, 0xa

    if-eqz v1, :cond_f

    .line 62
    :try_start_6
    const-string/jumbo v3, "com.android.shell"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const/16 v3, 0xb

    const/4 v5, 0x0

    .line 63
    invoke-static {v3, v1, v5}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_f

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 65
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    const-string v6, "android"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v5

    if-nez v5, :cond_b

    .line 67
    const-string/jumbo v3, "cannot find android pkg"

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 68
    :cond_b
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v3

    if-nez v3, :cond_c

    :goto_5
    const/4 v1, 0x1

    goto :goto_8

    .line 69
    :cond_c
    :goto_6
    invoke-virtual {v12, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 70
    :cond_d
    const-string v3, "PrePackageInstaller"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_5

    .line 71
    :cond_e
    invoke-virtual {v10, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    const/4 v1, 0x0

    :goto_8
    move v5, v1

    const/4 v6, -0x1

    const/4 v10, 0x0

    goto :goto_9

    :cond_f
    const/4 v10, 0x0

    .line 72
    :try_start_7
    invoke-static {v9, v8, v10}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    const/4 v6, -0x1

    if-eq v1, v6, :cond_10

    const/4 v5, 0x1

    goto :goto_9

    :cond_10
    const/4 v5, 0x0

    :goto_9
    move-object/from16 v1, p0

    move-object v12, v2

    move-object v2, v15

    move-object/from16 v3, p1

    move/from16 v16, v4

    move-object/from16 v4, p6

    move v10, v6

    move/from16 v6, v16

    .line 73
    :try_start_8
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/asks/ASKSManagerService;->verifyToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ZI)I

    move-result v0

    if-nez v0, :cond_11

    .line 74
    const-string v0, "AASA OK"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :catch_3
    move-exception v0

    :goto_a
    move v6, v10

    goto/16 :goto_f

    :cond_11
    if-eqz v11, :cond_17

    .line 75
    rem-int/2addr v0, v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    const/4 v1, 0x4

    if-eq v0, v1, :cond_14

    const/4 v1, 0x5

    if-eq v0, v1, :cond_13

    const/4 v1, 0x6

    if-eq v0, v1, :cond_12

    const/4 v1, -0x7

    goto :goto_c

    :cond_12
    const/16 v0, -0xbbe

    :goto_b
    move v1, v0

    goto :goto_c

    :cond_13
    const/16 v0, -0xbb9

    goto :goto_b

    :cond_14
    const/16 v0, -0xbb8

    goto :goto_b

    :cond_15
    const/16 v0, -0xbba

    goto :goto_b

    :cond_16
    const/16 v0, -0xbbc

    goto :goto_b

    .line 76
    :goto_c
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", returnValue : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    move v2, v1

    :goto_d
    move v1, v10

    goto/16 :goto_22

    :catch_4
    move-exception v0

    move v6, v1

    goto :goto_f

    .line 77
    :cond_17
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fail to install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_e

    :catch_5
    move-exception v0

    move-object v12, v2

    const/4 v10, -0x1

    goto :goto_a

    :cond_18
    move-object v12, v2

    const/4 v10, -0x1

    if-eqz v11, :cond_19

    const/16 v0, -0xbbb

    move v2, v0

    goto :goto_d

    :cond_19
    :goto_e
    move v6, v10

    goto :goto_10

    :catch_6
    move-exception v0

    move-object v12, v2

    move v10, v6

    goto :goto_a

    .line 79
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERROR"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/.aasa/AASApolicy/ADP.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 85
    :cond_1a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "AASA_ASKSManager_ADP"

    if-nez v2, :cond_1b

    .line 86
    const-string/jumbo v2, "file does not exist - /data/system/.aasa/AASApolicy/ADP.xml"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 88
    :try_start_b
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_11

    :catch_7
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v5, 0x0

    .line 90
    :goto_11
    :try_start_c
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 91
    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 92
    :goto_12
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x2

    const/4 v9, 0x1

    if-eq v2, v4, :cond_1c

    if-eq v2, v9, :cond_1c

    goto :goto_12

    :cond_1c
    move/from16 v18, v10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    .line 93
    :goto_13
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eq v10, v9, :cond_2f

    .line 94
    const-string/jumbo v9, "pattern"

    move/from16 p2, v6

    const-string v6, "HASHVALUE"

    const/4 v7, 0x3

    if-eq v10, v7, :cond_25

    const/4 v7, 0x4

    if-ne v10, v7, :cond_1d

    goto/16 :goto_16

    .line 95
    :cond_1d
    :try_start_d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 96
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const/4 v6, 0x0

    .line 97
    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_15

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1d

    :catch_8
    move-exception v0

    goto/16 :goto_1b

    :catch_9
    move-exception v0

    goto/16 :goto_1c

    .line 98
    :cond_1e
    const-string/jumbo v6, "versionType"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v6, :cond_1f

    const/4 v6, 0x0

    .line 99
    :try_start_e
    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_14
    move/from16 v18, v6

    goto :goto_15

    .line 100
    :catch_a
    :try_start_f
    const-string v6, "ERROR: does not match versionType"

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 101
    :cond_1f
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v6, 0x0

    .line 102
    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    move-object v11, v9

    goto :goto_15

    .line 103
    :cond_20
    const-string/jumbo v6, "hashCode"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    const/4 v6, 0x0

    .line 104
    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    move-object v14, v9

    goto :goto_15

    .line 105
    :cond_21
    const-string/jumbo v6, "sep"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v6, 0x0

    .line 106
    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 107
    :try_start_10
    sget v6, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-lt v6, v9, :cond_22

    move/from16 v6, v18

    goto :goto_14

    .line 108
    :catch_b
    :try_start_11
    const-string v6, "NumberFormatExceptionn"

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v6, -0x1

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    goto :goto_14

    .line 109
    :cond_23
    const-string/jumbo v6, "format"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v6, 0x0

    .line 110
    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v9

    :cond_24
    :goto_15
    const/4 v9, 0x1

    move-object/from16 v7, p0

    move/from16 v6, p2

    goto/16 :goto_13

    :cond_25
    const/4 v7, 0x4

    .line 111
    :goto_16
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    if-eqz v4, :cond_27

    if-eqz v2, :cond_27

    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_26

    goto :goto_17

    .line 113
    :cond_26
    new-instance v6, Lcom/android/server/asks/ADPContainer;

    .line 114
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object v4, v6, Lcom/android/server/asks/ADPContainer;->packageName:Ljava/lang/String;

    .line 116
    iput-object v2, v6, Lcom/android/server/asks/ADPContainer;->mADPPolicy:Ljava/util/ArrayList;

    goto :goto_18

    :cond_27
    :goto_17
    const/4 v6, 0x0

    :goto_18
    if-nez v6, :cond_28

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " does not make ADP object"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 118
    :cond_28
    iget-object v2, v6, Lcom/android/server/asks/ADPContainer;->packageName:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_15

    .line 120
    :cond_29
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    if-eqz v11, :cond_2b

    if-eqz v14, :cond_2b

    move/from16 v10, v18

    const/4 v6, -0x1

    if-ne v10, v6, :cond_2a

    move-object/from16 v9, v17

    goto :goto_19

    .line 121
    :cond_2a
    new-instance v6, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    .line 122
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object v11, v6, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    .line 124
    iput-object v14, v6, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    .line 125
    iput v10, v6, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    move-object/from16 v9, v17

    .line 126
    iput-object v9, v6, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    goto :goto_1a

    :cond_2b
    move-object/from16 v9, v17

    move/from16 v10, v18

    :goto_19
    const/4 v6, 0x0

    :goto_1a
    if-nez v6, :cond_2c

    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not make ADPPolicy object"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v9

    move/from16 v18, v10

    goto/16 :goto_15

    :cond_2c
    if-nez v2, :cond_2d

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    :cond_2d
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    goto/16 :goto_15

    :cond_2e
    move-object/from16 v9, v17

    move/from16 v10, v18

    move-object/from16 v7, p0

    move/from16 v6, p2

    const/4 v9, 0x1

    goto/16 :goto_13

    :cond_2f
    move/from16 p2, v6

    if-eqz v5, :cond_32

    .line 130
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_1f

    :catch_c
    move-exception v0

    move-object v2, v0

    .line 131
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    :catch_d
    move-exception v0

    move/from16 p2, v6

    goto :goto_1b

    :catch_e
    move-exception v0

    move/from16 p2, v6

    goto :goto_1c

    .line 132
    :goto_1b
    :try_start_13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eqz v5, :cond_32

    .line 133
    :try_start_14
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_1f

    .line 134
    :goto_1c
    :try_start_15
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v5, :cond_32

    .line 135
    :try_start_16
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    goto :goto_1f

    :goto_1d
    if-eqz v5, :cond_30

    :try_start_17
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    goto :goto_1e

    :catch_f
    move-exception v0

    move-object v2, v0

    .line 136
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    :cond_30
    :goto_1e
    throw v1

    :cond_31
    move/from16 p2, v6

    .line 138
    :cond_32
    :goto_1f
    iget-object v0, v15, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    .line 139
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 140
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "target ADP - "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v2, v15, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageNameHash:Ljava/lang/String;

    .line 143
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/ADPContainer;

    .line 144
    iget-object v1, v1, Lcom/android/server/asks/ADPContainer;->mADPPolicy:Ljava/util/ArrayList;

    .line 145
    new-instance v2, Lcom/android/server/asks/ADPOperation$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/asks/ADPOperation$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 147
    check-cast v0, Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_36

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "target list has size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 151
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    const/16 v2, -0xbbd

    if-eqz v0, :cond_35

    .line 152
    const-string/jumbo v4, "picked one adp policy"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 154
    iget v5, v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    const v6, 0x65837583

    if-ne v5, v6, :cond_34

    .line 155
    iget-object v5, v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    if-nez v5, :cond_33

    move v0, v1

    goto :goto_20

    .line 156
    :cond_33
    iget-object v1, v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    .line 157
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 158
    iget-object v0, v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    .line 159
    invoke-static {v1, v4, v0}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_20

    .line 160
    :cond_34
    iget-object v0, v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    .line 161
    invoke-static {v5, v4, v0}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_20
    if-nez v0, :cond_36

    .line 162
    const-string/jumbo v0, "install fail, cannot back to the previous version"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    const/4 v1, -0x1

    goto :goto_22

    .line 163
    :cond_35
    const-string/jumbo v0, "cannot get target policy"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 164
    :cond_36
    const-string/jumbo v0, "successs"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_37
    const-string v0, " is installing.."

    .line 166
    invoke-static {v12, v8, v0, v13}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, p2

    goto :goto_21

    :goto_22
    if-eq v2, v1, :cond_38

    .line 167
    invoke-virtual {v15}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->clear()V

    move-object/from16 v1, p0

    .line 168
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 169
    iget-object v0, v1, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    move v6, v2

    goto :goto_23

    :cond_39
    move v1, v6

    :goto_23
    return v6
.end method

.method public final verifyToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ZI)I
    .locals 51

    .line 1
    move-object/from16 v1, p1

    .line 3
    move-object/from16 v2, p2

    .line 5
    move-object/from16 v3, p3

    .line 7
    move/from16 v4, p5

    .line 9
    const-string v5, "AASA_ASKSManager_EM"

    .line 11
    const-string v6, "AASA_ASKSManager_DELETABLE"

    .line 13
    const-string/jumbo v7, "false"

    .line 16
    const-string v8, "NONE"

    .line 18
    const-string v9, " "

    .line 20
    const-string v10, "ASKSRNEWCARRIERS"

    .line 22
    const-string v11, "ASKSRNEWMODELS"

    .line 24
    const-string v12, "ADPCARRIERS"

    .line 26
    const-string v13, "ADPMODELS"

    .line 28
    const-string v14, "CHECK"

    .line 30
    const-string v15, "AFTER"

    .line 32
    move-object/from16 v16, v9

    .line 34
    const-string v9, "BEFORE"

    .line 36
    move-object/from16 v17, v10

    .line 38
    const-string v10, "RUFS"

    .line 40
    move-object/from16 v18, v11

    .line 42
    const-string v11, "MODELS"

    .line 44
    move-object/from16 v19, v12

    .line 46
    const-string v12, "EMMODE"

    .line 48
    move-object/from16 v20, v13

    .line 50
    const-string v13, "EXPIRED"

    .line 52
    move-object/from16 v21, v14

    .line 54
    const-string v14, "CARRIERS"

    .line 56
    move-object/from16 v22, v15

    .line 58
    const-string v15, "RESTRICT"

    .line 60
    move-object/from16 v23, v9

    .line 62
    const-string v9, " Token 0:"

    .line 64
    move-object/from16 v24, v10

    .line 66
    const-string/jumbo v10, "installer::"

    .line 69
    move-object/from16 v25, v5

    .line 71
    const-string v5, "Violate security policy of MSTG. Package("

    .line 73
    move-object/from16 v26, v12

    .line 75
    const-string v12, " ERROR: AASA_VerifyToken "

    .line 77
    move-object/from16 v27, v6

    .line 79
    const-string v6, "AASA_ASKSManager"

    .line 81
    move-object/from16 v28, v15

    .line 83
    const-string v15, " AASA_VerifyToken START "

    .line 85
    invoke-static {v6, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v15, v1, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mCodePath:Ljava/lang/String;

    .line 90
    move-object/from16 v29, v13

    .line 92
    :try_start_0
    new-instance v13, Landroid/util/jar/StrictJarFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    move-object/from16 v31, v11

    .line 96
    move-object/from16 v30, v14

    .line 98
    const/4 v11, 0x1

    .line 99
    const/4 v14, 0x0

    .line 100
    :try_start_1
    invoke-direct {v13, v15, v14, v11}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    if-nez p4, :cond_0

    .line 105
    :try_start_2
    const-string v11, "/data/"

    .line 107
    invoke-virtual {v15, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 110
    move-result v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    if-eqz v11, :cond_0

    .line 113
    const/4 v11, 0x1

    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    move-object v1, v0

    .line 117
    goto/16 :goto_36

    .line 119
    :catch_0
    move-exception v0

    .line 120
    move-object v3, v0

    .line 121
    const/4 v11, 0x0

    .line 122
    goto :goto_4

    .line 123
    :catch_1
    move-exception v0

    .line 124
    move-object v3, v0

    .line 125
    const/4 v11, 0x0

    .line 126
    goto/16 :goto_6

    .line 128
    :cond_0
    const/4 v11, 0x0

    .line 129
    :goto_0
    :try_start_3
    iget-object v14, v1, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mTokenName:Ljava/lang/String;

    .line 131
    invoke-virtual {v13, v14}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 134
    move-result-object v14

    .line 135
    if-eqz v14, :cond_1

    .line 137
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 140
    move-result-wide v3

    .line 141
    long-to-int v3, v3

    .line 142
    new-array v3, v3, [B

    .line 144
    invoke-static {v13, v14, v3}, Lcom/android/server/asks/ASKSManagerService;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;[B)V

    .line 147
    move-object/from16 v4, p0

    .line 149
    const/4 v14, 0x1

    .line 150
    const/4 v15, 0x0

    .line 151
    invoke-virtual {v4, v1, v14, v3, v15}, Lcom/android/server/asks/ASKSManagerService;->checkIntegrityNew(Lcom/android/server/asks/ASKSManagerService$ASKSSession;I[B[B)[B

    .line 154
    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    goto :goto_1

    .line 156
    :catch_2
    move-exception v0

    .line 157
    move-object v3, v0

    .line 158
    goto :goto_4

    .line 159
    :catch_3
    move-exception v0

    .line 160
    move-object v3, v0

    .line 161
    goto :goto_6

    .line 162
    :cond_1
    const/4 v3, 0x0

    .line 163
    :goto_1
    invoke-virtual {v13}, Landroid/util/jar/StrictJarFile;->close()V

    .line 166
    move-object v15, v3

    .line 167
    goto :goto_7

    .line 168
    :catchall_1
    move-exception v0

    .line 169
    move-object v1, v0

    .line 170
    const/4 v13, 0x0

    .line 171
    goto/16 :goto_36

    .line 173
    :catch_4
    move-exception v0

    .line 174
    :goto_2
    move-object v3, v0

    .line 175
    const/4 v11, 0x0

    .line 176
    const/4 v13, 0x0

    .line 177
    goto :goto_4

    .line 178
    :catch_5
    move-exception v0

    .line 179
    :goto_3
    move-object v3, v0

    .line 180
    const/4 v11, 0x0

    .line 181
    const/4 v13, 0x0

    .line 182
    goto :goto_6

    .line 183
    :catch_6
    move-exception v0

    .line 184
    move-object/from16 v31, v11

    .line 186
    move-object/from16 v30, v14

    .line 188
    goto :goto_2

    .line 189
    :goto_4
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v3

    .line 201
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    if-eqz v13, :cond_2

    .line 206
    :goto_5
    invoke-virtual {v13}, Landroid/util/jar/StrictJarFile;->close()V

    .line 209
    :cond_2
    const/4 v15, 0x0

    .line 210
    goto :goto_7

    .line 211
    :catch_7
    move-exception v0

    .line 212
    move-object/from16 v31, v11

    .line 214
    move-object/from16 v30, v14

    .line 216
    goto :goto_3

    .line 217
    :goto_6
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v3

    .line 229
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 232
    if-eqz v13, :cond_2

    .line 234
    goto :goto_5

    .line 235
    :goto_7
    const-string v3, " ERROR: plz check certification in the device - Fail to check integrity"

    .line 237
    if-nez v15, :cond_3

    .line 239
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v1, 0x16

    .line 244
    return v1

    .line 245
    :cond_3
    array-length v4, v15

    .line 246
    const/4 v12, 0x1

    .line 247
    if-eq v4, v12, :cond_4

    .line 249
    array-length v4, v15

    .line 250
    const/4 v12, 0x2

    .line 251
    if-ne v4, v12, :cond_5

    .line 253
    :cond_4
    move-object v9, v15

    .line 254
    const/4 v1, 0x0

    .line 255
    goto/16 :goto_34

    .line 257
    :cond_5
    const/16 v3, 0x15

    .line 259
    :try_start_6
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 262
    move-result-object v4

    .line 263
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 266
    move-result-object v4

    .line 267
    new-instance v13, Ljava/io/ByteArrayInputStream;

    .line 269
    invoke-direct {v13, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 272
    const/4 v14, 0x0

    .line 273
    invoke-interface {v4, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_18

    .line 276
    :try_start_7
    const-string v13, "MODE"
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_19
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_8

    .line 278
    :try_start_8
    new-instance v14, Ljava/util/HashMap;

    .line 280
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 283
    invoke-virtual {v14, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {v4, v14}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew$1(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    .line 289
    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    move-result-object v4

    .line 293
    check-cast v4, Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_15

    .line 295
    :try_start_9
    invoke-static {v4}, Lcom/android/server/asks/ASKSManagerService;->isInteger(Ljava/lang/String;)Z

    .line 298
    move-result v13

    .line 299
    if-nez v13, :cond_6

    .line 301
    return v3

    .line 302
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 305
    move-result v4

    .line 306
    new-instance v13, Ljava/util/ArrayList;

    .line 308
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_8

    .line 311
    const-string v14, "CROSSDOWN"

    .line 313
    const-string v12, "PACKAGE"

    .line 315
    const-string v3, "DIGEST"

    .line 317
    move-object/from16 v32, v7

    .line 319
    const-string v7, "CREATE"

    .line 321
    if-eqz v4, :cond_9

    .line 323
    const/4 v1, 0x1

    .line 324
    if-eq v4, v1, :cond_8

    .line 326
    const/4 v1, 0x3

    .line 327
    if-eq v4, v1, :cond_7

    .line 329
    const/16 v1, 0x15

    .line 331
    return v1

    .line 332
    :cond_7
    :try_start_a
    const-string v33, "PACKAGE"

    .line 334
    const-string v34, "DIGEST"

    .line 336
    const-string v35, "CREATE"

    .line 338
    const-string v36, "MODELS"

    .line 340
    const-string v37, "CARRIERS"

    .line 342
    const-string v38, "EXPIRED"

    .line 344
    const-string v39, "RESTRICT"

    .line 346
    const-string v40, "DATELIMIT"

    .line 348
    const-string v41, "CROSSDOWN"

    .line 350
    const-string v42, "RUFS"

    .line 352
    const-string v43, "BEFORE"

    .line 354
    const-string v44, "AFTER"

    .line 356
    const-string v45, "CHECK"

    .line 358
    const-string v46, "EMMODE"

    .line 360
    const-string v47, "ADPMODELS"

    .line 362
    const-string v48, "ADPCARRIERS"

    .line 364
    const-string v49, "ASKSRNEWMODELS"

    .line 366
    const-string v50, "ASKSRNEWCARRIERS"

    .line 368
    filled-new-array/range {v33 .. v50}, [Ljava/lang/String;

    .line 371
    move-result-object v1

    .line 372
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 379
    goto/16 :goto_a

    .line 381
    :catch_8
    move-exception v0

    .line 382
    :goto_8
    move-object v1, v0

    .line 383
    move-object/from16 v3, v16

    .line 385
    goto/16 :goto_33

    .line 387
    :catch_9
    move-exception v0

    .line 388
    move-object v1, v0

    .line 389
    goto/16 :goto_30

    .line 391
    :catch_a
    move-exception v0

    .line 392
    :goto_9
    move-object v1, v0

    .line 393
    move-object/from16 v3, v16

    .line 395
    goto/16 :goto_32

    .line 397
    :cond_8
    const-string v33, "PACKAGE"

    .line 399
    const-string v34, "DIGEST"

    .line 401
    const-string v35, "CREATE"

    .line 403
    const-string v36, "MODELS"

    .line 405
    const-string v37, "CARRIERS"

    .line 407
    const-string v38, "EXPIRED"

    .line 409
    const-string v39, "RESTRICT"

    .line 411
    const-string v40, "DATELIMIT"

    .line 413
    const-string v41, "CROSSDOWN"

    .line 415
    const-string v42, "RUFS"

    .line 417
    const-string v43, "BEFORE"

    .line 419
    const-string v44, "AFTER"

    .line 421
    const-string v45, "CHECK"

    .line 423
    const-string v46, "EMMODE"

    .line 425
    const-string v47, "ADPMODELS"

    .line 427
    const-string v48, "ADPCARRIERS"

    .line 429
    const-string v49, "ASKSRNEWMODELS"

    .line 431
    const-string v50, "ASKSRNEWCARRIERS"

    .line 433
    filled-new-array/range {v33 .. v50}, [Ljava/lang/String;

    .line 436
    move-result-object v1

    .line 437
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 440
    move-result-object v1

    .line 441
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 444
    goto :goto_a

    .line 445
    :cond_9
    if-eqz v11, :cond_c

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    .line 449
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v3, ") is blocked. "

    .line 457
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    move-result-object v1

    .line 464
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    .line 469
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 472
    move-object/from16 v3, p3

    .line 474
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    move-result-object v1

    .line 481
    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static/range {p2 .. p2}, Lcom/android/server/asks/ASKSManagerService;->writeBlockApkList(Ljava/lang/String;)V

    .line 487
    const-string/jumbo v1, "com.android.providers.settings"

    .line 490
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 493
    move-result v1

    .line 494
    if-eqz v1, :cond_b

    .line 496
    if-eqz v3, :cond_a

    .line 498
    const-string/jumbo v1, "null"

    .line 501
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 504
    move-result v1

    .line 505
    if-eqz v1, :cond_b

    .line 507
    :cond_a
    const-string v1, "THIS IS WORKAROUND FOR CTS FAIL. MUST ROLLBACK"

    .line 509
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v1, 0x0

    .line 513
    return v1

    .line 514
    :cond_b
    const/16 v1, 0xf

    .line 516
    return v1

    .line 517
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 519
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    move-result-object v1

    .line 529
    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    filled-new-array {v12, v7, v3, v14}, [Ljava/lang/String;

    .line 535
    move-result-object v1

    .line 536
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 543
    :goto_a
    new-instance v1, Ljava/util/HashMap;

    .line 545
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 548
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 551
    move-result-object v4

    .line 552
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 555
    move-result v5

    .line 556
    if-eqz v5, :cond_d

    .line 558
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 561
    move-result-object v5

    .line 562
    check-cast v5, Ljava/lang/String;

    .line 564
    invoke-virtual {v1, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    goto :goto_b

    .line 568
    :cond_d
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 571
    move-result-object v4

    .line 572
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 575
    move-result-object v4

    .line 576
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 578
    invoke-direct {v5, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 581
    const/4 v9, 0x0

    .line 582
    invoke-interface {v4, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 585
    invoke-static {v4, v1}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    .line 588
    invoke-static {}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    .line 591
    move-result-object v4

    .line 592
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 595
    move-result v5

    .line 596
    const/4 v9, -0x1

    .line 597
    if-eqz v5, :cond_e

    .line 599
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    move-result-object v5

    .line 603
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 606
    move-result v5

    .line 607
    if-nez v5, :cond_e

    .line 609
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    move-result-object v5

    .line 613
    check-cast v5, Ljava/lang/String;

    .line 615
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 618
    move-result v5

    .line 619
    const/4 v10, 0x1

    .line 620
    if-ne v5, v10, :cond_e

    .line 622
    new-instance v5, Ljava/lang/StringBuilder;

    .line 624
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    const-string v10, "OK:"

    .line 629
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    move-result-object v2

    .line 639
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v2, 0x0

    .line 643
    goto :goto_c

    .line 644
    :cond_e
    move v2, v9

    .line 645
    :goto_c
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 648
    move-result v5

    .line 649
    if-eqz v5, :cond_10

    .line 651
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    move-result-object v5

    .line 655
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 658
    move-result v5

    .line 659
    if-nez v5, :cond_10

    .line 661
    move-object/from16 v5, p1

    .line 663
    iget-object v9, v5, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->mPackageDigest:Ljava/lang/String;

    .line 665
    if-eqz v9, :cond_f

    .line 667
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    move-result-object v10

    .line 671
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 674
    move-result v10

    .line 675
    if-eqz v10, :cond_f

    .line 677
    const-string v3, "OK:HASH"

    .line 679
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    goto :goto_d

    .line 683
    :cond_f
    new-instance v10, Ljava/lang/StringBuilder;

    .line 685
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    const-string v11, "NOT OK:HASH : "

    .line 690
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    const-string v9, " comp : "

    .line 698
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    move-result-object v3

    .line 705
    check-cast v3, Ljava/lang/String;

    .line 707
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    move-result-object v3

    .line 714
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    add-int/lit8 v2, v2, -0x1

    .line 719
    goto :goto_d

    .line 720
    :cond_10
    move-object/from16 v5, p1

    .line 722
    add-int/2addr v2, v9

    .line 723
    :goto_d
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 726
    move-result v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_8

    .line 727
    const-string/jumbo v9, "true"

    .line 730
    const-string/jumbo v10, "ro.build.2ndbrand"

    .line 733
    if-eqz v3, :cond_16

    .line 735
    :try_start_b
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    move-result-object v3

    .line 739
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 742
    move-result v3

    .line 743
    if-nez v3, :cond_16

    .line 745
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    move-result-object v3

    .line 749
    check-cast v3, Ljava/lang/String;

    .line 751
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 754
    move-result v3

    .line 755
    if-gez v3, :cond_11

    .line 757
    goto :goto_f

    .line 758
    :cond_11
    move-object/from16 v11, v32

    .line 760
    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 763
    move-result-object v10
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_8

    .line 764
    const-string v12, "OK:CROSSDOWN"

    .line 766
    if-nez v3, :cond_12

    .line 768
    :try_start_c
    invoke-static {v6, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    goto :goto_e

    .line 772
    :cond_12
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 775
    move-result v9

    .line 776
    if-eqz v9, :cond_13

    .line 778
    and-int/lit8 v9, v3, 0x2

    .line 780
    if-nez v9, :cond_13

    .line 782
    const-string v1, "FAILED CROSSDOWN for sep lite"

    .line 784
    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/16 v1, 0x92

    .line 789
    return v1

    .line 790
    :cond_13
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 793
    move-result v9

    .line 794
    if-eqz v9, :cond_14

    .line 796
    const/4 v9, 0x1

    .line 797
    and-int/2addr v3, v9

    .line 798
    if-nez v3, :cond_14

    .line 800
    const-string v1, "FAILED CROSSDOWN for galaxy"

    .line 802
    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/16 v1, 0x9c

    .line 807
    return v1

    .line 808
    :cond_14
    invoke-static {v6, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_15
    :goto_e
    move-object/from16 v3, v31

    .line 813
    goto :goto_10

    .line 814
    :cond_16
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 817
    move-result-object v3

    .line 818
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 821
    move-result v3

    .line 822
    if-eqz v3, :cond_15

    .line 824
    move/from16 v3, p5

    .line 826
    const/4 v9, 0x1

    .line 827
    if-eq v3, v9, :cond_15

    .line 829
    const/4 v9, 0x2

    .line 830
    if-eq v3, v9, :cond_15

    .line 832
    const/4 v9, 0x4

    .line 833
    if-ne v3, v9, :cond_17

    .line 835
    goto :goto_e

    .line 836
    :cond_17
    const-string v3, "Error : No value CROSSDOWN in 2ndbrand."

    .line 838
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_f
    add-int/lit8 v2, v2, -0x1

    .line 843
    goto :goto_e

    .line 844
    :goto_10
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 847
    move-result v9

    .line 848
    if-eqz v9, :cond_18

    .line 850
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    move-result-object v9

    .line 854
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 857
    move-result v9

    .line 858
    if-nez v9, :cond_18

    .line 860
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    move-result-object v3

    .line 864
    check-cast v3, Ljava/lang/String;

    .line 866
    move-object/from16 v10, v30

    .line 868
    const/4 v9, 0x1

    .line 869
    goto :goto_11

    .line 870
    :cond_18
    move-object/from16 v10, v30

    .line 872
    const/4 v3, 0x0

    .line 873
    const/4 v9, 0x0

    .line 874
    :goto_11
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 877
    move-result v11

    .line 878
    if-eqz v11, :cond_33

    .line 880
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    move-result-object v11

    .line 884
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 887
    move-result v11

    .line 888
    if-nez v11, :cond_33

    .line 890
    const/4 v11, 0x1

    .line 891
    if-ne v9, v11, :cond_32

    .line 893
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    move-result-object v9

    .line 897
    check-cast v9, Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_8

    .line 899
    if-eqz v3, :cond_19

    .line 901
    if-nez v9, :cond_1a

    .line 903
    :cond_19
    move-object/from16 p0, v15

    .line 905
    goto/16 :goto_22

    .line 907
    :cond_1a
    :try_start_d
    const-string v10, ","

    .line 909
    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 912
    move-result-object v3

    .line 913
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 916
    move-result-object v9

    .line 917
    const-string/jumbo v10, "ro.product.model"

    .line 920
    const-string v11, "Unknown"

    .line 922
    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 925
    move-result-object v10

    .line 926
    const-string/jumbo v11, "ro.csc.sales_code"

    .line 929
    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 932
    move-result-object v11

    .line 933
    const/4 v12, 0x0

    .line 934
    aget-object v13, v3, v12

    .line 936
    const-string v14, "ALL"

    .line 938
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 941
    move-result v13

    .line 942
    if-eqz v13, :cond_27

    .line 944
    array-length v13, v3

    .line 945
    move-object/from16 p0, v15

    .line 947
    const/4 v15, 0x1

    .line 948
    if-ne v13, v15, :cond_20

    .line 950
    aget-object v3, v9, v12

    .line 952
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 955
    move-result v3

    .line 956
    if-eqz v3, :cond_1e

    .line 958
    array-length v3, v9

    .line 959
    if-ne v3, v15, :cond_1b

    .line 961
    goto :goto_15

    .line 962
    :cond_1b
    const/4 v3, 0x1

    .line 963
    :goto_12
    array-length v10, v9

    .line 964
    if-ge v3, v10, :cond_1d

    .line 966
    aget-object v10, v9, v3

    .line 968
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 971
    move-result v10

    .line 972
    if-eqz v10, :cond_1c

    .line 974
    goto/16 :goto_23

    .line 976
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    .line 978
    goto :goto_12

    .line 979
    :cond_1d
    :goto_13
    const/4 v3, 0x1

    .line 980
    goto/16 :goto_24

    .line 982
    :cond_1e
    const/4 v3, 0x0

    .line 983
    aget-object v10, v9, v3

    .line 985
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 988
    move-result v3

    .line 989
    if-nez v3, :cond_30

    .line 991
    const/4 v3, 0x0

    .line 992
    :goto_14
    array-length v10, v9

    .line 993
    if-ge v3, v10, :cond_30

    .line 995
    aget-object v10, v9, v3

    .line 997
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1000
    move-result v10

    .line 1001
    if-eqz v10, :cond_1f

    .line 1003
    :goto_15
    goto :goto_13

    .line 1004
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    .line 1006
    goto :goto_14

    .line 1007
    :cond_20
    const/4 v12, 0x1

    .line 1008
    :goto_16
    array-length v13, v3

    .line 1009
    if-ge v12, v13, :cond_22

    .line 1011
    aget-object v13, v3, v12

    .line 1013
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1016
    move-result v13

    .line 1017
    if-eqz v13, :cond_21

    .line 1019
    const/4 v3, 0x0

    .line 1020
    :goto_17
    const/4 v10, 0x1

    .line 1021
    goto :goto_18

    .line 1022
    :cond_21
    add-int/lit8 v12, v12, 0x1

    .line 1024
    goto :goto_16

    .line 1025
    :cond_22
    const/4 v3, 0x1

    .line 1026
    goto :goto_17

    .line 1027
    :goto_18
    if-ne v3, v10, :cond_31

    .line 1029
    const/4 v12, 0x0

    .line 1030
    aget-object v13, v9, v12

    .line 1032
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1035
    move-result v12

    .line 1036
    if-eqz v12, :cond_25

    .line 1038
    array-length v12, v9

    .line 1039
    if-ne v12, v10, :cond_23

    .line 1041
    goto :goto_13

    .line 1042
    :cond_23
    const/4 v10, 0x1

    .line 1043
    :goto_19
    array-length v12, v9

    .line 1044
    if-ge v10, v12, :cond_31

    .line 1046
    aget-object v12, v9, v10

    .line 1048
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1051
    move-result v12

    .line 1052
    if-eqz v12, :cond_24

    .line 1054
    goto/16 :goto_23

    .line 1056
    :cond_24
    add-int/lit8 v10, v10, 0x1

    .line 1058
    goto :goto_19

    .line 1059
    :cond_25
    const/4 v10, 0x0

    .line 1060
    aget-object v12, v9, v10

    .line 1062
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1065
    move-result v10

    .line 1066
    if-nez v10, :cond_31

    .line 1068
    const/4 v3, 0x0

    .line 1069
    :goto_1a
    array-length v10, v9

    .line 1070
    if-ge v3, v10, :cond_30

    .line 1072
    aget-object v10, v9, v3

    .line 1074
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1077
    move-result v10

    .line 1078
    if-eqz v10, :cond_26

    .line 1080
    goto :goto_15

    .line 1081
    :cond_26
    add-int/lit8 v3, v3, 0x1

    .line 1083
    goto :goto_1a

    .line 1084
    :cond_27
    move-object/from16 p0, v15

    .line 1086
    aget-object v13, v3, v12

    .line 1088
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1091
    move-result v12

    .line 1092
    if-nez v12, :cond_30

    .line 1094
    const/4 v12, 0x0

    .line 1095
    :goto_1b
    array-length v13, v3

    .line 1096
    if-ge v12, v13, :cond_29

    .line 1098
    aget-object v13, v3, v12

    .line 1100
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1103
    move-result v13

    .line 1104
    if-eqz v13, :cond_28

    .line 1106
    const/4 v12, 0x1

    .line 1107
    :goto_1c
    const/4 v13, 0x1

    .line 1108
    goto :goto_1d

    .line 1109
    :cond_28
    add-int/lit8 v12, v12, 0x1

    .line 1111
    goto :goto_1b

    .line 1112
    :cond_29
    const/4 v12, 0x0

    .line 1113
    goto :goto_1c

    .line 1114
    :goto_1d
    if-ne v12, v13, :cond_2d

    .line 1116
    const/4 v15, 0x0

    .line 1117
    aget-object v13, v9, v15

    .line 1119
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1122
    move-result v13

    .line 1123
    if-eqz v13, :cond_2e

    .line 1125
    array-length v13, v9

    .line 1126
    const/4 v14, 0x1

    .line 1127
    if-ne v13, v14, :cond_2b

    .line 1129
    const/4 v9, 0x0

    .line 1130
    :goto_1e
    array-length v11, v3

    .line 1131
    if-ge v9, v11, :cond_30

    .line 1133
    aget-object v11, v3, v9

    .line 1135
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1138
    move-result v11

    .line 1139
    if-eqz v11, :cond_2a

    .line 1141
    goto/16 :goto_15

    .line 1143
    :cond_2a
    add-int/lit8 v9, v9, 0x1

    .line 1145
    goto :goto_1e

    .line 1146
    :cond_2b
    const/4 v3, 0x1

    .line 1147
    :goto_1f
    array-length v10, v9

    .line 1148
    if-ge v3, v10, :cond_2d

    .line 1150
    aget-object v10, v9, v3

    .line 1152
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1155
    move-result v10

    .line 1156
    if-eqz v10, :cond_2c

    .line 1158
    const/4 v12, 0x0

    .line 1159
    goto :goto_20

    .line 1160
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    .line 1162
    goto :goto_1f

    .line 1163
    :cond_2d
    :goto_20
    move v3, v12

    .line 1164
    goto :goto_24

    .line 1165
    :cond_2e
    const/4 v3, 0x0

    .line 1166
    aget-object v10, v9, v3

    .line 1168
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1171
    move-result v3

    .line 1172
    if-nez v3, :cond_2d

    .line 1174
    const/4 v3, 0x0

    .line 1175
    :goto_21
    array-length v10, v9

    .line 1176
    if-ge v3, v10, :cond_30

    .line 1178
    aget-object v10, v9, v3

    .line 1180
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1183
    move-result v10

    .line 1184
    if-eqz v10, :cond_2f

    .line 1186
    goto/16 :goto_15

    .line 1188
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    .line 1190
    goto :goto_21

    .line 1191
    :catch_b
    move-exception v0

    .line 1192
    goto/16 :goto_8

    .line 1194
    :catch_c
    move-exception v0

    .line 1195
    goto/16 :goto_9

    .line 1197
    :goto_22
    const-string v3, "ERROR: checkTokenTarget input is null"

    .line 1199
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_b

    .line 1202
    :cond_30
    :goto_23
    const/4 v3, 0x0

    .line 1203
    :cond_31
    :goto_24
    if-nez v3, :cond_34

    .line 1205
    :try_start_e
    const-string v3, "Error : CARRIERS"

    .line 1207
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    add-int/lit8 v2, v2, -0x1

    .line 1212
    goto :goto_25

    .line 1213
    :cond_32
    move-object/from16 p0, v15

    .line 1215
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    move-result-object v3

    .line 1219
    check-cast v3, Ljava/lang/String;

    .line 1221
    goto :goto_25

    .line 1222
    :cond_33
    move-object/from16 p0, v15

    .line 1224
    :cond_34
    :goto_25
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1227
    move-result v3

    .line 1228
    if-eqz v3, :cond_36

    .line 1230
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    move-result-object v3

    .line 1234
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1237
    move-result v3

    .line 1238
    if-nez v3, :cond_36

    .line 1240
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1242
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1245
    const-string v9, "CREATE : "

    .line 1247
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    move-result-object v9

    .line 1254
    check-cast v9, Ljava/lang/String;

    .line 1256
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1262
    move-result-object v3

    .line 1263
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_8

    .line 1266
    :try_start_f
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    move-result-object v3

    .line 1270
    move-object v15, v3

    .line 1271
    check-cast v15, Ljava/lang/String;

    .line 1273
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1276
    move-result-object v3

    .line 1277
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1280
    move-result v3

    .line 1281
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1284
    move-result v7

    .line 1285
    if-ge v3, v7, :cond_35

    .line 1287
    const-string/jumbo v3, "createDate is bigger than today."

    .line 1290
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-static {v15}, Lcom/android/server/asks/ASKSManagerService;->setTrustTimeByToken(Ljava/lang/String;)V

    .line 1296
    :cond_35
    invoke-virtual {v5, v15}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setVersion(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_8

    .line 1299
    move-object/from16 v3, v29

    .line 1301
    goto :goto_26

    .line 1302
    :catch_d
    :try_start_10
    const-string v1, "Error : CREATE-NumberFormatException"

    .line 1304
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const/16 v1, 0x15

    .line 1309
    return v1

    .line 1310
    :cond_36
    const-string v3, "Error : CREATE in asks case."

    .line 1312
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    add-int/lit8 v2, v2, -0x1

    .line 1317
    move-object/from16 v3, v29

    .line 1319
    const/4 v15, 0x0

    .line 1320
    :goto_26
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1323
    move-result v7

    .line 1324
    if-eqz v7, :cond_38

    .line 1326
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    move-result-object v7

    .line 1330
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1333
    move-result v7

    .line 1334
    if-nez v7, :cond_38

    .line 1336
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1338
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1341
    const-string v9, "EXPIRED : "

    .line 1343
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    move-result-object v9

    .line 1350
    check-cast v9, Ljava/lang/String;

    .line 1352
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1358
    move-result-object v7

    .line 1359
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_8

    .line 1362
    :try_start_11
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    move-result-object v3

    .line 1366
    check-cast v3, Ljava/lang/String;

    .line 1368
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1371
    move-result v7

    .line 1372
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1375
    move-result v9

    .line 1376
    const/16 v10, 0xe

    .line 1378
    if-le v7, v9, :cond_37

    .line 1380
    const-string/jumbo v1, "createDate is bigger than expiredDate."

    .line 1383
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    return v10

    .line 1387
    :cond_37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1390
    move-result-object v4

    .line 1391
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1394
    move-result v4

    .line 1395
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1398
    move-result v3

    .line 1399
    if-le v4, v3, :cond_38

    .line 1401
    const-string/jumbo v1, "today Date is bigger than expiredDate."

    .line 1404
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_8

    .line 1407
    return v10

    .line 1408
    :cond_38
    move-object/from16 v3, v28

    .line 1410
    goto :goto_27

    .line 1411
    :catch_e
    :try_start_12
    const-string v1, "EXPIRED : NumberFormatException"

    .line 1413
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    const/16 v1, 0x15

    .line 1418
    return v1

    .line 1419
    :goto_27
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1422
    move-result v4

    .line 1423
    if-eqz v4, :cond_3a

    .line 1425
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    move-result-object v4

    .line 1429
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1432
    move-result v4

    .line 1433
    if-nez v4, :cond_3a

    .line 1435
    const-string v4, "DELETE"

    .line 1437
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    move-result-object v7

    .line 1441
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1444
    move-result v4
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_8

    .line 1445
    const-string v7, "DATELIMIT"

    .line 1447
    if-eqz v4, :cond_3b

    .line 1449
    :try_start_13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1451
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1454
    const-string/jumbo v9, "type : "

    .line 1457
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    move-result-object v3

    .line 1464
    check-cast v3, Ljava/lang/String;

    .line 1466
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1472
    move-result-object v3

    .line 1473
    move-object/from16 v4, v27

    .line 1475
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    new-instance v3, Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 1480
    invoke-direct {v3}, Lcom/android/server/asks/ASKSManagerService$Deletable;-><init>()V

    .line 1483
    invoke-virtual {v3, v15}, Lcom/android/server/asks/ASKSManagerService$Deletable;->setVersion(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1489
    move-result v9

    .line 1490
    if-eqz v9, :cond_39

    .line 1492
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    move-result-object v9

    .line 1496
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1499
    move-result v9

    .line 1500
    if-nez v9, :cond_39

    .line 1502
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    move-result-object v4

    .line 1506
    check-cast v4, Ljava/lang/String;

    .line 1508
    invoke-virtual {v3, v4}, Lcom/android/server/asks/ASKSManagerService$Deletable;->setDateLimit(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {v5, v3}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    .line 1514
    goto :goto_28

    .line 1515
    :cond_39
    const-string v3, "FAIL: DATELIMIT in deletable"

    .line 1517
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    add-int/lit8 v2, v2, -0x1

    .line 1522
    :cond_3a
    :goto_28
    move-object/from16 v3, v26

    .line 1524
    goto :goto_2a

    .line 1525
    :cond_3b
    new-instance v4, Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 1527
    invoke-direct {v4}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    .line 1530
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    move-result-object v3

    .line 1534
    check-cast v3, Ljava/lang/String;

    .line 1536
    iput-object v3, v4, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    .line 1538
    iput-object v15, v4, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_8

    .line 1540
    :try_start_14
    const-string v3, "Token"

    .line 1542
    iput-object v3, v4, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_f

    .line 1544
    :try_start_15
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1547
    move-result v3

    .line 1548
    if-eqz v3, :cond_3c

    .line 1550
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1553
    move-result-object v3

    .line 1554
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1557
    move-result v3

    .line 1558
    if-nez v3, :cond_3c

    .line 1560
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    move-result-object v3

    .line 1564
    check-cast v3, Ljava/lang/String;

    .line 1566
    iput-object v3, v4, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    .line 1568
    move-object v15, v4

    .line 1569
    goto :goto_29

    .line 1570
    :cond_3c
    const-string v3, "AASA_ASKSManager_RESTRICTED"

    .line 1572
    const-string v4, "FAIL: DATELIMIT in restricted."

    .line 1574
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    add-int/lit8 v2, v2, -0x1

    .line 1579
    const/4 v15, 0x0

    .line 1580
    :goto_29
    if-eqz v15, :cond_3d

    .line 1582
    const-string v3, "REVOKE"

    .line 1584
    iget-object v4, v15, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    .line 1586
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1589
    move-result v3

    .line 1590
    if-eqz v3, :cond_3d

    .line 1592
    new-instance v3, Ljava/util/ArrayList;

    .line 1594
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1597
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 1600
    move-result-object v4

    .line 1601
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 1604
    move-result-object v4

    .line 1605
    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 1607
    move-object/from16 v9, p0

    .line 1609
    invoke-direct {v7, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1612
    const/4 v9, 0x0

    .line 1613
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1616
    invoke-static {v4, v3}, Lcom/android/server/asks/ASKSManagerService;->readRestrictPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    .line 1619
    iput-object v3, v15, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    .line 1621
    :cond_3d
    invoke-virtual {v5, v15}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    .line 1624
    goto :goto_28

    .line 1625
    :catch_f
    move-exception v0

    .line 1626
    goto/16 :goto_8

    .line 1628
    :catch_10
    move-exception v0

    .line 1629
    goto/16 :goto_9

    .line 1631
    :goto_2a
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1634
    move-result v4

    .line 1635
    if-eqz v4, :cond_3e

    .line 1637
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    move-result-object v4

    .line 1641
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1644
    move-result v4

    .line 1645
    if-nez v4, :cond_3e

    .line 1647
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1649
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1652
    const-string v7, "EMMODE : "

    .line 1654
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    move-result-object v7

    .line 1661
    check-cast v7, Ljava/lang/String;

    .line 1663
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1669
    move-result-object v4

    .line 1670
    move-object/from16 v7, v25

    .line 1672
    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_8

    .line 1675
    :try_start_16
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    move-result-object v3

    .line 1679
    check-cast v3, Ljava/lang/String;

    .line 1681
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1684
    move-result-object v3

    .line 1685
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1688
    move-result v3

    .line 1689
    invoke-virtual {v5, v3}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setEMMode(I)V
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_11
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_8

    .line 1692
    :cond_3e
    move-object/from16 v3, v24

    .line 1694
    goto :goto_2b

    .line 1695
    :catch_11
    :try_start_17
    const-string v1, "EMMODE : NumberFormatException"

    .line 1697
    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    const/16 v1, 0x15

    .line 1702
    return v1

    .line 1703
    :goto_2b
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1706
    move-result v4

    .line 1707
    if-eqz v4, :cond_44

    .line 1709
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    move-result-object v4

    .line 1713
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1716
    move-result v4

    .line 1717
    if-nez v4, :cond_44

    .line 1719
    move-object/from16 v4, v23

    .line 1721
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1724
    move-result v7
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_8

    .line 1725
    const-string v9, "AASA_ASKSManager_RUFS"

    .line 1727
    if-eqz v7, :cond_43

    .line 1729
    :try_start_18
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1732
    move-result-object v7

    .line 1733
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1736
    move-result v7

    .line 1737
    if-nez v7, :cond_43

    .line 1739
    move-object/from16 v7, v22

    .line 1741
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1744
    move-result v10

    .line 1745
    if-eqz v10, :cond_42

    .line 1747
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    move-result-object v10

    .line 1751
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1754
    move-result v10

    .line 1755
    if-nez v10, :cond_42

    .line 1757
    move-object/from16 v10, v21

    .line 1759
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1762
    move-result v11

    .line 1763
    if-eqz v11, :cond_41

    .line 1765
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    move-result-object v11

    .line 1769
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1772
    move-result v11

    .line 1773
    if-nez v11, :cond_41

    .line 1775
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    move-result-object v3

    .line 1779
    check-cast v3, Ljava/lang/String;

    .line 1781
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1784
    move-result-object v4

    .line 1785
    check-cast v4, Ljava/lang/String;

    .line 1787
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    move-result-object v7

    .line 1791
    check-cast v7, Ljava/lang/String;

    .line 1793
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1796
    move-result-object v10

    .line 1797
    check-cast v10, Ljava/lang/String;

    .line 1799
    new-instance v11, Lcom/android/server/asks/RUFSContainer;

    .line 1801
    invoke-direct {v11}, Lcom/android/server/asks/RUFSContainer;-><init>()V

    .line 1804
    iput-object v3, v11, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyVersion:Ljava/lang/String;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_8

    .line 1806
    :try_start_19
    const-string v3, "0"

    .line 1808
    iput-object v3, v11, Lcom/android/server/asks/RUFSContainer;->mRUFSpolicyDeltaVersion:Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_14
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_13

    .line 1810
    const/4 v3, 0x0

    .line 1811
    :try_start_1a
    iput-boolean v3, v11, Lcom/android/server/asks/RUFSContainer;->mIsDelta:Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_8

    .line 1813
    :try_start_1b
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1816
    move-result-wide v3

    .line 1817
    invoke-virtual {v11, v3, v4}, Lcom/android/server/asks/RUFSContainer;->setSizeofZip(J)V

    .line 1820
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1823
    move-result-wide v3

    .line 1824
    invoke-virtual {v11, v3, v4}, Lcom/android/server/asks/RUFSContainer;->setSizeofFiles(J)V

    .line 1827
    invoke-virtual {v11, v10}, Lcom/android/server/asks/RUFSContainer;->setDigest(Ljava/lang/String;)V

    .line 1830
    const/4 v3, 0x1

    .line 1831
    iput-boolean v3, v11, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    .line 1833
    const-string v3, " SET RUFS TOKEN True!"

    .line 1835
    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_12
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_8

    .line 1838
    :goto_2c
    move-object/from16 v3, v20

    .line 1840
    goto :goto_2d

    .line 1841
    :catch_12
    const/4 v3, 0x0

    .line 1842
    :try_start_1c
    iput-boolean v3, v11, Lcom/android/server/asks/RUFSContainer;->mHasRUFSToken:Z

    .line 1844
    const-string v3, " SET RUFS TOKEN False!"

    .line 1846
    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    add-int/lit8 v2, v2, -0x1

    .line 1851
    goto :goto_2c

    .line 1852
    :goto_2d
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1855
    move-result v4

    .line 1856
    if-eqz v4, :cond_3f

    .line 1858
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    move-result-object v4

    .line 1862
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1865
    move-result v4

    .line 1866
    if-nez v4, :cond_3f

    .line 1868
    move-object/from16 v4, v19

    .line 1870
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1873
    move-result v7

    .line 1874
    if-eqz v7, :cond_3f

    .line 1876
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    move-result-object v7

    .line 1880
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1883
    move-result v7

    .line 1884
    if-nez v7, :cond_3f

    .line 1886
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    move-result-object v3

    .line 1890
    check-cast v3, Ljava/lang/String;

    .line 1892
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    move-result-object v4

    .line 1896
    check-cast v4, Ljava/lang/String;

    .line 1898
    invoke-virtual {v11, v3}, Lcom/android/server/asks/RUFSContainer;->setADPModels(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {v11, v4}, Lcom/android/server/asks/RUFSContainer;->setADPCarriers(Ljava/lang/String;)V

    .line 1904
    :cond_3f
    move-object/from16 v3, v18

    .line 1906
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1909
    move-result v4

    .line 1910
    if-eqz v4, :cond_40

    .line 1912
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    move-result-object v4

    .line 1916
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1919
    move-result v4

    .line 1920
    if-nez v4, :cond_40

    .line 1922
    move-object/from16 v4, v17

    .line 1924
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1927
    move-result v7

    .line 1928
    if-eqz v7, :cond_40

    .line 1930
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    move-result-object v7

    .line 1934
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1937
    move-result v7

    .line 1938
    if-nez v7, :cond_40

    .line 1940
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    move-result-object v3

    .line 1944
    check-cast v3, Ljava/lang/String;

    .line 1946
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    move-result-object v1

    .line 1950
    check-cast v1, Ljava/lang/String;

    .line 1952
    invoke-virtual {v11, v3}, Lcom/android/server/asks/RUFSContainer;->setASKSRNEWModels(Ljava/lang/String;)V

    .line 1955
    invoke-virtual {v11, v1}, Lcom/android/server/asks/RUFSContainer;->setASKSRNEWCarriers(Ljava/lang/String;)V

    .line 1958
    :cond_40
    invoke-virtual {v5, v11}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setRufsContainer(Lcom/android/server/asks/RUFSContainer;)V

    .line 1961
    goto :goto_2f

    .line 1962
    :catch_13
    move-exception v0

    .line 1963
    goto/16 :goto_8

    .line 1965
    :catch_14
    move-exception v0

    .line 1966
    goto/16 :goto_9

    .line 1968
    :cond_41
    const-string v1, "ERROR: CHECK in RUFS"

    .line 1970
    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :goto_2e
    add-int/lit8 v2, v2, -0x1

    .line 1975
    goto :goto_2f

    .line 1976
    :cond_42
    const-string v1, "ERROR: AFTER in RUFS"

    .line 1978
    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    goto :goto_2e

    .line 1982
    :cond_43
    const-string v1, "ERROR: BEFORE in RUFS"

    .line 1984
    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    goto :goto_2e

    .line 1988
    :cond_44
    :goto_2f
    if-nez v2, :cond_45

    .line 1990
    const-string v1, " Pass ALL"

    .line 1992
    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const/4 v1, 0x0

    .line 1996
    return v1

    .line 1997
    :cond_45
    const-string v1, " Fail: auth"

    .line 1999
    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_8

    .line 2002
    const/16 v1, 0xdd

    .line 2004
    return v1

    .line 2005
    :catch_15
    move-exception v0

    .line 2006
    goto/16 :goto_8

    .line 2008
    :catch_16
    move-exception v0

    .line 2009
    goto/16 :goto_9

    .line 2011
    :goto_30
    :try_start_1d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2013
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_18

    .line 2016
    move-object/from16 v3, v16

    .line 2018
    :try_start_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    .line 2024
    move-result-object v4

    .line 2025
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2028
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2031
    move-result-object v2

    .line 2032
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2038
    const/16 v1, 0x15

    .line 2040
    return v1

    .line 2041
    :catch_17
    move-exception v0

    .line 2042
    :goto_31
    move-object v1, v0

    .line 2043
    goto :goto_33

    .line 2044
    :catch_18
    move-exception v0

    .line 2045
    move-object/from16 v3, v16

    .line 2047
    goto :goto_31

    .line 2048
    :catch_19
    move-exception v0

    .line 2049
    move-object/from16 v3, v16

    .line 2051
    move-object v1, v0

    .line 2052
    :goto_32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2054
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2057
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 2063
    move-result-object v4

    .line 2064
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2070
    move-result-object v2

    .line 2071
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_17

    .line 2077
    const/16 v1, 0x15

    .line 2079
    return v1

    .line 2080
    :goto_33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2082
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2085
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    .line 2088
    move-result-object v1

    .line 2089
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2095
    move-result-object v1

    .line 2096
    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const/16 v1, 0x15

    .line 2101
    return v1

    .line 2102
    :goto_34
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    new-instance v2, Ljava/lang/String;

    .line 2107
    invoke-direct {v2, v9}, Ljava/lang/String;-><init>([B)V

    .line 2110
    :try_start_1f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2113
    move-result v13
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_1a

    .line 2114
    goto :goto_35

    .line 2115
    :catch_1a
    move v13, v1

    .line 2116
    :goto_35
    return v13

    .line 2117
    :goto_36
    if-eqz v13, :cond_46

    .line 2119
    invoke-virtual {v13}, Landroid/util/jar/StrictJarFile;->close()V

    .line 2122
    :cond_46
    throw v1
.end method

.method public final writeState()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    .line 7
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 10
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    :try_start_1
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    .line 21
    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 24
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 26
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v4, v2, v5}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 33
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 35
    invoke-virtual {v4, v1, v5}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 38
    const-string/jumbo v5, "safeinstall"

    .line 41
    invoke-virtual {v4, v1, v5}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    const-string/jumbo v5, "delta"

    .line 47
    sget-object v6, Lcom/android/server/asks/ASKSManagerService;->mASKSDeltaPolicyVersion:Ljava/lang/String;

    .line 49
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    const-string/jumbo v5, "safeinstall"

    .line 55
    invoke-virtual {v4, v1, v5}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    const-string v5, "asks"

    .line 60
    invoke-virtual {v4, v1, v5}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    const-string/jumbo v5, "version"

    .line 66
    sget-object v6, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 68
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 74
    move-result-object v5

    .line 75
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v5

    .line 79
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_7

    .line 85
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Ljava/lang/String;

    .line 91
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object v7

    .line 95
    check-cast v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 97
    if-eqz v7, :cond_0

    .line 99
    iget-object v8, v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 101
    const/4 v9, -0x1

    .line 102
    if-eqz v8, :cond_1

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    iget v8, v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 107
    if-eq v8, v9, :cond_2

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    iget-object v8, v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 112
    if-eqz v8, :cond_0

    .line 114
    :goto_1
    const-string/jumbo v8, "package"

    .line 117
    invoke-virtual {v4, v1, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string/jumbo v8, "name"

    .line 123
    invoke-virtual {v4, v1, v8, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    iget-object v6, v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 128
    if-eqz v6, :cond_4

    .line 130
    const-string/jumbo v8, "restrict"

    .line 133
    invoke-virtual {v4, v1, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const-string/jumbo v8, "version"

    .line 139
    iget-object v10, v6, Lcom/android/server/asks/ASKSManagerService$Restrict;->mVersion:Ljava/lang/String;

    .line 141
    invoke-virtual {v4, v1, v8, v10}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    const-string/jumbo v8, "type"

    .line 147
    iget-object v10, v6, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    .line 149
    invoke-virtual {v4, v1, v8, v10}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    const-string/jumbo v8, "datelimit"

    .line 155
    iget-object v10, v6, Lcom/android/server/asks/ASKSManagerService$Restrict;->mDatelimit:Ljava/lang/String;

    .line 157
    invoke-virtual {v4, v1, v8, v10}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    const-string/jumbo v8, "from"

    .line 163
    iget-object v10, v6, Lcom/android/server/asks/ASKSManagerService$Restrict;->mFrom:Ljava/lang/String;

    .line 165
    invoke-virtual {v4, v1, v8, v10}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    const-string v8, "REVOKE"

    .line 170
    iget-object v10, v6, Lcom/android/server/asks/ASKSManagerService$Restrict;->mType:Ljava/lang/String;

    .line 172
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result v8

    .line 176
    if-eqz v8, :cond_3

    .line 178
    iget-object v6, v6, Lcom/android/server/asks/ASKSManagerService$Restrict;->mPermissionList:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 183
    move-result-object v6

    .line 184
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    move-result v8

    .line 188
    if-eqz v8, :cond_3

    .line 190
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    move-result-object v8

    .line 194
    check-cast v8, Ljava/lang/String;

    .line 196
    const-string/jumbo v10, "permission"

    .line 199
    invoke-virtual {v4, v1, v10}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    const-string/jumbo v10, "value"

    .line 205
    invoke-virtual {v4, v1, v10, v8}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    const-string/jumbo v8, "permission"

    .line 211
    invoke-virtual {v4, v1, v8}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    goto :goto_2

    .line 215
    :catchall_0
    move-exception p0

    .line 216
    move-object v1, v2

    .line 217
    goto/16 :goto_8

    .line 219
    :catch_0
    move-exception v1

    .line 220
    goto :goto_3

    .line 221
    :cond_3
    const-string/jumbo v6, "restrict"

    .line 224
    invoke-virtual {v4, v1, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    :cond_4
    iget v6, v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 229
    if-eq v6, v9, :cond_5

    .line 231
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 234
    move-result-object v6

    .line 235
    const-string/jumbo v8, "emmode"

    .line 238
    invoke-virtual {v4, v1, v8}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    const-string/jumbo v8, "value"

    .line 244
    new-instance v9, Ljava/lang/StringBuilder;

    .line 246
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    const-string v10, "0x"

    .line 251
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v6

    .line 261
    invoke-virtual {v4, v1, v8, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    const-string/jumbo v6, "emmode"

    .line 267
    invoke-virtual {v4, v1, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    :cond_5
    iget-object v6, v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 272
    if-eqz v6, :cond_6

    .line 274
    const-string/jumbo v7, "delete"

    .line 277
    invoke-virtual {v4, v1, v7}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    const-string/jumbo v7, "version"

    .line 283
    iget-object v8, v6, Lcom/android/server/asks/ASKSManagerService$Deletable;->mVersion:Ljava/lang/String;

    .line 285
    invoke-virtual {v4, v1, v7, v8}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    const-string/jumbo v7, "datelimit"

    .line 291
    iget-object v6, v6, Lcom/android/server/asks/ASKSManagerService$Deletable;->mDatelimit:Ljava/lang/String;

    .line 293
    invoke-virtual {v4, v1, v7, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    const-string/jumbo v6, "delete"

    .line 299
    invoke-virtual {v4, v1, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    :cond_6
    const-string/jumbo v6, "package"

    .line 305
    invoke-virtual {v4, v1, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    goto/16 :goto_0

    .line 310
    :cond_7
    const-string v3, "asks"

    .line 312
    invoke-virtual {v4, v1, v3}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    invoke-virtual {v4}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 318
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    .line 320
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 323
    const-string/jumbo v1, "security.ASKS.policy_version"

    .line 326
    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 328
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    goto :goto_4

    .line 332
    :goto_3
    :try_start_3
    const-string v3, "AASA_ASKSManager"

    .line 334
    const-string v4, "Failed to write state, restoring backup"

    .line 336
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    .line 341
    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    :goto_4
    if-eqz v2, :cond_8

    .line 346
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 349
    goto :goto_7

    .line 350
    :catchall_1
    move-exception p0

    .line 351
    goto :goto_a

    .line 352
    :catch_1
    move-exception p0

    .line 353
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 356
    goto :goto_7

    .line 357
    :catch_2
    move-exception p0

    .line 358
    move-object v1, v2

    .line 359
    goto :goto_6

    .line 360
    :catchall_2
    move-exception p0

    .line 361
    goto :goto_8

    .line 362
    :catch_3
    move-exception p0

    .line 363
    :goto_6
    :try_start_6
    const-string v2, "AASA_ASKSManager"

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    .line 367
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    const-string v4, "Failed to write state: "

    .line 372
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    move-result-object p0

    .line 382
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 385
    if-eqz v1, :cond_8

    .line 387
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 390
    goto :goto_7

    .line 391
    :catch_4
    move-exception p0

    .line 392
    goto :goto_5

    .line 393
    :cond_8
    :goto_7
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 394
    return-void

    .line 395
    :goto_8
    if-eqz v1, :cond_9

    .line 397
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 400
    goto :goto_9

    .line 401
    :catch_5
    move-exception v1

    .line 402
    :try_start_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 405
    :cond_9
    :goto_9
    throw p0

    .line 406
    :goto_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 407
    throw p0
.end method
