.class public final Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, -0x1

    .line 7
    const/4 v5, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    move-object/from16 v6, p1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v6, ""

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    sparse-switch v7, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    :goto_1
    move v6, v4

    .line 23
    goto :goto_2

    .line 24
    :sswitch_0
    const-string/jumbo v7, "override-status"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-nez v6, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v6, v1

    .line 35
    goto :goto_2

    .line 36
    :sswitch_1
    const-string/jumbo v7, "reset"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-nez v6, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v6, v2

    .line 47
    goto :goto_2

    .line 48
    :sswitch_2
    const-string v7, "inject-temperature"

    .line 49
    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-nez v6, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move v6, v5

    .line 58
    goto :goto_2

    .line 59
    :sswitch_3
    const-string v7, "headroom"

    .line 60
    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    move v6, v3

    .line 69
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    return v0

    .line 77
    :pswitch_0
    const-string v1, "Error: "

    .line 78
    .line 79
    const-string v2, "Invalid status: "

    .line 80
    .line 81
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 82
    .line 83
    .line 84
    move-result-wide v6

    .line 85
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 86
    .line 87
    .line 88
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-static {v1}, Landroid/os/Temperature;->isValidStatus(I)Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-nez v9, :cond_5

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .line 117
    .line 118
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    .line 120
    .line 121
    move v3, v4

    .line 122
    goto :goto_4

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    goto :goto_5

    .line 125
    :cond_5
    :try_start_3
    iget-object v2, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 126
    .line 127
    iget-object v2, v2, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 128
    .line 129
    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    :try_start_4
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 131
    .line 132
    iput-boolean v5, v0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/android/server/power/ThermalManagerService;->setStatusLocked(I)V

    .line 135
    .line 136
    .line 137
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    .line 140
    .line 141
    goto :goto_4

    .line 142
    :catchall_1
    move-exception v0

    .line 143
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 144
    :try_start_6
    throw v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :goto_4
    return v3

    .line 167
    :goto_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :pswitch_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 172
    .line 173
    .line 174
    move-result-wide v1

    .line 175
    :try_start_7
    iget-object v4, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 176
    .line 177
    iget-object v4, v4, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 178
    .line 179
    monitor-enter v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 180
    :try_start_8
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 181
    .line 182
    iput-boolean v3, v0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    .line 185
    .line 186
    .line 187
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 188
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    .line 190
    .line 191
    return v3

    .line 192
    :catchall_2
    move-exception v0

    .line 193
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 194
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 195
    :catchall_3
    move-exception v0

    .line 196
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    .line 198
    .line 199
    throw v0

    .line 200
    :pswitch_2
    const-string v6, "Invalid temperature type: "

    .line 201
    .line 202
    const-string v7, "Invalid throttle status: "

    .line 203
    .line 204
    const-string v8, "Error: "

    .line 205
    .line 206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 211
    .line 212
    .line 213
    move-result-object v11

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 223
    .line 224
    .line 225
    move-result v14

    .line 226
    const/16 v15, 0xc

    .line 227
    .line 228
    const/16 v16, 0x12

    .line 229
    .line 230
    const/16 v17, 0x11

    .line 231
    .line 232
    const/16 v18, 0x13

    .line 233
    .line 234
    const/16 v19, 0xa

    .line 235
    .line 236
    const/16 v20, 0xe

    .line 237
    .line 238
    const/16 v21, 0xb

    .line 239
    .line 240
    const/16 v22, 0xf

    .line 241
    .line 242
    const/16 v23, 0xd

    .line 243
    .line 244
    const/16 v24, 0x9

    .line 245
    .line 246
    const/16 v25, 0x7

    .line 247
    .line 248
    const/16 v26, 0x8

    .line 249
    .line 250
    const/16 v27, 0x10

    .line 251
    .line 252
    const/16 v28, 0x4

    .line 253
    .line 254
    const/16 v29, 0x5

    .line 255
    .line 256
    const/16 v30, 0x6

    .line 257
    .line 258
    sparse-switch v14, :sswitch_data_1

    .line 259
    .line 260
    .line 261
    goto/16 :goto_6

    .line 262
    .line 263
    :sswitch_4
    const-string v14, "CAMERA"

    .line 264
    .line 265
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v13

    .line 269
    if-eqz v13, :cond_6

    .line 270
    .line 271
    move/from16 v13, v27

    .line 272
    .line 273
    goto/16 :goto_7

    .line 274
    .line 275
    :catchall_4
    move-exception v0

    .line 276
    goto/16 :goto_10

    .line 277
    .line 278
    :sswitch_5
    const-string v14, "BCL_CURRENT"

    .line 279
    .line 280
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v13

    .line 284
    if-eqz v13, :cond_6

    .line 285
    .line 286
    move/from16 v13, v26

    .line 287
    .line 288
    goto/16 :goto_7

    .line 289
    .line 290
    :sswitch_6
    const-string v14, "POWER_AMPLIFIER"

    .line 291
    .line 292
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v13

    .line 296
    if-eqz v13, :cond_6

    .line 297
    .line 298
    move/from16 v13, v30

    .line 299
    .line 300
    goto/16 :goto_7

    .line 301
    .line 302
    :sswitch_7
    const-string v14, "BCL_VOLTAGE"

    .line 303
    .line 304
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v13

    .line 308
    if-eqz v13, :cond_6

    .line 309
    .line 310
    move/from16 v13, v25

    .line 311
    .line 312
    goto/16 :goto_7

    .line 313
    .line 314
    :sswitch_8
    const-string v14, "USB_PORT"

    .line 315
    .line 316
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v13

    .line 320
    if-eqz v13, :cond_6

    .line 321
    .line 322
    move/from16 v13, v29

    .line 323
    .line 324
    goto/16 :goto_7

    .line 325
    .line 326
    :sswitch_9
    const-string v14, "UNKNOWN"

    .line 327
    .line 328
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v13

    .line 332
    if-eqz v13, :cond_6

    .line 333
    .line 334
    move v13, v3

    .line 335
    goto/16 :goto_7

    .line 336
    .line 337
    :sswitch_a
    const-string v14, "BATTERY"

    .line 338
    .line 339
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v13

    .line 343
    if-eqz v13, :cond_6

    .line 344
    .line 345
    move v13, v1

    .line 346
    goto/16 :goto_7

    .line 347
    .line 348
    :sswitch_b
    const-string v14, "BCL_PERCENTAGE"

    .line 349
    .line 350
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v13

    .line 354
    if-eqz v13, :cond_6

    .line 355
    .line 356
    move/from16 v13, v24

    .line 357
    .line 358
    goto/16 :goto_7

    .line 359
    .line 360
    :sswitch_c
    const-string v14, "MODEM"

    .line 361
    .line 362
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v13

    .line 366
    if-eqz v13, :cond_6

    .line 367
    .line 368
    move/from16 v13, v23

    .line 369
    .line 370
    goto/16 :goto_7

    .line 371
    .line 372
    :sswitch_d
    const-string v14, "WIFI"

    .line 373
    .line 374
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v13

    .line 378
    if-eqz v13, :cond_6

    .line 379
    .line 380
    move/from16 v13, v22

    .line 381
    .line 382
    goto/16 :goto_7

    .line 383
    .line 384
    :sswitch_e
    const-string v14, "SKIN"

    .line 385
    .line 386
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v13

    .line 390
    if-eqz v13, :cond_6

    .line 391
    .line 392
    move/from16 v13, v28

    .line 393
    .line 394
    goto/16 :goto_7

    .line 395
    .line 396
    :sswitch_f
    const-string v14, "POGO"

    .line 397
    .line 398
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v13

    .line 402
    if-eqz v13, :cond_6

    .line 403
    .line 404
    const/16 v13, 0x14

    .line 405
    .line 406
    goto/16 :goto_7

    .line 407
    .line 408
    :sswitch_10
    const-string v14, "TPU"

    .line 409
    .line 410
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v13

    .line 414
    if-eqz v13, :cond_6

    .line 415
    .line 416
    move/from16 v13, v21

    .line 417
    .line 418
    goto :goto_7

    .line 419
    :sswitch_11
    const-string v14, "SOC"

    .line 420
    .line 421
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v13

    .line 425
    if-eqz v13, :cond_6

    .line 426
    .line 427
    move/from16 v13, v20

    .line 428
    .line 429
    goto :goto_7

    .line 430
    :sswitch_12
    const-string v14, "NPU"

    .line 431
    .line 432
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v13

    .line 436
    if-eqz v13, :cond_6

    .line 437
    .line 438
    move/from16 v13, v19

    .line 439
    .line 440
    goto :goto_7

    .line 441
    :sswitch_13
    const-string v14, "GPU"

    .line 442
    .line 443
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v13

    .line 447
    if-eqz v13, :cond_6

    .line 448
    .line 449
    move v13, v2

    .line 450
    goto :goto_7

    .line 451
    :sswitch_14
    const-string v14, "CPU"

    .line 452
    .line 453
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v13

    .line 457
    if-eqz v13, :cond_6

    .line 458
    .line 459
    move v13, v5

    .line 460
    goto :goto_7

    .line 461
    :sswitch_15
    const-string v14, "AMBIENT"

    .line 462
    .line 463
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v13

    .line 467
    if-eqz v13, :cond_6

    .line 468
    .line 469
    move/from16 v13, v18

    .line 470
    .line 471
    goto :goto_7

    .line 472
    :sswitch_16
    const-string v14, "FLASHLIGHT"

    .line 473
    .line 474
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v13

    .line 478
    if-eqz v13, :cond_6

    .line 479
    .line 480
    move/from16 v13, v17

    .line 481
    .line 482
    goto :goto_7

    .line 483
    :sswitch_17
    const-string v14, "SPEAKER"

    .line 484
    .line 485
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v13

    .line 489
    if-eqz v13, :cond_6

    .line 490
    .line 491
    move/from16 v13, v16

    .line 492
    .line 493
    goto :goto_7

    .line 494
    :sswitch_18
    const-string v14, "DISPLAY"

    .line 495
    .line 496
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result v13

    .line 500
    if-eqz v13, :cond_6

    .line 501
    .line 502
    move v13, v15

    .line 503
    goto :goto_7

    .line 504
    :cond_6
    :goto_6
    move v13, v4

    .line 505
    :goto_7
    packed-switch v13, :pswitch_data_1

    .line 506
    .line 507
    .line 508
    invoke-virtual {v6, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 513
    .line 514
    .line 515
    :goto_8
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    .line 517
    .line 518
    move v3, v4

    .line 519
    goto/16 :goto_f

    .line 520
    .line 521
    :pswitch_3
    move/from16 v15, v18

    .line 522
    .line 523
    goto :goto_9

    .line 524
    :pswitch_4
    move/from16 v15, v16

    .line 525
    .line 526
    goto :goto_9

    .line 527
    :pswitch_5
    move/from16 v15, v17

    .line 528
    .line 529
    goto :goto_9

    .line 530
    :pswitch_6
    move/from16 v15, v27

    .line 531
    .line 532
    goto :goto_9

    .line 533
    :pswitch_7
    move/from16 v15, v22

    .line 534
    .line 535
    goto :goto_9

    .line 536
    :pswitch_8
    move/from16 v15, v20

    .line 537
    .line 538
    goto :goto_9

    .line 539
    :pswitch_9
    move/from16 v15, v23

    .line 540
    .line 541
    goto :goto_9

    .line 542
    :pswitch_a
    move/from16 v15, v21

    .line 543
    .line 544
    goto :goto_9

    .line 545
    :pswitch_b
    move/from16 v15, v19

    .line 546
    .line 547
    goto :goto_9

    .line 548
    :pswitch_c
    move/from16 v15, v24

    .line 549
    .line 550
    goto :goto_9

    .line 551
    :pswitch_d
    move/from16 v15, v26

    .line 552
    .line 553
    goto :goto_9

    .line 554
    :pswitch_e
    move/from16 v15, v25

    .line 555
    .line 556
    goto :goto_9

    .line 557
    :pswitch_f
    move/from16 v15, v30

    .line 558
    .line 559
    goto :goto_9

    .line 560
    :pswitch_10
    move/from16 v15, v29

    .line 561
    .line 562
    goto :goto_9

    .line 563
    :pswitch_11
    move/from16 v15, v28

    .line 564
    .line 565
    goto :goto_9

    .line 566
    :pswitch_12
    move v15, v1

    .line 567
    goto :goto_9

    .line 568
    :pswitch_13
    move v15, v2

    .line 569
    goto :goto_9

    .line 570
    :pswitch_14
    move v15, v5

    .line 571
    goto :goto_9

    .line 572
    :pswitch_15
    move v15, v3

    .line 573
    goto :goto_9

    .line 574
    :pswitch_16
    move v15, v4

    .line 575
    :goto_9
    :pswitch_17
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v6

    .line 579
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v12

    .line 583
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 584
    .line 585
    .line 586
    move-result v13

    .line 587
    sparse-switch v13, :sswitch_data_2

    .line 588
    .line 589
    .line 590
    goto :goto_a

    .line 591
    :sswitch_19
    const-string v13, "SHUTDOWN"

    .line 592
    .line 593
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v12

    .line 597
    if-eqz v12, :cond_7

    .line 598
    .line 599
    move/from16 v12, v30

    .line 600
    .line 601
    goto :goto_b

    .line 602
    :sswitch_1a
    const-string v13, "MODERATE"

    .line 603
    .line 604
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v12

    .line 608
    if-eqz v12, :cond_7

    .line 609
    .line 610
    move v12, v2

    .line 611
    goto :goto_b

    .line 612
    :sswitch_1b
    const-string v13, "EMERGENCY"

    .line 613
    .line 614
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v12

    .line 618
    if-eqz v12, :cond_7

    .line 619
    .line 620
    move/from16 v12, v29

    .line 621
    .line 622
    goto :goto_b

    .line 623
    :sswitch_1c
    const-string v13, "LIGHT"

    .line 624
    .line 625
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v12

    .line 629
    if-eqz v12, :cond_7

    .line 630
    .line 631
    move v12, v5

    .line 632
    goto :goto_b

    .line 633
    :sswitch_1d
    const-string v13, "NONE"

    .line 634
    .line 635
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    move-result v12

    .line 639
    if-eqz v12, :cond_7

    .line 640
    .line 641
    move v12, v3

    .line 642
    goto :goto_b

    .line 643
    :sswitch_1e
    const-string v13, "CRITICAL"

    .line 644
    .line 645
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    move-result v12

    .line 649
    if-eqz v12, :cond_7

    .line 650
    .line 651
    move/from16 v12, v28

    .line 652
    .line 653
    goto :goto_b

    .line 654
    :sswitch_1f
    const-string v13, "SEVERE"

    .line 655
    .line 656
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v12

    .line 660
    if-eqz v12, :cond_7

    .line 661
    .line 662
    move v12, v1

    .line 663
    goto :goto_b

    .line 664
    :cond_7
    :goto_a
    move v12, v4

    .line 665
    :goto_b
    packed-switch v12, :pswitch_data_2

    .line 666
    .line 667
    .line 668
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    goto/16 :goto_8

    .line 676
    .line 677
    :pswitch_18
    move/from16 v1, v30

    .line 678
    .line 679
    goto :goto_c

    .line 680
    :pswitch_19
    move/from16 v1, v29

    .line 681
    .line 682
    goto :goto_c

    .line 683
    :pswitch_1a
    move/from16 v1, v28

    .line 684
    .line 685
    goto :goto_c

    .line 686
    :pswitch_1b
    move v1, v2

    .line 687
    goto :goto_c

    .line 688
    :pswitch_1c
    move v1, v5

    .line 689
    goto :goto_c

    .line 690
    :pswitch_1d
    move v1, v3

    .line 691
    :goto_c
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 695
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v6

    .line 699
    if-eqz v6, :cond_8

    .line 700
    .line 701
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 702
    .line 703
    .line 704
    move-result v4
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 705
    goto :goto_d

    .line 706
    :catch_1
    move-exception v0

    .line 707
    goto :goto_e

    .line 708
    :cond_8
    const/high16 v4, 0x41e00000    # 28.0f

    .line 709
    .line 710
    :goto_d
    :try_start_e
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 711
    .line 712
    new-instance v6, Landroid/os/Temperature;

    .line 713
    .line 714
    invoke-direct {v6, v4, v15, v2, v1}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v0, v6, v5}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 718
    .line 719
    .line 720
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 721
    .line 722
    .line 723
    goto :goto_f

    .line 724
    :goto_e
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 725
    .line 726
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 741
    .line 742
    .line 743
    goto/16 :goto_8

    .line 744
    .line 745
    :goto_f
    return v3

    .line 746
    :goto_10
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 747
    .line 748
    .line 749
    throw v0

    .line 750
    :pswitch_1f
    const-string v1, "Error: "

    .line 751
    .line 752
    const-string v2, "Headroom in "

    .line 753
    .line 754
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 755
    .line 756
    .line 757
    move-result-wide v5

    .line 758
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 759
    .line 760
    .line 761
    move-result-object v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 762
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v8

    .line 766
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 767
    .line 768
    .line 769
    move-result v1
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 770
    :try_start_12
    iget-object v8, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 771
    .line 772
    iget-object v8, v8, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 773
    .line 774
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 775
    .line 776
    .line 777
    move-result v8

    .line 778
    if-nez v8, :cond_9

    .line 779
    .line 780
    const-string v0, "Error: thermal HAL is not ready"

    .line 781
    .line 782
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 783
    .line 784
    .line 785
    :goto_11
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 786
    .line 787
    .line 788
    move v3, v4

    .line 789
    goto :goto_13

    .line 790
    :catchall_5
    move-exception v0

    .line 791
    goto :goto_14

    .line 792
    :cond_9
    if-ltz v1, :cond_b

    .line 793
    .line 794
    const/16 v8, 0x3c

    .line 795
    .line 796
    if-le v1, v8, :cond_a

    .line 797
    .line 798
    goto :goto_12

    .line 799
    :cond_a
    :try_start_13
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 800
    .line 801
    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    .line 802
    .line 803
    invoke-virtual {v0, v1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    .line 804
    .line 805
    .line 806
    move-result v0

    .line 807
    new-instance v4, Ljava/lang/StringBuilder;

    .line 808
    .line 809
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    const-string v1, " seconds: "

    .line 816
    .line 817
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 828
    .line 829
    .line 830
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 831
    .line 832
    .line 833
    goto :goto_13

    .line 834
    :cond_b
    :goto_12
    :try_start_14
    const-string v0, "Error: forecast second input should be in range [0,60]"

    .line 835
    .line 836
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    goto :goto_11

    .line 840
    :catch_2
    move-exception v0

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    .line 842
    .line 843
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 854
    .line 855
    .line 856
    goto :goto_11

    .line 857
    :goto_13
    return v3

    .line 858
    :goto_14
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 859
    .line 860
    .line 861
    throw v0

    .line 862
    nop

    .line 863
    :sswitch_data_0
    .sparse-switch
        -0x4273a145 -> :sswitch_3
        -0x3ab50c8 -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x16fa8113 -> :sswitch_0
    .end sparse-switch

    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    :sswitch_data_1
    .sparse-switch
        -0x718f5b5e -> :sswitch_18
        -0x4cec1421 -> :sswitch_17
        -0x299a58da -> :sswitch_16
        -0xa618188 -> :sswitch_15
        0x10588 -> :sswitch_14
        0x1148c -> :sswitch_13
        0x12ed3 -> :sswitch_12
        0x14167 -> :sswitch_11
        0x14559 -> :sswitch_10
        0x258f27 -> :sswitch_f
        0x26dd7d -> :sswitch_e
        0x28a715 -> :sswitch_d
        0x462030a -> :sswitch_c
        0x170bfb2e -> :sswitch_b
        0x170d39ed -> :sswitch_a
        0x19d1382a -> :sswitch_9
        0x1a693e7c -> :sswitch_8
        0x338c332a -> :sswitch_7
        0x33d09377 -> :sswitch_6
        0x51069545 -> :sswitch_5
        0x760cb725 -> :sswitch_4
    .end sparse-switch

    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_17
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    :sswitch_data_2
    .sparse-switch
        -0x6e69498c -> :sswitch_1f
        -0x5cfe9861 -> :sswitch_1e
        0x24a738 -> :sswitch_1d
        0x4513cf6 -> :sswitch_1c
        0x730d571 -> :sswitch_1b
        0x9c2ed03 -> :sswitch_1a
        0x248df656 -> :sswitch_19
    .end sparse-switch

    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1e
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Thermal service (thermalservice) commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "  inject-temperature TYPE STATUS NAME [VALUE]"

    .line 26
    .line 27
    const-string v1, "    injects a new temperature sample for the specified device."

    .line 28
    .line 29
    const-string v2, "    type and status strings follow the names in android.os.Temperature."

    .line 30
    .line 31
    const-string v3, "  override-status STATUS"

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "    sets and locks the thermal status of the device to STATUS."

    .line 37
    .line 38
    const-string v1, "    status code is defined in android.os.Temperature."

    .line 39
    .line 40
    const-string v2, "  reset"

    .line 41
    .line 42
    const-string v3, "    unlocks the thermal status of the device."

    .line 43
    .line 44
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "  headroom FORECAST_SECONDS"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "    gets the thermal headroom forecast in specified seconds, from [0,60]."

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
