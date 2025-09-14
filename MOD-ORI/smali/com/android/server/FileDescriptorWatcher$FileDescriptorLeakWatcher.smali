.class public final Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    const-string p0, "Watchdog:FileDescriptorWatcher"

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    const-string v1, "/proc/self/fd"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, -0x1

    .line 19
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, ""

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 27
    .line 28
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v5, "===== fd_list: "

    .line 37
    .line 38
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Ljava/util/Date;

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, "\n"

    .line 58
    .line 59
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v5, "Length: "

    .line 72
    .line 73
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    array-length v5, v0

    .line 93
    move v6, v4

    .line 94
    :goto_1
    if-ge v6, v5, :cond_1

    .line 95
    .line 96
    aget-object v7, v0, v6

    .line 97
    .line 98
    :try_start_0
    new-instance v8, Ljava/io/File;

    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-static {v9}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v9, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v10, " -> "

    .line 124
    .line 125
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catch_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v7, " -> readlink error\n"

    .line 159
    .line 160
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 174
    .line 175
    new-instance v5, Ljava/io/FileReader;

    .line 176
    .line 177
    const-string v6, "/proc/self/maps"

    .line 178
    .line 179
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 180
    .line 181
    invoke-direct {v5, v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 182
    .line 183
    .line 184
    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    .line 186
    .line 187
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    const-string v6, "\n=====system_server MAPS info=====\n"

    .line 192
    .line 193
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    :goto_3
    if-eqz v5, :cond_2

    .line 197
    .line 198
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    goto :goto_3

    .line 209
    :catchall_0
    move-exception v5

    .line 210
    goto :goto_4

    .line 211
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 212
    .line 213
    .line 214
    goto :goto_6

    .line 215
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :catchall_1
    move-exception v0

    .line 220
    :try_start_5
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 221
    .line 222
    .line 223
    :goto_5
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 224
    :catch_1
    const-string v0, "Failed to write system_server MAPS info"

    .line 225
    .line 226
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    :goto_6
    const/4 v0, 0x0

    .line 230
    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    const-string/jumbo v6, "ps -A -o PID -o NAME"

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 238
    .line 239
    .line 240
    move-result-object v5
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 241
    :try_start_7
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 242
    .line 243
    const-wide/16 v7, 0x5

    .line 244
    .line 245
    invoke-virtual {v5, v7, v8, v6}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-nez v6, :cond_3

    .line 250
    .line 251
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 252
    .line 253
    .line 254
    :goto_7
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 255
    .line 256
    .line 257
    goto :goto_a

    .line 258
    :catchall_2
    move-exception p0

    .line 259
    goto/16 :goto_14

    .line 260
    .line 261
    :catch_2
    move-object v6, v0

    .line 262
    goto :goto_9

    .line 263
    :cond_3
    :try_start_9
    new-instance v6, Ljava/io/BufferedReader;

    .line 264
    .line 265
    new-instance v7, Ljava/io/InputStreamReader;

    .line 266
    .line 267
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 272
    .line 273
    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 274
    .line 275
    .line 276
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 277
    .line 278
    .line 279
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    const-string v8, "\n=====all Process Status info (\'ps -A -o PID -o NAME\')=====\n"

    .line 284
    .line 285
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    :goto_8
    if-eqz v7, :cond_4

    .line 289
    .line 290
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v7
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 300
    goto :goto_8

    .line 301
    :catchall_3
    move-exception p0

    .line 302
    move-object v0, v6

    .line 303
    goto/16 :goto_14

    .line 304
    .line 305
    :cond_4
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 306
    .line 307
    .line 308
    goto :goto_7

    .line 309
    :catchall_4
    move-exception p0

    .line 310
    move-object v5, v0

    .line 311
    goto/16 :goto_14

    .line 312
    .line 313
    :catch_3
    move-object v5, v0

    .line 314
    move-object v6, v5

    .line 315
    :catch_4
    :goto_9
    :try_start_c
    const-string v3, "Failed to write all Process Status info"

    .line 316
    .line 317
    invoke-static {p0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 318
    .line 319
    .line 320
    if-eqz v6, :cond_5

    .line 321
    .line 322
    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 323
    .line 324
    .line 325
    :cond_5
    if-eqz v5, :cond_6

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :catch_5
    :cond_6
    :goto_a
    const-string v3, "!@ The number of fd in system_server is "

    .line 329
    .line 330
    const-string v5, ", so we make fd_list.txt file for debugging."

    .line 331
    .line 332
    invoke-static {v1, v3, v5, p0}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string v1, "FD_LIST_INFO **********\n"

    .line 336
    .line 337
    :try_start_e
    new-instance v3, Ljava/io/File;

    .line 338
    .line 339
    const-string v5, "/data/log/fd_list.txt"

    .line 340
    .line 341
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    if-nez v5, :cond_7

    .line 349
    .line 350
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    if-nez v5, :cond_7

    .line 355
    .line 356
    const-string v0, "Failed to create fd_list.txt"

    .line 357
    .line 358
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 359
    .line 360
    .line 361
    goto/16 :goto_13

    .line 362
    .line 363
    :cond_7
    :try_start_f
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 364
    .line 365
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 366
    .line 367
    .line 368
    :try_start_10
    new-instance v6, Landroid/util/Base64OutputStream;

    .line 369
    .line 370
    invoke-direct {v6, v5, v4}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 371
    .line 372
    .line 373
    :try_start_11
    new-instance v7, Ljava/io/BufferedWriter;

    .line 374
    .line 375
    new-instance v8, Ljava/io/FileWriter;

    .line 376
    .line 377
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 378
    .line 379
    invoke-direct {v8, v3, v9, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    .line 380
    .line 381
    .line 382
    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 383
    .line 384
    .line 385
    :try_start_12
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    .line 386
    .line 387
    invoke-direct {v3, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 388
    .line 389
    .line 390
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    const-string v2, "UTF-8"

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v3, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 404
    .line 405
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const-string v1, "\nFD_LIST_INFO **********\n"

    .line 419
    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    invoke-virtual {v7, v0, v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 435
    .line 436
    .line 437
    :try_start_14
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 438
    .line 439
    .line 440
    :try_start_15
    invoke-virtual {v6}, Landroid/util/Base64OutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 441
    .line 442
    .line 443
    :try_start_16
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6

    .line 444
    .line 445
    .line 446
    goto :goto_12

    .line 447
    :catch_6
    move-object v0, v3

    .line 448
    goto :goto_11

    .line 449
    :catchall_5
    move-exception v0

    .line 450
    goto :goto_f

    .line 451
    :catchall_6
    move-exception v0

    .line 452
    goto :goto_d

    .line 453
    :catchall_7
    move-exception v0

    .line 454
    goto :goto_b

    .line 455
    :catchall_8
    move-exception v1

    .line 456
    move-object v3, v0

    .line 457
    move-object v0, v1

    .line 458
    :goto_b
    :try_start_17
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 459
    .line 460
    .line 461
    goto :goto_c

    .line 462
    :catchall_9
    move-exception v1

    .line 463
    :try_start_18
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 464
    .line 465
    .line 466
    :goto_c
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 467
    :catchall_a
    move-exception v1

    .line 468
    move-object v3, v0

    .line 469
    move-object v0, v1

    .line 470
    :goto_d
    :try_start_19
    invoke-virtual {v6}, Landroid/util/Base64OutputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    .line 471
    .line 472
    .line 473
    goto :goto_e

    .line 474
    :catchall_b
    move-exception v1

    .line 475
    :try_start_1a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 476
    .line 477
    .line 478
    :goto_e
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 479
    :catchall_c
    move-exception v1

    .line 480
    move-object v3, v0

    .line 481
    move-object v0, v1

    .line 482
    :goto_f
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    .line 483
    .line 484
    .line 485
    goto :goto_10

    .line 486
    :catchall_d
    move-exception v1

    .line 487
    :try_start_1c
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 488
    .line 489
    .line 490
    :goto_10
    throw v0
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_1c} :catch_6
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_6

    .line 491
    :catch_7
    :goto_11
    if-eqz v0, :cond_8

    .line 492
    .line 493
    :try_start_1d
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8

    .line 494
    .line 495
    .line 496
    :catch_8
    :cond_8
    const-string v0, "Failed to write contens in fd_list.txt"

    .line 497
    .line 498
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    :goto_12
    :try_start_1e
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    const-string/jumbo v1, "chown system:log /data/log/fd_list.txt"

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 509
    .line 510
    .line 511
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    const-string/jumbo v1, "chmod 640 /data/log/fd_list.txt"

    .line 516
    .line 517
    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a

    .line 519
    .line 520
    .line 521
    goto :goto_13

    .line 522
    :catch_9
    const-string v0, "Failed to create fd_list.txt due to exception"

    .line 523
    .line 524
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .line 526
    .line 527
    :catch_a
    :goto_13
    sget-object v0, Lcom/android/server/FileDescriptorWatcher;->mContext:Landroid/content/Context;

    .line 528
    .line 529
    new-instance v1, Landroid/content/Intent;

    .line 530
    .line 531
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 532
    .line 533
    .line 534
    const-string/jumbo v2, "com.salab.issuetracker"

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    .line 539
    .line 540
    const-string/jumbo v2, "com.sec.android.ISSUE_TRACKER_ACTION"

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    .line 545
    .line 546
    const-string v2, "ERRCODE"

    .line 547
    .line 548
    const/16 v3, -0x88

    .line 549
    .line 550
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    .line 552
    .line 553
    const-string v2, "ERRPKG"

    .line 554
    .line 555
    const-string v3, "android"

    .line 556
    .line 557
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    .line 559
    .line 560
    const-string v2, "ERRNAME"

    .line 561
    .line 562
    const-string v3, "SystemServerFD"

    .line 563
    .line 564
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    .line 566
    .line 567
    const-string v2, "ERRMSG"

    .line 568
    .line 569
    const-string v3, "SystemServerFD_leak"

    .line 570
    .line 571
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    .line 573
    .line 574
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 575
    .line 576
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 577
    .line 578
    .line 579
    const-string/jumbo v0, "sent intent to issuetracker for FD_LEAK"

    .line 580
    .line 581
    .line 582
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .line 584
    .line 585
    return-void

    .line 586
    :goto_14
    if-eqz v0, :cond_9

    .line 587
    .line 588
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 589
    .line 590
    .line 591
    :cond_9
    if-eqz v5, :cond_a

    .line 592
    .line 593
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_b

    .line 594
    .line 595
    .line 596
    :catch_b
    :cond_a
    throw p0
.end method
