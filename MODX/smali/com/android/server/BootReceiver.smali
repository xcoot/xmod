.class public Lcom/android/server/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final LASTK_LOG_SIZE:I

.field public static final LAST_KMSG_FILES:[Ljava/lang/String;

.field public static final LOG_SIZE:I

.field public static final MAX_TOMBSTONE_SIZE_BYTES:J

.field public static final MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

.field public static final TOMBSTONE_TMP_DIR:Ljava/io/File;

.field public static final lastHeaderFile:Ljava/io/File;

.field public static logFileKernel:Ljava/lang/String;

.field public static mAudioManager:Landroid/media/AudioManager;

.field public static proc_rr_read_done:Z

.field public static proc_rr_value:Ljava/lang/String;

.field public static reset:I

.field public static final sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

.field public static final sFile:Landroid/util/AtomicFile;

.field public static sSentReports:I

.field public static storeExtraInfo:Ljava/lang/String;

.field public static store_lastkmsg_read_done:Z

.field public static store_lastkmsg_val:I

.field public static final uniqueID:Ljava/util/UUID;


# instance fields
.field public EVENT_ID:Ljava/lang/String;

.field public LOG_FILE:Ljava/lang/String;

.field public RESULT_CODE:Ljava/lang/String;

.field public isCaseByRescueParty:Z

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;


# direct methods
.method public static -$$Nest$mlogBootEvents(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const/4 v4, 0x1

    .line 6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const-string/jumbo v5, "dropbox"

    .line 12
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Landroid/os/DropBoxManager;

    .line 18
    invoke-static {}, Lcom/android/server/BootReceiver;->getBootHeadersToLogAndUpdate()Ljava/lang/String;

    .line 21
    move-result-object v13

    .line 22
    const-string/jumbo v6, "ro.boot.bootreason"

    .line 25
    const/4 v14, 0x0

    .line 26
    invoke-static {v6, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v6

    .line 30
    new-instance v7, Landroid/text/format/Time;

    .line 32
    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 35
    invoke-static/range {p1 .. p1}, Landroid/os/RecoverySystem;->handleAftermath(Landroid/content/Context;)Ljava/lang/String;

    .line 38
    move-result-object v8

    .line 39
    if-eqz v8, :cond_0

    .line 41
    if-eqz v5, :cond_0

    .line 43
    new-instance v9, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v8

    .line 58
    const-string v9, "SYSTEM_RECOVERY_LOG"

    .line 60
    invoke-virtual {v5, v9, v8}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    const-string v15, "\n"

    .line 65
    if-eqz v6, :cond_1

    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    .line 69
    const/16 v9, 0x200

    .line 71
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    const-string v9, "\nBoot info:\nLast boot reason: "

    .line 76
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v6

    .line 89
    :goto_0
    move-object/from16 v16, v6

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    const-string v6, ""

    .line 94
    goto :goto_0

    .line 95
    :goto_1
    invoke-static {}, Lcom/android/server/BootReceiver;->readTimestamps()Ljava/util/HashMap;

    .line 98
    move-result-object v12

    .line 99
    const-string/jumbo v6, "sys.is_members"

    .line 102
    const-string/jumbo v8, "exist"

    .line 105
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v6, "prepare setting eRR.p "

    .line 111
    const-string v11, "BootReceiver"

    .line 113
    invoke-static {v11, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {}, Lcom/android/server/BootReceiver;->proc_reset_reason()Ljava/lang/String;

    .line 119
    move-result-object v6

    .line 120
    const-string/jumbo v8, "ro.runtime.firstboot"

    .line 123
    const-wide/16 v9, 0x0

    .line 125
    invoke-static {v8, v9, v10}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 128
    move-result-wide v17

    .line 129
    cmp-long v17, v17, v9

    .line 131
    const-string v2, "[[TRUNCATED]]\n"

    .line 133
    if-nez v17, :cond_25

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 138
    move-result-wide v19

    .line 139
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 142
    move-result-object v9

    .line 143
    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz v5, :cond_2

    .line 148
    const-string v8, "SYSTEM_BOOT"

    .line 150
    invoke-virtual {v5, v8, v13}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2
    const-string v8, "HqmManagerService"

    .line 155
    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    move-result-object v8

    .line 159
    check-cast v8, Landroid/os/SemHqmManager;

    .line 161
    iput-object v8, v1, Lcom/android/server/BootReceiver;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 163
    const-string v8, "audio"

    .line 165
    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Landroid/media/AudioManager;

    .line 171
    sput-object v0, Lcom/android/server/BootReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 173
    new-instance v0, Ljava/io/File;

    .line 175
    const-string v8, "/proc/store_lastkmsg"

    .line 177
    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 183
    move-result v0

    .line 184
    const-string/jumbo v8, "readTextFile error"

    .line 187
    const/16 v9, 0x400

    .line 189
    const-string v10, "/proc/reset_rwc"

    .line 191
    if-eqz v0, :cond_10

    .line 193
    sget v0, Lcom/android/server/BootReceiver;->reset:I

    .line 195
    if-ne v0, v4, :cond_10

    .line 197
    invoke-static {}, Lcom/android/server/BootReceiver;->is_store_lastkmsg()I

    .line 200
    move-result v0

    .line 201
    if-ne v0, v4, :cond_10

    .line 203
    new-instance v0, Ljava/io/File;

    .line 205
    const-string v3, "/proc/extra_info"

    .line 207
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_3

    .line 216
    invoke-static {v3}, Lcom/android/server/BootReceiver;->readSysfsFile(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    move-result-object v0

    .line 220
    move-object/from16 v23, v2

    .line 222
    move-object/from16 v24, v12

    .line 224
    move-object/from16 v19, v13

    .line 226
    move-object/from16 v22, v15

    .line 228
    goto/16 :goto_4

    .line 230
    :cond_3
    const-string/jumbo v0, "ro.boot.hardware"

    .line 233
    invoke-static {v0, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    move-result-object v0

    .line 237
    const-string/jumbo v3, "exynos"

    .line 240
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 243
    move-result v3

    .line 244
    if-eq v3, v4, :cond_8

    .line 246
    const-string/jumbo v3, "s5e"

    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 252
    move-result v3

    .line 253
    if-ne v3, v4, :cond_4

    .line 255
    goto :goto_2

    .line 256
    :cond_4
    const-string/jumbo v3, "qcom"

    .line 259
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 262
    move-result v3

    .line 263
    if-ne v3, v4, :cond_6

    .line 265
    new-instance v0, Ljava/io/File;

    .line 267
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 273
    move-result v3

    .line 274
    if-eqz v3, :cond_5

    .line 276
    :try_start_0
    invoke-static {v0, v9, v14}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 283
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    add-int/lit8 v0, v0, 0x12

    .line 286
    goto :goto_3

    .line 287
    :catch_0
    move-exception v0

    .line 288
    invoke-static {v8, v0, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 291
    :cond_5
    const/16 v0, 0x9

    .line 293
    goto :goto_3

    .line 294
    :cond_6
    const-string/jumbo v3, "mt"

    .line 297
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 300
    move-result v0

    .line 301
    if-ne v0, v4, :cond_7

    .line 303
    const/16 v0, 0x14

    .line 305
    goto :goto_3

    .line 306
    :cond_7
    const/4 v0, 0x0

    .line 307
    goto :goto_3

    .line 308
    :cond_8
    :goto_2
    const/16 v0, 0x1e

    .line 310
    :goto_3
    const-string v3, "/sys/class/sec/sec_hw_param/extra_info"

    .line 312
    invoke-static {v3}, Lcom/android/server/BootReceiver;->readSysfsFile(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    move-result-object v3

    .line 316
    const-string v19, "/sys/class/sec/sec_hw_param/extrb_info"

    .line 318
    invoke-static/range {v19 .. v19}, Lcom/android/server/BootReceiver;->readSysfsFile(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    move-result-object v9

    .line 322
    const-string v19, "/sys/class/sec/sec_hw_param/extrc_info"

    .line 324
    invoke-static/range {v19 .. v19}, Lcom/android/server/BootReceiver;->readSysfsFile(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    move-result-object v14

    .line 328
    const-string v19, "/sys/class/sec/sec_hw_param/extrm_info"

    .line 330
    invoke-static/range {v19 .. v19}, Lcom/android/server/BootReceiver;->readSysfsFile(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    move-result-object v4

    .line 334
    const-string v19, "/sys/class/sec/sec_hw_param/extrf_info"

    .line 336
    move-object/from16 v22, v15

    .line 338
    invoke-static/range {v19 .. v19}, Lcom/android/server/BootReceiver;->readSysfsFile(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    move-result-object v15

    .line 342
    const-string v19, "/sys/class/sec/sec_hw_param/extrt_info"

    .line 344
    move-object/from16 v23, v2

    .line 346
    invoke-static/range {v19 .. v19}, Lcom/android/server/BootReceiver;->readSysfsFile(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    move-result-object v2

    .line 350
    move-object/from16 v19, v13

    .line 352
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 355
    move-result v13

    .line 356
    move-object/from16 v24, v12

    .line 358
    const/4 v12, 0x5

    .line 359
    if-le v13, v12, :cond_9

    .line 361
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    move-result-object v3

    .line 365
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 368
    move-result v13

    .line 369
    invoke-virtual {v9, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 372
    move-result-object v9

    .line 373
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    move-result-object v3

    .line 380
    :cond_9
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 383
    move-result v9

    .line 384
    if-le v9, v12, :cond_a

    .line 386
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    move-result-object v3

    .line 390
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 393
    move-result v9

    .line 394
    invoke-virtual {v14, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 397
    move-result-object v9

    .line 398
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    move-result-object v3

    .line 405
    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 408
    move-result v9

    .line 409
    if-le v9, v12, :cond_b

    .line 411
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 418
    move-result v9

    .line 419
    invoke-virtual {v4, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 422
    move-result-object v4

    .line 423
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    move-result-object v3

    .line 430
    :cond_b
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 433
    move-result v4

    .line 434
    if-le v4, v12, :cond_c

    .line 436
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    move-result-object v3

    .line 440
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 443
    move-result v4

    .line 444
    invoke-virtual {v15, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 447
    move-result-object v4

    .line 448
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object v3

    .line 455
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 458
    move-result v4

    .line 459
    if-le v4, v12, :cond_d

    .line 461
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    move-result-object v3

    .line 465
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 468
    move-result v4

    .line 469
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    move-result-object v0

    .line 480
    goto :goto_4

    .line 481
    :cond_d
    move-object v0, v3

    .line 482
    :goto_4
    const-string v2, ",\"TAG\":\""

    .line 484
    invoke-static {v0, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    move-result-object v0

    .line 488
    sget-object v2, Lcom/android/server/BootReceiver;->uniqueID:Ljava/util/UUID;

    .line 490
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 493
    const-string v2, "\""

    .line 495
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    move-result-object v0

    .line 502
    const-string/jumbo v3, "ro.crypto.state"

    .line 505
    const-string/jumbo v4, "none"

    .line 508
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 511
    move-result-object v3

    .line 512
    const-string/jumbo v9, "ro.crypto.type"

    .line 515
    invoke-static {v9, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 518
    move-result-object v9

    .line 519
    new-instance v12, Ljava/lang/StringBuilder;

    .line 521
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v0, ",\"CPT\":\""

    .line 529
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string v0, "/"

    .line 537
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    move-result-object v0

    .line 550
    const-string/jumbo v3, "ro.soc.model"

    .line 553
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 556
    move-result-object v3

    .line 557
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 560
    move-result v9

    .line 561
    if-eqz v9, :cond_e

    .line 563
    const-string/jumbo v3, "ro.hardware.chipname"

    .line 566
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    move-result-object v3

    .line 570
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 572
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string v0, ",\"APNM\":\""

    .line 580
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    move-result-object v0

    .line 593
    iget-object v2, v1, Lcom/android/server/BootReceiver;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 595
    if-eqz v2, :cond_f

    .line 597
    const-string/jumbo v2, "sendBroadcastToHWParm() mSemHqmManager.sendHWParamToHQM"

    .line 600
    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v1, v1, Lcom/android/server/BootReceiver;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 605
    const-string v30, "0.0"

    .line 607
    const-string v31, ""

    .line 609
    const/16 v26, 0x0

    .line 611
    const-string v27, "AP"

    .line 613
    const-string v28, "ETRA"

    .line 615
    const-string/jumbo v29, "ph"

    .line 618
    const-string v32, ""

    .line 620
    const-string v34, ""

    .line 622
    move-object/from16 v25, v1

    .line 624
    move-object/from16 v33, v0

    .line 626
    invoke-virtual/range {v25 .. v34}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 629
    goto :goto_5

    .line 630
    :cond_f
    const-string/jumbo v1, "sendBroadcastToHWParm() mSemHqmManager is null"

    .line 633
    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :goto_5
    sput-object v0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    .line 638
    goto :goto_6

    .line 639
    :cond_10
    move-object/from16 v23, v2

    .line 641
    move-object/from16 v24, v12

    .line 643
    move-object/from16 v19, v13

    .line 645
    move-object/from16 v22, v15

    .line 647
    :goto_6
    new-instance v0, Ljava/io/File;

    .line 649
    const-string v1, "/data/log"

    .line 651
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 657
    move-result-object v1

    .line 658
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 661
    move-result v2

    .line 662
    if-nez v2, :cond_11

    .line 664
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 667
    move-result v0

    .line 668
    if-nez v0, :cond_1a

    .line 670
    const-string/jumbo v0, "trimLastKmsg - logFolder mkdir failed"

    .line 673
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    goto/16 :goto_f

    .line 678
    :cond_11
    if-nez v1, :cond_12

    .line 680
    goto/16 :goto_f

    .line 682
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    .line 684
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 687
    new-instance v2, Lcom/android/server/BootReceiver$Dump;

    .line 689
    new-instance v3, Ljava/util/ArrayList;

    .line 691
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 694
    const-string/jumbo v4, "debug_history"

    .line 697
    const/4 v9, 0x1

    .line 698
    invoke-direct {v2, v9, v4, v3}, Lcom/android/server/BootReceiver$Dump;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 701
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 707
    move-result-object v2

    .line 708
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 711
    move-result v0

    .line 712
    if-eqz v0, :cond_13

    .line 714
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 717
    move-result-object v0

    .line 718
    move-object v3, v0

    .line 719
    check-cast v3, Lcom/android/server/BootReceiver$Dump;

    .line 721
    :try_start_1
    iget-object v0, v3, Lcom/android/server/BootReceiver$Dump;->fileList:Ljava/util/List;

    .line 723
    iget v4, v3, Lcom/android/server/BootReceiver$Dump;->listMax:I

    .line 725
    iget-object v9, v3, Lcom/android/server/BootReceiver$Dump;->dumpInFix:Ljava/lang/String;

    .line 727
    invoke-static {v1, v0, v4, v9}, Lcom/android/server/BootReceiver;->_trimADumpFile([Ljava/io/File;Ljava/util/List;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 730
    goto :goto_7

    .line 731
    :catch_1
    move-exception v0

    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    .line 734
    const-string/jumbo v9, "trim"

    .line 737
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    iget-object v3, v3, Lcom/android/server/BootReceiver$Dump;->dumpInFix:Ljava/lang/String;

    .line 742
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    const-string v3, " error"

    .line 747
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 756
    move-result-object v0

    .line 757
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    goto :goto_7

    .line 761
    :cond_13
    const-string/jumbo v1, "sys.boot.debug_history"

    .line 764
    const-string v0, "0"

    .line 766
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const/16 v0, 0x800

    .line 771
    new-array v0, v0, [B

    .line 773
    :try_start_2
    new-instance v2, Ljava/io/File;

    .line 775
    const-string v3, "/proc/debug_history"

    .line 777
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 783
    move-result v3

    .line 784
    if-eqz v3, :cond_14

    .line 786
    new-instance v3, Ljava/io/FileInputStream;

    .line 788
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 791
    :try_start_3
    new-instance v2, Ljava/io/File;

    .line 793
    const-string v4, "/data/log/dumpstate_debug_history.lst"

    .line 795
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 798
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    .line 800
    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 803
    :goto_8
    :try_start_5
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 806
    move-result v9

    .line 807
    if-lez v9, :cond_15

    .line 809
    const/4 v12, 0x0

    .line 810
    invoke-virtual {v4, v0, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 813
    goto :goto_8

    .line 814
    :catchall_0
    move-exception v0

    .line 815
    move-object v14, v3

    .line 816
    move-object/from16 v20, v4

    .line 818
    goto/16 :goto_13

    .line 820
    :catch_2
    move-exception v0

    .line 821
    goto :goto_c

    .line 822
    :catchall_1
    move-exception v0

    .line 823
    move-object v14, v3

    .line 824
    :goto_9
    const/16 v20, 0x0

    .line 826
    goto/16 :goto_13

    .line 828
    :catch_3
    move-exception v0

    .line 829
    :goto_a
    const/4 v4, 0x0

    .line 830
    goto :goto_c

    .line 831
    :catch_4
    move-exception v0

    .line 832
    const/4 v2, 0x0

    .line 833
    goto :goto_a

    .line 834
    :catchall_2
    move-exception v0

    .line 835
    const/4 v14, 0x0

    .line 836
    goto :goto_9

    .line 837
    :catch_5
    move-exception v0

    .line 838
    const/4 v2, 0x0

    .line 839
    const/4 v3, 0x0

    .line 840
    goto :goto_a

    .line 841
    :cond_14
    const/4 v2, 0x0

    .line 842
    const/4 v3, 0x0

    .line 843
    const/4 v4, 0x0

    .line 844
    :cond_15
    if-eqz v3, :cond_16

    .line 846
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 849
    :catch_6
    :cond_16
    if-eqz v4, :cond_18

    .line 851
    :goto_b
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 854
    goto :goto_d

    .line 855
    :goto_c
    :try_start_8
    new-instance v9, Ljava/lang/StringBuilder;

    .line 857
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 860
    const-string/jumbo v12, "debug_history - File copy error"

    .line 863
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 872
    move-result-object v0

    .line 873
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 876
    if-eqz v3, :cond_17

    .line 878
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 881
    :catch_7
    :cond_17
    if-eqz v4, :cond_18

    .line 883
    goto :goto_b

    .line 884
    :catch_8
    :cond_18
    :goto_d
    if-eqz v2, :cond_1a

    .line 886
    :try_start_a
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 889
    move-result-object v0

    .line 890
    if-eqz v0, :cond_19

    .line 892
    const/16 v2, 0x3e8

    .line 894
    const/16 v3, 0x3ef

    .line 896
    const/16 v4, 0x1a0

    .line 898
    invoke-static {v0, v4, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 901
    goto :goto_e

    .line 902
    :catch_9
    move-exception v0

    .line 903
    const-string/jumbo v2, "dumpstate_debug_history - getCanonicalPath error"

    .line 906
    invoke-static {v2, v0, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 909
    :cond_19
    :goto_e
    const-string v0, "1"

    .line 911
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :cond_1a
    :goto_f
    new-instance v0, Ljava/io/File;

    .line 916
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 922
    const-string v1, "%Y%m%d_%H%M%S"

    .line 924
    invoke-virtual {v7, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 927
    move-result-object v1

    .line 928
    const-string v2, "SYSTEM_LAST_KMSG_"

    .line 930
    const-string v3, "_"

    .line 932
    invoke-static {v2, v1, v3, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 935
    move-result-object v4

    .line 936
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 939
    move-result v7

    .line 940
    if-eqz v7, :cond_1b

    .line 942
    const/4 v7, 0x0

    .line 943
    const/16 v9, 0x400

    .line 945
    :try_start_b
    invoke-static {v0, v9, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 948
    move-result-object v0

    .line 949
    new-instance v7, Ljava/lang/StringBuilder;

    .line 951
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 954
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 975
    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 976
    goto :goto_10

    .line 977
    :catch_a
    move-exception v0

    .line 978
    invoke-static {v8, v0, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 981
    :cond_1b
    move-object v0, v4

    .line 982
    :goto_10
    sget v1, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    .line 984
    neg-int v1, v1

    .line 985
    const-string v10, "/proc/last_kmsg"

    .line 987
    move-object v6, v5

    .line 988
    move-object/from16 v7, v24

    .line 990
    move-object/from16 v8, v19

    .line 992
    const-wide/16 v13, 0x0

    .line 994
    move-object/from16 v9, v16

    .line 996
    move-object v2, v11

    .line 997
    move v11, v1

    .line 998
    move-object/from16 v15, v24

    .line 1000
    move-object v12, v0

    .line 1001
    invoke-static/range {v6 .. v12}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1004
    const-string v10, "/sys/fs/pstore/console-ramoops"

    .line 1006
    move-object v7, v15

    .line 1007
    invoke-static/range {v6 .. v12}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1010
    const-string v10, "/sys/fs/pstore/console-ramoops-0"

    .line 1012
    invoke-static/range {v6 .. v12}, Lcom/android/server/BootReceiver;->addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1015
    sget v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 1017
    neg-int v0, v0

    .line 1018
    const-string v9, ""

    .line 1020
    const-string v10, "/cache/recovery/log"

    .line 1022
    const-string v12, "SYSTEM_RECOVERY_LOG"

    .line 1024
    move-object v6, v5

    .line 1025
    move-object v7, v15

    .line 1026
    move-object/from16 v8, v19

    .line 1028
    move v11, v0

    .line 1029
    invoke-static/range {v6 .. v12}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1032
    const-string v9, ""

    .line 1034
    const-string v10, "/cache/recovery/last_kmsg"

    .line 1036
    const-string v12, "SYSTEM_RECOVERY_KMSG"

    .line 1038
    move-object v6, v5

    .line 1039
    move-object v7, v15

    .line 1040
    move-object/from16 v8, v19

    .line 1042
    move v11, v0

    .line 1043
    invoke-static/range {v6 .. v12}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1046
    if-eqz v5, :cond_1c

    .line 1048
    const-string v1, "SYSTEM_AUDIT"

    .line 1050
    invoke-virtual {v5, v1}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    .line 1053
    move-result v3

    .line 1054
    if-nez v3, :cond_1d

    .line 1056
    :cond_1c
    :goto_11
    move-object/from16 v8, v19

    .line 1058
    move-object/from16 v7, v22

    .line 1060
    move-object/from16 v6, v23

    .line 1062
    goto/16 :goto_14

    .line 1064
    :cond_1d
    const-string v3, "Copying audit failures to DropBox"

    .line 1066
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    new-instance v3, Ljava/io/File;

    .line 1071
    const-string v4, "/proc/last_kmsg"

    .line 1073
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 1079
    move-result-wide v6

    .line 1080
    cmp-long v4, v6, v13

    .line 1082
    if-gtz v4, :cond_1e

    .line 1084
    new-instance v3, Ljava/io/File;

    .line 1086
    const-string v4, "/sys/fs/pstore/console-ramoops"

    .line 1088
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 1094
    move-result-wide v6

    .line 1095
    cmp-long v4, v6, v13

    .line 1097
    if-gtz v4, :cond_1e

    .line 1099
    new-instance v3, Ljava/io/File;

    .line 1101
    const-string v4, "/sys/fs/pstore/console-ramoops-0"

    .line 1103
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 1109
    move-result-wide v6

    .line 1110
    :cond_1e
    cmp-long v4, v6, v13

    .line 1112
    if-gtz v4, :cond_1f

    .line 1114
    goto :goto_11

    .line 1115
    :cond_1f
    invoke-virtual {v15, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1118
    move-result v4

    .line 1119
    if-eqz v4, :cond_20

    .line 1121
    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    move-result-object v4

    .line 1125
    check-cast v4, Ljava/lang/Long;

    .line 1127
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 1130
    move-result-wide v8

    .line 1131
    cmp-long v4, v8, v6

    .line 1133
    if-nez v4, :cond_20

    .line 1135
    goto :goto_11

    .line 1136
    :cond_20
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1139
    move-result-object v4

    .line 1140
    invoke-virtual {v15, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    move-object/from16 v6, v23

    .line 1145
    invoke-static {v3, v0, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 1148
    move-result-object v0

    .line 1149
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1151
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1154
    move-object/from16 v7, v22

    .line 1156
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1159
    move-result-object v0

    .line 1160
    array-length v4, v0

    .line 1161
    const/4 v8, 0x0

    .line 1162
    :goto_12
    if-ge v8, v4, :cond_22

    .line 1164
    aget-object v9, v0, v8

    .line 1166
    const-string v10, "audit"

    .line 1168
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1171
    move-result v10

    .line 1172
    if-eqz v10, :cond_21

    .line 1174
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1177
    move-result-object v9

    .line 1178
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    :cond_21
    const/4 v9, 0x1

    .line 1182
    add-int/2addr v8, v9

    .line 1183
    goto :goto_12

    .line 1184
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1186
    const-string v4, "Copied "

    .line 1188
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1194
    move-result-object v4

    .line 1195
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 1198
    move-result v4

    .line 1199
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1202
    const-string v4, " worth of audits to DropBox"

    .line 1204
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1210
    move-result-object v0

    .line 1211
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1216
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1219
    move-object/from16 v8, v19

    .line 1221
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1227
    move-result-object v3

    .line 1228
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1234
    move-result-object v0

    .line 1235
    invoke-virtual {v5, v1, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    goto :goto_14

    .line 1239
    :goto_13
    if-eqz v14, :cond_23

    .line 1241
    :try_start_c
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    .line 1244
    :catch_b
    :cond_23
    if-eqz v20, :cond_24

    .line 1246
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 1249
    :catch_c
    :cond_24
    throw v0

    .line 1250
    :cond_25
    move-object v6, v2

    .line 1251
    move-object v2, v11

    .line 1252
    move-object v8, v13

    .line 1253
    move-object v7, v15

    .line 1254
    move-wide v13, v9

    .line 1255
    move-object v15, v12

    .line 1256
    if-eqz v5, :cond_26

    .line 1258
    const-string v0, "SYSTEM_RESTART"

    .line 1260
    invoke-virtual {v5, v0, v8}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_26
    :goto_14
    sget-object v0, Lcom/android/server/BootReceiver;->LAST_KMSG_FILES:[Ljava/lang/String;

    .line 1265
    array-length v1, v0

    .line 1266
    const/4 v3, 0x0

    .line 1267
    :goto_15
    if-ge v3, v1, :cond_27

    .line 1269
    aget-object v4, v0, v3

    .line 1271
    new-instance v9, Ljava/io/File;

    .line 1273
    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 1279
    move-result v4

    .line 1280
    if-nez v4, :cond_28

    .line 1282
    const/4 v4, 0x1

    .line 1283
    add-int/2addr v3, v4

    .line 1284
    goto :goto_15

    .line 1285
    :cond_27
    const/4 v9, 0x0

    .line 1286
    :cond_28
    const-string v1, ","

    .line 1288
    const/16 v3, 0xef

    .line 1290
    const/16 v4, 0xf2

    .line 1292
    if-nez v9, :cond_29

    .line 1294
    goto :goto_16

    .line 1295
    :cond_29
    const/16 v0, -0x4000

    .line 1297
    const/4 v10, 0x0

    .line 1298
    :try_start_e
    invoke-static {v9, v0, v10}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 1301
    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 1302
    const-string/jumbo v9, "powerctl_shutdown_time_ms:([0-9]+):([0-9]+)"

    .line 1305
    const/16 v10, 0x8

    .line 1307
    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 1310
    move-result-object v9

    .line 1311
    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1314
    move-result-object v0

    .line 1315
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 1318
    move-result v9

    .line 1319
    if-eqz v9, :cond_2a

    .line 1321
    const/4 v9, 0x1

    .line 1322
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1325
    move-result-object v10

    .line 1326
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1329
    move-result v10

    .line 1330
    const/16 v11, 0x9

    .line 1332
    invoke-static {v3, v11, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1335
    const/4 v10, 0x2

    .line 1336
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1339
    move-result-object v11

    .line 1340
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1343
    move-result v11

    .line 1344
    invoke-static {v4, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1347
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1349
    const-string/jumbo v12, "boot_fs_shutdown,"

    .line 1352
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1358
    move-result-object v12

    .line 1359
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1368
    move-result-object v0

    .line 1369
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1375
    move-result-object v0

    .line 1376
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    goto :goto_16

    .line 1380
    :cond_2a
    const/4 v10, 0x2

    .line 1381
    const/4 v0, 0x4

    .line 1382
    invoke-static {v4, v10, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1385
    const-string/jumbo v0, "boot_fs_shutdown, string not found"

    .line 1388
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    goto :goto_16

    .line 1392
    :catch_d
    move-exception v0

    .line 1393
    move-object v9, v0

    .line 1394
    const-string/jumbo v0, "cannot read last msg"

    .line 1397
    invoke-static {v2, v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1400
    :goto_16
    sget-object v0, Lcom/android/server/BootReceiver;->MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

    .line 1402
    array-length v9, v0

    .line 1403
    const/4 v10, 0x0

    .line 1404
    :goto_17
    if-ge v10, v9, :cond_2f

    .line 1406
    aget-object v11, v0, v10

    .line 1408
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1410
    const-string/jumbo v4, "ro.boottime.init.mount_all."

    .line 1413
    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1422
    move-result-object v4

    .line 1423
    const/4 v12, 0x0

    .line 1424
    invoke-static {v4, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 1427
    move-result v4

    .line 1428
    if-eqz v4, :cond_2e

    .line 1430
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1433
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 1436
    move-result v16

    .line 1437
    sparse-switch v16, :sswitch_data_0

    .line 1440
    :goto_18
    const/4 v12, -0x1

    .line 1441
    goto :goto_19

    .line 1442
    :sswitch_0
    const-string/jumbo v12, "default"

    .line 1445
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1448
    move-result v11

    .line 1449
    if-nez v11, :cond_2b

    .line 1451
    goto :goto_18

    .line 1452
    :cond_2b
    const/4 v12, 0x2

    .line 1453
    goto :goto_19

    .line 1454
    :sswitch_1
    const-string/jumbo v12, "early"

    .line 1457
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1460
    move-result v11

    .line 1461
    if-nez v11, :cond_2c

    .line 1463
    goto :goto_18

    .line 1464
    :cond_2c
    const/4 v12, 0x1

    .line 1465
    goto :goto_19

    .line 1466
    :sswitch_2
    const-string/jumbo v12, "late"

    .line 1469
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1472
    move-result v11

    .line 1473
    if-nez v11, :cond_2d

    .line 1475
    goto :goto_18

    .line 1476
    :cond_2d
    const/4 v12, 0x0

    .line 1477
    :goto_19
    packed-switch v12, :pswitch_data_0

    .line 1480
    :cond_2e
    :goto_1a
    const/4 v4, 0x1

    .line 1481
    goto :goto_1c

    .line 1482
    :pswitch_0
    const/16 v11, 0xa

    .line 1484
    goto :goto_1b

    .line 1485
    :pswitch_1
    const/16 v11, 0xb

    .line 1487
    goto :goto_1b

    .line 1488
    :pswitch_2
    const/16 v11, 0xc

    .line 1490
    :goto_1b
    invoke-static {v3, v11, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1493
    goto :goto_1a

    .line 1494
    :goto_1c
    add-int/2addr v10, v4

    .line 1495
    const/16 v4, 0xf2

    .line 1497
    goto :goto_17

    .line 1498
    :cond_2f
    sget v0, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 1500
    neg-int v11, v0

    .line 1501
    const-string v12, "SYSTEM_FSCK"

    .line 1503
    if-eqz v5, :cond_31

    .line 1505
    invoke-virtual {v5, v12}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    .line 1508
    move-result v0

    .line 1509
    if-nez v0, :cond_30

    .line 1511
    goto :goto_1d

    .line 1512
    :cond_30
    const/4 v0, 0x1

    .line 1513
    goto :goto_1e

    .line 1514
    :cond_31
    :goto_1d
    const/4 v0, 0x0

    .line 1515
    :goto_1e
    const-string v3, "Checking for fsck errors"

    .line 1517
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    new-instance v3, Ljava/io/File;

    .line 1522
    const-string v4, "/dev/fscklogs/log"

    .line 1524
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 1530
    move-result-wide v9

    .line 1531
    cmp-long v4, v9, v13

    .line 1533
    if-gtz v4, :cond_32

    .line 1535
    move-object/from16 p1, v1

    .line 1537
    goto/16 :goto_27

    .line 1539
    :cond_32
    invoke-static {v3, v11, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 1542
    move-result-object v4

    .line 1543
    const-string/jumbo v6, "fs_stat,[^,]*/([^/,]+),(0x[0-9a-fA-F]+)"

    .line 1546
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 1549
    move-result-object v6

    .line 1550
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1553
    move-result-object v4

    .line 1554
    array-length v7, v4

    .line 1555
    const/4 v9, 0x0

    .line 1556
    const/4 v10, 0x0

    .line 1557
    const/4 v13, 0x0

    .line 1558
    const/4 v14, 0x0

    .line 1559
    :goto_1f
    if-ge v9, v7, :cond_39

    .line 1561
    move/from16 v16, v7

    .line 1563
    aget-object v7, v4, v9

    .line 1565
    move-object/from16 p1, v1

    .line 1567
    const-string v1, "FILE SYSTEM WAS MODIFIED"

    .line 1569
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1572
    move-result v1

    .line 1573
    if-nez v1, :cond_33

    .line 1575
    const-string v1, "[FSCK] Unreachable"

    .line 1577
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1580
    move-result v1

    .line 1581
    if-eqz v1, :cond_34

    .line 1583
    :cond_33
    move-object/from16 v17, v6

    .line 1585
    const/16 v1, 0xf2

    .line 1587
    goto/16 :goto_25

    .line 1589
    :cond_34
    const-string/jumbo v1, "fs_stat"

    .line 1592
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1595
    move-result v1

    .line 1596
    if-eqz v1, :cond_38

    .line 1598
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1601
    move-result-object v1

    .line 1602
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 1605
    move-result v17

    .line 1606
    if-eqz v17, :cond_37

    .line 1608
    move-object/from16 v17, v6

    .line 1610
    const/4 v6, 0x1

    .line 1611
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1614
    move-result-object v7

    .line 1615
    const/4 v6, 0x2

    .line 1616
    :try_start_f
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1619
    move-result-object v19

    .line 1620
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1623
    move-result-object v6

    .line 1624
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1627
    move-result v1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_e

    .line 1628
    invoke-static {v7, v1, v4, v13, v14}, Lcom/android/server/BootReceiver;->fixFsckFsStat(Ljava/lang/String;I[Ljava/lang/String;II)I

    .line 1631
    move-result v1

    .line 1632
    const-string/jumbo v6, "userdata"

    .line 1635
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1638
    move-result v6

    .line 1639
    if-nez v6, :cond_36

    .line 1641
    const-string/jumbo v6, "data"

    .line 1644
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1647
    move-result v6

    .line 1648
    if-eqz v6, :cond_35

    .line 1650
    goto :goto_20

    .line 1651
    :cond_35
    const/16 v13, 0xf2

    .line 1653
    goto :goto_21

    .line 1654
    :cond_36
    :goto_20
    const/4 v6, 0x3

    .line 1655
    const/16 v13, 0xf2

    .line 1657
    invoke-static {v13, v6, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1660
    :goto_21
    const-string/jumbo v6, "fs_stat, partition:"

    .line 1663
    const-string v13, " stat:0x"

    .line 1665
    invoke-static {v6, v7, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    move-result-object v6

    .line 1669
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 1672
    move-result-object v1

    .line 1673
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1679
    move-result-object v1

    .line 1680
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    goto :goto_22

    .line 1684
    :catch_e
    const-string/jumbo v6, "cannot parse fs_stat: partition:"

    .line 1687
    const-string v13, " stat:"

    .line 1689
    invoke-static {v6, v7, v13}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    move-result-object v6

    .line 1693
    const/4 v7, 0x2

    .line 1694
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1697
    move-result-object v1

    .line 1698
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1704
    move-result-object v1

    .line 1705
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :goto_22
    move v13, v14

    .line 1709
    :goto_23
    const/16 v1, 0xf2

    .line 1711
    :goto_24
    const/4 v6, 0x1

    .line 1712
    goto :goto_26

    .line 1713
    :cond_37
    move-object/from16 v17, v6

    .line 1715
    const/16 v1, 0xf2

    .line 1717
    const-string/jumbo v6, "cannot parse fs_stat:"

    .line 1720
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1723
    move-result-object v6

    .line 1724
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    goto :goto_24

    .line 1728
    :cond_38
    move-object/from16 v17, v6

    .line 1730
    goto :goto_23

    .line 1731
    :goto_25
    const/4 v6, 0x1

    .line 1732
    const/4 v10, 0x1

    .line 1733
    :goto_26
    add-int/2addr v14, v6

    .line 1734
    add-int/2addr v9, v6

    .line 1735
    move-object/from16 v1, p1

    .line 1737
    move/from16 v7, v16

    .line 1739
    move-object/from16 v6, v17

    .line 1741
    goto/16 :goto_1f

    .line 1743
    :cond_39
    move-object/from16 p1, v1

    .line 1745
    if-eqz v0, :cond_3a

    .line 1747
    if-eqz v10, :cond_3a

    .line 1749
    const-string v9, ""

    .line 1751
    const-string v10, "/dev/fscklogs/log"

    .line 1753
    move-object v6, v5

    .line 1754
    move-object v7, v15

    .line 1755
    invoke-static/range {v6 .. v12}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1758
    :cond_3a
    new-instance v0, Ljava/io/File;

    .line 1760
    const-string v1, "/dev/fscklogs/fsck"

    .line 1762
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1765
    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1768
    :goto_27
    new-instance v1, Ljava/io/File;

    .line 1770
    const-string v0, "/data/system/shutdown-metrics.txt"

    .line 1772
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 1778
    move-result v0

    .line 1779
    if-eqz v0, :cond_3b

    .line 1781
    const/4 v3, 0x0

    .line 1782
    const/4 v4, 0x0

    .line 1783
    :try_start_10
    invoke-static {v1, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 1786
    move-result-object v7
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 1787
    goto :goto_28

    .line 1788
    :catch_f
    move-exception v0

    .line 1789
    move-object v3, v0

    .line 1790
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1792
    const-string v4, "Problem reading "

    .line 1794
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1797
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1800
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1803
    move-result-object v0

    .line 1804
    invoke-static {v2, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1807
    :cond_3b
    const/4 v7, 0x0

    .line 1808
    :goto_28
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1811
    move-result v0

    .line 1812
    if-nez v0, :cond_49

    .line 1814
    move-object/from16 v3, p1

    .line 1816
    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1819
    move-result-object v0

    .line 1820
    array-length v3, v0

    .line 1821
    const/4 v4, 0x0

    .line 1822
    const/4 v5, 0x0

    .line 1823
    const/4 v6, 0x0

    .line 1824
    const/4 v8, 0x0

    .line 1825
    const/4 v12, 0x0

    .line 1826
    :goto_29
    if-ge v12, v3, :cond_42

    .line 1828
    aget-object v9, v0, v12

    .line 1830
    const-string v10, ":"

    .line 1832
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1835
    move-result-object v9

    .line 1836
    array-length v10, v9

    .line 1837
    const/4 v11, 0x2

    .line 1838
    if-eq v10, v11, :cond_3c

    .line 1840
    const-string v9, "Wrong format of shutdown metrics - "

    .line 1842
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1845
    move-result-object v9

    .line 1846
    invoke-static {v2, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    const/4 v10, 0x0

    .line 1850
    const/4 v11, 0x1

    .line 1851
    goto :goto_2d

    .line 1852
    :cond_3c
    const/4 v10, 0x0

    .line 1853
    aget-object v13, v9, v10

    .line 1855
    const-string/jumbo v14, "shutdown_"

    .line 1858
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1861
    move-result v13

    .line 1862
    if-eqz v13, :cond_3e

    .line 1864
    aget-object v13, v9, v10

    .line 1866
    const/4 v10, 0x1

    .line 1867
    aget-object v14, v9, v10

    .line 1869
    :try_start_11
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1872
    move-result v10
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_10

    .line 1873
    const/4 v14, 0x0

    .line 1874
    if-ltz v10, :cond_3d

    .line 1876
    invoke-static {v14, v13, v10}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1879
    :cond_3d
    :goto_2a
    const/4 v10, 0x0

    .line 1880
    goto :goto_2b

    .line 1881
    :catch_10
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1883
    const-string v11, "Cannot parse metric "

    .line 1885
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1888
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1891
    const-string v11, " int value - "

    .line 1893
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1902
    move-result-object v10

    .line 1903
    invoke-static {v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    goto :goto_2a

    .line 1907
    :goto_2b
    aget-object v11, v9, v10

    .line 1909
    const-string/jumbo v13, "shutdown_system_server"

    .line 1912
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1915
    move-result v11

    .line 1916
    if-eqz v11, :cond_3e

    .line 1918
    const/4 v11, 0x1

    .line 1919
    aget-object v8, v9, v11

    .line 1921
    goto :goto_2c

    .line 1922
    :cond_3e
    const/4 v11, 0x1

    .line 1923
    :goto_2c
    aget-object v13, v9, v10

    .line 1925
    const-string/jumbo v14, "reboot"

    .line 1928
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1931
    move-result v13

    .line 1932
    if-eqz v13, :cond_3f

    .line 1934
    aget-object v4, v9, v11

    .line 1936
    goto :goto_2d

    .line 1937
    :cond_3f
    aget-object v13, v9, v10

    .line 1939
    const-string/jumbo v14, "reason"

    .line 1942
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1945
    move-result v13

    .line 1946
    if-eqz v13, :cond_40

    .line 1948
    aget-object v5, v9, v11

    .line 1950
    goto :goto_2d

    .line 1951
    :cond_40
    aget-object v13, v9, v10

    .line 1953
    const-string v14, "begin_shutdown"

    .line 1955
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1958
    move-result v13

    .line 1959
    if-eqz v13, :cond_41

    .line 1961
    aget-object v6, v9, v11

    .line 1963
    :cond_41
    :goto_2d
    add-int/2addr v12, v11

    .line 1964
    goto/16 :goto_29

    .line 1966
    :cond_42
    const/4 v10, 0x0

    .line 1967
    const/4 v11, 0x1

    .line 1968
    if-eqz v4, :cond_44

    .line 1970
    const-string/jumbo v0, "y"

    .line 1973
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1976
    move-result v0

    .line 1977
    if-eqz v0, :cond_43

    .line 1979
    move/from16 v22, v11

    .line 1981
    goto :goto_2f

    .line 1982
    :cond_43
    const-string/jumbo v0, "n"

    .line 1985
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1988
    move-result v0

    .line 1989
    if-nez v0, :cond_45

    .line 1991
    const-string v0, "Unexpected value for reboot : "

    .line 1993
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1996
    move-result-object v0

    .line 1997
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    goto :goto_2e

    .line 2001
    :cond_44
    const-string v0, "No value received for reboot"

    .line 2003
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    :cond_45
    :goto_2e
    move/from16 v22, v10

    .line 2008
    :goto_2f
    if-eqz v5, :cond_46

    .line 2010
    :goto_30
    move-object/from16 v23, v5

    .line 2012
    goto :goto_31

    .line 2013
    :cond_46
    const-string v0, "No value received for shutdown reason"

    .line 2015
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    const-string v5, "<EMPTY>"

    .line 2020
    goto :goto_30

    .line 2021
    :goto_31
    if-eqz v6, :cond_47

    .line 2023
    :try_start_12
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 2026
    move-result-wide v9
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_11

    .line 2027
    move-wide/from16 v24, v9

    .line 2029
    goto :goto_33

    .line 2030
    :catch_11
    const-string v0, "Cannot parse shutdown start time: "

    .line 2032
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2035
    move-result-object v0

    .line 2036
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    goto :goto_32

    .line 2040
    :cond_47
    const-string v0, "No value received for shutdown start time"

    .line 2042
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    :goto_32
    const-wide/16 v24, 0x0

    .line 2047
    :goto_33
    if-eqz v8, :cond_48

    .line 2049
    :try_start_13
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 2052
    move-result-wide v9
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_12

    .line 2053
    move-wide/from16 v26, v9

    .line 2055
    goto :goto_35

    .line 2056
    :catch_12
    const-string v0, "Cannot parse shutdown duration: "

    .line 2058
    invoke-static {v0, v6, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    goto :goto_34

    .line 2062
    :cond_48
    const-string v0, "No value received for shutdown duration"

    .line 2064
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    :goto_34
    const-wide/16 v26, 0x0

    .line 2069
    :goto_35
    const/16 v21, 0x38

    .line 2071
    invoke-static/range {v21 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;JJ)V

    .line 2074
    :cond_49
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2077
    invoke-static {v15}, Lcom/android/server/BootReceiver;->writeTimestamps(Ljava/util/HashMap;)V

    .line 2080
    return-void

    .line 2081
    :sswitch_data_0
    .sparse-switch
        0x3292a6 -> :sswitch_2
        0x5bd1763 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    .line 2095
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static -$$Nest$mlogLastAboxMsg(Lcom/android/server/BootReceiver;Ljava/util/zip/ZipOutputStream;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string p0, "BootReceiver"

    .line 6
    const-string v0, "/proc/abox/snapshot_0/log"

    .line 8
    const-string v1, "/proc/abox/snapshot_1/log"

    .line 10
    const-string v2, "/sys/kernel/debug/abox/snapshot_0/log"

    .line 12
    const-string v3, "/sys/kernel/debug/abox/snapshot_1/log"

    .line 14
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "/proc/abox/snapshot_0/valid"

    .line 20
    const-string v2, "/proc/abox/snapshot_1/valid"

    .line 22
    const-string v3, "/sys/kernel/debug/abox/snapshot_0/valid"

    .line 24
    const-string v4, "/sys/kernel/debug/abox/snapshot_1/valid"

    .line 26
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const/16 v2, 0x1000

    .line 32
    new-array v2, v2, [B

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    move-object v6, v3

    .line 37
    move v5, v4

    .line 38
    :goto_0
    const/4 v7, 0x4

    .line 39
    if-ge v5, v7, :cond_5

    .line 41
    new-instance v8, Ljava/io/File;

    .line 43
    aget-object v9, v0, v5

    .line 45
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v9, Ljava/io/File;

    .line 50
    aget-object v10, v1, v5

    .line 52
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    rem-int/lit8 v10, v5, 0x2

    .line 57
    const-string/jumbo v11, "lastaboxmsg_"

    .line 60
    const-string v12, ".bin"

    .line 62
    invoke-static {v10, v11, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    .line 69
    move-result v11

    .line 70
    if-eqz v11, :cond_4

    .line 72
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    .line 75
    move-result v11

    .line 76
    if-eqz v11, :cond_2

    .line 78
    invoke-static {v9, v7, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v7

    .line 82
    const-string v9, "Y"

    .line 84
    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v9

    .line 88
    if-eqz v9, :cond_1

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string/jumbo v9, "get "

    .line 98
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v7

    .line 108
    invoke-static {p0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v7, Ljava/io/FileInputStream;

    .line 113
    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    new-instance v6, Ljava/util/zip/ZipEntry;

    .line 118
    invoke-direct {v6, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 124
    :goto_1
    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 127
    move-result v6

    .line 128
    if-lez v6, :cond_0

    .line 130
    invoke-virtual {p1, v2, v4, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 133
    goto :goto_1

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    move-object v6, v7

    .line 136
    goto/16 :goto_6

    .line 138
    :catch_0
    move-exception p1

    .line 139
    move-object v6, v7

    .line 140
    goto :goto_3

    .line 141
    :catch_1
    move-exception p1

    .line 142
    move-object v6, v7

    .line 143
    goto :goto_5

    .line 144
    :cond_0
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 147
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    move-object v6, v7

    .line 151
    goto :goto_2

    .line 152
    :catchall_1
    move-exception p0

    .line 153
    goto :goto_6

    .line 154
    :catch_2
    move-exception p1

    .line 155
    goto :goto_3

    .line 156
    :catch_3
    move-exception p1

    .line 157
    goto :goto_5

    .line 158
    :cond_1
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    const-string/jumbo v9, "skip dump "

    .line 166
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v9, " valid:"

    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object v7

    .line 184
    invoke-static {p0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    :cond_2
    :goto_2
    if-eqz v6, :cond_4

    .line 189
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 192
    goto :goto_7

    .line 193
    :goto_3
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    const-string/jumbo v1, "logLastAboxMsg Null pointer :"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    if-eqz v6, :cond_5

    .line 219
    :goto_4
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 222
    goto :goto_8

    .line 223
    :goto_5
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    const-string/jumbo v1, "logLastAboxMsg IO err :"

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 247
    if-eqz v6, :cond_5

    .line 249
    goto :goto_4

    .line 250
    :goto_6
    if-eqz v6, :cond_3

    .line 252
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 255
    :catch_4
    :cond_3
    throw p0

    .line 256
    :catch_5
    :cond_4
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 258
    goto/16 :goto_0

    .line 260
    :catch_6
    :cond_5
    :goto_8
    return-void
.end method

.method public static bridge synthetic -$$Nest$mproc_reset_reason(Lcom/android/server/BootReceiver;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/server/BootReceiver;->proc_reset_reason()Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mwaitUntileRRpDone(Lcom/android/server/BootReceiver;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/server/BootReceiver;->waitUntileRRpDone()V

    .line 7
    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetlogFileKernel()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputstoreExtraInfo()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 3
    sput-object v0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    .line 5
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string/jumbo v0, "ro.debuggable"

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 8
    move-result v2

    .line 9
    const/high16 v3, 0x10000

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v2, v4, :cond_0

    .line 14
    const v2, 0x18000

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v2, v3

    .line 19
    :goto_0
    sput v2, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 21
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 24
    move-result v0

    .line 25
    if-ne v0, v4, :cond_1

    .line 27
    const/high16 v3, 0x30000

    .line 29
    :cond_1
    sput v3, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    .line 31
    new-instance v0, Ljava/io/File;

    .line 33
    const-string v2, "/data/tombstones"

    .line 35
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    sput-object v0, Lcom/android/server/BootReceiver;->TOMBSTONE_TMP_DIR:Ljava/io/File;

    .line 40
    new-instance v0, Landroid/util/AtomicFile;

    .line 42
    new-instance v2, Ljava/io/File;

    .line 44
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 47
    move-result-object v3

    .line 48
    const-string/jumbo v4, "log-files.xml"

    .line 51
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v3, "log-files"

    .line 57
    invoke-direct {v0, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    sput-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 62
    new-instance v0, Ljava/io/File;

    .line 64
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 67
    move-result-object v2

    .line 68
    const-string/jumbo v3, "last-header.txt"

    .line 71
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    sput-object v0, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    .line 76
    const-string/jumbo v0, "default"

    .line 79
    const-string/jumbo v2, "late"

    .line 82
    const-string/jumbo v3, "early"

    .line 85
    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lcom/android/server/BootReceiver;->MOUNT_DURATION_PROPS_POSTFIX:[Ljava/lang/String;

    .line 91
    const-string v0, "/sys/fs/pstore/console-ramoops"

    .line 93
    const-string v2, "/proc/last_kmsg"

    .line 95
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Lcom/android/server/BootReceiver;->LAST_KMSG_FILES:[Ljava/lang/String;

    .line 101
    sput v1, Lcom/android/server/BootReceiver;->sSentReports:I

    .line 103
    sget v0, Lcom/android/server/DropBoxManagerService;->DEFAULT_QUOTA_KB:I

    .line 105
    mul-int/lit16 v0, v0, 0x400

    .line 107
    int-to-long v2, v0

    .line 108
    sput-wide v2, Lcom/android/server/BootReceiver;->MAX_TOMBSTONE_SIZE_BYTES:J

    .line 110
    const/4 v0, -0x1

    .line 111
    sput v0, Lcom/android/server/BootReceiver;->reset:I

    .line 113
    const-string v2, ""

    .line 115
    sput-object v2, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    .line 117
    sput-object v2, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    .line 119
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 122
    move-result-object v2

    .line 123
    sput-object v2, Lcom/android/server/BootReceiver;->uniqueID:Ljava/util/UUID;

    .line 125
    const/4 v2, 0x0

    .line 126
    sput-object v2, Lcom/android/server/BootReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 128
    sput-boolean v1, Lcom/android/server/BootReceiver;->store_lastkmsg_read_done:Z

    .line 130
    sput v0, Lcom/android/server/BootReceiver;->store_lastkmsg_val:I

    .line 132
    sput-boolean v1, Lcom/android/server/BootReceiver;->proc_rr_read_done:Z

    .line 134
    sput-object v2, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/android/server/am/DropboxRateLimiter;

    .line 138
    invoke-direct {v0}, Lcom/android/server/am/DropboxRateLimiter;-><init>()V

    .line 141
    sput-object v0, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/android/server/BootReceiver;->EVENT_ID:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/BootReceiver;->RESULT_CODE:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/server/BootReceiver;->LOG_FILE:Ljava/lang/String;

    .line 13
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/android/server/BootReceiver;->isCaseByRescueParty:Z

    .line 16
    iput-object v0, p0, Lcom/android/server/BootReceiver;->saveLastkmsg:Lcom/android/server/BootReceiver$SaveLastkmsg;

    .line 18
    iput-object v0, p0, Lcom/android/server/BootReceiver;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 20
    return-void
.end method

.method public static GetRescuePartyLog()Ljava/lang/String;
    .locals 18

    .line 1
    const-string v1, "NoLogFile"

    .line 3
    const-string v2, "EmptyCrashBuffer"

    .line 5
    const-string v3, "InsufficientLogInfo"

    .line 7
    const-string v0, "annotated"

    .line 9
    const-string v4, "***"

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 13
    const-string v6, "\"TAG\":\""

    .line 15
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    sget-object v6, Lcom/android/server/BootReceiver;->uniqueID:Ljava/util/UUID;

    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string v6, "\","

    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v5

    .line 32
    const-string v6, "\"CAUSE\":\""

    .line 34
    const-string v7, "\",\"STACK\":\""

    .line 36
    new-instance v8, Ljava/io/File;

    .line 38
    const-string v9, "/data/log/rescueparty_log"

    .line 40
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    .line 45
    invoke-direct {v14, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 48
    :try_start_1
    new-instance v15, Ljava/io/InputStreamReader;

    .line 50
    invoke-direct {v15, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 53
    :try_start_2
    new-instance v13, Ljava/io/BufferedReader;

    .line 55
    invoke-direct {v13, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    const/16 v16, 0x1

    .line 60
    :goto_0
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 63
    move-result-object v9

    .line 64
    if-eqz v9, :cond_c

    .line 66
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 69
    move-result v10

    .line 70
    if-nez v10, :cond_0

    .line 72
    const-string v10, "Build"

    .line 74
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 77
    move-result v10

    .line 78
    if-nez v10, :cond_0

    .line 80
    const-string v10, "Revision"

    .line 82
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 85
    move-result v10

    .line 86
    if-nez v10, :cond_0

    .line 88
    const-string v10, "ABI"

    .line 90
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    move-result v10

    .line 94
    if-nez v10, :cond_0

    .line 96
    const-string/jumbo v10, "uid:"

    .line 99
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 102
    move-result v10

    .line 103
    if-nez v10, :cond_0

    .line 105
    const-string/jumbo v10, "tagged_addr_ctrl:"

    .line 108
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    move-result v10

    .line 112
    if-nez v10, :cond_0

    .line 114
    const-string/jumbo v10, "pac_enabled_keys:"

    .line 117
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 120
    move-result v10

    .line 121
    if-nez v10, :cond_0

    .line 123
    const-string v10, "    lr"

    .line 125
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 128
    move-result v10

    .line 129
    if-nez v10, :cond_0

    .line 131
    const-string v10, "    x"

    .line 133
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 136
    move-result v10

    .line 137
    if-nez v10, :cond_0

    .line 139
    const-string v10, "    sp"

    .line 141
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 144
    move-result v10
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    if-eqz v10, :cond_1

    .line 147
    :cond_0
    :goto_1
    move-object/from16 v17, v5

    .line 149
    goto/16 :goto_5

    .line 151
    :cond_1
    const-string v10, "\n"

    .line 153
    const-string v11, "!@*** FATAL"

    .line 155
    if-eqz v16, :cond_7

    .line 157
    :try_start_4
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 160
    move-result v11

    .line 161
    const/16 v12, 0x9

    .line 163
    if-eqz v11, :cond_2

    .line 165
    new-instance v10, Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v11, "PROCESS: "

    .line 175
    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 178
    move-result v11

    .line 179
    add-int/2addr v11, v12

    .line 180
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 183
    move-result-object v9

    .line 184
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v6

    .line 191
    :goto_2
    const/16 v16, 0x0

    .line 193
    goto/16 :goto_0

    .line 195
    :catchall_0
    move-exception v0

    .line 196
    move/from16 v12, v16

    .line 198
    goto/16 :goto_10

    .line 200
    :catch_0
    move-exception v0

    .line 201
    move-object/from16 v17, v5

    .line 203
    :goto_3
    move/from16 v12, v16

    .line 205
    goto/16 :goto_b

    .line 207
    :cond_2
    const-string v11, "PLATFORM WATCHDOG RESET"

    .line 209
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 212
    move-result v11

    .line 213
    if-eqz v11, :cond_3

    .line 215
    new-instance v9, Ljava/lang/StringBuilder;

    .line 217
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string/jumbo v10, "system_server(watchdog)"

    .line 226
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object v6

    .line 233
    goto :goto_2

    .line 234
    :cond_3
    const-string v11, "Process: "

    .line 236
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 239
    move-result v11

    .line 240
    if-eqz v11, :cond_5

    .line 242
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 245
    move-result-object v11

    .line 246
    if-eqz v11, :cond_4

    .line 248
    const-string v12, "DeadSystemException"

    .line 250
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 253
    move-result v12

    .line 254
    if-eqz v12, :cond_4

    .line 256
    goto :goto_1

    .line 257
    :cond_4
    const-string v12, ", PID"

    .line 259
    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 262
    move-result v12
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    move-object/from16 v17, v5

    .line 265
    const/16 v5, 0x9

    .line 267
    :try_start_5
    invoke-virtual {v9, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 270
    move-result-object v5

    .line 271
    const-string/jumbo v9, "com.android.systemui"

    .line 274
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 277
    move-result v9

    .line 278
    if-eqz v9, :cond_b

    .line 280
    new-instance v9, Ljava/lang/StringBuilder;

    .line 282
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 291
    move-result-object v11

    .line 292
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object v7

    .line 302
    new-instance v9, Ljava/lang/StringBuilder;

    .line 304
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    move-result-object v6

    .line 317
    :goto_4
    move-object/from16 v5, v17

    .line 319
    goto :goto_2

    .line 320
    :catch_1
    move-exception v0

    .line 321
    goto :goto_3

    .line 322
    :cond_5
    move-object/from16 v17, v5

    .line 324
    const-string/jumbo v5, "pid: "

    .line 327
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 330
    move-result v5

    .line 331
    if-eqz v5, :cond_b

    .line 333
    const-string v5, ">>> "

    .line 335
    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 338
    move-result v5

    .line 339
    add-int/lit8 v5, v5, 0x4

    .line 341
    const-string v10, " <<<"

    .line 343
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 346
    move-result v10

    .line 347
    invoke-virtual {v9, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 350
    move-result-object v5

    .line 351
    const-string/jumbo v10, "system_server"

    .line 354
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    move-result v10

    .line 358
    if-nez v10, :cond_6

    .line 360
    const-string v10, "/system/bin/netd"

    .line 362
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    move-result v10

    .line 366
    if-nez v10, :cond_6

    .line 368
    const-string v10, "/system/bin/vold"

    .line 370
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    move-result v10

    .line 374
    if-nez v10, :cond_6

    .line 376
    const-string v10, "/system/bin/surfaceflinger"

    .line 378
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    move-result v10

    .line 382
    if-nez v10, :cond_6

    .line 384
    const-string v10, "/vendor/bin/hw/android.hardware.graphics"

    .line 386
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 389
    move-result v10

    .line 390
    if-nez v10, :cond_6

    .line 392
    const-string/jumbo v10, "zygote"

    .line 395
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 398
    move-result v10

    .line 399
    if-eqz v10, :cond_b

    .line 401
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    .line 403
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v5, "("

    .line 414
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string/jumbo v5, "name: "

    .line 420
    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 423
    move-result v5

    .line 424
    add-int/lit8 v5, v5, 0x6

    .line 426
    const-string v11, "  >>>"

    .line 428
    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 431
    move-result v11

    .line 432
    invoke-virtual {v9, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 435
    move-result-object v5

    .line 436
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v5, ")"

    .line 441
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    move-result-object v6

    .line 448
    goto/16 :goto_4

    .line 450
    :cond_7
    move-object/from16 v17, v5

    .line 452
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 455
    move-result v5

    .line 456
    if-nez v5, :cond_d

    .line 458
    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 461
    move-result v5

    .line 462
    if-nez v5, :cond_d

    .line 464
    const-string v5, "FATAL EXCEPTION"

    .line 466
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 469
    move-result v5

    .line 470
    if-nez v5, :cond_d

    .line 472
    const-string v5, "Fatal signal"

    .line 474
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 477
    move-result v5

    .line 478
    if-nez v5, :cond_d

    .line 480
    const-string v5, "PLATFORM WATCHDOG"

    .line 482
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 485
    move-result v5

    .line 486
    if-eqz v5, :cond_8

    .line 488
    goto :goto_6

    .line 489
    :cond_8
    const-string v5, "!@"

    .line 491
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 494
    move-result v5

    .line 495
    const/4 v11, 0x2

    .line 496
    if-eqz v5, :cond_9

    .line 498
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 501
    move-result-object v9

    .line 502
    :cond_9
    const-string v5, "annotated stack trace:"

    .line 504
    invoke-virtual {v9, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 507
    move-result v5

    .line 508
    if-eqz v5, :cond_a

    .line 510
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 513
    move-result v5

    .line 514
    if-lt v5, v11, :cond_a

    .line 516
    new-instance v5, Ljava/lang/StringBuilder;

    .line 518
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 524
    move-result v11

    .line 525
    const/4 v12, 0x1

    .line 526
    sub-int/2addr v11, v12

    .line 527
    const/4 v12, 0x0

    .line 528
    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 531
    move-result-object v9

    .line 532
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string v9, ":"

    .line 537
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    move-result-object v9

    .line 544
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 546
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 555
    move-result-object v9

    .line 556
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    move-result-object v7
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 566
    :cond_b
    :goto_5
    move-object/from16 v5, v17

    .line 568
    goto/16 :goto_0

    .line 570
    :cond_c
    move-object/from16 v17, v5

    .line 572
    :cond_d
    :goto_6
    if-eqz v16, :cond_10

    .line 574
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 577
    move-result v0

    .line 578
    if-eqz v0, :cond_f

    .line 580
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 583
    move-result-wide v0

    .line 584
    const-wide/16 v4, 0x0

    .line 586
    cmp-long v0, v0, v4

    .line 588
    if-lez v0, :cond_e

    .line 590
    invoke-static {v6, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 593
    move-result-object v6

    .line 594
    goto :goto_7

    .line 595
    :cond_e
    invoke-static {v6, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 598
    move-result-object v6

    .line 599
    goto :goto_7

    .line 600
    :cond_f
    invoke-static {v6, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 603
    move-result-object v6

    .line 604
    :cond_10
    :goto_7
    :try_start_6
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 607
    :catch_2
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 610
    :catch_3
    :goto_8
    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 613
    :catch_4
    :cond_11
    move-object/from16 v1, v17

    .line 615
    goto :goto_e

    .line 616
    :catchall_1
    move-exception v0

    .line 617
    const/4 v12, 0x1

    .line 618
    const/4 v13, 0x0

    .line 619
    goto/16 :goto_10

    .line 621
    :catch_5
    move-exception v0

    .line 622
    move-object/from16 v17, v5

    .line 624
    const/4 v12, 0x1

    .line 625
    const/4 v13, 0x0

    .line 626
    goto :goto_b

    .line 627
    :catchall_2
    move-exception v0

    .line 628
    const/4 v12, 0x1

    .line 629
    const/4 v13, 0x0

    .line 630
    :goto_9
    const/4 v15, 0x0

    .line 631
    goto/16 :goto_10

    .line 633
    :catch_6
    move-exception v0

    .line 634
    move-object/from16 v17, v5

    .line 636
    const/4 v12, 0x1

    .line 637
    const/4 v13, 0x0

    .line 638
    :goto_a
    const/4 v15, 0x0

    .line 639
    goto :goto_b

    .line 640
    :catchall_3
    move-exception v0

    .line 641
    const/4 v12, 0x1

    .line 642
    const/4 v13, 0x0

    .line 643
    const/4 v14, 0x0

    .line 644
    goto :goto_9

    .line 645
    :catch_7
    move-exception v0

    .line 646
    move-object/from16 v17, v5

    .line 648
    const/4 v12, 0x1

    .line 649
    const/4 v13, 0x0

    .line 650
    const/4 v14, 0x0

    .line 651
    goto :goto_a

    .line 652
    :goto_b
    :try_start_9
    const-string v4, "BootReceiver"

    .line 654
    const-string v5, "GetRescuePartyLog() Error"

    .line 656
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 659
    if-eqz v12, :cond_14

    .line 661
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 664
    move-result v0

    .line 665
    if-eqz v0, :cond_13

    .line 667
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 670
    move-result-wide v0

    .line 671
    const-wide/16 v4, 0x0

    .line 673
    cmp-long v0, v0, v4

    .line 675
    if-lez v0, :cond_12

    .line 677
    invoke-static {v6, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 680
    move-result-object v0

    .line 681
    :goto_c
    move-object v6, v0

    .line 682
    goto :goto_d

    .line 683
    :cond_12
    invoke-static {v6, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 686
    move-result-object v0

    .line 687
    goto :goto_c

    .line 688
    :cond_13
    invoke-static {v6, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 691
    move-result-object v0

    .line 692
    goto :goto_c

    .line 693
    :cond_14
    :goto_d
    if-eqz v13, :cond_15

    .line 695
    :try_start_a
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 698
    :catch_8
    :cond_15
    if-eqz v15, :cond_16

    .line 700
    :try_start_b
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 703
    :catch_9
    :cond_16
    if-eqz v14, :cond_11

    .line 705
    goto :goto_8

    .line 706
    :goto_e
    invoke-static {v1, v6}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 709
    move-result-object v0

    .line 710
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 713
    move-result v1

    .line 714
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 717
    move-result v2

    .line 718
    rsub-int v2, v2, 0x752f

    .line 720
    const-string v3, "\""

    .line 722
    if-ge v1, v2, :cond_17

    .line 724
    invoke-static {v0, v7, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 727
    move-result-object v0

    .line 728
    goto :goto_f

    .line 729
    :cond_17
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 736
    move-result v1

    .line 737
    rsub-int v1, v1, 0x752f

    .line 739
    const/4 v2, 0x0

    .line 740
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 743
    move-result-object v1

    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    move-result-object v0

    .line 754
    :goto_f
    const-string v1, "\t"

    .line 756
    const-string v2, " "

    .line 758
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 761
    move-result-object v0

    .line 762
    return-object v0

    .line 763
    :catchall_4
    move-exception v0

    .line 764
    :goto_10
    if-eqz v12, :cond_18

    .line 766
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 769
    move-result v1

    .line 770
    if-eqz v1, :cond_18

    .line 772
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 775
    :cond_18
    if-eqz v13, :cond_19

    .line 777
    :try_start_c
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 780
    :catch_a
    :cond_19
    if-eqz v15, :cond_1a

    .line 782
    :try_start_d
    invoke-virtual {v15}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 785
    :catch_b
    :cond_1a
    if-eqz v14, :cond_1b

    .line 787
    :try_start_e
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 790
    :catch_c
    :cond_1b
    throw v0
.end method

.method public static GetResetLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v0, ".*R[1-9].*"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lcom/android/server/BootReceiver;->GetRescuePartyLog()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string v2, "\"TAG\":\""

    .line 20
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    sget-object v2, Lcom/android/server/BootReceiver;->uniqueID:Ljava/util/UUID;

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, "\","

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    const-string v0, "P|WD"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    const-string v5, "\"STACK\":\""

    .line 45
    const-string v6, "\"CAUSE\":\""

    .line 47
    const-string v8, "BootReceiver"

    .line 49
    const-string v12, "\""

    .line 51
    const-string v13, ""

    .line 53
    if-eqz v0, :cond_17

    .line 55
    new-instance v14, Ljava/util/HashMap;

    .line 57
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 60
    new-instance v15, Ljava/util/HashMap;

    .line 62
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 65
    new-instance v7, Ljava/util/HashMap;

    .line 67
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 70
    const-string v0, "\"(.*)\".*prio=\\d+ tid=(\\d+).*"

    .line 72
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 75
    move-result-object v0

    .line 76
    const-string v16, "  at.*"

    .line 78
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 81
    move-result-object v9

    .line 82
    const-string v16, ".*held by thread (\\d+)"

    .line 84
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 87
    move-result-object v11

    .line 88
    :try_start_0
    invoke-static {}, Lcom/android/server/BootReceiver;->getANRFileName()Ljava/lang/String;

    .line 91
    move-result-object v4

    .line 92
    if-nez v4, :cond_2

    .line 94
    move-object/from16 v18, v2

    .line 96
    move-object/from16 v21, v3

    .line 98
    move-object v3, v5

    .line 99
    move-object v1, v12

    .line 100
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 101
    goto/16 :goto_18

    .line 103
    :cond_2
    new-instance v10, Ljava/io/FileReader;

    .line 105
    invoke-direct {v10, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 108
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    .line 110
    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 113
    move-object/from16 v18, v2

    .line 115
    move-object/from16 v20, v13

    .line 117
    const/4 v2, 0x0

    .line 118
    const/16 v17, 0x0

    .line 120
    const/16 v19, 0x0

    .line 122
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 125
    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 126
    if-eqz v1, :cond_b

    .line 128
    move-object/from16 v21, v3

    .line 130
    :try_start_3
    const-string v3, "Cmd line: system_server"

    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 136
    if-eqz v3, :cond_3

    .line 138
    :try_start_4
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 141
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 144
    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 147
    const/16 v17, 0x1

    .line 149
    goto :goto_3

    .line 150
    :catch_0
    move-exception v0

    .line 151
    move/from16 v20, v2

    .line 153
    move-object/from16 v23, v5

    .line 155
    move-object/from16 v22, v12

    .line 157
    goto/16 :goto_b

    .line 159
    :cond_3
    if-eqz v17, :cond_4

    .line 161
    const-string v3, "----- end"

    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 166
    move-result v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 167
    if-eqz v3, :cond_4

    .line 169
    :goto_2
    move-object/from16 v23, v5

    .line 171
    move-object/from16 v22, v12

    .line 173
    goto/16 :goto_8

    .line 175
    :cond_4
    :goto_3
    if-eqz v17, :cond_a

    .line 177
    :try_start_5
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 184
    move-result v22
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 185
    if-eqz v22, :cond_6

    .line 187
    move-object/from16 v22, v12

    .line 189
    const/4 v12, 0x2

    .line 190
    :try_start_6
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 193
    move-result-object v19

    .line 194
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 197
    move-result v12
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 198
    move-object/from16 v23, v5

    .line 200
    const/4 v5, 0x1

    .line 201
    :try_start_7
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 204
    move-result-object v3

    .line 205
    if-le v12, v2, :cond_5

    .line 207
    move v2, v12

    .line 208
    :cond_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v14, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {v15, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    move/from16 v19, v12

    .line 220
    goto :goto_5

    .line 221
    :catch_1
    move-exception v0

    .line 222
    :goto_4
    move/from16 v20, v2

    .line 224
    goto/16 :goto_b

    .line 226
    :catch_2
    move-exception v0

    .line 227
    move-object/from16 v23, v5

    .line 229
    goto :goto_4

    .line 230
    :cond_6
    move-object/from16 v23, v5

    .line 232
    move-object/from16 v22, v12

    .line 234
    move-object/from16 v3, v20

    .line 236
    :goto_5
    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 243
    move-result v12

    .line 244
    if-eqz v12, :cond_8

    .line 246
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    move-result-object v12

    .line 250
    check-cast v12, Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 252
    move-object/from16 v24, v0

    .line 254
    const-string v0, "\n"

    .line 256
    if-nez v12, :cond_7

    .line 258
    move/from16 v20, v2

    .line 260
    const/4 v2, 0x0

    .line 261
    :try_start_8
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 264
    move-result-object v5

    .line 265
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 268
    move-result-object v2

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    .line 271
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object v0

    .line 284
    invoke-virtual {v15, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    goto :goto_6

    .line 288
    :catch_3
    move-exception v0

    .line 289
    goto/16 :goto_b

    .line 291
    :cond_7
    move/from16 v20, v2

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    .line 295
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const/4 v12, 0x0

    .line 302
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 305
    move-result-object v5

    .line 306
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 309
    move-result-object v5

    .line 310
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    move-result-object v2

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    .line 319
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v15, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    goto :goto_6

    .line 336
    :cond_8
    move-object/from16 v24, v0

    .line 338
    move/from16 v20, v2

    .line 340
    :goto_6
    invoke-virtual {v11, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 347
    move-result v1

    .line 348
    if-eqz v1, :cond_9

    .line 350
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 353
    move-result-object v1

    .line 354
    const/4 v2, 0x1

    .line 355
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 358
    move-result-object v0

    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 362
    move-result v0

    .line 363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 370
    :cond_9
    move/from16 v2, v20

    .line 372
    move-object/from16 v12, v22

    .line 374
    move-object/from16 v5, v23

    .line 376
    move-object/from16 v0, v24

    .line 378
    move-object/from16 v20, v3

    .line 380
    :cond_a
    move-object/from16 v3, v21

    .line 382
    goto/16 :goto_1

    .line 384
    :catch_4
    move-exception v0

    .line 385
    :goto_7
    move-object/from16 v23, v5

    .line 387
    move-object/from16 v22, v12

    .line 389
    goto/16 :goto_4

    .line 391
    :cond_b
    move-object/from16 v21, v3

    .line 393
    goto/16 :goto_2

    .line 395
    :goto_8
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 398
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 401
    :goto_9
    const/4 v1, 0x1

    .line 402
    goto :goto_c

    .line 403
    :catch_5
    move-exception v0

    .line 404
    move-object/from16 v21, v3

    .line 406
    goto :goto_7

    .line 407
    :catch_6
    move-exception v0

    .line 408
    move-object/from16 v18, v2

    .line 410
    move-object/from16 v21, v3

    .line 412
    move-object/from16 v23, v5

    .line 414
    move-object/from16 v22, v12

    .line 416
    const/4 v4, 0x0

    .line 417
    :goto_a
    const/16 v20, 0x0

    .line 419
    goto :goto_b

    .line 420
    :catch_7
    move-exception v0

    .line 421
    move-object/from16 v18, v2

    .line 423
    move-object/from16 v21, v3

    .line 425
    move-object/from16 v23, v5

    .line 427
    move-object/from16 v22, v12

    .line 429
    const/4 v4, 0x0

    .line 430
    const/4 v10, 0x0

    .line 431
    goto :goto_a

    .line 432
    :goto_b
    const-string/jumbo v1, "getPWatchdog() Error"

    .line 435
    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    move/from16 v2, v20

    .line 440
    goto :goto_9

    .line 441
    :goto_c
    add-int/2addr v2, v1

    .line 442
    new-array v0, v2, [I

    .line 444
    const/4 v1, 0x0

    .line 445
    :goto_d
    if-ge v1, v2, :cond_c

    .line 447
    const/4 v3, 0x0

    .line 448
    aput v3, v0, v1

    .line 450
    add-int/lit8 v1, v1, 0x1

    .line 452
    goto :goto_d

    .line 453
    :cond_c
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 456
    move-result-object v1

    .line 457
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 460
    move-result-object v1

    .line 461
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 464
    move-result v2

    .line 465
    if-eqz v2, :cond_d

    .line 467
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 470
    move-result-object v2

    .line 471
    check-cast v2, Ljava/util/Map$Entry;

    .line 473
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 476
    move-result-object v3

    .line 477
    check-cast v3, Ljava/lang/Integer;

    .line 479
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 482
    move-result v3

    .line 483
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 486
    move-result-object v2

    .line 487
    check-cast v2, Ljava/lang/Integer;

    .line 489
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 492
    move-result v2

    .line 493
    aget v2, v0, v2

    .line 495
    const/4 v5, 0x1

    .line 496
    add-int/2addr v2, v5

    .line 497
    aput v2, v0, v3

    .line 499
    goto :goto_e

    .line 500
    :cond_d
    const/4 v1, 0x0

    .line 501
    const/4 v2, 0x0

    .line 502
    :goto_f
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    .line 505
    move-result v3

    .line 506
    if-nez v3, :cond_11

    .line 508
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 511
    move-result-object v3

    .line 512
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 515
    move-result-object v3

    .line 516
    const/4 v5, 0x0

    .line 517
    const/4 v9, 0x0

    .line 518
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 521
    move-result v11

    .line 522
    if-eqz v11, :cond_f

    .line 524
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 527
    move-result-object v11

    .line 528
    check-cast v11, Ljava/util/Map$Entry;

    .line 530
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 533
    move-result-object v12

    .line 534
    check-cast v12, Ljava/lang/Integer;

    .line 536
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 539
    move-result v12

    .line 540
    aget v12, v0, v12

    .line 542
    if-nez v12, :cond_e

    .line 544
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 547
    move-result-object v2

    .line 548
    check-cast v2, Ljava/lang/Integer;

    .line 550
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 553
    move-result v2

    .line 554
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 557
    move-result-object v3

    .line 558
    check-cast v3, Ljava/lang/Integer;

    .line 560
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 563
    move-result v3

    .line 564
    aget v3, v0, v3

    .line 566
    const/4 v12, 0x1

    .line 567
    sub-int/2addr v3, v12

    .line 568
    aput v3, v0, v2

    .line 570
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 573
    move-result-object v2

    .line 574
    check-cast v2, Ljava/lang/Integer;

    .line 576
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 579
    move-result v2

    .line 580
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 583
    move-result-object v3

    .line 584
    check-cast v3, Ljava/lang/Integer;

    .line 586
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 589
    move-result v3

    .line 590
    move/from16 v25, v3

    .line 592
    move v3, v2

    .line 593
    move/from16 v2, v25

    .line 595
    goto :goto_11

    .line 596
    :cond_e
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 599
    move-result-object v5

    .line 600
    check-cast v5, Ljava/lang/Integer;

    .line 602
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 605
    move-result v5

    .line 606
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 609
    move-result-object v9

    .line 610
    check-cast v9, Ljava/lang/Integer;

    .line 612
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 615
    move-result v9

    .line 616
    goto :goto_10

    .line 617
    :cond_f
    move v3, v1

    .line 618
    :goto_11
    if-ne v3, v1, :cond_10

    .line 620
    move v1, v5

    .line 621
    move v2, v9

    .line 622
    const/4 v0, 0x1

    .line 623
    goto :goto_12

    .line 624
    :cond_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 627
    move-result-object v1

    .line 628
    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    move v1, v3

    .line 632
    goto/16 :goto_f

    .line 634
    :cond_11
    const/4 v0, 0x0

    .line 635
    :goto_12
    if-eqz v2, :cond_12

    .line 637
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 640
    move-result-object v3

    .line 641
    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    move-result-object v3

    .line 645
    if-eqz v3, :cond_12

    .line 647
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 650
    move-result-object v3

    .line 651
    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    move-result-object v3

    .line 655
    if-nez v3, :cond_13

    .line 657
    :cond_12
    move-object/from16 v1, v22

    .line 659
    move-object/from16 v3, v23

    .line 661
    goto/16 :goto_15

    .line 663
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 665
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 671
    move-result-object v4

    .line 672
    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    move-result-object v4

    .line 676
    check-cast v4, Ljava/lang/String;

    .line 678
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    const-string v4, ","

    .line 683
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 689
    move-result-object v4

    .line 690
    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    move-result-object v4

    .line 694
    check-cast v4, Ljava/lang/String;

    .line 696
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    move-result-object v3

    .line 703
    if-nez v0, :cond_14

    .line 705
    const-string v0, ",WAITLOCK\","

    .line 707
    invoke-static {v3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 710
    move-result-object v0

    .line 711
    :goto_13
    move-object/from16 v3, v23

    .line 713
    goto :goto_14

    .line 714
    :cond_14
    const-string v0, ",DEADLOCK\","

    .line 716
    invoke-static {v3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 719
    move-result-object v0

    .line 720
    goto :goto_13

    .line 721
    :goto_14
    invoke-static {v0, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    move-result-object v0

    .line 725
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 728
    move-result-object v4

    .line 729
    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    move-result-object v4

    .line 733
    check-cast v4, Ljava/lang/String;

    .line 735
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    const-string v4, ":\n"

    .line 740
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 746
    move-result-object v2

    .line 747
    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    move-result-object v2

    .line 751
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    move-result-object v2

    .line 755
    check-cast v2, Ljava/lang/String;

    .line 757
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 763
    move-result-object v2

    .line 764
    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    move-result-object v2

    .line 768
    check-cast v2, Ljava/lang/String;

    .line 770
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 779
    move-result-object v1

    .line 780
    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    move-result-object v1

    .line 784
    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    move-result-object v1

    .line 788
    check-cast v1, Ljava/lang/String;

    .line 790
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 796
    move-result-object v0

    .line 797
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 800
    move-result v1

    .line 801
    const/16 v2, 0x752f

    .line 803
    if-lt v1, v2, :cond_15

    .line 805
    const/4 v1, 0x0

    .line 806
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 809
    move-result-object v0

    .line 810
    :cond_15
    move-object/from16 v1, v22

    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 815
    move-result-object v0

    .line 816
    goto :goto_18

    .line 817
    :goto_15
    if-eqz v4, :cond_16

    .line 819
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 822
    goto :goto_16

    .line 823
    :catch_8
    move-exception v0

    .line 824
    goto :goto_17

    .line 825
    :cond_16
    :goto_16
    if-eqz v10, :cond_1

    .line 827
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 830
    goto/16 :goto_0

    .line 832
    :goto_17
    const-string v2, "Failed to close in getPWatchdog()"

    .line 834
    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 837
    goto/16 :goto_0

    .line 839
    :goto_18
    move-object/from16 v2, v21

    .line 841
    if-eqz v0, :cond_18

    .line 843
    invoke-static {v2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 846
    move-result-object v0

    .line 847
    return-object v0

    .line 848
    :cond_17
    move-object/from16 v18, v2

    .line 850
    move-object v2, v3

    .line 851
    move-object v3, v5

    .line 852
    move-object v1, v12

    .line 853
    :cond_18
    sget-object v0, Lcom/android/server/BootReceiver$ResetReasonFactory;->instance:Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 855
    if-nez v0, :cond_19

    .line 857
    new-instance v0, Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 859
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 862
    sput-object v0, Lcom/android/server/BootReceiver$ResetReasonFactory;->instance:Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 864
    :cond_19
    sget-object v0, Lcom/android/server/BootReceiver$ResetReasonFactory;->instance:Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 866
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 869
    invoke-static/range {p0 .. p0}, Lcom/android/server/BootReceiver$ResetReasonFactory;->createResetReasonCode(Ljava/lang/String;)Lcom/android/server/ResetReasonCode;

    .line 872
    move-result-object v0

    .line 873
    invoke-virtual {v0}, Lcom/android/server/ResetReasonCode;->getPatternByReason()Ljava/util/regex/Pattern;

    .line 876
    move-result-object v4

    .line 877
    new-instance v5, Ljava/lang/StringBuilder;

    .line 879
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v0}, Lcom/android/server/ResetReasonCode;->addCauseContents()Ljava/lang/String;

    .line 885
    move-result-object v6

    .line 886
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 892
    move-result-object v5

    .line 893
    new-instance v6, Ljava/lang/StringBuilder;

    .line 895
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v0}, Lcom/android/server/ResetReasonCode;->addStackContents()Ljava/lang/String;

    .line 901
    move-result-object v3

    .line 902
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 908
    move-result-object v3

    .line 909
    const-string v6, ".*"

    .line 911
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 914
    move-result-object v6

    .line 915
    invoke-virtual {v6}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    .line 918
    move-result-object v6

    .line 919
    invoke-virtual {v4}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    .line 922
    move-result-object v7

    .line 923
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 926
    move-result v6

    .line 927
    if-eqz v6, :cond_1c

    .line 929
    const-string v0, "N|RP"

    .line 931
    move-object/from16 v4, p0

    .line 933
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 936
    move-result v0

    .line 937
    if-nez v0, :cond_1b

    .line 939
    const-string v0, "N|NP"

    .line 941
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 944
    move-result v0

    .line 945
    if-eqz v0, :cond_1a

    .line 947
    goto :goto_19

    .line 948
    :cond_1a
    return-object v13

    .line 949
    :cond_1b
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 951
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 954
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    move-object/from16 v6, v18

    .line 962
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 974
    move-result-object v0

    .line 975
    return-object v0

    .line 976
    :cond_1c
    move-object/from16 v6, v18

    .line 978
    const-string v7, "[EFW]\\/(.*)\\((\\s*\\d+)\\):\\s+(.*)"

    .line 980
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 983
    move-result-object v7

    .line 984
    new-instance v9, Ljava/util/ArrayList;

    .line 986
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 989
    new-instance v10, Ljava/util/ArrayList;

    .line 991
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 994
    new-instance v11, Ljava/lang/StringBuilder;

    .line 996
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 999
    :try_start_b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 1002
    move-result-object v12

    .line 1003
    const-string/jumbo v14, "logcat -v brief -b crash -d -t 1000"

    .line 1006
    invoke-virtual {v12, v14}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1009
    move-result-object v12
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1010
    :try_start_c
    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1012
    move-object v15, v5

    .line 1013
    move-object/from16 v18, v6

    .line 1015
    const-wide/16 v5, 0x32

    .line 1017
    invoke-virtual {v12, v5, v6, v14}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    .line 1020
    move-result v5

    .line 1021
    if-nez v5, :cond_1d

    .line 1023
    invoke-virtual {v12}, Ljava/lang/Process;->destroy()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1026
    :try_start_d
    invoke-virtual {v12}, Ljava/lang/Process;->destroy()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 1029
    :catch_9
    return-object v13

    .line 1030
    :catchall_0
    move-exception v0

    .line 1031
    move-object v7, v12

    .line 1032
    goto/16 :goto_20

    .line 1034
    :catch_a
    move-exception v0

    .line 1035
    move-object v7, v12

    .line 1036
    goto/16 :goto_1f

    .line 1038
    :cond_1d
    :try_start_e
    new-instance v5, Ljava/io/BufferedReader;

    .line 1040
    new-instance v6, Ljava/io/InputStreamReader;

    .line 1042
    invoke-virtual {v12}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 1045
    move-result-object v14

    .line 1046
    invoke-direct {v6, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1049
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1052
    :goto_1a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 1055
    move-result-object v6

    .line 1056
    if-eqz v6, :cond_21

    .line 1058
    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1061
    move-result-object v6

    .line 1062
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 1065
    move-result v14

    .line 1066
    if-nez v14, :cond_1e

    .line 1068
    goto :goto_1a

    .line 1069
    :cond_1e
    move-object/from16 p0, v5

    .line 1071
    const/4 v14, 0x1

    .line 1072
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1075
    move-result-object v5

    .line 1076
    const-string v14, "AndroidRuntime"

    .line 1078
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1081
    move-result v14

    .line 1082
    if-nez v14, :cond_1f

    .line 1084
    const-string v14, "Watchdog"

    .line 1086
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1089
    move-result v14

    .line 1090
    if-nez v14, :cond_1f

    .line 1092
    const-string v14, "DEBUG"

    .line 1094
    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1097
    move-result v5

    .line 1098
    if-eqz v5, :cond_20

    .line 1100
    :cond_1f
    const/4 v5, 0x2

    .line 1101
    goto :goto_1b

    .line 1102
    :cond_20
    move-object/from16 v17, v7

    .line 1104
    const/4 v5, 0x2

    .line 1105
    goto :goto_1c

    .line 1106
    :goto_1b
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1109
    move-result-object v14

    .line 1110
    const/4 v5, 0x3

    .line 1111
    move-object/from16 v17, v7

    .line 1113
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1116
    move-result-object v7

    .line 1117
    invoke-static {v14, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1120
    move-result-object v7

    .line 1121
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1126
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1129
    const/4 v14, 0x1

    .line 1130
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1133
    move-result-object v5

    .line 1134
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    const-string v5, "("

    .line 1139
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    const/4 v5, 0x2

    .line 1143
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1146
    move-result-object v14

    .line 1147
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    const-string v14, ") : "

    .line 1152
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    const/4 v14, 0x3

    .line 1156
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 1159
    move-result-object v6

    .line 1160
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1166
    move-result-object v6

    .line 1167
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1170
    :goto_1c
    move-object/from16 v5, p0

    .line 1172
    move-object/from16 v7, v17

    .line 1174
    goto :goto_1a

    .line 1175
    :cond_21
    :try_start_f
    invoke-virtual {v12}, Ljava/lang/Process;->destroy()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 1178
    :catch_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1181
    move-result-object v5

    .line 1182
    :cond_22
    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1185
    move-result v6

    .line 1186
    if-eqz v6, :cond_23

    .line 1188
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1191
    move-result-object v6

    .line 1192
    check-cast v6, Landroid/util/Pair;

    .line 1194
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1196
    check-cast v7, Ljava/lang/CharSequence;

    .line 1198
    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1201
    move-result-object v7

    .line 1202
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 1205
    move-result v7

    .line 1206
    if-eqz v7, :cond_22

    .line 1208
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1210
    check-cast v6, Ljava/lang/String;

    .line 1212
    move-object v13, v6

    .line 1213
    goto :goto_1d

    .line 1214
    :cond_23
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1217
    move-result-object v4

    .line 1218
    :cond_24
    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1221
    move-result v5

    .line 1222
    if-eqz v5, :cond_25

    .line 1224
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1227
    move-result-object v5

    .line 1228
    check-cast v5, Landroid/util/Pair;

    .line 1230
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1232
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1235
    move-result v6

    .line 1236
    if-eqz v6, :cond_24

    .line 1238
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1240
    check-cast v5, Ljava/lang/String;

    .line 1242
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    goto :goto_1e

    .line 1246
    :cond_25
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 1249
    move-result v4

    .line 1250
    const/4 v5, 0x1

    .line 1251
    if-gt v4, v5, :cond_27

    .line 1253
    const-string v0, "\"CAUSE\":\"NO_LOG\",\"STACK\":\""

    .line 1255
    invoke-static {v2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1258
    move-result-object v0

    .line 1259
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 1262
    move-result v2

    .line 1263
    const/16 v3, 0x7148

    .line 1265
    if-gt v2, v3, :cond_26

    .line 1267
    move v3, v2

    .line 1268
    :cond_26
    sub-int/2addr v2, v3

    .line 1269
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 1272
    move-result-object v2

    .line 1273
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1276
    move-result-object v0

    .line 1277
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1280
    move-result-object v0

    .line 1281
    return-object v0

    .line 1282
    :cond_27
    invoke-virtual {v0, v10}, Lcom/android/server/ResetReasonCode;->addCauseStackFromContexts(Ljava/util/List;)Ljava/util/List;

    .line 1285
    move-result-object v0

    .line 1286
    invoke-static {v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    move-result-object v4

    .line 1290
    const/4 v5, 0x0

    .line 1291
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1294
    move-result-object v6

    .line 1295
    check-cast v6, Ljava/lang/String;

    .line 1297
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1303
    move-result-object v4

    .line 1304
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    move-result-object v3

    .line 1308
    const/4 v5, 0x1

    .line 1309
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1312
    move-result-object v0

    .line 1313
    check-cast v0, Ljava/lang/String;

    .line 1315
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1321
    move-result-object v0

    .line 1322
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1324
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1327
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    move-object/from16 v2, v18

    .line 1335
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1344
    move-result-object v0

    .line 1345
    const-string v2, "\t"

    .line 1347
    const-string v3, " "

    .line 1349
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1352
    move-result-object v0

    .line 1353
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1356
    move-result v2

    .line 1357
    const/16 v3, 0x752f

    .line 1359
    if-lt v2, v3, :cond_28

    .line 1361
    const/4 v2, 0x0

    .line 1362
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1365
    move-result-object v0

    .line 1366
    :cond_28
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1369
    move-result-object v0

    .line 1370
    return-object v0

    .line 1371
    :catchall_1
    move-exception v0

    .line 1372
    const/4 v7, 0x0

    .line 1373
    goto :goto_20

    .line 1374
    :catch_c
    move-exception v0

    .line 1375
    const/4 v7, 0x0

    .line 1376
    :goto_1f
    :try_start_10
    const-string v1, "Failed to exec logcat"

    .line 1378
    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1381
    if-eqz v7, :cond_29

    .line 1383
    :try_start_11
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    .line 1386
    :catch_d
    :cond_29
    return-object v13

    .line 1387
    :catchall_2
    move-exception v0

    .line 1388
    :goto_20
    if-eqz v7, :cond_2a

    .line 1390
    :try_start_12
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    .line 1393
    :catch_e
    :cond_2a
    throw v0
.end method

.method public static _trimADumpFile([Ljava/io/File;Ljava/util/List;ILjava/lang/String;)V
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    aget-object v3, p0, v2

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_0

    .line 18
    const-string/jumbo v5, "dumpstate_"

    .line 21
    invoke-virtual {v5, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 31
    move-object v4, p1

    .line 32
    check-cast v4, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p0, Lcom/android/server/BootReceiver$1;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v0, "trim"

    .line 53
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v2, " - Num of existing listOf"

    .line 61
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v2, " is "

    .line 69
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    check-cast p1, Ljava/util/ArrayList;

    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 77
    move-result v2

    .line 78
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    const-string v2, "BootReceiver"

    .line 87
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 93
    move-result p0

    .line 94
    if-ge p0, p2, :cond_2

    .line 96
    return-void

    .line 97
    :cond_2
    const-string p0, " - Delete file"

    .line 99
    invoke-static {v0, p3, p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Ljava/io/File;

    .line 109
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object p0

    .line 127
    check-cast p0, Ljava/io/File;

    .line 129
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 132
    move-result p0

    .line 133
    if-nez p0, :cond_3

    .line 135
    const-string p0, " - "

    .line 137
    invoke-static {v0, p3, p0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Ljava/io/File;

    .line 147
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v3, " delete failed"

    .line 156
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object p0

    .line 163
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 169
    goto :goto_1
.end method

.method public static addAugmentedProtoToDropbox(Ljava/io/File;Landroid/os/DropBoxManager;Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "failed to open for write: "

    .line 4
    const-string v1, "Exception during write: "

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 9
    move-result-wide v2

    .line 10
    sget-wide v4, Lcom/android/server/BootReceiver;->MAX_TOMBSTONE_SIZE_BYTES:J

    .line 12
    cmp-long v2, v2, v4

    .line 14
    const-string v3, "BootReceiver"

    .line 16
    if-lez v2, :cond_0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    const-string p2, "Tombstone too large to add to DropBox: "

    .line 22
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    sget-object v4, Lcom/android/server/BootReceiver;->TOMBSTONE_TMP_DIR:Ljava/io/File;

    .line 54
    const-string v5, ".tmp"

    .line 56
    invoke-static {p0, v5, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 63
    move-result-object v4

    .line 64
    const-string/jumbo v5, "rw-rw----"

    .line 67
    invoke-static {v5}, Ljava/nio/file/attribute/PosixFilePermissions;->fromString(Ljava/lang/String;)Ljava/util/Set;

    .line 70
    move-result-object v5

    .line 71
    invoke-static {v4, v5}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 74
    const/high16 v4, 0x30000000

    .line 76
    :try_start_0
    invoke-static {p0, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 79
    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    .line 82
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 85
    move-result-object v6

    .line 86
    invoke-direct {v5, v6}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 89
    const-wide v6, 0x10c00000001L

    .line 94
    invoke-virtual {v5, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 97
    iget p2, p2, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mDroppedCountSinceRateLimitActivated:I

    .line 99
    const-wide v6, 0x10500000002L

    .line 104
    invoke-virtual {v5, v6, v7, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 107
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 110
    const-string p2, "SYSTEM_TOMBSTONE_PROTO_WITH_HEADERS"

    .line 112
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p1, p2, p0, v2}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 122
    goto :goto_3

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    goto :goto_5

    .line 125
    :catch_0
    move-exception p1

    .line 126
    goto :goto_2

    .line 127
    :catch_1
    move-exception p1

    .line 128
    goto :goto_4

    .line 129
    :catchall_1
    move-exception p1

    .line 130
    if-eqz v4, :cond_1

    .line 132
    :try_start_4
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 135
    goto :goto_1

    .line 136
    :catchall_2
    move-exception p2

    .line 137
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 140
    :cond_1
    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    :goto_2
    :try_start_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p2

    .line 153
    invoke-static {v3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    goto :goto_0

    .line 157
    :catch_2
    :goto_3
    return-void

    .line 158
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object p2

    .line 170
    invoke-static {v3, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 174
    :goto_5
    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 177
    :catch_3
    throw p1
.end method

.method public static addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p0, p6}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 12
    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {v0, p1}, Lcom/android/server/BootReceiver;->recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z

    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 21
    return-void

    .line 22
    :cond_1
    const-string p1, "[[TRUNCATED]]\n"

    .line 24
    invoke-static {v0, p5, p1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {p2, p1, p3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    const-string p3, "SYSTEM_TOMBSTONE"

    .line 34
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 40
    const-string v0, ">>> system_server <<<"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 48
    const-string/jumbo p1, "system_server_native_crash"

    .line 51
    invoke-static {p0, p1, p2, p4, p5}, Lcom/android/server/BootReceiver;->addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    :cond_2
    invoke-virtual {p6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3

    .line 60
    const/16 p1, 0xba

    .line 62
    invoke-static {p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    .line 65
    :cond_3
    invoke-static {p0, p6, p2, p4, p5}, Lcom/android/server/BootReceiver;->addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    :cond_4
    :goto_0
    return-void
.end method

.method public static addLastkToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0xe

    .line 7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    sget v0, Lcom/android/server/BootReceiver;->LASTK_LOG_SIZE:I

    .line 14
    add-int/2addr v0, v1

    .line 15
    const/high16 v2, 0x30000

    .line 17
    if-le v0, v2, :cond_0

    .line 19
    if-le v2, v1, :cond_1

    .line 21
    sub-int/2addr v2, v1

    .line 22
    neg-int p5, v2

    .line 23
    :cond_0
    :goto_0
    move v5, p5

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 p5, 0x0

    .line 26
    goto :goto_0

    .line 27
    :goto_1
    move-object v0, p0

    .line 28
    move-object v1, p1

    .line 29
    move-object v2, p2

    .line 30
    move-object v3, p3

    .line 31
    move-object v4, p4

    .line 32
    move-object v6, p6

    .line 33
    invoke-static/range {v0 .. v6}, Lcom/android/server/BootReceiver;->addFileWithFootersToDropBox(Landroid/os/DropBoxManager;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    return-void
.end method

.method public static addTextToDropBox(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    const-string v0, "Copying "

    .line 3
    const-string v1, " to DropBox ("

    .line 5
    const-string v2, ")"

    .line 7
    invoke-static {v0, p3, v1, p1, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "BootReceiver"

    .line 13
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p0

    .line 23
    filled-new-array {p3, p0, p1}, [Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    const p1, 0x13c6a

    .line 30
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 33
    return-void
.end method

.method public static fixFsckFsStat(Ljava/lang/String;I[Ljava/lang/String;II)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    and-int/lit16 v2, v1, 0x400

    .line 7
    if-eqz v2, :cond_10

    .line 9
    const-string v2, "Pass ([1-9]E?):"

    .line 11
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v2

    .line 15
    const-string v3, "Inode [0-9]+ extent tree.*could be shorter"

    .line 17
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    move-result-object v3

    .line 21
    const-string v5, ""

    .line 23
    move-object v6, v5

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    move/from16 v5, p3

    .line 29
    :goto_0
    const-string/jumbo v10, "fs_stat, partition:"

    .line 32
    const-string v11, "BootReceiver"

    .line 34
    move/from16 v12, p4

    .line 36
    if-ge v5, v12, :cond_b

    .line 38
    aget-object v13, p2, v5

    .line 40
    const-string v14, "FILE SYSTEM WAS MODIFIED"

    .line 42
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v14

    .line 46
    if-nez v14, :cond_b

    .line 48
    const-string v14, "[FSCK] Unreachable"

    .line 50
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v14

    .line 54
    if-eqz v14, :cond_0

    .line 56
    goto/16 :goto_3

    .line 58
    :cond_0
    const-string v14, "Pass "

    .line 60
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    move-result v14

    .line 64
    const/4 v15, 0x1

    .line 65
    if-eqz v14, :cond_2

    .line 67
    invoke-virtual {v2, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 70
    move-result-object v10

    .line 71
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    .line 74
    move-result v11

    .line 75
    if-eqz v11, :cond_1

    .line 77
    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 80
    move-result-object v6

    .line 81
    :cond_1
    move v4, v15

    .line 82
    goto/16 :goto_2

    .line 84
    :cond_2
    const-string v14, "Inode "

    .line 86
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    move-result v14

    .line 90
    const-string v4, "1"

    .line 92
    if-eqz v14, :cond_4

    .line 94
    invoke-virtual {v3, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 97
    move-result-object v14

    .line 98
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    .line 101
    move-result v14

    .line 102
    if-eqz v14, :cond_3

    .line 104
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_3

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v7, " found tree optimization:"

    .line 120
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v4

    .line 130
    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    move v4, v15

    .line 134
    move v7, v4

    .line 135
    goto/16 :goto_2

    .line 137
    :cond_3
    move v4, v15

    .line 138
    goto/16 :goto_4

    .line 140
    :cond_4
    const-string v14, "[QUOTA WARNING]"

    .line 142
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 145
    move-result v14

    .line 146
    const-string v15, "5"

    .line 148
    if-eqz v14, :cond_6

    .line 150
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result v14

    .line 154
    if-eqz v14, :cond_6

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    .line 158
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v8, " found quota warning:"

    .line 166
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v4

    .line 176
    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-nez v7, :cond_5

    .line 181
    const/4 v4, 0x0

    .line 182
    const/4 v8, 0x1

    .line 183
    goto :goto_4

    .line 184
    :cond_5
    const/4 v4, 0x1

    .line 185
    const/4 v8, 0x1

    .line 186
    goto :goto_2

    .line 187
    :cond_6
    const-string v14, "Update quota info"

    .line 189
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 192
    move-result v14

    .line 193
    if-eqz v14, :cond_7

    .line 195
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result v14

    .line 199
    if-eqz v14, :cond_7

    .line 201
    goto :goto_1

    .line 202
    :cond_7
    const-string v14, "Timestamp(s) on inode"

    .line 204
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 207
    move-result v14

    .line 208
    if-eqz v14, :cond_9

    .line 210
    const-string v14, "beyond 2310-04-04 are likely pre-1970"

    .line 212
    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 215
    move-result v14

    .line 216
    if-eqz v14, :cond_9

    .line 218
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    move-result v4

    .line 222
    if-eqz v4, :cond_9

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v9, " found timestamp adjustment:"

    .line 234
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v4

    .line 244
    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    add-int/lit8 v4, v5, 0x1

    .line 249
    aget-object v9, p2, v4

    .line 251
    const-string v10, "Fix? yes"

    .line 253
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_8

    .line 259
    move v5, v4

    .line 260
    :cond_8
    const/4 v4, 0x1

    .line 261
    const/4 v9, 0x1

    .line 262
    goto :goto_2

    .line 263
    :cond_9
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 266
    move-result-object v13

    .line 267
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 270
    move-result v4

    .line 271
    if-nez v4, :cond_a

    .line 273
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 276
    move-result v4

    .line 277
    if-nez v4, :cond_a

    .line 279
    const/4 v4, 0x1

    .line 280
    goto :goto_4

    .line 281
    :cond_a
    :goto_1
    const/4 v4, 0x1

    .line 282
    :goto_2
    add-int/2addr v5, v4

    .line 283
    goto/16 :goto_0

    .line 285
    :cond_b
    :goto_3
    const/4 v13, 0x0

    .line 286
    const/4 v4, 0x0

    .line 287
    :goto_4
    if-eqz v4, :cond_c

    .line 289
    if-eqz v13, :cond_10

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    .line 293
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v0, " fix:"

    .line 301
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    move-result-object v0

    .line 311
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    goto :goto_5

    .line 315
    :cond_c
    if-eqz v8, :cond_d

    .line 317
    if-nez v7, :cond_d

    .line 319
    const-string/jumbo v2, "fs_stat, got quota fix without tree optimization, partition:"

    .line 322
    invoke-static {v2, v0, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    goto :goto_5

    .line 326
    :cond_d
    if-eqz v7, :cond_e

    .line 328
    if-nez v8, :cond_f

    .line 330
    :cond_e
    if-eqz v9, :cond_10

    .line 332
    :cond_f
    const-string v2, " fix ignored"

    .line 334
    invoke-static {v10, v0, v2, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    and-int/lit16 v0, v1, -0x401

    .line 339
    goto :goto_6

    .line 340
    :cond_10
    :goto_5
    move v0, v1

    .line 341
    :goto_6
    return v0
.end method

.method public static getANRFileName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/data/anr"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/android/server/BootReceiver$$ExternalSyntheticLambda8;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticLambda8;-><init>(I)V

    .line 14
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 20
    array-length v1, v0

    .line 21
    if-nez v1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    const-string v2, "/data/anr/"

    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    array-length v2, v0

    .line 35
    add-int/lit8 v2, v2, -0x1

    .line 37
    aget-object v0, v0, v2

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 52
    return-object v0
.end method

.method public static getBootHeadersToLogAndUpdate()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    const/16 v1, 0x200

    .line 11
    const-string v2, "Build: "

    .line 13
    invoke-static {v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "\nHardware: "

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "\nRevision: "

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string/jumbo v2, "ro.revision"

    .line 40
    const-string v3, ""

    .line 42
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v2, "\nBootloader: "

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    sget-object v2, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v2, "\nRadio: "

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v2, "\nKernel: "

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    new-instance v2, Ljava/io/File;

    .line 78
    const-string v3, "/proc/version"

    .line 80
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    const/16 v3, 0x400

    .line 85
    const-string v4, "...\n"

    .line 87
    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    sget v2, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    .line 96
    invoke-static {v2}, Landroid/system/Os;->sysconf(I)J

    .line 99
    move-result-wide v2

    .line 100
    const-wide/16 v4, 0x1000

    .line 102
    cmp-long v4, v2, v4

    .line 104
    const-string v5, "\n"

    .line 106
    if-eqz v4, :cond_0

    .line 108
    const-string v4, "PageSize: "

    .line 110
    invoke-static {v1, v4, v2, v3, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 113
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    :try_start_1
    sget-object v2, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    .line 122
    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    goto :goto_0

    .line 126
    :catch_1
    move-exception v2

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    const-string v4, "Error writing "

    .line 131
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    sget-object v4, Lcom/android/server/BootReceiver;->lastHeaderFile:Ljava/io/File;

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v3

    .line 143
    const-string v4, "BootReceiver"

    .line 145
    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :goto_0
    if-nez v0, :cond_1

    .line 150
    const-string/jumbo v0, "isPrevious: false\n"

    .line 153
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    return-object v0

    .line 158
    :cond_1
    const-string/jumbo v1, "isPrevious: true\n"

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    return-object v0
.end method

.method public static is_store_lastkmsg()I
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/proc/store_lastkmsg"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    sget-boolean v1, Lcom/android/server/BootReceiver;->store_lastkmsg_read_done:Z

    .line 10
    if-nez v1, :cond_2

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 15
    move-result v1

    .line 16
    const-string v2, "BootReceiver"

    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v1, :cond_0

    .line 21
    const-string v0, "PROC_STORE_KMSG : no exist"

    .line 23
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    sput v1, Lcom/android/server/BootReceiver;->store_lastkmsg_val:I

    .line 30
    :try_start_0
    const-string v4, "\n"

    .line 32
    const/16 v5, 0x400

    .line 34
    invoke-static {v0, v5, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string v4, "PROC_STORE_KMSG : read fail "

    .line 42
    invoke-static {v4, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 51
    move-result v2

    .line 52
    if-lt v2, v3, :cond_1

    .line 54
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    const-string v1, "1"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 66
    sput v3, Lcom/android/server/BootReceiver;->store_lastkmsg_val:I

    .line 68
    :cond_1
    :goto_1
    sput-boolean v3, Lcom/android/server/BootReceiver;->store_lastkmsg_read_done:Z

    .line 70
    :cond_2
    sget v0, Lcom/android/server/BootReceiver;->store_lastkmsg_val:I

    .line 72
    return v0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    .line 4
    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 7
    move-result-object p0

    .line 8
    new-array v1, v0, [Ljava/lang/String;

    .line 10
    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 13
    move-result-object v1

    .line 14
    new-array v2, v0, [Ljava/nio/file/LinkOption;

    .line 16
    invoke-static {p0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 22
    const/4 v2, 0x1

    .line 23
    new-array v2, v2, [Ljava/nio/file/CopyOption;

    .line 25
    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 27
    aput-object v3, v2, v0

    .line 29
    invoke-static {p0, v1, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 32
    const/16 p0, 0x3ef

    .line 34
    const/16 v0, 0x1a0

    .line 36
    const/16 v1, 0x3e8

    .line 38
    invoke-static {p1, v0, v1, p0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string p1, "Failed to move file"

    .line 45
    const-string v0, "BootReceiver"

    .line 47
    invoke-static {p1, p0, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 50
    :cond_0
    :goto_0
    return-void
.end method

.method public static proc_reset_reason()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/proc/reset_reason"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    sget-boolean v1, Lcom/android/server/BootReceiver;->proc_rr_read_done:Z

    .line 10
    if-nez v1, :cond_3

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 15
    move-result v1

    .line 16
    const-string v2, "BootReceiver"

    .line 18
    if-nez v1, :cond_0

    .line 20
    const-string v0, "/proc/reset_reason : no exist"

    .line 22
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :try_start_0
    const-string v1, "\n"

    .line 28
    const/16 v3, 0x400

    .line 30
    invoke-static {v0, v3, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v1, "PROC_RESET_REASON : read fail "

    .line 40
    invoke-static {v1, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 43
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v1, "reset_reason = "

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 53
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 58
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 63
    move-result v0

    .line 64
    const/4 v1, 0x2

    .line 65
    if-lt v0, v1, :cond_1

    .line 67
    sget-object v0, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 76
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 78
    if-nez v0, :cond_2

    .line 80
    const-string v0, "NA"

    .line 82
    sput-object v0, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 84
    :cond_2
    const/4 v0, 0x1

    .line 85
    sput-boolean v0, Lcom/android/server/BootReceiver;->proc_rr_read_done:Z

    .line 87
    :cond_3
    sget-object v0, Lcom/android/server/BootReceiver;->proc_rr_value:Ljava/lang/String;

    .line 89
    return-object v0
.end method

.method public static readSysfsFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 9
    move-result v1

    .line 10
    const-string v2, "BootReceiver"

    .line 12
    if-eqz v1, :cond_0

    .line 14
    const p0, 0x8000

    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_0
    invoke-static {v0, p0, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception p0

    .line 24
    const-string/jumbo v0, "readTextFile error"

    .line 27
    invoke-static {v0, p0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string/jumbo v0, "no file: "

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    const-string p0, ""

    .line 43
    :goto_1
    return-object p0
.end method

.method public static readTimestamps()Ljava/util/HashMap;
    .locals 10

    .line 1
    sget-object v0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 13
    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 14
    :try_start_2
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 17
    move-result-object v4

    .line 18
    :goto_0
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 21
    move-result v5

    .line 22
    const/4 v6, 0x2

    .line 23
    const/4 v7, 0x1

    .line 24
    if-eq v5, v6, :cond_0

    .line 26
    if-eq v5, v7, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-ne v5, v6, :cond_6

    .line 31
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 34
    move-result v5

    .line 35
    :cond_1
    :goto_1
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 38
    move-result v6

    .line 39
    if-eq v6, v7, :cond_5

    .line 41
    const/4 v8, 0x3

    .line 42
    if-ne v6, v8, :cond_2

    .line 44
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 47
    move-result v9

    .line 48
    if-le v9, v5, :cond_5

    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception v4

    .line 52
    goto/16 :goto_3

    .line 54
    :cond_2
    :goto_2
    if-eq v6, v8, :cond_1

    .line 56
    const/4 v8, 0x4

    .line 57
    if-ne v6, v8, :cond_3

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    const-string/jumbo v8, "log"

    .line 67
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_4

    .line 73
    const-string/jumbo v6, "filename"

    .line 76
    const/4 v8, 0x0

    .line 77
    invoke-interface {v4, v8, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v6

    .line 81
    const-string/jumbo v9, "timestamp"

    .line 84
    invoke-interface {v4, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    .line 87
    move-result-wide v8

    .line 88
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const-string v6, "BootReceiver"

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v9, "Unknown tag: "

    .line 105
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v8

    .line 119
    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    goto :goto_1

    .line 126
    :cond_5
    if-eqz v3, :cond_8

    .line 128
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    goto/16 :goto_c

    .line 133
    :catchall_1
    move-exception v2

    .line 134
    goto/16 :goto_d

    .line 136
    :catch_0
    move-exception v2

    .line 137
    goto :goto_5

    .line 138
    :catch_1
    move-exception v2

    .line 139
    goto/16 :goto_7

    .line 141
    :catch_2
    move-exception v2

    .line 142
    goto/16 :goto_8

    .line 144
    :catch_3
    move-exception v2

    .line 145
    goto/16 :goto_9

    .line 147
    :catch_4
    move-exception v2

    .line 148
    goto/16 :goto_a

    .line 150
    :catch_5
    move v2, v7

    .line 151
    goto/16 :goto_b

    .line 153
    :cond_6
    :try_start_4
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 155
    const-string/jumbo v5, "no start tag found"

    .line 158
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 162
    :goto_3
    if-eqz v3, :cond_7

    .line 164
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 167
    goto :goto_4

    .line 168
    :catchall_2
    move-exception v3

    .line 169
    :try_start_6
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 172
    goto :goto_4

    .line 173
    :catchall_3
    move-exception v3

    .line 174
    move v7, v2

    .line 175
    move-object v2, v3

    .line 176
    goto/16 :goto_d

    .line 178
    :catch_6
    move-exception v3

    .line 179
    move v7, v2

    .line 180
    move-object v2, v3

    .line 181
    goto :goto_5

    .line 182
    :catch_7
    move-exception v3

    .line 183
    move v7, v2

    .line 184
    move-object v2, v3

    .line 185
    goto :goto_7

    .line 186
    :catch_8
    move-exception v3

    .line 187
    move v7, v2

    .line 188
    move-object v2, v3

    .line 189
    goto :goto_8

    .line 190
    :catch_9
    move-exception v3

    .line 191
    move v7, v2

    .line 192
    move-object v2, v3

    .line 193
    goto :goto_9

    .line 194
    :catch_a
    move-exception v3

    .line 195
    move v7, v2

    .line 196
    move-object v2, v3

    .line 197
    goto :goto_a

    .line 198
    :cond_7
    :goto_4
    throw v4
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 199
    :goto_5
    :try_start_7
    const-string v3, "BootReceiver"

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    .line 203
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    const-string v5, "Failed parsing "

    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v2

    .line 218
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 221
    if-nez v7, :cond_8

    .line 223
    :goto_6
    :try_start_8
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 226
    goto/16 :goto_c

    .line 228
    :catchall_4
    move-exception v1

    .line 229
    goto/16 :goto_e

    .line 231
    :goto_7
    :try_start_9
    const-string v3, "BootReceiver"

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    .line 235
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    const-string v5, "Failed parsing "

    .line 240
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object v2

    .line 250
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    if-nez v7, :cond_8

    .line 255
    goto :goto_6

    .line 256
    :goto_8
    const-string v3, "BootReceiver"

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 260
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    const-string v5, "Failed parsing "

    .line 265
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v2

    .line 275
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    if-nez v7, :cond_8

    .line 280
    goto :goto_6

    .line 281
    :goto_9
    const-string v3, "BootReceiver"

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    .line 285
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    const-string v5, "Failed parsing "

    .line 290
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v2

    .line 300
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-nez v7, :cond_8

    .line 305
    goto :goto_6

    .line 306
    :goto_a
    const-string v3, "BootReceiver"

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    .line 310
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    const-string v5, "Failed parsing "

    .line 315
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v2

    .line 325
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 328
    if-nez v7, :cond_8

    .line 330
    goto :goto_6

    .line 331
    :catch_b
    :goto_b
    :try_start_a
    const-string v3, "BootReceiver"

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    .line 335
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    const-string v5, "No existing last log timestamp file "

    .line 340
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    sget-object v5, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 345
    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 348
    move-result-object v5

    .line 349
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    const-string v5, "; starting empty"

    .line 354
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    move-result-object v4

    .line 361
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 364
    if-nez v2, :cond_8

    .line 366
    goto/16 :goto_6

    .line 368
    :cond_8
    :goto_c
    :try_start_b
    monitor-exit v0

    .line 369
    return-object v1

    .line 370
    :goto_d
    if-nez v7, :cond_9

    .line 372
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 375
    :cond_9
    throw v2

    .line 376
    :goto_e
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 377
    throw v1
.end method

.method public static recordFileTimestamp(Ljava/io/File;Ljava/util/HashMap;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmp-long v2, v0, v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-gtz v2, :cond_0

    .line 12
    return v3

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Long;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 32
    move-result-wide v4

    .line 33
    cmp-long v2, v4, v0

    .line 35
    if-nez v2, :cond_1

    .line 37
    return v3

    .line 38
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const/4 p0, 0x1

    .line 46
    return p0
.end method

.method public static resetDropboxRateLimiter()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/BootReceiver;->sDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/DropboxRateLimiter;->reset()V

    .line 6
    return-void
.end method

.method public static sendResetLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "HqmManagerService"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Landroid/os/SemHqmManager;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const-string v5, "0.0"

    .line 14
    const-string v6, ""

    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "AP"

    .line 19
    const-string v3, "REST"

    .line 21
    const-string/jumbo v4, "ph"

    .line 24
    const-string v7, ""

    .line 26
    const-string v9, ""

    .line 28
    move-object v8, p1

    .line 29
    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    const-string/jumbo p0, "send broadcast to HQM about reset reason : "

    .line 35
    const-string v0, "BootReceiver"

    .line 37
    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method public static waitUntileRRpDone()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0x1e

    .line 5
    const-string v3, "BootReceiver"

    .line 7
    if-ge v1, v2, :cond_1

    .line 9
    :try_start_0
    const-string/jumbo v2, "sys.boot.errp"

    .line 12
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 15
    move-result v2

    .line 16
    const/4 v4, 0x1

    .line 17
    if-ne v2, v4, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v2, "We waited make eRRp Done for "

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo v1, "s"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const-wide/16 v4, 0x3e8

    .line 50
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 55
    goto :goto_0

    .line 56
    :goto_1
    const-string/jumbo v1, "waitUntileRRpDone error"

    .line 59
    invoke-static {v0, v1, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_1
    const-string v0, "Waited enough time(30s) for eRRp done, but timed out"

    .line 64
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public static writeTimestamps(Ljava/util/HashMap;)V
    .locals 9

    .line 1
    const-string v0, "Failed to write timestamp file: "

    .line 3
    sget-object v1, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 20
    const-string/jumbo v3, "log-files"

    .line 23
    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v3

    .line 34
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_0

    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Ljava/lang/String;

    .line 46
    const-string/jumbo v6, "log"

    .line 49
    invoke-interface {v2, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    const-string/jumbo v6, "filename"

    .line 55
    invoke-interface {v2, v4, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    const-string/jumbo v6, "timestamp"

    .line 61
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Ljava/lang/Long;

    .line 67
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 70
    move-result-wide v7

    .line 71
    invoke-interface {v2, v4, v6, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    const-string/jumbo v5, "log"

    .line 77
    invoke-interface {v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_3

    .line 83
    :catch_0
    move-exception p0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    const-string/jumbo p0, "log-files"

    .line 88
    invoke-interface {v2, v4, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 94
    sget-object p0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 96
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    goto :goto_2

    .line 100
    :goto_1
    :try_start_2
    const-string v2, "BootReceiver"

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    const-string v4, "Failed to write timestamp file, using the backup: "

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p0

    .line 119
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object p0, Lcom/android/server/BootReceiver;->sFile:Landroid/util/AtomicFile;

    .line 124
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 127
    :goto_2
    monitor-exit v1

    .line 128
    return-void

    .line 129
    :catch_1
    move-exception p0

    .line 130
    const-string v2, "BootReceiver"

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    monitor-exit v1

    .line 148
    return-void

    .line 149
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    throw p0
.end method


# virtual methods
.method public final getDumpFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/io/File;

    .line 4
    const-string v2, "/data/log"

    .line 6
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    const-string v2, "P|UR"

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v2, :cond_1

    .line 19
    new-array p0, v3, [Ljava/lang/String;

    .line 21
    const-string p1, "/data/log/unknown_platform_reset.log"

    .line 23
    invoke-static {p1, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 26
    move-result-object p0

    .line 27
    new-array v0, v3, [Ljava/nio/file/LinkOption;

    .line 29
    invoke-static {p0, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    new-array v0, v3, [Ljava/nio/file/LinkOption;

    .line 37
    invoke-static {p0, v0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 43
    return-object p1

    .line 44
    :cond_0
    return-object v4

    .line 45
    :cond_1
    new-instance v2, Lcom/android/server/BootReceiver$$ExternalSyntheticLambda8;

    .line 47
    invoke-direct {v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticLambda8;-><init>(I)V

    .line 50
    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_2

    .line 56
    return-object v4

    .line 57
    :cond_2
    sget-object v2, Lcom/android/server/BootReceiver$ResetReasonFactory;->instance:Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 59
    if-nez v2, :cond_3

    .line 61
    new-instance v2, Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 63
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 66
    sput-object v2, Lcom/android/server/BootReceiver$ResetReasonFactory;->instance:Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 68
    :cond_3
    sget-object v2, Lcom/android/server/BootReceiver$ResetReasonFactory;->instance:Lcom/android/server/BootReceiver$ResetReasonFactory;

    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-static {p1}, Lcom/android/server/BootReceiver$ResetReasonFactory;->createResetReasonCode(Ljava/lang/String;)Lcom/android/server/ResetReasonCode;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/android/server/ResetReasonCode;->addSuffix()Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    const-string v5, ""

    .line 83
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_c

    .line 89
    const/4 v2, -0x1

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 93
    move-result v5

    .line 94
    sparse-switch v5, :sswitch_data_0

    .line 97
    goto :goto_0

    .line 98
    :sswitch_0
    const-string v5, "K|WP"

    .line 100
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_4

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    const/4 v2, 0x6

    .line 108
    goto :goto_0

    .line 109
    :sswitch_1
    const-string v5, "K|TP"

    .line 111
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_5

    .line 117
    goto :goto_0

    .line 118
    :cond_5
    const/4 v2, 0x5

    .line 119
    goto :goto_0

    .line 120
    :sswitch_2
    const-string v5, "K|SP"

    .line 122
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_6

    .line 128
    goto :goto_0

    .line 129
    :cond_6
    const/4 v2, 0x4

    .line 130
    goto :goto_0

    .line 131
    :sswitch_3
    const-string v5, "K|PP"

    .line 133
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_7

    .line 139
    goto :goto_0

    .line 140
    :cond_7
    const/4 v2, 0x3

    .line 141
    goto :goto_0

    .line 142
    :sswitch_4
    const-string v5, "K|KP"

    .line 144
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result p1

    .line 148
    if-nez p1, :cond_8

    .line 150
    goto :goto_0

    .line 151
    :cond_8
    const/4 v2, 0x2

    .line 152
    goto :goto_0

    .line 153
    :sswitch_5
    const-string v5, "K|DP"

    .line 155
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_9

    .line 161
    goto :goto_0

    .line 162
    :cond_9
    move v2, v0

    .line 163
    goto :goto_0

    .line 164
    :sswitch_6
    const-string v5, "K|CP"

    .line 166
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result p1

    .line 170
    if-nez p1, :cond_a

    .line 172
    goto :goto_0

    .line 173
    :cond_a
    move v2, v3

    .line 174
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 177
    iget-boolean p0, p0, Lcom/android/server/BootReceiver;->isCaseByRescueParty:Z

    .line 179
    if-eqz p0, :cond_b

    .line 181
    const-string/jumbo p0, "sys_error"

    .line 184
    :goto_1
    move-object v2, p0

    .line 185
    goto :goto_2

    .line 186
    :cond_b
    move-object v2, v4

    .line 187
    goto :goto_2

    .line 188
    :pswitch_0
    const-string/jumbo p0, "lastkmsg"

    .line 191
    goto :goto_1

    .line 192
    :cond_c
    :goto_2
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 195
    array-length p0, v1

    .line 196
    :goto_3
    if-ge v3, p0, :cond_e

    .line 198
    aget-object p1, v1, v3

    .line 200
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 203
    move-result v5

    .line 204
    if-eqz v5, :cond_d

    .line 206
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 209
    move-result-object v5

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    .line 212
    const-string/jumbo v7, "dumpstate_"

    .line 215
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object v6

    .line 225
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_d

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    .line 233
    const-string v5, "/data/log/"

    .line 235
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    move-result-object p1

    .line 249
    move-object v4, p1

    .line 250
    :cond_d
    add-int/2addr v3, v0

    .line 251
    goto :goto_3

    .line 252
    :cond_e
    return-object v4

    .line 253
    :sswitch_data_0
    .sparse-switch
        0x23f1be -> :sswitch_6
        0x23f1dd -> :sswitch_5
        0x23f2b6 -> :sswitch_4
        0x23f351 -> :sswitch_3
        0x23f3ae -> :sswitch_2
        0x23f3cd -> :sswitch_1
        0x23f42a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isNotRescueParty()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/RescueParty;->getRescuePartyReason()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "NONE"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 14
    return v1

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "N|R"

    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    const-string/jumbo v2, "persist.sys.rescue_level"

    .line 25
    const-string v3, "0"

    .line 27
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    const-string/jumbo v2, "sys.reset_reason"

    .line 41
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-boolean v1, p0, Lcom/android/server/BootReceiver;->isCaseByRescueParty:Z

    .line 46
    const/4 p0, 0x0

    .line 47
    return p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p2

    .line 11
    new-instance v0, Lcom/android/server/BootReceiver$3;

    .line 13
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/BootReceiver$3;-><init>(Lcom/android/server/BootReceiver;ZLandroid/content/Context;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    if-eqz p2, :cond_0

    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_0
    const-string p0, "/sys/kernel/tracing/instances/bootreceiver/trace_pipe"

    .line 24
    sget p1, Landroid/system/OsConstants;->O_RDONLY:I

    .line 26
    const/16 p2, 0x180

    .line 28
    invoke-static {p0, p1, p2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 31
    move-result-object p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    new-instance p1, Lcom/android/server/BootReceiver$4;

    .line 34
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 p2, 0x400

    .line 39
    new-array p2, p2, [B

    .line 41
    iput-object p2, p1, Lcom/android/server/BootReceiver$4;->mTraceBuffer:[B

    .line 43
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 54
    move-result-object p2

    .line 55
    const/4 v0, 0x1

    .line 56
    invoke-virtual {p2, p0, v0, p1}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 59
    return-void

    .line 60
    :catch_0
    move-exception p0

    .line 61
    const-string p1, "BootReceiver"

    .line 63
    const-string p2, "Could not open /sys/kernel/tracing/instances/bootreceiver/trace_pipe"

    .line 65
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    return-void
.end method
