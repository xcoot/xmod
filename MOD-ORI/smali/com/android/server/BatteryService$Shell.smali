.class public final Lcom/android/server/BatteryService$Shell;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/BatteryService$Shell;->this$0:Lcom/android/server/BatteryService;

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
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string/jumbo v1, "current_average"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "present"

    .line 7
    .line 8
    .line 9
    const-string v3, "ac"

    .line 10
    .line 11
    const-string/jumbo v4, "usb"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v5, "dock"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v7, "temp"

    .line 18
    .line 19
    .line 20
    const-string/jumbo v8, "level"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v10, "current_now"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v12, "counter"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v14, "invalid"

    .line 30
    .line 31
    .line 32
    const/16 v16, 0x5

    .line 33
    .line 34
    const/16 v17, 0x4

    .line 35
    .line 36
    const/16 v18, 0x3

    .line 37
    .line 38
    const/16 v19, 0x2

    .line 39
    .line 40
    const/16 v20, 0x0

    .line 41
    .line 42
    const/16 v21, -0x1

    .line 43
    .line 44
    move-object/from16 v9, p0

    .line 45
    .line 46
    iget-object v11, v9, Lcom/android/server/BatteryService$Shell;->this$0:Lcom/android/server/BatteryService;

    .line 47
    .line 48
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-string v13, "Unknown set option: "

    .line 52
    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v20

    .line 59
    goto/16 :goto_12

    .line 60
    .line 61
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 62
    .line 63
    .line 64
    move-result-object v15

    .line 65
    const-string v6, "No property specified"

    .line 66
    .line 67
    const-string v9, "android.permission.DEVICE_POWER"

    .line 68
    .line 69
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v23

    .line 73
    sparse-switch v23, :sswitch_data_0

    .line 74
    .line 75
    .line 76
    move-object/from16 v23, v13

    .line 77
    .line 78
    :goto_0
    move/from16 v13, v21

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :sswitch_0
    move-object/from16 v23, v13

    .line 83
    .line 84
    const-string/jumbo v13, "sleepstatus"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    if-nez v13, :cond_1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    const/4 v13, 0x6

    .line 95
    goto :goto_2

    .line 96
    :sswitch_1
    move-object/from16 v23, v13

    .line 97
    .line 98
    const-string/jumbo v13, "reset"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    if-nez v13, :cond_2

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    move/from16 v13, v16

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :sswitch_2
    move-object/from16 v23, v13

    .line 112
    .line 113
    const-string/jumbo v13, "set"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    if-nez v13, :cond_3

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    move/from16 v13, v17

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :sswitch_3
    move-object/from16 v23, v13

    .line 127
    .line 128
    const-string/jumbo v13, "get"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    if-nez v13, :cond_4

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    move/from16 v13, v18

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :sswitch_4
    move-object/from16 v23, v13

    .line 142
    .line 143
    const-string/jumbo v13, "sleeptime"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v13

    .line 150
    if-nez v13, :cond_5

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_5
    move/from16 v13, v19

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :sswitch_5
    move-object/from16 v23, v13

    .line 157
    .line 158
    const-string/jumbo v13, "suspend_input"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    if-nez v13, :cond_6

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_6
    const/4 v13, 0x1

    .line 169
    goto :goto_2

    .line 170
    :sswitch_6
    move-object/from16 v23, v13

    .line 171
    .line 172
    const-string/jumbo v13, "unplug"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    if-nez v13, :cond_7

    .line 180
    .line 181
    :goto_1
    goto :goto_0

    .line 182
    :cond_7
    move/from16 v13, v20

    .line 183
    .line 184
    :goto_2
    packed-switch v13, :pswitch_data_0

    .line 185
    .line 186
    .line 187
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v20

    .line 191
    goto/16 :goto_12

    .line 192
    .line 193
    :pswitch_0
    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-virtual {v11}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    const/4 v13, 0x0

    .line 202
    invoke-virtual {v1, v9, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const/4 v1, 0x1

    .line 206
    and-int/2addr v0, v1

    .line 207
    if-eqz v0, :cond_8

    .line 208
    .line 209
    const/4 v6, 0x1

    .line 210
    goto :goto_3

    .line 211
    :cond_8
    move/from16 v6, v20

    .line 212
    .line 213
    :goto_3
    invoke-virtual {v11, v15, v6}, Lcom/android/server/BatteryService;->resetBattery(Ljava/io/PrintWriter;Z)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_12

    .line 217
    .line 218
    :pswitch_1
    const/4 v13, 0x0

    .line 219
    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    move/from16 p1, v0

    .line 224
    .line 225
    invoke-virtual {v11}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v0, v9, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    if-nez v0, :cond_9

    .line 237
    .line 238
    invoke-virtual {v15, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :goto_4
    move/from16 v20, v21

    .line 242
    .line 243
    goto/16 :goto_12

    .line 244
    .line 245
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    if-nez v6, :cond_a

    .line 250
    .line 251
    const-string v0, "No value specified"

    .line 252
    .line 253
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_a
    :try_start_0
    iget-boolean v9, v11, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 258
    .line 259
    if-nez v9, :cond_b

    .line 260
    .line 261
    iget-object v9, v11, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 262
    .line 263
    iget-object v13, v11, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 264
    .line 265
    invoke-static {v9, v13}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    .line 266
    .line 267
    .line 268
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    sparse-switch v9, :sswitch_data_1

    .line 273
    .line 274
    .line 275
    goto/16 :goto_5

    .line 276
    .line 277
    :sswitch_7
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-eqz v1, :cond_c

    .line 282
    .line 283
    const/16 v1, 0xb

    .line 284
    .line 285
    goto/16 :goto_6

    .line 286
    .line 287
    :sswitch_8
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_c

    .line 292
    .line 293
    const/4 v1, 0x7

    .line 294
    goto/16 :goto_6

    .line 295
    .line 296
    :sswitch_9
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_c

    .line 301
    .line 302
    const/16 v1, 0x8

    .line 303
    .line 304
    goto :goto_6

    .line 305
    :sswitch_a
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_c

    .line 310
    .line 311
    const/4 v1, 0x6

    .line 312
    goto :goto_6

    .line 313
    :sswitch_b
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-eqz v1, :cond_c

    .line 318
    .line 319
    const/16 v1, 0xa

    .line 320
    .line 321
    goto :goto_6

    .line 322
    :sswitch_c
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_c

    .line 327
    .line 328
    move/from16 v1, v17

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :sswitch_d
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    if-eqz v1, :cond_c

    .line 336
    .line 337
    move/from16 v1, v19

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :sswitch_e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    if-eqz v1, :cond_c

    .line 345
    .line 346
    const/4 v1, 0x1

    .line 347
    goto :goto_6

    .line 348
    :sswitch_f
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-eqz v1, :cond_c

    .line 353
    .line 354
    move/from16 v1, v20

    .line 355
    .line 356
    goto :goto_6

    .line 357
    :sswitch_10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-eqz v1, :cond_c

    .line 362
    .line 363
    const/16 v1, 0x9

    .line 364
    .line 365
    goto :goto_6

    .line 366
    :sswitch_11
    const-string/jumbo v1, "status"

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_c

    .line 374
    .line 375
    move/from16 v1, v16

    .line 376
    .line 377
    goto :goto_6

    .line 378
    :sswitch_12
    const-string/jumbo v1, "wireless"

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_c

    .line 386
    .line 387
    move/from16 v1, v18

    .line 388
    .line 389
    goto :goto_6

    .line 390
    :cond_c
    :goto_5
    move/from16 v1, v21

    .line 391
    .line 392
    :goto_6
    packed-switch v1, :pswitch_data_1

    .line 393
    .line 394
    .line 395
    move-object/from16 v1, v23

    .line 396
    .line 397
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_12

    .line 405
    .line 406
    :pswitch_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    iput v0, v11, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 411
    .line 412
    goto/16 :goto_c

    .line 413
    .line 414
    :pswitch_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->batteryServiceSupportCurrentAdbCommand()Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-eqz v0, :cond_d

    .line 419
    .line 420
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 421
    .line 422
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 427
    .line 428
    :cond_d
    :pswitch_4
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 429
    .line 430
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 435
    .line 436
    goto/16 :goto_c

    .line 437
    .line 438
    :pswitch_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->batteryServiceSupportCurrentAdbCommand()Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-eqz v0, :cond_13

    .line 443
    .line 444
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 445
    .line 446
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 451
    .line 452
    goto/16 :goto_c

    .line 453
    .line 454
    :pswitch_6
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 455
    .line 456
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 461
    .line 462
    goto :goto_c

    .line 463
    :pswitch_7
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 464
    .line 465
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 470
    .line 471
    goto :goto_c

    .line 472
    :pswitch_8
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 473
    .line 474
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 479
    .line 480
    goto :goto_c

    .line 481
    :pswitch_9
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 482
    .line 483
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    if-eqz v1, :cond_e

    .line 488
    .line 489
    const/4 v1, 0x1

    .line 490
    goto :goto_7

    .line 491
    :cond_e
    move/from16 v1, v20

    .line 492
    .line 493
    :goto_7
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 494
    .line 495
    goto :goto_c

    .line 496
    :pswitch_a
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 497
    .line 498
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    if-eqz v1, :cond_f

    .line 503
    .line 504
    const/4 v1, 0x1

    .line 505
    goto :goto_8

    .line 506
    :cond_f
    move/from16 v1, v20

    .line 507
    .line 508
    :goto_8
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 509
    .line 510
    goto :goto_c

    .line 511
    :pswitch_b
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 512
    .line 513
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    if-eqz v1, :cond_10

    .line 518
    .line 519
    const/4 v1, 0x1

    .line 520
    goto :goto_9

    .line 521
    :cond_10
    move/from16 v1, v20

    .line 522
    .line 523
    :goto_9
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 524
    .line 525
    goto :goto_c

    .line 526
    :pswitch_c
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 527
    .line 528
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    if-eqz v1, :cond_11

    .line 533
    .line 534
    const/4 v1, 0x1

    .line 535
    goto :goto_a

    .line 536
    :cond_11
    move/from16 v1, v20

    .line 537
    .line 538
    :goto_a
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 539
    .line 540
    goto :goto_c

    .line 541
    :pswitch_d
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 542
    .line 543
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    if-eqz v1, :cond_12

    .line 548
    .line 549
    const/4 v1, 0x1

    .line 550
    goto :goto_b

    .line 551
    :cond_12
    move/from16 v1, v20

    .line 552
    .line 553
    :goto_b
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 554
    .line 555
    :cond_13
    :goto_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 556
    .line 557
    .line 558
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    const/4 v0, 0x1

    .line 560
    :try_start_1
    iput-boolean v0, v11, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 561
    .line 562
    and-int/lit8 v3, p1, 0x1

    .line 563
    .line 564
    if-eqz v3, :cond_14

    .line 565
    .line 566
    const/4 v0, 0x1

    .line 567
    goto :goto_d

    .line 568
    :cond_14
    move/from16 v0, v20

    .line 569
    .line 570
    :goto_d
    invoke-virtual {v11, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 571
    .line 572
    .line 573
    if-eqz v15, :cond_15

    .line 574
    .line 575
    if-eqz v0, :cond_15

    .line 576
    .line 577
    iget v0, v11, Lcom/android/server/BatteryService;->mSequence:I

    .line 578
    .line 579
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    .line 581
    .line 582
    :cond_15
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    .line 584
    .line 585
    goto/16 :goto_12

    .line 586
    .line 587
    :catchall_0
    move-exception v0

    .line 588
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 589
    .line 590
    .line 591
    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 592
    :catch_0
    const-string v0, "Bad value: "

    .line 593
    .line 594
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    goto/16 :goto_4

    .line 602
    .line 603
    :pswitch_e
    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v9

    .line 611
    if-nez v9, :cond_16

    .line 612
    .line 613
    invoke-virtual {v15, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    goto/16 :goto_4

    .line 617
    .line 618
    :cond_16
    const-string v6, "Unable to update health service data."

    .line 619
    .line 620
    const-string v13, "BatteryService"

    .line 621
    .line 622
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    .line 623
    .line 624
    .line 625
    move-result v22

    .line 626
    sparse-switch v22, :sswitch_data_2

    .line 627
    .line 628
    .line 629
    goto/16 :goto_e

    .line 630
    .line 631
    :sswitch_13
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result v1

    .line 635
    if-nez v1, :cond_17

    .line 636
    .line 637
    goto/16 :goto_e

    .line 638
    .line 639
    :cond_17
    const/16 v21, 0xb

    .line 640
    .line 641
    goto/16 :goto_e

    .line 642
    .line 643
    :sswitch_14
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    if-nez v1, :cond_18

    .line 648
    .line 649
    goto/16 :goto_e

    .line 650
    .line 651
    :cond_18
    const/16 v21, 0xa

    .line 652
    .line 653
    goto/16 :goto_e

    .line 654
    .line 655
    :sswitch_15
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    if-nez v1, :cond_19

    .line 660
    .line 661
    goto/16 :goto_e

    .line 662
    .line 663
    :cond_19
    const/16 v1, 0x9

    .line 664
    .line 665
    move/from16 v21, v1

    .line 666
    .line 667
    goto/16 :goto_e

    .line 668
    .line 669
    :sswitch_16
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-nez v1, :cond_1a

    .line 674
    .line 675
    goto/16 :goto_e

    .line 676
    .line 677
    :cond_1a
    const/16 v21, 0x8

    .line 678
    .line 679
    goto/16 :goto_e

    .line 680
    .line 681
    :sswitch_17
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    if-nez v1, :cond_1b

    .line 686
    .line 687
    goto :goto_e

    .line 688
    :cond_1b
    const/16 v21, 0x7

    .line 689
    .line 690
    goto :goto_e

    .line 691
    :sswitch_18
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    move-result v1

    .line 695
    if-nez v1, :cond_1c

    .line 696
    .line 697
    goto :goto_e

    .line 698
    :cond_1c
    const/16 v21, 0x6

    .line 699
    .line 700
    goto :goto_e

    .line 701
    :sswitch_19
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    if-nez v1, :cond_1d

    .line 706
    .line 707
    goto :goto_e

    .line 708
    :cond_1d
    move/from16 v21, v16

    .line 709
    .line 710
    goto :goto_e

    .line 711
    :sswitch_1a
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    if-nez v1, :cond_1e

    .line 716
    .line 717
    goto :goto_e

    .line 718
    :cond_1e
    move/from16 v21, v17

    .line 719
    .line 720
    goto :goto_e

    .line 721
    :sswitch_1b
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    if-nez v1, :cond_1f

    .line 726
    .line 727
    goto :goto_e

    .line 728
    :cond_1f
    move/from16 v21, v18

    .line 729
    .line 730
    goto :goto_e

    .line 731
    :sswitch_1c
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    if-nez v1, :cond_20

    .line 736
    .line 737
    goto :goto_e

    .line 738
    :cond_20
    move/from16 v21, v19

    .line 739
    .line 740
    goto :goto_e

    .line 741
    :sswitch_1d
    const-string/jumbo v1, "status"

    .line 742
    .line 743
    .line 744
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    move-result v1

    .line 748
    if-nez v1, :cond_21

    .line 749
    .line 750
    goto :goto_e

    .line 751
    :cond_21
    const/16 v21, 0x1

    .line 752
    .line 753
    goto :goto_e

    .line 754
    :sswitch_1e
    const-string/jumbo v1, "wireless"

    .line 755
    .line 756
    .line 757
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 758
    .line 759
    .line 760
    move-result v1

    .line 761
    if-nez v1, :cond_22

    .line 762
    .line 763
    goto :goto_e

    .line 764
    :cond_22
    move/from16 v21, v20

    .line 765
    .line 766
    :goto_e
    packed-switch v21, :pswitch_data_2

    .line 767
    .line 768
    .line 769
    const-string v0, "Unknown get option: "

    .line 770
    .line 771
    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    goto/16 :goto_12

    .line 779
    .line 780
    :pswitch_f
    iget v0, v11, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 781
    .line 782
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 783
    .line 784
    .line 785
    goto/16 :goto_12

    .line 786
    .line 787
    :pswitch_10
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 788
    .line 789
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 790
    .line 791
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 792
    .line 793
    .line 794
    goto/16 :goto_12

    .line 795
    .line 796
    :pswitch_11
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->batteryServiceSupportCurrentAdbCommand()Z

    .line 797
    .line 798
    .line 799
    move-result v1

    .line 800
    if-eqz v1, :cond_27

    .line 801
    .line 802
    const/4 v1, 0x1

    .line 803
    and-int/2addr v0, v1

    .line 804
    if-eqz v0, :cond_23

    .line 805
    .line 806
    :try_start_3
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 807
    .line 808
    invoke-virtual {v0}, Lcom/android/server/health/HealthServiceWrapper;->scheduleUpdate()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 809
    .line 810
    .line 811
    goto :goto_f

    .line 812
    :catch_1
    move-exception v0

    .line 813
    invoke-static {v13, v6, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 814
    .line 815
    .line 816
    :cond_23
    :goto_f
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 817
    .line 818
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 819
    .line 820
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 821
    .line 822
    .line 823
    goto/16 :goto_12

    .line 824
    .line 825
    :pswitch_12
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 826
    .line 827
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 828
    .line 829
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 830
    .line 831
    .line 832
    goto/16 :goto_12

    .line 833
    .line 834
    :pswitch_13
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 835
    .line 836
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 837
    .line 838
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 839
    .line 840
    .line 841
    goto/16 :goto_12

    .line 842
    .line 843
    :pswitch_14
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 844
    .line 845
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    .line 846
    .line 847
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 848
    .line 849
    .line 850
    goto/16 :goto_12

    .line 851
    .line 852
    :pswitch_15
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 853
    .line 854
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 855
    .line 856
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 857
    .line 858
    .line 859
    goto/16 :goto_12

    .line 860
    .line 861
    :pswitch_16
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 862
    .line 863
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 864
    .line 865
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 866
    .line 867
    .line 868
    goto/16 :goto_12

    .line 869
    .line 870
    :pswitch_17
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 871
    .line 872
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 873
    .line 874
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 875
    .line 876
    .line 877
    goto/16 :goto_12

    .line 878
    .line 879
    :pswitch_18
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->batteryServiceSupportCurrentAdbCommand()Z

    .line 880
    .line 881
    .line 882
    move-result v1

    .line 883
    if-eqz v1, :cond_27

    .line 884
    .line 885
    const/4 v1, 0x1

    .line 886
    and-int/2addr v0, v1

    .line 887
    if-eqz v0, :cond_24

    .line 888
    .line 889
    :try_start_4
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    .line 890
    .line 891
    invoke-virtual {v0}, Lcom/android/server/health/HealthServiceWrapper;->scheduleUpdate()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 892
    .line 893
    .line 894
    goto :goto_10

    .line 895
    :catch_2
    move-exception v0

    .line 896
    invoke-static {v13, v6, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 897
    .line 898
    .line 899
    :cond_24
    :goto_10
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 900
    .line 901
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 902
    .line 903
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 904
    .line 905
    .line 906
    goto :goto_12

    .line 907
    :pswitch_19
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 908
    .line 909
    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 910
    .line 911
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 912
    .line 913
    .line 914
    goto :goto_12

    .line 915
    :pswitch_1a
    iget-object v0, v11, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 916
    .line 917
    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 918
    .line 919
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 920
    .line 921
    .line 922
    goto :goto_12

    .line 923
    :pswitch_1b
    const-string v1, "[onShellCommand]cmd:"

    .line 924
    .line 925
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 930
    .line 931
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    const-string/jumbo v0, "user build cannot use this cmd"

    .line 935
    .line 936
    .line 937
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 941
    .line 942
    .line 943
    goto :goto_12

    .line 944
    :pswitch_1c
    invoke-virtual {v11}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    const/4 v1, 0x0

    .line 949
    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 953
    .line 954
    if-eqz v0, :cond_25

    .line 955
    .line 956
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 957
    .line 958
    invoke-static {v0}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    .line 959
    .line 960
    .line 961
    const/4 v0, 0x1

    .line 962
    iput-boolean v0, v11, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    .line 963
    .line 964
    goto :goto_12

    .line 965
    :cond_25
    new-instance v0, Ljava/lang/SecurityException;

    .line 966
    .line 967
    const-string v1, "battery suspend_input is only supported on debuggable builds"

    .line 968
    .line 969
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 970
    .line 971
    .line 972
    throw v0

    .line 973
    :pswitch_1d
    const/4 v0, 0x1

    .line 974
    invoke-static/range {p0 .. p0}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    .line 975
    .line 976
    .line 977
    move-result v1

    .line 978
    invoke-virtual {v11}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 979
    .line 980
    .line 981
    move-result-object v2

    .line 982
    const/4 v3, 0x0

    .line 983
    invoke-virtual {v2, v9, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    and-int/2addr v1, v0

    .line 987
    if-eqz v1, :cond_26

    .line 988
    .line 989
    move v6, v0

    .line 990
    goto :goto_11

    .line 991
    :cond_26
    move/from16 v6, v20

    .line 992
    .line 993
    :goto_11
    invoke-virtual {v11, v15, v6}, Lcom/android/server/BatteryService;->unplugBattery(Ljava/io/PrintWriter;Z)V

    .line 994
    .line 995
    .line 996
    :cond_27
    :goto_12
    return v20

    .line 997
    :sswitch_data_0
    .sparse-switch
        -0x32165859 -> :sswitch_6
        -0x204dc1f9 -> :sswitch_5
        -0xb3c1dc -> :sswitch_4
        0x18f56 -> :sswitch_3
        0x1bc62 -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x5c164189 -> :sswitch_0
    .end sparse-switch

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
    .line 1026
    .line 1027
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_e
        :pswitch_1
        :pswitch_0
        :pswitch_1b
    .end packed-switch

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
    :sswitch_data_1
    .sparse-switch
        -0x3b9b7862 -> :sswitch_12
        -0x3532300e -> :sswitch_11
        -0x169c46a9 -> :sswitch_10
        -0x12f88745 -> :sswitch_f
        0xc22 -> :sswitch_e
        0x1c584 -> :sswitch_d
        0x2f2233 -> :sswitch_c
        0x3643d4 -> :sswitch_b
        0x6219b84 -> :sswitch_a
        0x23db3310 -> :sswitch_9
        0x391755fc -> :sswitch_8
        0x74cff1f7 -> :sswitch_7
    .end sparse-switch

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
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    :sswitch_data_2
    .sparse-switch
        -0x3b9b7862 -> :sswitch_1e
        -0x3532300e -> :sswitch_1d
        -0x169c46a9 -> :sswitch_1c
        -0x12f88745 -> :sswitch_1b
        0xc22 -> :sswitch_1a
        0x1c584 -> :sswitch_19
        0x2f2233 -> :sswitch_18
        0x3643d4 -> :sswitch_17
        0x6219b84 -> :sswitch_16
        0x23db3310 -> :sswitch_15
        0x391755fc -> :sswitch_14
        0x74cff1f7 -> :sswitch_13
    .end sparse-switch

    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "Battery service (battery) commands:"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "  help"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "    Print this help text."

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->batteryServiceSupportCurrentAdbCommand()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string v0, "ac|usb|wireless|dock|status|level|temp|present|counter|invalid|current_now|current_average"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "ac|usb|wireless|dock|status|level|temp|present|counter|invalid"

    .line 32
    .line 33
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "  get [-f] ["

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, "]"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "  set [-f] ["

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, "] <value>"

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v0, "    Force a battery property value, freezing battery state."

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    .line 83
    .line 84
    const-string v1, "  unplug [-f]"

    .line 85
    .line 86
    const-string v2, "    Force battery unplugged, freezing battery state."

    .line 87
    .line 88
    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v1, "  reset [-f]"

    .line 92
    .line 93
    const-string v2, "    Unfreeze battery state, returning to current hardware values."

    .line 94
    .line 95
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 99
    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    const-string v0, "  suspend_input"

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v0, "    Suspend charging even if plugged in. "

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    return-void
.end method
