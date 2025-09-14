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

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    .line 10
    .line 11
    const/16 p1, 0x800

    .line 12
    .line 13
    new-array p1, p1, [B

    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final logLastKmsg()V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "UTF-8"

    .line 4
    .line 5
    const-string/jumbo v3, "logLastKmsg - New filename is "

    .line 6
    .line 7
    .line 8
    const-string v4, "== dumpstate lastkmsg : "

    .line 9
    .line 10
    new-instance v5, Ljava/io/File;

    .line 11
    .line 12
    const-string v0, "/proc/last_kmsg"

    .line 13
    .line 14
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v6, Ljava/io/File;

    .line 18
    .line 19
    const-string v0, "/proc/reset_summary"

    .line 20
    .line 21
    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v7, Ljava/io/File;

    .line 25
    .line 26
    const-string v0, "/proc/reset_klog"

    .line 27
    .line 28
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v8, Ljava/io/File;

    .line 32
    .line 33
    const-string v0, "/proc/reset_tzlog"

    .line 34
    .line 35
    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v9, Ljava/io/File;

    .line 39
    .line 40
    const-string v0, "/proc/version"

    .line 41
    .line 42
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v10, Ljava/io/File;

    .line 46
    .line 47
    const-string v0, "/proc/auto_comment"

    .line 48
    .line 49
    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Ljava/io/File;

    .line 53
    .line 54
    const-string v11, "/proc/reset_rwc"

    .line 55
    .line 56
    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v11, Ljava/io/File;

    .line 60
    .line 61
    const-string v12, "/proc/reset_history"

    .line 62
    .line 63
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v12, Ljava/io/File;

    .line 67
    .line 68
    const-string v13, "/data/system/users/service/data/eRR.p"

    .line 69
    .line 70
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v13, Ljava/io/File;

    .line 74
    .line 75
    const-string v14, "/data/log/dumpstate_debug_history.lst"

    .line 76
    .line 77
    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v14, Landroid/text/format/Time;

    .line 81
    .line 82
    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v15, "BootReceiver"

    .line 86
    .line 87
    move-object/from16 v16, v8

    .line 88
    .line 89
    const-string/jumbo v8, "logLastKmsg - Start"

    .line 90
    .line 91
    .line 92
    invoke-static {v15, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    .line 96
    .line 97
    .line 98
    const-string/jumbo v8, "ro.boot.hardware"

    .line 99
    .line 100
    .line 101
    move-object/from16 v17, v6

    .line 102
    .line 103
    const/4 v6, 0x0

    .line 104
    invoke-static {v8, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    iget-object v6, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    .line 109
    .line 110
    invoke-static {v6}, Lcom/android/server/BootReceiver;->-$$Nest$mproc_reset_reason(Lcom/android/server/BootReceiver;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    move-object/from16 v18, v11

    .line 115
    .line 116
    const-string v11, "%Y%m%d_%H%M%S"

    .line 117
    .line 118
    invoke-virtual {v14, v11}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 123
    .line 124
    .line 125
    move-result v19

    .line 126
    move-object/from16 v20, v10

    .line 127
    .line 128
    const-string/jumbo v10, "s5e"

    .line 129
    .line 130
    .line 131
    move-object/from16 v21, v13

    .line 132
    .line 133
    const-string/jumbo v13, "exynos"

    .line 134
    .line 135
    .line 136
    move-object/from16 v22, v12

    .line 137
    .line 138
    const-string v12, ".log.gz"

    .line 139
    .line 140
    move-object/from16 v23, v7

    .line 141
    .line 142
    const-string v7, "_"

    .line 143
    .line 144
    move-object/from16 v24, v5

    .line 145
    .line 146
    const-string v5, "/data/log/dumpstate_lastkmsg_"

    .line 147
    .line 148
    if-eqz v19, :cond_2

    .line 149
    .line 150
    move-object/from16 v19, v9

    .line 151
    .line 152
    const/16 v9, 0x400

    .line 153
    .line 154
    move-object/from16 v25, v2

    .line 155
    .line 156
    const/4 v2, 0x0

    .line 157
    :try_start_0
    invoke-static {v0, v9, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    const/4 v2, 0x1

    .line 166
    if-eq v9, v2, :cond_1

    .line 167
    .line 168
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    if-ne v9, v2, :cond_0

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    sput-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    .line 203
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

    .line 208
    .line 209
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    sput-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .line 236
    goto :goto_2

    .line 237
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string/jumbo v9, "readTextFile error"

    .line 240
    .line 241
    .line 242
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v2, "Reset_RWC"

    .line 253
    .line 254
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-static {v0, v7, v6, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    sput-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_2
    move-object/from16 v25, v2

    .line 273
    .line 274
    move-object/from16 v19, v9

    .line 275
    .line 276
    invoke-static {v5, v11, v7, v6, v12}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    sput-object v0, Lcom/android/server/BootReceiver;->logFileKernel:Ljava/lang/String;

    .line 281
    .line 282
    :goto_2
    new-instance v2, Ljava/io/File;

    .line 283
    .line 284
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetlogFileKernel()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->waitUntildebughistoryDone()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    const-string v5, "We waited make debug_history Done for "

    .line 296
    .line 297
    const-string/jumbo v7, "s "

    .line 298
    .line 299
    .line 300
    invoke-static {v0, v5, v7, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    .line 304
    .line 305
    invoke-static {v0}, Lcom/android/server/BootReceiver;->-$$Nest$mwaitUntileRRpDone(Lcom/android/server/BootReceiver;)V

    .line 306
    .line 307
    .line 308
    const/4 v5, 0x0

    .line 309
    :try_start_1
    const-string v0, "%Y-%m-%d %H:%M:%S"

    .line 310
    .line 311
    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    const-string v7, "========================================================\n"

    .line 316
    .line 317
    new-instance v9, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v0, "\n"

    .line 326
    .line 327
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-static {v15, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    new-instance v3, Ljava/io/FileOutputStream;

    .line 354
    .line 355
    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 356
    .line 357
    .line 358
    iput-object v3, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    .line 359
    .line 360
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    .line 361
    .line 362
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    .line 363
    .line 364
    invoke-direct {v3, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 365
    .line 366
    .line 367
    :try_start_2
    new-instance v4, Ljava/util/zip/ZipEntry;

    .line 368
    .line 369
    const-string/jumbo v9, "dumpstate_lastkmsg.lst"

    .line 370
    .line 371
    .line 372
    invoke-direct {v4, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 376
    .line 377
    .line 378
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 387
    .line 388
    .line 389
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 398
    .line 399
    .line 400
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 409
    .line 410
    .line 411
    const-string v0, "\n[Kernel version]: "

    .line 412
    .line 413
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 422
    .line 423
    .line 424
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isFile()Z

    .line 425
    .line 426
    .line 427
    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 428
    const-string/jumbo v4, "unknown"

    .line 429
    .line 430
    .line 431
    if-eqz v0, :cond_3

    .line 432
    .line 433
    :try_start_3
    new-instance v9, Ljava/io/FileInputStream;

    .line 434
    .line 435
    move-object/from16 v11, v19

    .line 436
    .line 437
    invoke-direct {v9, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 438
    .line 439
    .line 440
    :goto_3
    :try_start_4
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 441
    .line 442
    invoke-virtual {v9, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-lez v0, :cond_4

    .line 447
    .line 448
    iget-object v11, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 449
    .line 450
    invoke-virtual {v3, v11, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 451
    .line 452
    .line 453
    goto :goto_3

    .line 454
    :catchall_0
    move-exception v0

    .line 455
    move-object v6, v9

    .line 456
    goto/16 :goto_19

    .line 457
    .line 458
    :catch_1
    move-exception v0

    .line 459
    goto/16 :goto_10

    .line 460
    .line 461
    :catchall_1
    move-exception v0

    .line 462
    :goto_4
    const/4 v6, 0x0

    .line 463
    goto/16 :goto_19

    .line 464
    .line 465
    :catch_2
    move-exception v0

    .line 466
    :goto_5
    const/4 v9, 0x0

    .line 467
    goto/16 :goto_10

    .line 468
    .line 469
    :cond_3
    :try_start_5
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 478
    .line 479
    .line 480
    const/4 v9, 0x0

    .line 481
    :cond_4
    :try_start_6
    const-string v0, "[Build Fingerprint]: "

    .line 482
    .line 483
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 484
    .line 485
    .line 486
    move-result-object v11

    .line 487
    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 492
    .line 493
    .line 494
    const-string/jumbo v0, "ro.build.fingerprint"

    .line 495
    .line 496
    .line 497
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v0, "\n\n"

    .line 510
    .line 511
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 527
    .line 528
    .line 529
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isFile()Z

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-eqz v0, :cond_7

    .line 534
    .line 535
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    .line 539
    .line 540
    invoke-static {}, Lcom/android/server/BootReceiver;->is_store_lastkmsg()I

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    const/4 v4, 0x1

    .line 545
    if-ne v0, v4, :cond_5

    .line 546
    .line 547
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->isFile()Z

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    if-eqz v0, :cond_5

    .line 552
    .line 553
    new-instance v0, Ljava/io/FileInputStream;

    .line 554
    .line 555
    move-object/from16 v4, v23

    .line 556
    .line 557
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 558
    .line 559
    .line 560
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 561
    .line 562
    goto :goto_6

    .line 563
    :cond_5
    new-instance v0, Ljava/io/FileInputStream;

    .line 564
    .line 565
    move-object/from16 v4, v24

    .line 566
    .line 567
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 568
    .line 569
    .line 570
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 571
    .line 572
    :goto_6
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 573
    .line 574
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 575
    .line 576
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    if-lez v0, :cond_6

    .line 581
    .line 582
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 583
    .line 584
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 585
    .line 586
    .line 587
    goto :goto_6

    .line 588
    :cond_6
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 589
    .line 590
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 591
    .line 592
    .line 593
    goto :goto_7

    .line 594
    :cond_7
    const-string v0, "== not found /proc/last_kmsg sysfs\n"

    .line 595
    .line 596
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    invoke-virtual {v7, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 601
    .line 602
    .line 603
    move-result-object v4

    .line 604
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 605
    .line 606
    .line 607
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 608
    .line 609
    .line 610
    move-result-object v4

    .line 611
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 616
    .line 617
    .line 618
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 627
    .line 628
    .line 629
    :goto_7
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 630
    .line 631
    .line 632
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isFile()Z

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    if-eqz v0, :cond_9

    .line 637
    .line 638
    new-instance v0, Ljava/io/FileInputStream;

    .line 639
    .line 640
    move-object/from16 v4, v22

    .line 641
    .line 642
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 643
    .line 644
    .line 645
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 646
    .line 647
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 648
    .line 649
    const-string/jumbo v4, "eRR.p"

    .line 650
    .line 651
    .line 652
    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 656
    .line 657
    .line 658
    :goto_8
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 659
    .line 660
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 661
    .line 662
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    if-lez v0, :cond_8

    .line 667
    .line 668
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 669
    .line 670
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 671
    .line 672
    .line 673
    goto :goto_8

    .line 674
    :cond_8
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 675
    .line 676
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 680
    .line 681
    .line 682
    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isFile()Z

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    if-eqz v0, :cond_b

    .line 687
    .line 688
    new-instance v0, Ljava/io/FileInputStream;

    .line 689
    .line 690
    move-object/from16 v4, v21

    .line 691
    .line 692
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 693
    .line 694
    .line 695
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 696
    .line 697
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 698
    .line 699
    const-string/jumbo v4, "dumpstate_debug_history.lst"

    .line 700
    .line 701
    .line 702
    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 706
    .line 707
    .line 708
    :goto_9
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 709
    .line 710
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 711
    .line 712
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    if-lez v0, :cond_a

    .line 717
    .line 718
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 719
    .line 720
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 721
    .line 722
    .line 723
    goto :goto_9

    .line 724
    :cond_a
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 725
    .line 726
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 730
    .line 731
    .line 732
    :cond_b
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    .line 733
    .line 734
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 735
    .line 736
    .line 737
    invoke-static {}, Lcom/android/server/BootReceiver;->is_store_lastkmsg()I

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    const/4 v4, 0x1

    .line 742
    if-ne v0, v4, :cond_17

    .line 743
    .line 744
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isFile()Z

    .line 745
    .line 746
    .line 747
    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 748
    const-string v4, "MP"

    .line 749
    .line 750
    if-eqz v0, :cond_d

    .line 751
    .line 752
    :try_start_7
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 753
    .line 754
    .line 755
    move-result v0

    .line 756
    if-nez v0, :cond_d

    .line 757
    .line 758
    new-instance v0, Ljava/io/FileInputStream;

    .line 759
    .line 760
    move-object/from16 v7, v20

    .line 761
    .line 762
    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 763
    .line 764
    .line 765
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 766
    .line 767
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 768
    .line 769
    const-string/jumbo v7, "dumpstate_auto_comment.lst"

    .line 770
    .line 771
    .line 772
    invoke-direct {v0, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 776
    .line 777
    .line 778
    :goto_a
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 779
    .line 780
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 781
    .line 782
    invoke-virtual {v0, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 783
    .line 784
    .line 785
    move-result v0

    .line 786
    if-lez v0, :cond_c

    .line 787
    .line 788
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 789
    .line 790
    invoke-virtual {v3, v7, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 791
    .line 792
    .line 793
    goto :goto_a

    .line 794
    :cond_c
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 795
    .line 796
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 797
    .line 798
    .line 799
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 800
    .line 801
    .line 802
    :cond_d
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isFile()Z

    .line 803
    .line 804
    .line 805
    move-result v0

    .line 806
    if-eqz v0, :cond_f

    .line 807
    .line 808
    new-instance v0, Ljava/io/FileInputStream;

    .line 809
    .line 810
    move-object/from16 v7, v18

    .line 811
    .line 812
    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 813
    .line 814
    .line 815
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 816
    .line 817
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 818
    .line 819
    const-string/jumbo v7, "history_of_auto_comment.txt"

    .line 820
    .line 821
    .line 822
    invoke-direct {v0, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 826
    .line 827
    .line 828
    :goto_b
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 829
    .line 830
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 831
    .line 832
    invoke-virtual {v0, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 833
    .line 834
    .line 835
    move-result v0

    .line 836
    if-lez v0, :cond_e

    .line 837
    .line 838
    iget-object v7, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 839
    .line 840
    invoke-virtual {v3, v7, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 841
    .line 842
    .line 843
    goto :goto_b

    .line 844
    :cond_e
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 845
    .line 846
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 850
    .line 851
    .line 852
    :cond_f
    sget-object v0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    .line 853
    .line 854
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 855
    .line 856
    .line 857
    move-result v0

    .line 858
    if-nez v0, :cond_10

    .line 859
    .line 860
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    move-result v0

    .line 864
    if-nez v0, :cond_10

    .line 865
    .line 866
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 867
    .line 868
    const-string/jumbo v4, "store_extra_info.lst"

    .line 869
    .line 870
    .line 871
    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 875
    .line 876
    .line 877
    sget-object v0, Lcom/android/server/BootReceiver;->storeExtraInfo:Ljava/lang/String;

    .line 878
    .line 879
    invoke-static/range {v25 .. v25}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 880
    .line 881
    .line 882
    move-result-object v4

    .line 883
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 891
    .line 892
    .line 893
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfputstoreExtraInfo()V

    .line 894
    .line 895
    .line 896
    :cond_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isFile()Z

    .line 897
    .line 898
    .line 899
    move-result v0

    .line 900
    if-eqz v0, :cond_12

    .line 901
    .line 902
    new-instance v0, Ljava/io/FileInputStream;

    .line 903
    .line 904
    move-object/from16 v4, v17

    .line 905
    .line 906
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 907
    .line 908
    .line 909
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 910
    .line 911
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 912
    .line 913
    const-string/jumbo v4, "reset_summary.html"

    .line 914
    .line 915
    .line 916
    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 920
    .line 921
    .line 922
    :goto_c
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 923
    .line 924
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 925
    .line 926
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 927
    .line 928
    .line 929
    move-result v0

    .line 930
    if-lez v0, :cond_11

    .line 931
    .line 932
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 933
    .line 934
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 935
    .line 936
    .line 937
    goto :goto_c

    .line 938
    :cond_11
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 939
    .line 940
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 941
    .line 942
    .line 943
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 944
    .line 945
    .line 946
    :cond_12
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    .line 947
    .line 948
    .line 949
    move-result v0

    .line 950
    if-eqz v0, :cond_14

    .line 951
    .line 952
    new-instance v0, Ljava/io/FileInputStream;

    .line 953
    .line 954
    move-object/from16 v4, v16

    .line 955
    .line 956
    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 957
    .line 958
    .line 959
    iput-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 960
    .line 961
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 962
    .line 963
    const-string/jumbo v4, "ocimem.lst"

    .line 964
    .line 965
    .line 966
    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 970
    .line 971
    .line 972
    :goto_d
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 973
    .line 974
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 975
    .line 976
    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 977
    .line 978
    .line 979
    move-result v0

    .line 980
    if-lez v0, :cond_13

    .line 981
    .line 982
    iget-object v4, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 983
    .line 984
    invoke-virtual {v3, v4, v5, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 985
    .line 986
    .line 987
    goto :goto_d

    .line 988
    :cond_13
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 989
    .line 990
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 994
    .line 995
    .line 996
    :cond_14
    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 997
    .line 998
    .line 999
    move-result v0

    .line 1000
    const/4 v4, 0x1

    .line 1001
    if-eq v0, v4, :cond_15

    .line 1002
    .line 1003
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1004
    .line 1005
    .line 1006
    move-result v0

    .line 1007
    if-ne v0, v4, :cond_17

    .line 1008
    .line 1009
    :cond_15
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    .line 1010
    .line 1011
    invoke-static {v0, v3}, Lcom/android/server/BootReceiver;->-$$Nest$mlogLastAboxMsg(Lcom/android/server/BootReceiver;Ljava/util/zip/ZipOutputStream;)V

    .line 1012
    .line 1013
    .line 1014
    sget-object v0, Lcom/android/server/BootReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 1015
    .line 1016
    if-eqz v0, :cond_16

    .line 1017
    .line 1018
    const-string v0, "Send lastaboxmsg"

    .line 1019
    .line 1020
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    .line 1022
    .line 1023
    sget-object v0, Lcom/android/server/BootReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 1024
    .line 1025
    const-string/jumbo v4, "lastaboxmsg=1"

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    goto :goto_e

    .line 1032
    :cond_16
    const-string/jumbo v0, "mAudioManager is NULL skip lastaboxmsg"

    .line 1033
    .line 1034
    .line 1035
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1036
    .line 1037
    .line 1038
    :cond_17
    :goto_e
    :try_start_8
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 1039
    .line 1040
    if-eqz v0, :cond_18

    .line 1041
    .line 1042
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1043
    .line 1044
    .line 1045
    :catch_3
    :cond_18
    if-eqz v9, :cond_19

    .line 1046
    .line 1047
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1048
    .line 1049
    .line 1050
    :catch_4
    :cond_19
    :try_start_a
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 1051
    .line 1052
    .line 1053
    :catch_5
    :try_start_b
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    .line 1054
    .line 1055
    if-eqz v0, :cond_1d

    .line 1056
    .line 1057
    :goto_f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 1058
    .line 1059
    .line 1060
    goto :goto_11

    .line 1061
    :catchall_2
    move-exception v0

    .line 1062
    const/4 v3, 0x0

    .line 1063
    goto/16 :goto_4

    .line 1064
    .line 1065
    :catch_6
    move-exception v0

    .line 1066
    const/4 v3, 0x0

    .line 1067
    goto/16 :goto_5

    .line 1068
    .line 1069
    :goto_10
    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1072
    .line 1073
    .line 1074
    const-string/jumbo v6, "logLastKmsg - File copy error"

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v0

    .line 1087
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1088
    .line 1089
    .line 1090
    :try_start_d
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 1091
    .line 1092
    if-eqz v0, :cond_1a

    .line 1093
    .line 1094
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 1095
    .line 1096
    .line 1097
    :catch_7
    :cond_1a
    if-eqz v9, :cond_1b

    .line 1098
    .line 1099
    :try_start_e
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 1100
    .line 1101
    .line 1102
    :catch_8
    :cond_1b
    if-eqz v3, :cond_1c

    .line 1103
    .line 1104
    :try_start_f
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 1105
    .line 1106
    .line 1107
    :catch_9
    :cond_1c
    :try_start_10
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 1108
    .line 1109
    if-eqz v0, :cond_1d

    .line 1110
    .line 1111
    goto :goto_f

    .line 1112
    :catch_a
    :cond_1d
    :goto_11
    const/16 v3, 0x3ef

    .line 1113
    .line 1114
    const/16 v4, 0x3e8

    .line 1115
    .line 1116
    const/16 v6, 0x1a0

    .line 1117
    .line 1118
    :try_start_11
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    invoke-static {v0, v6, v4, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 1123
    .line 1124
    .line 1125
    goto :goto_12

    .line 1126
    :catch_b
    move-exception v0

    .line 1127
    const-string/jumbo v7, "dumpstate_lastkmsg - getCanonicalPath error"

    .line 1128
    .line 1129
    .line 1130
    invoke-static {v7, v0, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    :goto_12
    new-instance v7, Ljava/io/File;

    .line 1134
    .line 1135
    const-string v0, "/data/log/dumpstate_latest_lastkmsg.log.gz"

    .line 1136
    .line 1137
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    :try_start_12
    new-instance v8, Ljava/io/FileInputStream;

    .line 1141
    .line 1142
    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 1143
    .line 1144
    .line 1145
    :try_start_13
    new-instance v2, Ljava/io/FileOutputStream;

    .line 1146
    .line 1147
    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 1148
    .line 1149
    .line 1150
    :goto_13
    :try_start_14
    iget-object v0, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 1151
    .line 1152
    const/16 v9, 0x800

    .line 1153
    .line 1154
    invoke-virtual {v8, v0, v5, v9}, Ljava/io/FileInputStream;->read([BII)I

    .line 1155
    .line 1156
    .line 1157
    move-result v0

    .line 1158
    const/4 v9, -0x1

    .line 1159
    if-eq v0, v9, :cond_1e

    .line 1160
    .line 1161
    iget-object v9, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->buffer:[B

    .line 1162
    .line 1163
    invoke-virtual {v2, v9, v5, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1164
    .line 1165
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

    .line 1173
    .line 1174
    .line 1175
    :catch_d
    :goto_14
    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_11

    .line 1176
    .line 1177
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

    .line 1194
    .line 1195
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1196
    .line 1197
    .line 1198
    const-string/jumbo v5, "latest LastKmsg - File copy error"

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    .line 1203
    .line 1204
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v0

    .line 1211
    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 1212
    .line 1213
    .line 1214
    if-eqz v8, :cond_1f

    .line 1215
    .line 1216
    :try_start_18
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .line 1217
    .line 1218
    .line 1219
    :catch_10
    :cond_1f
    if-eqz v2, :cond_20

    .line 1220
    .line 1221
    goto :goto_14

    .line 1222
    :catch_11
    :cond_20
    :goto_16
    :try_start_19
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0

    .line 1226
    invoke-static {v0, v6, v4, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_12

    .line 1227
    .line 1228
    .line 1229
    goto :goto_17

    .line 1230
    :catch_12
    move-exception v0

    .line 1231
    const-string/jumbo v1, "dumpstate_latest_lastkmsg - getCanonicalPath error"

    .line 1232
    .line 1233
    .line 1234
    invoke-static {v1, v0, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 1235
    .line 1236
    .line 1237
    :goto_17
    const-string/jumbo v0, "logLastKmsg - Save Complete"

    .line 1238
    .line 1239
    .line 1240
    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    .line 1242
    .line 1243
    return-void

    .line 1244
    :goto_18
    if-eqz v6, :cond_21

    .line 1245
    .line 1246
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_13

    .line 1247
    .line 1248
    .line 1249
    :catch_13
    :cond_21
    if-eqz v2, :cond_22

    .line 1250
    .line 1251
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_14

    .line 1252
    .line 1253
    .line 1254
    :catch_14
    :cond_22
    throw v0

    .line 1255
    :goto_19
    :try_start_1c
    iget-object v2, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fin:Ljava/io/FileInputStream;

    .line 1256
    .line 1257
    if-eqz v2, :cond_23

    .line 1258
    .line 1259
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_15

    .line 1260
    .line 1261
    .line 1262
    :catch_15
    :cond_23
    if-eqz v6, :cond_24

    .line 1263
    .line 1264
    :try_start_1d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_16

    .line 1265
    .line 1266
    .line 1267
    :catch_16
    :cond_24
    if-eqz v3, :cond_25

    .line 1268
    .line 1269
    :try_start_1e
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_17

    .line 1270
    .line 1271
    .line 1272
    :catch_17
    :cond_25
    :try_start_1f
    iget-object v1, v1, Lcom/android/server/BootReceiver$SaveLastkmsg;->fout:Ljava/io/FileOutputStream;

    .line 1273
    .line 1274
    if-eqz v1, :cond_26

    .line 1275
    .line 1276
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_18

    .line 1277
    .line 1278
    .line 1279
    :catch_18
    :cond_26
    throw v0
.end method

.method public final run()V
    .locals 10

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/log"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    const-string v4, "BootReceiver"

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    const-string/jumbo v0, "trimLastKmsg - logFolder mkdir failed"

    .line 28
    .line 29
    .line 30
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    if-nez v1, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/android/server/BootReceiver$Dump;

    .line 43
    .line 44
    new-instance v5, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    const/4 v6, 0x5

    .line 50
    const-string/jumbo v7, "lastkmsg"

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v6, v7, v5}, Lcom/android/server/BootReceiver$Dump;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance v2, Lcom/android/server/BootReceiver$Dump;

    .line 60
    .line 61
    new-instance v5, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string/jumbo v6, "latest_lastkmsg"

    .line 67
    .line 68
    .line 69
    invoke-direct {v2, v3, v6, v5}, Lcom/android/server/BootReceiver$Dump;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/android/server/BootReceiver$Dump;

    .line 90
    .line 91
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->this$0:Lcom/android/server/BootReceiver;

    .line 92
    .line 93
    iget-object v6, v2, Lcom/android/server/BootReceiver$Dump;->fileList:Ljava/util/List;

    .line 94
    .line 95
    iget v7, v2, Lcom/android/server/BootReceiver$Dump;->listMax:I

    .line 96
    .line 97
    iget-object v8, v2, Lcom/android/server/BootReceiver$Dump;->dumpInFix:Ljava/lang/String;

    .line 98
    .line 99
    sget v9, Lcom/android/server/BootReceiver;->LOG_SIZE:I

    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v6, v7, v8}, Lcom/android/server/BootReceiver;->_trimADumpFile([Ljava/io/File;Ljava/util/List;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception v5

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string/jumbo v7, "trim"

    .line 112
    .line 113
    .line 114
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v2, v2, Lcom/android/server/BootReceiver$Dump;->dumpInFix:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v2, " error"

    .line 123
    .line 124
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/BootReceiver$SaveLastkmsg;->logLastKmsg()V

    .line 139
    .line 140
    .line 141
    iput-boolean v3, p0, Lcom/android/server/BootReceiver$SaveLastkmsg;->isSaveLastkmsgDone:Z

    .line 142
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

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    :try_start_0
    const-string/jumbo v1, "sys.boot.debug_history"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    const-wide/16 v1, 0x3e8

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const-string/jumbo v0, "waitUntildebughistoryDone error"

    .line 28
    .line 29
    .line 30
    const-string v1, "BootReceiver"

    .line 31
    .line 32
    invoke-static {p0, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    const/4 p0, -0x1

    .line 36
    return p0
.end method
