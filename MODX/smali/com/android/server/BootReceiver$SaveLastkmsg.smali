.class public final Lcom/android/server/BootReceiver$SaveLastkmsg;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final buffer:[B

.field public fin:Ljava/io/FileInputStream;

.field public fout:Ljava/io/FileOutputStream;

.field public isSaveLastkmsgDone:Z

.field public final synthetic this$0:Lcom/android/server/BootReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/BootReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 9
    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    .line 11
    const/16 p1, 0x800

    .line 13
    new-array p1, p1, [B

    .line 15
    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    .line 20
    return-void
.end method


# virtual methods
.method public final logLastKmsg()V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "UTF-8"

    .line 5
    const-string/jumbo v3, "logLastKmsg - New filename is "

    .line 8
    const-string v4, "== dumpstate lastkmsg : "

    .line 10
    new-instance v5, Ljava/io/File;

    .line 12
    const-string v0, "/proc/last_kmsg"

    .line 14
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v6, Ljava/io/File;

    .line 19
    const-string v0, "/proc/reset_summary"

    .line 21
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v7, Ljava/io/File;

    .line 26
    const-string v0, "/proc/reset_klog"

    .line 28
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v8, Ljava/io/File;

    .line 33
    const-string v0, "/proc/reset_tzlog"

    .line 35
    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v9, Ljava/io/File;

    .line 40
    const-string v0, "/proc/version"

    .line 42
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v10, Ljava/io/File;

    .line 47
    const-string v0, "/proc/auto_comment"

    .line 49
    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/io/File;

    .line 54
    const-string v11, "/proc/reset_rwc"

    .line 56
    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v11, Ljava/io/File;

    .line 61
    const-string v12, "/proc/reset_history"

    .line 63
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v12, Ljava/io/File;

    .line 68
    const-string v13, "/data/system/users/service/data/eRR.p"

    .line 70
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v13, Ljava/io/File;

    .line 75
    const-string v14, "/data/log/dumpstate_debug_history.lst"

    .line 77
    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    new-instance v14, Landroid/text/format/Time;

    .line 82
    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 85
    const-string v15, "BootReceiver"

    .line 87
    move-object/from16 v16, v8

    .line 89
    const-string/jumbo v8, "logLastKmsg - Start"

    .line 92
    invoke-static {v15, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    .line 98
    const-string/jumbo v8, "ro.boot.hardware"

    .line 101
    move-object/from16 v17, v6

    .line 103
    const/4 v6, 0x0

    .line 104
    invoke-static {v8, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v8

    .line 108
    iget-object v6, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    .line 110
    invoke-static {v6}, Lcom/android/server/BootReceiver;->-$$Nest$mproc_reset_reason(Lcom/android/server/BootReceiver;)Ljava/lang/String;

    .line 113
    move-result-object v6

    .line 114
    move-object/from16 v18, v11

    .line 116
    const-string v11, "%Y%m%d_%H%M%S"

    .line 118
    invoke-virtual {v14, v11}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object v11

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 125
    move-result v19

    .line 126
    move-object/from16 v20, v10

    .line 128
    const-string/jumbo v10, "s5e"

    .line 131
    move-object/from16 v21, v13

    .line 133
    const-string/jumbo v13, "exynos"

    .line 136
    move-object/from16 v22, v12

    .line 138
    const-string v12, ".log.gz"

    .line 140
    move-object/from16 v23, v7

    .line 142
    const-string v7, "_"

    .line 144
    move-object/from16 v24, v5

    .line 146
    const-string v5, "/data/log/dumpstate_lastkmsg_"

    .line 148
    if-eqz v19, :cond_2

    .line 150
    move-object/from16 v19, v9

    .line 152
    const/16 v9, 0x400

    .line 154
    move-object/from16 v25, v2

    .line 156
    const/4 v2, 0x0

    .line 157
    :try_start_0
    invoke-static {v0, v9, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 164
    move-result v9

    .line 165
    const/4 v2, 0x1

    .line 166
    if-eq v9, v2, :cond_1

    .line 168
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 171
    move-result v9

    .line 172
    if-ne v9, v2, :cond_0

    .line 174
    goto :goto_0

    .line 175
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object v0

    .line 202
    sput-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    .line 204
    goto :goto_2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    goto :goto_1

    .line 207
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v0

    .line 234
    sput-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    goto :goto_2

    .line 237
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 239
    const-string/jumbo v9, "readTextFile error"

    .line 242
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    move-result-object v0

    .line 252
    const-string v2, "Reset_RWC"

    .line 254
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    .line 259
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-static {v0, v7, v6, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    move-result-object v0

    .line 269
    sput-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    .line 271
    goto :goto_2

    .line 272
    :cond_2
    move-object/from16 v25, v2

    .line 274
    move-object/from16 v19, v9

    .line 276
    invoke-static {v5, v11, v7, v6, v12}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    move-result-object v0

    .line 280
    sput-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    .line 282
    :goto_2
    new-instance v2, Ljava/io/File;

    .line 284
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetlogFileKernel()Ljava/lang/String;

    .line 287
    move-result-object v0

    .line 288
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->waitUntildebughistoryDone()I

    .line 294
    move-result v0

    .line 295
    const-string v5, "We waited make debug_history Done for "

    .line 297
    const-string/jumbo v7, "s "

    .line 300
    invoke-static {v0, v5, v7, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    .line 305
    invoke-static {v0}, Lcom/android/server/BootReceiver;->-$$Nest$mwaitUntileRRpDone(Lcom/android/server/BootReceiver;)V

    .line 308
    const/4 v5, 0x0

    .line 309
    :try_start_1
    const-string v0, "%Y-%m-%d %H:%M:%S"

    .line 311
    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    move-result-object v0

    .line 315
    const-string v7, "========================================================\n"

    .line 317
    new-instance v9, Ljava/lang/StringBuilder;

    .line 319
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v0, "\n"

    .line 327
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    move-result-object v0

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    .line 336
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    move-result-object v3

    .line 350
    invoke-static {v15, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v3, Ljava/io/FileOutputStream;

    .line 355
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 358
    iput-object v3, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    .line 360
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    .line 362
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    .line 364
    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 367
    :try_start_2
    new-instance v4, Ljava/util/zip/ZipEntry;

    .line 369
    const-string/jumbo v9, "dumpstate_lastkmsg.lst"

    .line 372
    invoke-direct {v4, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 378
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 381
    move-result-object v4

    .line 382
    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 385
    move-result-object v4

    .line 386
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 389
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 392
    move-result-object v4

    .line 393
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 400
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 411
    const-string v0, "\n[Kernel version]: "

    .line 413
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 424
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isFile()Z

    .line 427
    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 428
    const-string/jumbo v4, "unknown"

    .line 431
    if-eqz v0, :cond_3

    .line 433
    :try_start_3
    new-instance v9, Ljava/io/FileInputStream;

    .line 435
    move-object/from16 v11, v19

    .line 437
    invoke-direct {v9, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 440
    :goto_3
    :try_start_4
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 442
    invoke-virtual {v9, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 445
    move-result v0

    .line 446
    if-lez v0, :cond_4

    .line 448
    iget-object v11, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 450
    invoke-virtual {v3, v11, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 453
    goto :goto_3

    .line 454
    :catchall_0
    move-exception v0

    .line 455
    move-object v6, v9

    .line 456
    goto/16 :goto_19

    .line 458
    :catch_1
    move-exception v0

    .line 459
    goto/16 :goto_10

    .line 461
    :catchall_1
    move-exception v0

    .line 462
    :goto_4
    const/4 v6, 0x0

    .line 463
    goto/16 :goto_19

    .line 465
    :catch_2
    move-exception v0

    .line 466
    :goto_5
    const/4 v9, 0x0

    .line 467
    goto/16 :goto_10

    .line 469
    :cond_3
    :try_start_5
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 476
    move-result-object v0

    .line 477
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 480
    const/4 v9, 0x0

    .line 481
    :cond_4
    :try_start_6
    const-string v0, "[Build Fingerprint]: "

    .line 483
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 486
    move-result-object v11

    .line 487
    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 494
    const-string/jumbo v0, "ro.build.fingerprint"

    .line 497
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 500
    move-result-object v0

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    .line 503
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string v0, "\n\n"

    .line 511
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    move-result-object v0

    .line 518
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 521
    move-result-object v4

    .line 522
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 525
    move-result-object v0

    .line 526
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 529
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isFile()Z

    .line 532
    move-result v0

    .line 533
    if-eqz v0, :cond_7

    .line 535
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    .line 537
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    invoke-static {}, Lcom/android/server/BootReceiver;->is_store_lastkmsg()I

    .line 543
    move-result v0

    .line 544
    const/4 v4, 0x1

    .line 545
    if-ne v0, v4, :cond_5

    .line 547
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->isFile()Z

    .line 550
    move-result v0

    .line 551
    if-eqz v0, :cond_5

    .line 553
    new-instance v0, Ljava/io/FileInputStream;

    .line 555
    move-object/from16 v4, v23

    .line 557
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 560
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 562
    goto :goto_6

    .line 563
    :cond_5
    new-instance v0, Ljava/io/FileInputStream;

    .line 565
    move-object/from16 v4, v24

    .line 567
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 570
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 572
    :goto_6
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 574
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 576
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 579
    move-result v0

    .line 580
    if-lez v0, :cond_6

    .line 582
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 584
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 587
    goto :goto_6

    .line 588
    :cond_6
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 590
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 593
    goto :goto_7

    .line 594
    :cond_7
    const-string v0, "== not found /proc/last_kmsg sysfs\n"

    .line 596
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 599
    move-result-object v4

    .line 600
    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 603
    move-result-object v4

    .line 604
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 607
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 610
    move-result-object v4

    .line 611
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 614
    move-result-object v0

    .line 615
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 618
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 621
    move-result-object v0

    .line 622
    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 625
    move-result-object v0

    .line 626
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 629
    :goto_7
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 632
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isFile()Z

    .line 635
    move-result v0

    .line 636
    if-eqz v0, :cond_9

    .line 638
    new-instance v0, Ljava/io/FileInputStream;

    .line 640
    move-object/from16 v4, v22

    .line 642
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 645
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 647
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 649
    const-string/jumbo v4, "eRR.p"

    .line 652
    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 658
    :goto_8
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 660
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 662
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 665
    move-result v0

    .line 666
    if-lez v0, :cond_8

    .line 668
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 670
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 673
    goto :goto_8

    .line 674
    :cond_8
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 676
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 679
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 682
    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isFile()Z

    .line 685
    move-result v0

    .line 686
    if-eqz v0, :cond_b

    .line 688
    new-instance v0, Ljava/io/FileInputStream;

    .line 690
    move-object/from16 v4, v21

    .line 692
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 695
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 697
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 699
    const-string/jumbo v4, "dumpstate_debug_history.lst"

    .line 702
    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 708
    :goto_9
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 710
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 712
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 715
    move-result v0

    .line 716
    if-lez v0, :cond_a

    .line 718
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 720
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 723
    goto :goto_9

    .line 724
    :cond_a
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 726
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 729
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 732
    :cond_b
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    .line 734
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 737
    invoke-static {}, Lcom/android/server/BootReceiver;->is_store_lastkmsg()I

    .line 740
    move-result v0

    .line 741
    const/4 v4, 0x1

    .line 742
    if-ne v0, v4, :cond_17

    .line 744
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isFile()Z

    .line 747
    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 748
    const-string v4, "MP"

    .line 750
    if-eqz v0, :cond_d

    .line 752
    :try_start_7
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    move-result v0

    .line 756
    if-nez v0, :cond_d

    .line 758
    new-instance v0, Ljava/io/FileInputStream;

    .line 760
    move-object/from16 v7, v20

    .line 762
    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 765
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 767
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 769
    const-string/jumbo v7, "dumpstate_auto_comment.lst"

    .line 772
    invoke-direct {v0, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 778
    :goto_a
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 780
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 782
    invoke-virtual {v0, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 785
    move-result v0

    .line 786
    if-lez v0, :cond_c

    .line 788
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 790
    invoke-virtual {v3, v7, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 793
    goto :goto_a

    .line 794
    :cond_c
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 796
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 799
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 802
    :cond_d
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isFile()Z

    .line 805
    move-result v0

    .line 806
    if-eqz v0, :cond_f

    .line 808
    new-instance v0, Ljava/io/FileInputStream;

    .line 810
    move-object/from16 v7, v18

    .line 812
    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 815
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 817
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 819
    const-string/jumbo v7, "history_of_auto_comment.txt"

    .line 822
    invoke-direct {v0, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 828
    :goto_b
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 830
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 832
    invoke-virtual {v0, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 835
    move-result v0

    .line 836
    if-lez v0, :cond_e

    .line 838
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 840
    invoke-virtual {v3, v7, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 843
    goto :goto_b

    .line 844
    :cond_e
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 846
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 849
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 852
    :cond_f
    sget-object v0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    .line 854
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 857
    move-result v0

    .line 858
    if-nez v0, :cond_10

    .line 860
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 863
    move-result v0

    .line 864
    if-nez v0, :cond_10

    .line 866
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 868
    const-string/jumbo v4, "store_extra_info.lst"

    .line 871
    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 877
    sget-object v0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    .line 879
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 882
    move-result-object v4

    .line 883
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 886
    move-result-object v0

    .line 887
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 890
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 893
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfputstoreExtraInfo()V

    .line 896
    :cond_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isFile()Z

    .line 899
    move-result v0

    .line 900
    if-eqz v0, :cond_12

    .line 902
    new-instance v0, Ljava/io/FileInputStream;

    .line 904
    move-object/from16 v4, v17

    .line 906
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 909
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 911
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 913
    const-string/jumbo v4, "reset_summary.html"

    .line 916
    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 922
    :goto_c
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 924
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 926
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 929
    move-result v0

    .line 930
    if-lez v0, :cond_11

    .line 932
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 934
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 937
    goto :goto_c

    .line 938
    :cond_11
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 940
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 943
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 946
    :cond_12
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    .line 949
    move-result v0

    .line 950
    if-eqz v0, :cond_14

    .line 952
    new-instance v0, Ljava/io/FileInputStream;

    .line 954
    move-object/from16 v4, v16

    .line 956
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 959
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 961
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 963
    const-string/jumbo v4, "ocimem.lst"

    .line 966
    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 972
    :goto_d
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 974
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 976
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 979
    move-result v0

    .line 980
    if-lez v0, :cond_13

    .line 982
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 984
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 987
    goto :goto_d

    .line 988
    :cond_13
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 990
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 993
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 996
    :cond_14
    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 999
    move-result v0

    .line 1000
    const/4 v4, 0x1

    .line 1001
    if-eq v0, v4, :cond_15

    .line 1003
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1006
    move-result v0

    .line 1007
    if-ne v0, v4, :cond_17

    .line 1009
    :cond_15
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    .line 1011
    invoke-static {v0, v3}, Lcom/android/server/BootReceiver;->-$$Nest$mlogLastAboxMsg(Lcom/android/server/BootReceiver;Ljava/util/zip/ZipOutputStream;)V

    .line 1014
    sget-object v0, Lcom/android/server/BootReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 1016
    if-eqz v0, :cond_16

    .line 1018
    const-string v0, "Send lastaboxmsg"

    .line 1020
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    sget-object v0, Lcom/android/server/BootReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 1025
    const-string/jumbo v4, "lastaboxmsg=1"

    .line 1028
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1031
    goto :goto_e

    .line 1032
    :cond_16
    const-string/jumbo v0, "mAudioManager is NULL skip lastaboxmsg"

    .line 1035
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1038
    :cond_17
    :goto_e
    :try_start_8
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 1040
    if-eqz v0, :cond_18

    .line 1042
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1045
    :catch_3
    :cond_18
    if-eqz v9, :cond_19

    .line 1047
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1050
    :catch_4
    :cond_19
    :try_start_a
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 1053
    :catch_5
    :try_start_b
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    .line 1055
    if-eqz v0, :cond_1d

    .line 1057
    :goto_f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 1060
    goto :goto_11

    .line 1061
    :catchall_2
    move-exception v0

    .line 1062
    const/4 v3, 0x0

    .line 1063
    goto/16 :goto_4

    .line 1065
    :catch_6
    move-exception v0

    .line 1066
    const/4 v3, 0x0

    .line 1067
    goto/16 :goto_5

    .line 1069
    :goto_10
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1071
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1074
    const-string/jumbo v6, "logLastKmsg - File copy error"

    .line 1077
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1083
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1086
    move-result-object v0

    .line 1087
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1090
    :try_start_d
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 1092
    if-eqz v0, :cond_1a

    .line 1094
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 1097
    :catch_7
    :cond_1a
    if-eqz v9, :cond_1b

    .line 1099
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 1102
    :catch_8
    :cond_1b
    if-eqz v3, :cond_1c

    .line 1104
    :try_start_f
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 1107
    :catch_9
    :cond_1c
    :try_start_10
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 1109
    if-eqz v0, :cond_1d

    .line 1111
    goto :goto_f

    .line 1112
    :catch_a
    :cond_1d
    :goto_11
    const/16 v3, 0x3ef

    .line 1114
    const/16 v4, 0x3e8

    .line 1116
    const/16 v6, 0x1a0

    .line 1118
    :try_start_11
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 1121
    move-result-object v0

    .line 1122
    invoke-static {v0, v6, v4, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 1125
    goto :goto_12

    .line 1126
    :catch_b
    move-exception v0

    .line 1127
    const-string/jumbo v7, "dumpstate_lastkmsg - getCanonicalPath error"

    .line 1130
    invoke-static {v7, v0, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 1133
    :goto_12
    new-instance v7, Ljava/io/File;

    .line 1135
    const-string v0, "/data/log/dumpstate_latest_lastkmsg.log.gz"

    .line 1137
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1140
    :try_start_12
    new-instance v8, Ljava/io/FileInputStream;

    .line 1142
    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 1145
    :try_start_13
    new-instance v2, Ljava/io/FileOutputStream;

    .line 1147
    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 1150
    :goto_13
    :try_start_14
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 1152
    const/16 v9, 0x800

    .line 1154
    invoke-virtual {v8, v0, v5, v9}, Ljava/io/FileInputStream;->read([BII)I

    .line 1157
    move-result v0

    .line 1158
    const/4 v9, -0x1

    .line 1159
    if-eq v0, v9, :cond_1e

    .line 1161
    iget-object v9, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 1163
    invoke-virtual {v2, v9, v5, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1166
    goto :goto_13

    .line 1167
    :catchall_3
    move-exception v0

    .line 1168
    move-object v6, v8

    .line 1169
    goto :goto_18

    .line 1170
    :catch_c
    move-exception v0

    .line 1171
    goto :goto_15

    .line 1172
    :cond_1e
    :try_start_15
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    .line 1175
    :catch_d
    :goto_14
    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11

    .line 1178
    goto :goto_16

    .line 1179
    :catchall_4
    move-exception v0

    .line 1180
    move-object v6, v8

    .line 1181
    const/4 v2, 0x0

    .line 1182
    goto :goto_18

    .line 1183
    :catch_e
    move-exception v0

    .line 1184
    const/4 v2, 0x0

    .line 1185
    goto :goto_15

    .line 1186
    :catchall_5
    move-exception v0

    .line 1187
    const/4 v2, 0x0

    .line 1188
    const/4 v6, 0x0

    .line 1189
    goto :goto_18

    .line 1190
    :catch_f
    move-exception v0

    .line 1191
    const/4 v2, 0x0

    .line 1192
    const/4 v8, 0x0

    .line 1193
    :goto_15
    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1195
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1198
    const-string/jumbo v5, "latest LastKmsg - File copy error"

    .line 1201
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1210
    move-result-object v0

    .line 1211
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 1214
    if-eqz v8, :cond_1f

    .line 1216
    :try_start_18
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .line 1219
    :catch_10
    :cond_1f
    if-eqz v2, :cond_20

    .line 1221
    goto :goto_14

    .line 1222
    :catch_11
    :cond_20
    :goto_16
    :try_start_19
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 1225
    move-result-object v0

    .line 1226
    invoke-static {v0, v6, v4, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_12

    .line 1229
    goto :goto_17

    .line 1230
    :catch_12
    move-exception v0

    .line 1231
    const-string/jumbo v1, "dumpstate_latest_lastkmsg - getCanonicalPath error"

    .line 1234
    invoke-static {v1, v0, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 1237
    :goto_17
    const-string/jumbo v0, "logLastKmsg - Save Complete"

    .line 1240
    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-void

    .line 1244
    :goto_18
    if-eqz v6, :cond_21

    .line 1246
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_13

    .line 1249
    :catch_13
    :cond_21
    if-eqz v2, :cond_22

    .line 1251
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_14

    .line 1254
    :catch_14
    :cond_22
    throw v0

    .line 1255
    :goto_19
    :try_start_1c
    iget-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 1257
    if-eqz v2, :cond_23

    .line 1259
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_15

    .line 1262
    :catch_15
    :cond_23
    if-eqz v6, :cond_24

    .line 1264
    :try_start_1d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_16

    .line 1267
    :catch_16
    :cond_24
    if-eqz v3, :cond_25

    .line 1269
    :try_start_1e
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_17

    .line 1272
    :catch_17
    :cond_25
    :try_start_1f
    iget-object v1, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    .line 1274
    if-eqz v1, :cond_26

    .line 1276
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_18

    .line 1279
    :catch_18
    :cond_26
    throw v0
.end method

.method public final run()V
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/data/log"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    const-string v4, "BootReceiver"

    .line 19
    if-nez v2, :cond_0

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 27
    const-string/jumbo v0, "trimLastKmsg - logFolder mkdir failed"

    .line 30
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    if-nez v1, :cond_1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v2, Lcom/android/server/BootReceiver$Dump;

    .line 44
    new-instance v5, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 49
    const/4 v6, 0x5

    .line 50
    const-string/jumbo v7, "lastkmsg"

    .line 53
    invoke-direct {v2, v6, v7, v5}, Lcom/android/server/BootReceiver$Dump;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 56
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v2, Lcom/android/server/BootReceiver$Dump;

    .line 61
    new-instance v5, Ljava/util/ArrayList;

    .line 63
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 66
    const-string/jumbo v6, "latest_lastkmsg"

    .line 69
    invoke-direct {v2, v3, v6, v5}, Lcom/android/server/BootReceiver$Dump;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 72
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v0

    .line 79
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/android/server/BootReceiver$Dump;

    .line 91
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    .line 93
    iget-object v6, v2, Lcom/android/server/BootReceiver$Dump;->fileList:Ljava/util/List;

    .line 95
    iget v7, v2, Lcom/android/server/BootReceiver$Dump;->listMax:I

    .line 97
    iget-object v8, v2, Lcom/android/server/BootReceiver$Dump;->dumpInFix:Ljava/lang/String;

    .line 99
    sget v9, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 101
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    invoke-static {v1, v6, v7, v8}, Lcom/android/server/BootReceiver;->_trimADumpFile([Ljava/io/File;Ljava/util/List;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception v5

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v7, "trim"

    .line 114
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v2, v2, Lcom/android/server/BootReceiver$Dump;->dumpInFix:Ljava/lang/String;

    .line 119
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v2, " error"

    .line 124
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v2

    .line 134
    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    goto :goto_0

    .line 138
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->logLastKmsg()V

    .line 141
    iput-boolean v3, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    .line 143
    return-void
.end method

.method public final waitUntildebughistoryDone()I
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    move v0, p0

    .line 3
    :goto_0
    const/16 v1, 0x1e

    .line 5
    if-ge v0, v1, :cond_1

    .line 7
    :try_start_0
    const-string/jumbo v1, "sys.boot.debug_history"

    .line 10
    invoke-static {v1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v1, v2, :cond_0

    .line 17
    return v0

    .line 18
    :cond_0
    const-wide/16 v1, 0x3e8

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const-string/jumbo v0, "waitUntildebughistoryDone error"

    .line 30
    const-string v1, "BootReceiver"

    .line 32
    invoke-static {p0, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_1
    const/4 p0, -0x1

    .line 36
    return p0
.end method
