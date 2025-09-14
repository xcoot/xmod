.class public final Lcom/android/server/display/DisplayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mService:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final addBrightnessWeights()I
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Error: available for sec long-term model"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    :try_start_0
    const-string v2, ":"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v2, 0x0

    .line 26
    aget-object v3, v0, v2

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    aget-object v4, v0, v1

    .line 33
    .line 34
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x2

    .line 39
    aget-object v5, v0, v5

    .line 40
    .line 41
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v6, 0x3

    .line 46
    aget-object v0, v0, v6

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 53
    .line 54
    iget-object v7, v6, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 55
    .line 56
    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :try_start_1
    iget-object v6, v6, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    check-cast v6, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 64
    .line 65
    check-cast v6, Lcom/android/server/display/DisplayPowerController;

    .line 66
    .line 67
    invoke-virtual {v6, v3, v4, v5, v0}, Lcom/android/server/display/DisplayPowerController;->addBrightnessWeights(FFFF)V

    .line 68
    .line 69
    .line 70
    monitor-exit v7

    .line 71
    return v2

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string v0, "Error: failed to add brightness weights"

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return v1
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/16 v2, 0xf

    .line 6
    .line 7
    const/4 v3, 0x6

    .line 8
    const/4 v4, 0x5

    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, -0x1

    .line 11
    const/4 v7, 0x3

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x2

    .line 14
    const/4 v10, 0x1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 23
    .line 24
    .line 25
    move-result-object v11

    .line 26
    const/high16 v12, -0x40800000    # -1.0f

    .line 27
    .line 28
    const/4 v13, 0x0

    .line 29
    const/4 v14, 0x0

    .line 30
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v15

    .line 34
    sparse-switch v15, :sswitch_data_0

    .line 35
    .line 36
    .line 37
    :goto_0
    move v15, v6

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :sswitch_0
    const-string/jumbo v15, "dwb-logging-disable"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v15

    .line 47
    if-nez v15, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/16 v15, 0x20

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :sswitch_1
    const-string/jumbo v15, "clear-user-preferred-display-mode"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v15

    .line 61
    if-nez v15, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/16 v15, 0x1f

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :sswitch_2
    const-string/jumbo v15, "set-hdr-ramp-rate"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v15

    .line 75
    if-nez v15, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const/16 v15, 0x1e

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :sswitch_3
    const-string/jumbo v15, "set-user-disabled-hdr-types"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v15

    .line 89
    if-nez v15, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const/16 v15, 0x1d

    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :sswitch_4
    const-string/jumbo v15, "dmd-logging-enable"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v15

    .line 103
    if-nez v15, :cond_5

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    const/16 v15, 0x1c

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :sswitch_5
    const-string/jumbo v15, "dmd-logging-disable"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    if-nez v15, :cond_6

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_6
    const/16 v15, 0x1b

    .line 121
    .line 122
    goto/16 :goto_1

    .line 123
    .line 124
    :sswitch_6
    const-string/jumbo v15, "get-match-content-frame-rate-pref"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    if-nez v15, :cond_7

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_7
    const/16 v15, 0x1a

    .line 135
    .line 136
    goto/16 :goto_1

    .line 137
    .line 138
    :sswitch_7
    const-string/jumbo v15, "set-brightness"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    if-nez v15, :cond_8

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_8
    const/16 v15, 0x19

    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :sswitch_8
    const-string/jumbo v15, "set-match-content-frame-rate-pref"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v15

    .line 159
    if-nez v15, :cond_9

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_9
    const/16 v15, 0x18

    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :sswitch_9
    const-string/jumbo v15, "get-ambient-brightness-info"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v15

    .line 173
    if-nez v15, :cond_a

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_a
    const/16 v15, 0x17

    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :sswitch_a
    const-string/jumbo v15, "get-active-display-mode-at-start"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v15

    .line 188
    if-nez v15, :cond_b

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_b
    const/16 v15, 0x16

    .line 193
    .line 194
    goto/16 :goto_1

    .line 195
    .line 196
    :sswitch_b
    const-string v15, "ab-short-term-reset"

    .line 197
    .line 198
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v15

    .line 202
    if-nez v15, :cond_c

    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_c
    const/16 v15, 0x15

    .line 207
    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :sswitch_c
    const-string v15, "ab-logging-disable"

    .line 211
    .line 212
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v15

    .line 216
    if-nez v15, :cond_d

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_d
    const/16 v15, 0x14

    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :sswitch_d
    const-string v15, "ab-test-disable"

    .line 225
    .line 226
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v15

    .line 230
    if-nez v15, :cond_e

    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_e
    const/16 v15, 0x13

    .line 235
    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :sswitch_e
    const-string/jumbo v15, "power-on"

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v15

    .line 245
    if-nez v15, :cond_f

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :cond_f
    const/16 v15, 0x12

    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :sswitch_f
    const-string/jumbo v15, "dwb-set-cct"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v15

    .line 260
    if-nez v15, :cond_10

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_10
    const/16 v15, 0x11

    .line 265
    .line 266
    goto/16 :goto_1

    .line 267
    .line 268
    :sswitch_10
    const-string/jumbo v15, "power-off"

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v15

    .line 275
    if-nez v15, :cond_11

    .line 276
    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_11
    const/16 v15, 0x10

    .line 280
    .line 281
    goto/16 :goto_1

    .line 282
    .line 283
    :sswitch_11
    const-string v15, "ab-logging-enable"

    .line 284
    .line 285
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v15

    .line 289
    if-nez v15, :cond_12

    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_12
    move v15, v2

    .line 294
    goto/16 :goto_1

    .line 295
    .line 296
    :sswitch_12
    const-string/jumbo v15, "cancel-notifications"

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v15

    .line 303
    if-nez v15, :cond_13

    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_13
    const/16 v15, 0xe

    .line 308
    .line 309
    goto/16 :goto_1

    .line 310
    .line 311
    :sswitch_13
    const-string/jumbo v15, "disable-display"

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v15

    .line 318
    if-nez v15, :cond_14

    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :cond_14
    const/16 v15, 0xd

    .line 323
    .line 324
    goto/16 :goto_1

    .line 325
    .line 326
    :sswitch_14
    const-string/jumbo v15, "dock"

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v15

    .line 333
    if-nez v15, :cond_15

    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :cond_15
    const/16 v15, 0xc

    .line 338
    .line 339
    goto/16 :goto_1

    .line 340
    .line 341
    :sswitch_15
    const-string v15, "ab-inject-lux"

    .line 342
    .line 343
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v15

    .line 347
    if-nez v15, :cond_16

    .line 348
    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :cond_16
    const/16 v15, 0xb

    .line 352
    .line 353
    goto/16 :goto_1

    .line 354
    .line 355
    :sswitch_16
    const-string/jumbo v15, "show-notification"

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v15

    .line 362
    if-nez v15, :cond_17

    .line 363
    .line 364
    goto/16 :goto_0

    .line 365
    .line 366
    :cond_17
    const/16 v15, 0xa

    .line 367
    .line 368
    goto/16 :goto_1

    .line 369
    .line 370
    :sswitch_17
    const-string/jumbo v15, "get-user-preferred-display-mode"

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v15

    .line 377
    if-nez v15, :cond_18

    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :cond_18
    const/16 v15, 0x9

    .line 382
    .line 383
    goto/16 :goto_1

    .line 384
    .line 385
    :sswitch_18
    const-string/jumbo v15, "set-user-preferred-display-mode"

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v15

    .line 392
    if-nez v15, :cond_19

    .line 393
    .line 394
    goto/16 :goto_0

    .line 395
    .line 396
    :cond_19
    const/16 v15, 0x8

    .line 397
    .line 398
    goto/16 :goto_1

    .line 399
    .line 400
    :sswitch_19
    const-string/jumbo v15, "dwb-logging-enable"

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v15

    .line 407
    if-nez v15, :cond_1a

    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :cond_1a
    const/4 v15, 0x7

    .line 412
    goto :goto_1

    .line 413
    :sswitch_1a
    const-string/jumbo v15, "undock"

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v15

    .line 420
    if-nez v15, :cond_1b

    .line 421
    .line 422
    goto/16 :goto_0

    .line 423
    .line 424
    :cond_1b
    move v15, v3

    .line 425
    goto :goto_1

    .line 426
    :sswitch_1b
    const-string/jumbo v15, "get-user-disabled-hdr-types"

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v15

    .line 433
    if-nez v15, :cond_1c

    .line 434
    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :cond_1c
    move v15, v4

    .line 438
    goto :goto_1

    .line 439
    :sswitch_1c
    const-string v15, "ab-test-enable"

    .line 440
    .line 441
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v15

    .line 445
    if-nez v15, :cond_1d

    .line 446
    .line 447
    goto/16 :goto_0

    .line 448
    .line 449
    :cond_1d
    move v15, v5

    .line 450
    goto :goto_1

    .line 451
    :sswitch_1d
    const-string v15, "ab-add-brightness-weights"

    .line 452
    .line 453
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v15

    .line 457
    if-nez v15, :cond_1e

    .line 458
    .line 459
    goto/16 :goto_0

    .line 460
    .line 461
    :cond_1e
    move v15, v7

    .line 462
    goto :goto_1

    .line 463
    :sswitch_1e
    const-string/jumbo v15, "enable-display"

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result v15

    .line 470
    if-nez v15, :cond_1f

    .line 471
    .line 472
    goto/16 :goto_0

    .line 473
    .line 474
    :cond_1f
    move v15, v9

    .line 475
    goto :goto_1

    .line 476
    :sswitch_1f
    const-string/jumbo v15, "get-displays"

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v15

    .line 483
    if-nez v15, :cond_20

    .line 484
    .line 485
    goto/16 :goto_0

    .line 486
    .line 487
    :cond_20
    move v15, v10

    .line 488
    goto :goto_1

    .line 489
    :sswitch_20
    const-string/jumbo v15, "reset-brightness-configuration"

    .line 490
    .line 491
    .line 492
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    move-result v15

    .line 496
    if-nez v15, :cond_21

    .line 497
    .line 498
    goto/16 :goto_0

    .line 499
    .line 500
    :cond_21
    move v15, v8

    .line 501
    :goto_1
    packed-switch v15, :pswitch_data_0

    .line 502
    .line 503
    .line 504
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    return v0

    .line 509
    :pswitch_0
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayWhiteBalanceLoggingEnabled(Z)V

    .line 510
    .line 511
    .line 512
    return v8

    .line 513
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    if-eqz v1, :cond_22

    .line 518
    .line 519
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    goto :goto_2

    .line 524
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    const-string v1, "Error: invalid format of display ID"

    .line 529
    .line 530
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    move v8, v10

    .line 534
    goto :goto_3

    .line 535
    :cond_22
    :goto_2
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 536
    .line 537
    invoke-virtual {v0, v6, v13}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V

    .line 538
    .line 539
    .line 540
    :goto_3
    return v8

    .line 541
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    if-nez v1, :cond_23

    .line 546
    .line 547
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    const-string v1, "Error: no rate specified"

    .line 552
    .line 553
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    :goto_4
    move v8, v10

    .line 557
    goto :goto_7

    .line 558
    :cond_23
    :try_start_1
    const-string v2, ","

    .line 559
    .line 560
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    aget-object v2, v1, v8

    .line 565
    .line 566
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 567
    .line 568
    .line 569
    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 570
    :try_start_2
    aget-object v1, v1, v10

    .line 571
    .line 572
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 573
    .line 574
    .line 575
    move-result v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 576
    goto :goto_5

    .line 577
    :catch_1
    move v2, v12

    .line 578
    :catch_2
    :goto_5
    cmpg-float v1, v2, v14

    .line 579
    .line 580
    if-ltz v1, :cond_25

    .line 581
    .line 582
    cmpg-float v1, v12, v14

    .line 583
    .line 584
    if-gez v1, :cond_24

    .line 585
    .line 586
    goto :goto_6

    .line 587
    :cond_24
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 588
    .line 589
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 590
    .line 591
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    check-cast v0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 596
    .line 597
    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    .line 598
    .line 599
    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateHdrIncrease:F

    .line 600
    .line 601
    iput v12, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateHdrDecrease:F

    .line 602
    .line 603
    goto :goto_7

    .line 604
    :cond_25
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    const-string v1, "Error: rate should be a positive number"

    .line 609
    .line 610
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    goto :goto_4

    .line 614
    :goto_7
    return v8

    .line 615
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekRemainingArgs()[Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    if-nez v1, :cond_26

    .line 620
    .line 621
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    const-string v1, "Error: no userDisabledHdrTypes specified"

    .line 626
    .line 627
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    :goto_8
    move v8, v10

    .line 631
    goto :goto_a

    .line 632
    :cond_26
    array-length v2, v1

    .line 633
    new-array v2, v2, [I

    .line 634
    .line 635
    :try_start_3
    array-length v3, v1

    .line 636
    move v4, v8

    .line 637
    move v5, v4

    .line 638
    :goto_9
    if-ge v4, v3, :cond_27

    .line 639
    .line 640
    aget-object v6, v1, v4

    .line 641
    .line 642
    add-int/lit8 v7, v5, 0x1

    .line 643
    .line 644
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 645
    .line 646
    .line 647
    move-result v6

    .line 648
    aput v6, v2, v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 649
    .line 650
    add-int/2addr v4, v10

    .line 651
    move v5, v7

    .line 652
    goto :goto_9

    .line 653
    :cond_27
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 654
    .line 655
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 660
    .line 661
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 666
    .line 667
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->setUserDisabledHdrTypes([I)V

    .line 668
    .line 669
    .line 670
    goto :goto_a

    .line 671
    :catch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    const-string v1, "Error: invalid format of userDisabledHdrTypes"

    .line 676
    .line 677
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    goto :goto_8

    .line 681
    :goto_a
    return v8

    .line 682
    :pswitch_4
    invoke-virtual {v0, v10}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayModeDirectorLoggingEnabled(Z)V

    .line 683
    .line 684
    .line 685
    return v8

    .line 686
    :pswitch_5
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayModeDirectorLoggingEnabled(Z)V

    .line 687
    .line 688
    .line 689
    return v8

    .line 690
    :pswitch_6
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 691
    .line 692
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 697
    .line 698
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 703
    .line 704
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    .line 709
    .line 710
    const-string v3, "Match content frame rate type: "

    .line 711
    .line 712
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getMatchContentFrameRateUserPreference()I

    .line 716
    .line 717
    .line 718
    move-result v1

    .line 719
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    return v8

    .line 730
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    if-nez v1, :cond_28

    .line 735
    .line 736
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    const-string v1, "Error: no brightness specified"

    .line 741
    .line 742
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    :goto_b
    move v8, v10

    .line 746
    goto :goto_d

    .line 747
    :cond_28
    :try_start_4
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 748
    .line 749
    .line 750
    move-result v12
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 751
    :catch_4
    cmpg-float v1, v12, v14

    .line 752
    .line 753
    if-ltz v1, :cond_2a

    .line 754
    .line 755
    const/high16 v1, 0x3f800000    # 1.0f

    .line 756
    .line 757
    cmpl-float v1, v12, v1

    .line 758
    .line 759
    if-lez v1, :cond_29

    .line 760
    .line 761
    goto :goto_c

    .line 762
    :cond_29
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 763
    .line 764
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 769
    .line 770
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 775
    .line 776
    invoke-virtual {v0, v8, v12}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    .line 777
    .line 778
    .line 779
    goto :goto_d

    .line 780
    :cond_2a
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    const-string v1, "Error: brightness should be a number between 0 and 1"

    .line 785
    .line 786
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    goto :goto_b

    .line 790
    :goto_d
    return v8

    .line 791
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    if-nez v1, :cond_2b

    .line 796
    .line 797
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    const-string v1, "Error: no matchContentFrameRatePref specified"

    .line 802
    .line 803
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    :goto_e
    move v8, v10

    .line 807
    goto :goto_10

    .line 808
    :cond_2b
    :try_start_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 809
    .line 810
    .line 811
    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 812
    if-gez v1, :cond_2c

    .line 813
    .line 814
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    const-string v1, "Error: invalid value of matchContentFrameRatePreference"

    .line 819
    .line 820
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    goto :goto_e

    .line 824
    :cond_2c
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 825
    .line 826
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 831
    .line 832
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 837
    .line 838
    if-eqz v1, :cond_2f

    .line 839
    .line 840
    if-eq v1, v10, :cond_2e

    .line 841
    .line 842
    if-eq v1, v9, :cond_2d

    .line 843
    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    .line 845
    .line 846
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    const-string v1, " is not a valid value of matchContentFrameRate type."

    .line 853
    .line 854
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    const-string v2, "DisplayManagerShellCommand"

    .line 862
    .line 863
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    .line 865
    .line 866
    goto :goto_f

    .line 867
    :cond_2d
    move v6, v9

    .line 868
    goto :goto_f

    .line 869
    :cond_2e
    move v6, v10

    .line 870
    goto :goto_f

    .line 871
    :cond_2f
    move v6, v8

    .line 872
    :goto_f
    invoke-virtual {v0, v6}, Landroid/hardware/display/DisplayManager;->setRefreshRateSwitchingType(I)V

    .line 873
    .line 874
    .line 875
    goto :goto_10

    .line 876
    :catch_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    const-string v1, "Error: invalid format of matchContentFrameRatePreference"

    .line 881
    .line 882
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    goto :goto_e

    .line 886
    :goto_10
    return v8

    .line 887
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v1

    .line 891
    if-nez v1, :cond_30

    .line 892
    .line 893
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    const-string v1, "Error: no lux specified"

    .line 898
    .line 899
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    :goto_11
    move v8, v10

    .line 903
    goto :goto_12

    .line 904
    :cond_30
    :try_start_6
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 905
    .line 906
    .line 907
    move-result v12
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 908
    :catch_6
    cmpg-float v1, v12, v14

    .line 909
    .line 910
    if-gez v1, :cond_31

    .line 911
    .line 912
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    const-string v1, "Error: lux should be a positive number"

    .line 917
    .line 918
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    goto :goto_11

    .line 922
    :cond_31
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 923
    .line 924
    invoke-virtual {v0, v12}, Lcom/android/server/display/DisplayManagerService;->getAmbientBrightnessInfo(F)Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    :goto_12
    return v8

    .line 932
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v1

    .line 936
    if-nez v1, :cond_32

    .line 937
    .line 938
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    const-string v1, "Error: no displayId specified"

    .line 943
    .line 944
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    :goto_13
    move v8, v10

    .line 948
    goto :goto_16

    .line 949
    :cond_32
    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 950
    .line 951
    .line 952
    move-result v1
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    .line 953
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 954
    .line 955
    iget-object v3, v2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 956
    .line 957
    monitor-enter v3

    .line 958
    :try_start_8
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    .line 959
    .line 960
    .line 961
    move-result-object v1

    .line 962
    if-nez v1, :cond_33

    .line 963
    .line 964
    monitor-exit v3

    .line 965
    goto :goto_14

    .line 966
    :catchall_0
    move-exception v0

    .line 967
    goto :goto_15

    .line 968
    :cond_33
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getActiveDisplayModeAtStartLocked()Landroid/view/Display$Mode;

    .line 969
    .line 970
    .line 971
    move-result-object v13

    .line 972
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 973
    :goto_14
    if-nez v13, :cond_34

    .line 974
    .line 975
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 976
    .line 977
    .line 978
    move-result-object v0

    .line 979
    const-string v1, "Boot display mode: null"

    .line 980
    .line 981
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    goto :goto_16

    .line 985
    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    .line 990
    .line 991
    const-string v2, "Boot display mode: "

    .line 992
    .line 993
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v13}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 997
    .line 998
    .line 999
    move-result v2

    .line 1000
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    const-string v2, " "

    .line 1004
    .line 1005
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v13}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 1009
    .line 1010
    .line 1011
    move-result v2

    .line 1012
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    .line 1015
    const-string v2, " "

    .line 1016
    .line 1017
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v13}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 1021
    .line 1022
    .line 1023
    move-result v2

    .line 1024
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v1

    .line 1031
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    goto :goto_16

    .line 1035
    :goto_15
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1036
    throw v0

    .line 1037
    :catch_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    const-string v1, "Error: invalid displayId"

    .line 1042
    .line 1043
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    .line 1045
    .line 1046
    goto :goto_13

    .line 1047
    :goto_16
    return v8

    .line 1048
    :pswitch_b
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 1049
    .line 1050
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 1051
    .line 1052
    monitor-enter v1

    .line 1053
    :try_start_a
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 1054
    .line 1055
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    check-cast v0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 1060
    .line 1061
    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    .line 1062
    .line 1063
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1064
    .line 1065
    if-eqz v2, :cond_35

    .line 1066
    .line 1067
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    .line 1068
    .line 1069
    const-string v3, "ShortTermModel: shell cmd"

    .line 1070
    .line 1071
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1072
    .line 1073
    .line 1074
    new-instance v4, Lcom/android/server/power/PowerHistorian$MessageRecord;

    .line 1075
    .line 1076
    invoke-direct {v4, v3}, Lcom/android/server/power/PowerHistorian$MessageRecord;-><init>(Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v2, v7, v4}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    .line 1080
    .line 1081
    .line 1082
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1083
    .line 1084
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 1085
    .line 1086
    .line 1087
    :cond_35
    monitor-exit v1

    .line 1088
    return v8

    .line 1089
    :catchall_1
    move-exception v0

    .line 1090
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1091
    throw v0

    .line 1092
    :pswitch_c
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayManagerShellCommand;->setAutoBrightnessLoggingEnabled(Z)V

    .line 1093
    .line 1094
    .line 1095
    return v8

    .line 1096
    :pswitch_d
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayManagerShellCommand;->setTestModeEnabled(Z)V

    .line 1097
    .line 1098
    .line 1099
    return v8

    .line 1100
    :pswitch_e
    invoke-virtual {v0, v10}, Lcom/android/server/display/DisplayManagerShellCommand;->requestDisplayPower(Z)I

    .line 1101
    .line 1102
    .line 1103
    move-result v0

    .line 1104
    return v0

    .line 1105
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v1

    .line 1109
    if-nez v1, :cond_36

    .line 1110
    .line 1111
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    const-string v1, "Error: no cct specified"

    .line 1116
    .line 1117
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    :goto_17
    move v8, v10

    .line 1121
    goto :goto_18

    .line 1122
    :cond_36
    :try_start_b
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1123
    .line 1124
    .line 1125
    move-result v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_8

    .line 1126
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 1127
    .line 1128
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 1129
    .line 1130
    monitor-enter v3

    .line 1131
    :try_start_c
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 1132
    .line 1133
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v0

    .line 1137
    check-cast v0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 1138
    .line 1139
    if-eqz v0, :cond_37

    .line 1140
    .line 1141
    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    .line 1142
    .line 1143
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 1144
    .line 1145
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1150
    .line 1151
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 1152
    .line 1153
    .line 1154
    move-result v1

    .line 1155
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1156
    .line 1157
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1158
    .line 1159
    .line 1160
    :cond_37
    monitor-exit v3

    .line 1161
    goto :goto_18

    .line 1162
    :catchall_2
    move-exception v0

    .line 1163
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1164
    throw v0

    .line 1165
    :catch_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v0

    .line 1169
    const-string v1, "Error: cct should be a number"

    .line 1170
    .line 1171
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1172
    .line 1173
    .line 1174
    goto :goto_17

    .line 1175
    :goto_18
    return v8

    .line 1176
    :pswitch_10
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayManagerShellCommand;->requestDisplayPower(Z)I

    .line 1177
    .line 1178
    .line 1179
    move-result v0

    .line 1180
    return v0

    .line 1181
    :pswitch_11
    invoke-virtual {v0, v10}, Lcom/android/server/display/DisplayManagerShellCommand;->setAutoBrightnessLoggingEnabled(Z)V

    .line 1182
    .line 1183
    .line 1184
    return v8

    .line 1185
    :pswitch_12
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 1186
    .line 1187
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 1188
    .line 1189
    iget-object v0, v0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1190
    .line 1191
    const-string v1, "DisplayNotificationManager"

    .line 1192
    .line 1193
    if-nez v0, :cond_38

    .line 1194
    .line 1195
    const-string v0, "Can\'t cancelNotifications: NotificationManager is null"

    .line 1196
    .line 1197
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    .line 1199
    .line 1200
    goto :goto_19

    .line 1201
    :cond_38
    invoke-virtual {v0, v1, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1202
    .line 1203
    .line 1204
    :goto_19
    return v8

    .line 1205
    :pswitch_13
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayEnabled(Z)I

    .line 1206
    .line 1207
    .line 1208
    move-result v0

    .line 1209
    return v0

    .line 1210
    :pswitch_14
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 1211
    .line 1212
    invoke-virtual {v0, v10}, Lcom/android/server/display/DisplayManagerService;->setDockedAndIdleEnabled(Z)V

    .line 1213
    .line 1214
    .line 1215
    return v8

    .line 1216
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v1

    .line 1220
    if-eqz v1, :cond_3c

    .line 1221
    .line 1222
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1223
    .line 1224
    .line 1225
    move-result v1

    .line 1226
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v2

    .line 1230
    if-eqz v2, :cond_39

    .line 1231
    .line 1232
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1233
    .line 1234
    .line 1235
    move-result v2

    .line 1236
    goto :goto_1a

    .line 1237
    :cond_39
    move v2, v14

    .line 1238
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v3

    .line 1242
    if-eqz v3, :cond_3a

    .line 1243
    .line 1244
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1245
    .line 1246
    .line 1247
    move-result v14

    .line 1248
    :cond_3a
    new-instance v3, Landroid/hardware/SensorEvent;

    .line 1249
    .line 1250
    new-array v4, v7, [F

    .line 1251
    .line 1252
    aput v1, v4, v8

    .line 1253
    .line 1254
    aput v2, v4, v10

    .line 1255
    .line 1256
    aput v14, v4, v9

    .line 1257
    .line 1258
    const/16 v17, 0x0

    .line 1259
    .line 1260
    const-wide/16 v18, 0x0

    .line 1261
    .line 1262
    const/16 v16, 0x0

    .line 1263
    .line 1264
    move-object v15, v3

    .line 1265
    move-object/from16 v20, v4

    .line 1266
    .line 1267
    invoke-direct/range {v15 .. v20}, Landroid/hardware/SensorEvent;-><init>(Landroid/hardware/Sensor;IJ[F)V

    .line 1268
    .line 1269
    .line 1270
    const-string v2, "DisplayManagerShellCommand"

    .line 1271
    .line 1272
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1273
    .line 1274
    const-string/jumbo v5, "injectLux: lux: "

    .line 1275
    .line 1276
    .line 1277
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1278
    .line 1279
    .line 1280
    iget-object v5, v3, Landroid/hardware/SensorEvent;->values:[F

    .line 1281
    .line 1282
    aget v5, v5, v8

    .line 1283
    .line 1284
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    .line 1287
    const-string v5, " minLux: "

    .line 1288
    .line 1289
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    .line 1291
    .line 1292
    iget-object v5, v3, Landroid/hardware/SensorEvent;->values:[F

    .line 1293
    .line 1294
    aget v5, v5, v10

    .line 1295
    .line 1296
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1297
    .line 1298
    .line 1299
    const-string v5, " fromRear: "

    .line 1300
    .line 1301
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    .line 1304
    iget-object v5, v3, Landroid/hardware/SensorEvent;->values:[F

    .line 1305
    .line 1306
    aget v5, v5, v9

    .line 1307
    .line 1308
    invoke-static {v4, v5, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    .line 1309
    .line 1310
    .line 1311
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 1312
    .line 1313
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayManagerService;->getAmbientBrightnessInfo(F)Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v1

    .line 1317
    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    .line 1319
    .line 1320
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 1321
    .line 1322
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 1323
    .line 1324
    monitor-enter v1

    .line 1325
    :try_start_d
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 1326
    .line 1327
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v0

    .line 1331
    check-cast v0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 1332
    .line 1333
    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    .line 1334
    .line 1335
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1336
    .line 1337
    if-eqz v0, :cond_3b

    .line 1338
    .line 1339
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;

    .line 1340
    .line 1341
    invoke-direct {v2, v0, v3}, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/hardware/SensorEvent;)V

    .line 1342
    .line 1343
    .line 1344
    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 1345
    .line 1346
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1347
    .line 1348
    .line 1349
    :cond_3b
    monitor-exit v1

    .line 1350
    return v8

    .line 1351
    :catchall_3
    move-exception v0

    .line 1352
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1353
    throw v0

    .line 1354
    :cond_3c
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1355
    .line 1356
    const-string/jumbo v1, "lux argument is required!"

    .line 1357
    .line 1358
    .line 1359
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1360
    .line 1361
    .line 1362
    throw v0

    .line 1363
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v1

    .line 1367
    if-nez v1, :cond_3d

    .line 1368
    .line 1369
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v0

    .line 1373
    const-string v1, "Error: no notificationType specified, use one of: on-hotplug-error, on-link-training-failure, on-cable-dp-incapable"

    .line 1374
    .line 1375
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1376
    .line 1377
    .line 1378
    :goto_1b
    move v8, v10

    .line 1379
    goto :goto_1d

    .line 1380
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 1381
    .line 1382
    .line 1383
    move-result v2

    .line 1384
    sparse-switch v2, :sswitch_data_1

    .line 1385
    .line 1386
    .line 1387
    goto :goto_1c

    .line 1388
    :sswitch_21
    const-string/jumbo v2, "on-link-training-failure"

    .line 1389
    .line 1390
    .line 1391
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1392
    .line 1393
    .line 1394
    move-result v2

    .line 1395
    if-nez v2, :cond_3e

    .line 1396
    .line 1397
    goto :goto_1c

    .line 1398
    :cond_3e
    move v6, v9

    .line 1399
    goto :goto_1c

    .line 1400
    :sswitch_22
    const-string/jumbo v2, "on-hotplug-error"

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1404
    .line 1405
    .line 1406
    move-result v2

    .line 1407
    if-nez v2, :cond_3f

    .line 1408
    .line 1409
    goto :goto_1c

    .line 1410
    :cond_3f
    move v6, v10

    .line 1411
    goto :goto_1c

    .line 1412
    :sswitch_23
    const-string/jumbo v2, "on-cable-dp-incapable"

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1416
    .line 1417
    .line 1418
    move-result v2

    .line 1419
    if-nez v2, :cond_40

    .line 1420
    .line 1421
    goto :goto_1c

    .line 1422
    :cond_40
    move v6, v8

    .line 1423
    :goto_1c
    packed-switch v6, :pswitch_data_1

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v0

    .line 1430
    const-string v2, "Error: unexpected notification type="

    .line 1431
    .line 1432
    const-string v3, ", use one of: on-hotplug-error, on-link-training-failure, on-cable-dp-incapable"

    .line 1433
    .line 1434
    invoke-static {v0, v2, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    .line 1436
    .line 1437
    goto :goto_1b

    .line 1438
    :pswitch_17
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 1439
    .line 1440
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 1441
    .line 1442
    invoke-virtual {v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->onDisplayPortLinkTrainingFailure()V

    .line 1443
    .line 1444
    .line 1445
    goto :goto_1d

    .line 1446
    :pswitch_18
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 1447
    .line 1448
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 1449
    .line 1450
    invoke-virtual {v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->onHotplugConnectionError()V

    .line 1451
    .line 1452
    .line 1453
    goto :goto_1d

    .line 1454
    :pswitch_19
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 1455
    .line 1456
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    .line 1457
    .line 1458
    invoke-virtual {v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->onCableNotCapableDisplayPort()V

    .line 1459
    .line 1460
    .line 1461
    :goto_1d
    return v8

    .line 1462
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v1

    .line 1466
    if-eqz v1, :cond_41

    .line 1467
    .line 1468
    :try_start_e
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1469
    .line 1470
    .line 1471
    move-result v6
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_9

    .line 1472
    goto :goto_1e

    .line 1473
    :catch_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v0

    .line 1477
    const-string v1, "Error: invalid format of display ID"

    .line 1478
    .line 1479
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    .line 1481
    .line 1482
    move v8, v10

    .line 1483
    goto :goto_1f

    .line 1484
    :cond_41
    :goto_1e
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 1485
    .line 1486
    invoke-virtual {v1, v6}, Lcom/android/server/display/DisplayManagerService;->getUserPreferredDisplayModeInternal(I)Landroid/view/Display$Mode;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v1

    .line 1490
    if-nez v1, :cond_42

    .line 1491
    .line 1492
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v0

    .line 1496
    const-string v1, "User preferred display mode: null"

    .line 1497
    .line 1498
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    .line 1500
    .line 1501
    goto :goto_1f

    .line 1502
    :cond_42
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v0

    .line 1506
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1507
    .line 1508
    const-string v3, "User preferred display mode: "

    .line 1509
    .line 1510
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 1514
    .line 1515
    .line 1516
    move-result v3

    .line 1517
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1518
    .line 1519
    .line 1520
    const-string v3, " "

    .line 1521
    .line 1522
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    .line 1524
    .line 1525
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 1526
    .line 1527
    .line 1528
    move-result v4

    .line 1529
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    .line 1534
    .line 1535
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 1536
    .line 1537
    .line 1538
    move-result v1

    .line 1539
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1540
    .line 1541
    .line 1542
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v1

    .line 1546
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    .line 1548
    .line 1549
    :goto_1f
    return v8

    .line 1550
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v1

    .line 1554
    if-nez v1, :cond_43

    .line 1555
    .line 1556
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v0

    .line 1560
    const-string v1, "Error: no width specified"

    .line 1561
    .line 1562
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1563
    .line 1564
    .line 1565
    :goto_20
    move v8, v10

    .line 1566
    goto :goto_22

    .line 1567
    :cond_43
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v2

    .line 1571
    if-nez v2, :cond_44

    .line 1572
    .line 1573
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v0

    .line 1577
    const-string v1, "Error: no height specified"

    .line 1578
    .line 1579
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1580
    .line 1581
    .line 1582
    goto :goto_20

    .line 1583
    :cond_44
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v3

    .line 1587
    if-nez v3, :cond_45

    .line 1588
    .line 1589
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v0

    .line 1593
    const-string v1, "Error: no refresh-rate specified"

    .line 1594
    .line 1595
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1596
    .line 1597
    .line 1598
    goto :goto_20

    .line 1599
    :cond_45
    :try_start_f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1600
    .line 1601
    .line 1602
    move-result v1

    .line 1603
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1604
    .line 1605
    .line 1606
    move-result v2

    .line 1607
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1608
    .line 1609
    .line 1610
    move-result v3
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_b

    .line 1611
    if-ltz v1, :cond_46

    .line 1612
    .line 1613
    if-gez v2, :cond_47

    .line 1614
    .line 1615
    :cond_46
    cmpg-float v4, v3, v14

    .line 1616
    .line 1617
    if-gtz v4, :cond_47

    .line 1618
    .line 1619
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v0

    .line 1623
    const-string v1, "Error: invalid value of resolution (width, height) and refresh rate"

    .line 1624
    .line 1625
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    .line 1627
    .line 1628
    goto :goto_20

    .line 1629
    :cond_47
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v4

    .line 1633
    if-eqz v4, :cond_48

    .line 1634
    .line 1635
    :try_start_10
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1636
    .line 1637
    .line 1638
    move-result v6
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_a

    .line 1639
    goto :goto_21

    .line 1640
    :catch_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v0

    .line 1644
    const-string v1, "Error: invalid format of display ID"

    .line 1645
    .line 1646
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1647
    .line 1648
    .line 1649
    goto :goto_20

    .line 1650
    :cond_48
    :goto_21
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 1651
    .line 1652
    new-instance v4, Landroid/view/Display$Mode;

    .line 1653
    .line 1654
    invoke-direct {v4, v1, v2, v3}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 1655
    .line 1656
    .line 1657
    invoke-virtual {v0, v6, v4}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V

    .line 1658
    .line 1659
    .line 1660
    goto :goto_22

    .line 1661
    :catch_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1662
    .line 1663
    .line 1664
    move-result-object v0

    .line 1665
    const-string v1, "Error: invalid format of width, height or refresh rate"

    .line 1666
    .line 1667
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1668
    .line 1669
    .line 1670
    goto :goto_20

    .line 1671
    :goto_22
    return v8

    .line 1672
    :pswitch_1c
    invoke-virtual {v0, v10}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayWhiteBalanceLoggingEnabled(Z)V

    .line 1673
    .line 1674
    .line 1675
    return v8

    .line 1676
    :pswitch_1d
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 1677
    .line 1678
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayManagerService;->setDockedAndIdleEnabled(Z)V

    .line 1679
    .line 1680
    .line 1681
    return v8

    .line 1682
    :pswitch_1e
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 1683
    .line 1684
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 1685
    .line 1686
    .line 1687
    move-result-object v1

    .line 1688
    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 1689
    .line 1690
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v1

    .line 1694
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 1695
    .line 1696
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getUserDisabledHdrTypes()[I

    .line 1697
    .line 1698
    .line 1699
    move-result-object v1

    .line 1700
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v0

    .line 1704
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1705
    .line 1706
    const-string v3, "User disabled HDR types: "

    .line 1707
    .line 1708
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1709
    .line 1710
    .line 1711
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v1

    .line 1715
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    .line 1717
    .line 1718
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1719
    .line 1720
    .line 1721
    move-result-object v1

    .line 1722
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    .line 1724
    .line 1725
    return v8

    .line 1726
    :pswitch_1f
    invoke-virtual {v0, v10}, Lcom/android/server/display/DisplayManagerShellCommand;->setTestModeEnabled(Z)V

    .line 1727
    .line 1728
    .line 1729
    return v8

    .line 1730
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayManagerShellCommand;->addBrightnessWeights()I

    .line 1731
    .line 1732
    .line 1733
    move-result v0

    .line 1734
    return v0

    .line 1735
    :pswitch_21
    invoke-virtual {v0, v10}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayEnabled(Z)I

    .line 1736
    .line 1737
    .line 1738
    move-result v0

    .line 1739
    return v0

    .line 1740
    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v1

    .line 1744
    new-instance v2, Ljava/util/ArrayList;

    .line 1745
    .line 1746
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1747
    .line 1748
    .line 1749
    move v11, v8

    .line 1750
    move v12, v11

    .line 1751
    :goto_23
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v14

    .line 1755
    if-eqz v14, :cond_58

    .line 1756
    .line 1757
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 1758
    .line 1759
    .line 1760
    move-result v15

    .line 1761
    sparse-switch v15, :sswitch_data_2

    .line 1762
    .line 1763
    .line 1764
    :goto_24
    move v15, v6

    .line 1765
    goto :goto_25

    .line 1766
    :sswitch_24
    const-string v15, "--type"

    .line 1767
    .line 1768
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1769
    .line 1770
    .line 1771
    move-result v15

    .line 1772
    if-nez v15, :cond_49

    .line 1773
    .line 1774
    goto :goto_24

    .line 1775
    :cond_49
    move v15, v3

    .line 1776
    goto :goto_25

    .line 1777
    :sswitch_25
    const-string v15, "--ids-only"

    .line 1778
    .line 1779
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1780
    .line 1781
    .line 1782
    move-result v15

    .line 1783
    if-nez v15, :cond_4a

    .line 1784
    .line 1785
    goto :goto_24

    .line 1786
    :cond_4a
    move v15, v4

    .line 1787
    goto :goto_25

    .line 1788
    :sswitch_26
    const-string v15, "--category"

    .line 1789
    .line 1790
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1791
    .line 1792
    .line 1793
    move-result v15

    .line 1794
    if-nez v15, :cond_4b

    .line 1795
    .line 1796
    goto :goto_24

    .line 1797
    :cond_4b
    move v15, v5

    .line 1798
    goto :goto_25

    .line 1799
    :sswitch_27
    const-string v15, "-t"

    .line 1800
    .line 1801
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1802
    .line 1803
    .line 1804
    move-result v15

    .line 1805
    if-nez v15, :cond_4c

    .line 1806
    .line 1807
    goto :goto_24

    .line 1808
    :cond_4c
    move v15, v7

    .line 1809
    goto :goto_25

    .line 1810
    :sswitch_28
    const-string v15, "-i"

    .line 1811
    .line 1812
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1813
    .line 1814
    .line 1815
    move-result v15

    .line 1816
    if-nez v15, :cond_4d

    .line 1817
    .line 1818
    goto :goto_24

    .line 1819
    :cond_4d
    move v15, v9

    .line 1820
    goto :goto_25

    .line 1821
    :sswitch_29
    const-string v15, "-c"

    .line 1822
    .line 1823
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1824
    .line 1825
    .line 1826
    move-result v15

    .line 1827
    if-nez v15, :cond_4e

    .line 1828
    .line 1829
    goto :goto_24

    .line 1830
    :cond_4e
    move v15, v10

    .line 1831
    goto :goto_25

    .line 1832
    :sswitch_2a
    const-string v15, ""

    .line 1833
    .line 1834
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1835
    .line 1836
    .line 1837
    move-result v15

    .line 1838
    if-nez v15, :cond_4f

    .line 1839
    .line 1840
    goto :goto_24

    .line 1841
    :cond_4f
    move v15, v8

    .line 1842
    :goto_25
    packed-switch v15, :pswitch_data_2

    .line 1843
    .line 1844
    .line 1845
    const-string v0, "Error: unknown option \'"

    .line 1846
    .line 1847
    const-string v2, "\'"

    .line 1848
    .line 1849
    invoke-static {v1, v0, v14, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    .line 1851
    .line 1852
    :goto_26
    move v8, v10

    .line 1853
    goto/16 :goto_2c

    .line 1854
    .line 1855
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v12

    .line 1859
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1860
    .line 1861
    invoke-virtual {v12, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v12

    .line 1865
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1866
    .line 1867
    .line 1868
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 1869
    .line 1870
    .line 1871
    move-result v14

    .line 1872
    sparse-switch v14, :sswitch_data_3

    .line 1873
    .line 1874
    .line 1875
    :goto_27
    move v14, v6

    .line 1876
    goto :goto_28

    .line 1877
    :sswitch_2b
    const-string v14, "INTERNAL"

    .line 1878
    .line 1879
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1880
    .line 1881
    .line 1882
    move-result v14

    .line 1883
    if-nez v14, :cond_50

    .line 1884
    .line 1885
    goto :goto_27

    .line 1886
    :cond_50
    move v14, v4

    .line 1887
    goto :goto_28

    .line 1888
    :sswitch_2c
    const-string v14, "VIRTUAL"

    .line 1889
    .line 1890
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1891
    .line 1892
    .line 1893
    move-result v14

    .line 1894
    if-nez v14, :cond_51

    .line 1895
    .line 1896
    goto :goto_27

    .line 1897
    :cond_51
    move v14, v5

    .line 1898
    goto :goto_28

    .line 1899
    :sswitch_2d
    const-string v14, "UNKNOWN"

    .line 1900
    .line 1901
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1902
    .line 1903
    .line 1904
    move-result v14

    .line 1905
    if-nez v14, :cond_52

    .line 1906
    .line 1907
    goto :goto_27

    .line 1908
    :cond_52
    move v14, v7

    .line 1909
    goto :goto_28

    .line 1910
    :sswitch_2e
    const-string v14, "WIFI"

    .line 1911
    .line 1912
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1913
    .line 1914
    .line 1915
    move-result v14

    .line 1916
    if-nez v14, :cond_53

    .line 1917
    .line 1918
    goto :goto_27

    .line 1919
    :cond_53
    move v14, v9

    .line 1920
    goto :goto_28

    .line 1921
    :sswitch_2f
    const-string v14, "OVERLAY"

    .line 1922
    .line 1923
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1924
    .line 1925
    .line 1926
    move-result v14

    .line 1927
    if-nez v14, :cond_54

    .line 1928
    .line 1929
    goto :goto_27

    .line 1930
    :cond_54
    move v14, v10

    .line 1931
    goto :goto_28

    .line 1932
    :sswitch_30
    const-string v14, "EXTERNAL"

    .line 1933
    .line 1934
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1935
    .line 1936
    .line 1937
    move-result v14

    .line 1938
    if-nez v14, :cond_55

    .line 1939
    .line 1940
    goto :goto_27

    .line 1941
    :cond_55
    move v14, v8

    .line 1942
    :goto_28
    packed-switch v14, :pswitch_data_3

    .line 1943
    .line 1944
    .line 1945
    const-string v14, "Error: argument for display type should be one of \'UNKNOWN\', \'INTERNAL\', \'EXTERNAL\', \'WIFI\', \'OVERLAY\', \'VIRTUAL\', but got \'"

    .line 1946
    .line 1947
    const-string v15, "\' instead."

    .line 1948
    .line 1949
    invoke-static {v1, v14, v12, v15}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    .line 1951
    .line 1952
    move v12, v6

    .line 1953
    goto :goto_29

    .line 1954
    :pswitch_25
    move v12, v10

    .line 1955
    goto :goto_29

    .line 1956
    :pswitch_26
    move v12, v4

    .line 1957
    goto :goto_29

    .line 1958
    :pswitch_27
    move v12, v8

    .line 1959
    goto :goto_29

    .line 1960
    :pswitch_28
    move v12, v7

    .line 1961
    goto :goto_29

    .line 1962
    :pswitch_29
    move v12, v5

    .line 1963
    goto :goto_29

    .line 1964
    :pswitch_2a
    move v12, v9

    .line 1965
    :goto_29
    if-ne v12, v6, :cond_56

    .line 1966
    .line 1967
    goto :goto_26

    .line 1968
    :cond_56
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1969
    .line 1970
    .line 1971
    move-result-object v12

    .line 1972
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1973
    .line 1974
    .line 1975
    move v12, v10

    .line 1976
    goto/16 :goto_23

    .line 1977
    .line 1978
    :pswitch_2b
    move v11, v10

    .line 1979
    goto/16 :goto_23

    .line 1980
    .line 1981
    :pswitch_2c
    if-eqz v13, :cond_57

    .line 1982
    .line 1983
    const-string v0, "Error: the category has been specified more than one time. Please select only one category."

    .line 1984
    .line 1985
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1986
    .line 1987
    .line 1988
    goto/16 :goto_26

    .line 1989
    .line 1990
    :cond_57
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1991
    .line 1992
    .line 1993
    move-result-object v13

    .line 1994
    goto/16 :goto_23

    .line 1995
    .line 1996
    :cond_58
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1997
    .line 1998
    .line 1999
    move-result-object v3

    .line 2000
    if-eqz v3, :cond_5a

    .line 2001
    .line 2002
    if-eqz v13, :cond_59

    .line 2003
    .line 2004
    const-string v0, "Error: the category has been specified both with the -c option and the positional argument. Please select only one category."

    .line 2005
    .line 2006
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2007
    .line 2008
    .line 2009
    goto/16 :goto_26

    .line 2010
    .line 2011
    :cond_59
    move-object v13, v3

    .line 2012
    :cond_5a
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 2013
    .line 2014
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2015
    .line 2016
    .line 2017
    move-result-object v0

    .line 2018
    const-class v3, Landroid/hardware/display/DisplayManager;

    .line 2019
    .line 2020
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v0

    .line 2024
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 2025
    .line 2026
    invoke-virtual {v0, v13}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 2027
    .line 2028
    .line 2029
    move-result-object v0

    .line 2030
    if-eqz v12, :cond_5b

    .line 2031
    .line 2032
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 2033
    .line 2034
    .line 2035
    move-result-object v0

    .line 2036
    new-instance v3, Lcom/android/server/display/DisplayManagerShellCommand$$ExternalSyntheticLambda0;

    .line 2037
    .line 2038
    invoke-direct {v3, v2}, Lcom/android/server/display/DisplayManagerShellCommand$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 2039
    .line 2040
    .line 2041
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 2042
    .line 2043
    .line 2044
    move-result-object v0

    .line 2045
    new-instance v2, Lcom/android/server/display/DisplayManagerShellCommand$$ExternalSyntheticLambda1;

    .line 2046
    .line 2047
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2048
    .line 2049
    .line 2050
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 2051
    .line 2052
    .line 2053
    move-result-object v0

    .line 2054
    check-cast v0, [Landroid/view/Display;

    .line 2055
    .line 2056
    :cond_5b
    if-nez v11, :cond_5c

    .line 2057
    .line 2058
    const-string v2, "Displays:"

    .line 2059
    .line 2060
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2061
    .line 2062
    .line 2063
    :cond_5c
    move v2, v8

    .line 2064
    :goto_2a
    array-length v3, v0

    .line 2065
    if-ge v2, v3, :cond_5e

    .line 2066
    .line 2067
    if-eqz v11, :cond_5d

    .line 2068
    .line 2069
    aget-object v3, v0, v2

    .line 2070
    .line 2071
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 2072
    .line 2073
    .line 2074
    move-result v3

    .line 2075
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2076
    .line 2077
    .line 2078
    move-result-object v3

    .line 2079
    goto :goto_2b

    .line 2080
    :cond_5d
    aget-object v3, v0, v2

    .line 2081
    .line 2082
    :goto_2b
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2083
    .line 2084
    .line 2085
    add-int/2addr v2, v10

    .line 2086
    goto :goto_2a

    .line 2087
    :cond_5e
    :goto_2c
    return v8

    .line 2088
    :pswitch_2d
    iget-object v0, v0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 2089
    .line 2090
    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->resetBrightnessConfigurations()V

    .line 2091
    .line 2092
    .line 2093
    return v8

    .line 2094
    nop

    .line 2095
    :sswitch_data_0
    .sparse-switch
        -0x59bb9cc8 -> :sswitch_20
        -0x56ff2b78 -> :sswitch_1f
        -0x49211188 -> :sswitch_1e
        -0x42826ca9 -> :sswitch_1d
        -0x3e25a88e -> :sswitch_1c
        -0x3cdc7364 -> :sswitch_1b
        -0x321bc3b4 -> :sswitch_1a
        -0x2b98d0f1 -> :sswitch_19
        -0x28f4f10f -> :sswitch_18
        -0x23de541b -> :sswitch_17
        -0x1bb0aa45 -> :sswitch_16
        -0x9243d01 -> :sswitch_15
        0x2f2233 -> :sswitch_14
        0x9ab6dd -> :sswitch_13
        0x107556d5 -> :sswitch_12
        0x1cd1c6dd -> :sswitch_11
        0x324ea0a7 -> :sswitch_10
        0x327f7a8b -> :sswitch_f
        0x332bd3a7 -> :sswitch_e
        0x3cff2ed9 -> :sswitch_d
        0x40f5acce -> :sswitch_c
        0x4af796cb -> :sswitch_b
        0x4b6a78f7 -> :sswitch_a
        0x5370b1fe -> :sswitch_9
        0x552bd509 -> :sswitch_8
        0x5fa7aa9c -> :sswitch_7
        0x6f0f04fd -> :sswitch_6
        0x6fae31a8 -> :sswitch_5
        0x70e83ec3 -> :sswitch_4
        0x72f055a8 -> :sswitch_3
        0x76447179 -> :sswitch_2
        0x7bc64a5c -> :sswitch_1
        0x7c0d4adc -> :sswitch_0
    .end sparse-switch

    .line 2096
    .line 2097
    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    .line 2106
    .line 2107
    .line 2108
    .line 2109
    .line 2110
    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    .line 2116
    .line 2117
    .line 2118
    .line 2119
    .line 2120
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    .line 2126
    .line 2127
    .line 2128
    .line 2129
    .line 2130
    .line 2131
    .line 2132
    .line 2133
    .line 2134
    .line 2135
    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    .line 2152
    .line 2153
    .line 2154
    .line 2155
    .line 2156
    .line 2157
    .line 2158
    .line 2159
    .line 2160
    .line 2161
    .line 2162
    .line 2163
    .line 2164
    .line 2165
    .line 2166
    .line 2167
    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    .line 2173
    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    .line 2180
    .line 2181
    .line 2182
    .line 2183
    .line 2184
    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    .line 2192
    .line 2193
    .line 2194
    .line 2195
    .line 2196
    .line 2197
    .line 2198
    .line 2199
    .line 2200
    .line 2201
    .line 2202
    .line 2203
    .line 2204
    .line 2205
    .line 2206
    .line 2207
    .line 2208
    .line 2209
    .line 2210
    .line 2211
    .line 2212
    .line 2213
    .line 2214
    .line 2215
    .line 2216
    .line 2217
    .line 2218
    .line 2219
    .line 2220
    .line 2221
    .line 2222
    .line 2223
    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    .line 2229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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

    .line 2230
    .line 2231
    .line 2232
    .line 2233
    .line 2234
    .line 2235
    .line 2236
    .line 2237
    .line 2238
    .line 2239
    .line 2240
    .line 2241
    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    .line 2272
    .line 2273
    .line 2274
    .line 2275
    .line 2276
    .line 2277
    .line 2278
    .line 2279
    .line 2280
    .line 2281
    .line 2282
    .line 2283
    .line 2284
    .line 2285
    .line 2286
    .line 2287
    .line 2288
    .line 2289
    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    .line 2296
    .line 2297
    .line 2298
    .line 2299
    :sswitch_data_1
    .sparse-switch
        -0x5062e25c -> :sswitch_23
        0x538035a8 -> :sswitch_22
        0x7712479c -> :sswitch_21
    .end sparse-switch

    .line 2300
    .line 2301
    .line 2302
    .line 2303
    .line 2304
    .line 2305
    .line 2306
    .line 2307
    .line 2308
    .line 2309
    .line 2310
    .line 2311
    .line 2312
    .line 2313
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    .line 2314
    .line 2315
    .line 2316
    .line 2317
    .line 2318
    .line 2319
    .line 2320
    .line 2321
    .line 2322
    .line 2323
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_2a
        0x5d6 -> :sswitch_29
        0x5dc -> :sswitch_28
        0x5e7 -> :sswitch_27
        0x3f3229e -> :sswitch_26
        0xd268341 -> :sswitch_25
        0x4f7ac4da -> :sswitch_24
    .end sparse-switch

    .line 2324
    .line 2325
    .line 2326
    .line 2327
    .line 2328
    .line 2329
    .line 2330
    .line 2331
    .line 2332
    .line 2333
    .line 2334
    .line 2335
    .line 2336
    .line 2337
    .line 2338
    .line 2339
    .line 2340
    .line 2341
    .line 2342
    .line 2343
    .line 2344
    .line 2345
    .line 2346
    .line 2347
    .line 2348
    .line 2349
    .line 2350
    .line 2351
    .line 2352
    .line 2353
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2c
        :pswitch_2b
        :pswitch_24
        :pswitch_2c
        :pswitch_2b
        :pswitch_24
    .end packed-switch

    .line 2354
    .line 2355
    .line 2356
    .line 2357
    .line 2358
    .line 2359
    .line 2360
    .line 2361
    .line 2362
    .line 2363
    .line 2364
    .line 2365
    .line 2366
    .line 2367
    .line 2368
    .line 2369
    .line 2370
    .line 2371
    :sswitch_data_3
    .sparse-switch
        -0x3de0ac35 -> :sswitch_30
        -0x16402fd0 -> :sswitch_2f
        0x28a715 -> :sswitch_2e
        0x19d1382a -> :sswitch_2d
        0x4694aaeb -> :sswitch_2c
        0x50a5b6bd -> :sswitch_2b
    .end sparse-switch

    .line 2372
    .line 2373
    .line 2374
    .line 2375
    .line 2376
    .line 2377
    .line 2378
    .line 2379
    .line 2380
    .line 2381
    .line 2382
    .line 2383
    .line 2384
    .line 2385
    .line 2386
    .line 2387
    .line 2388
    .line 2389
    .line 2390
    .line 2391
    .line 2392
    .line 2393
    .line 2394
    .line 2395
    .line 2396
    .line 2397
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Display manager commands:"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "  help"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 21
    .line 22
    .line 23
    const-string v1, "  show-notification NOTIFICATION_TYPE"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "    Show notification for one of the following types: on-hotplug-error, on-link-training-failure, on-cable-dp-incapable"

    .line 29
    .line 30
    const-string v2, "  cancel-notifications"

    .line 31
    .line 32
    const-string v3, "    Cancel notifications."

    .line 33
    .line 34
    const-string v4, "  set-brightness BRIGHTNESS"

    .line 35
    .line 36
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "    Sets the current brightness to BRIGHTNESS (a number between 0 and 1)."

    .line 40
    .line 41
    const-string v2, "  reset-brightness-configuration"

    .line 42
    .line 43
    const-string v3, "    Reset the brightness to its default configuration."

    .line 44
    .line 45
    const-string v4, "  ab-logging-enable"

    .line 46
    .line 47
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "    Enable auto-brightness logging."

    .line 51
    .line 52
    const-string v2, "  ab-logging-disable"

    .line 53
    .line 54
    const-string v3, "    Disable auto-brightness logging."

    .line 55
    .line 56
    const-string v4, "  dwb-logging-enable"

    .line 57
    .line 58
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "    Enable display white-balance logging."

    .line 62
    .line 63
    const-string v2, "  dwb-logging-disable"

    .line 64
    .line 65
    const-string v3, "    Disable display white-balance logging."

    .line 66
    .line 67
    const-string v4, "  dmd-logging-enable"

    .line 68
    .line 69
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v1, "    Enable display mode director logging."

    .line 73
    .line 74
    const-string v2, "  dmd-logging-disable"

    .line 75
    .line 76
    const-string v3, "    Disable display mode director logging."

    .line 77
    .line 78
    const-string v4, "  dwb-set-cct CCT"

    .line 79
    .line 80
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v1, "    Sets the ambient color temperature override to CCT (use -1 to disable)."

    .line 84
    .line 85
    const-string v2, "  get-ambient-brightness-info [lux]"

    .line 86
    .line 87
    const-string v3, "    Gets the ambient brightness thresholds and brightness info."

    .line 88
    .line 89
    const-string v4, "  ab-short-term-reset"

    .line 90
    .line 91
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v1, "    Do short-term reset immediately."

    .line 95
    .line 96
    const-string v2, "  ab-test-enable"

    .line 97
    .line 98
    const-string v3, "    Enable adaptive brightness test mode for sec long-term model."

    .line 99
    .line 100
    const-string v4, "  ab-test-disable"

    .line 101
    .line 102
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "    Disable adaptive brightness test mode for sec long-term model."

    .line 106
    .line 107
    const-string v2, "  ab-add-brightness-weights [lux]:[brightness(0.0f~1.0f)]:[durationSec]:[continuity]"

    .line 108
    .line 109
    const-string v3, "    Add brightness weights directly  for sec long-term model."

    .line 110
    .line 111
    const-string v4, "  set-user-preferred-display-mode WIDTH HEIGHT REFRESH-RATE DISPLAY_ID (optional)"

    .line 112
    .line 113
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v1, "    Sets the user preferred display mode which has fields WIDTH, HEIGHT and REFRESH-RATE. If DISPLAY_ID is passed, the mode change is applied to displaywith id = DISPLAY_ID, else mode change is applied globally."

    .line 117
    .line 118
    const-string v2, "  clear-user-preferred-display-mode DISPLAY_ID (optional)"

    .line 119
    .line 120
    const-string v3, "    Clears the user preferred display mode. If DISPLAY_ID is passed, the mode is cleared for  display with id = DISPLAY_ID, else mode is cleared globally."

    .line 121
    .line 122
    const-string v4, "  get-user-preferred-display-mode DISPLAY_ID (optional)"

    .line 123
    .line 124
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v1, "    Returns the user preferred display mode or null if no mode is set by user.If DISPLAY_ID is passed, the mode for display with id = DISPLAY_ID is returned, else global display mode is returned."

    .line 128
    .line 129
    const-string v2, "  get-active-display-mode-at-start DISPLAY_ID"

    .line 130
    .line 131
    const-string v3, "    Returns the display mode which was found at boot time of display with id = DISPLAY_ID"

    .line 132
    .line 133
    const-string v4, "  set-match-content-frame-rate-pref PREFERENCE"

    .line 134
    .line 135
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v1, "    Sets the match content frame rate preference as PREFERENCE "

    .line 139
    .line 140
    const-string v2, "  get-match-content-frame-rate-pref"

    .line 141
    .line 142
    const-string v3, "    Returns the match content frame rate preference"

    .line 143
    .line 144
    const-string v4, "  set-user-disabled-hdr-types TYPES..."

    .line 145
    .line 146
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v1, "    Sets the user disabled HDR types as TYPES"

    .line 150
    .line 151
    const-string v2, "  get-user-disabled-hdr-types"

    .line 152
    .line 153
    const-string v3, "    Returns the user disabled HDR types"

    .line 154
    .line 155
    const-string v4, "  get-displays [-c|--category CATEGORY] [-i|--ids-only] [-t|--type TYPE]"

    .line 156
    .line 157
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v1, "    [CATEGORY]"

    .line 161
    .line 162
    const-string v2, "    Returns the current displays. Can specify string category among"

    .line 163
    .line 164
    const-string v3, "    DisplayManager.DISPLAY_CATEGORY_*; must use the actual string value."

    .line 165
    .line 166
    const-string v4, "    Can choose to print only the ids of the displays. Can filter by"

    .line 167
    .line 168
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string v1, "    display types. For example, \'--type external\'"

    .line 172
    .line 173
    const-string v2, "  dock"

    .line 174
    .line 175
    const-string v3, "    Sets brightness to docked + idle screen brightness mode"

    .line 176
    .line 177
    const-string v4, "  undock"

    .line 178
    .line 179
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string v1, "    Sets brightness to active (normal) screen brightness mode"

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 188
    .line 189
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-eqz p0, :cond_0

    .line 196
    .line 197
    const-string p0, "  enable-display DISPLAY_ID"

    .line 198
    .line 199
    const-string v1, "    Enable the DISPLAY_ID. Only possible if this is a connected display."

    .line 200
    .line 201
    const-string v2, "  disable-display DISPLAY_ID"

    .line 202
    .line 203
    const-string v3, "    Disable the DISPLAY_ID. Only possible if this is a connected display."

    .line 204
    .line 205
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :cond_0
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 209
    .line 210
    .line 211
    const-string p0, ""

    .line 212
    .line 213
    invoke-static {v0, p0}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public final requestDisplayPower(Z)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string p1, "Error: no displayId specified"

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 23
    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->requestDisplayPower(IZ)Z

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return p0

    .line 29
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "Error: invalid displayId: \'"

    .line 34
    .line 35
    const-string v2, "\'"

    .line 36
    .line 37
    invoke-static {p0, p1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v1
.end method

.method public final setAutoBrightnessLoggingEnabled(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 14
    .line 15
    if-eqz p0, :cond_4

    .line 16
    .line 17
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 20
    .line 21
    if-eqz p0, :cond_4

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 24
    .line 25
    if-ne v2, p1, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_3

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy;

    .line 43
    .line 44
    iget-boolean v3, v2, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 45
    .line 46
    if-ne v3, p1, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iput-boolean p1, v2, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    .line 50
    .line 51
    sget-boolean v2, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->sDebugLogging:Z

    .line 52
    .line 53
    if-ne v2, p1, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    sput-boolean p1, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->sDebugLogging:Z

    .line 57
    .line 58
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    .line 62
    .line 63
    :cond_4
    :goto_2
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public final setDisplayEnabled(Z)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "Error: external display management is not available on this device."

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "Error: no displayId specified"

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 43
    .line 44
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayManagerService;->enableConnectedDisplay(IZ)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return p0

    .line 49
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "Error: invalid displayId: \'"

    .line 54
    .line 55
    const-string v2, "\'"

    .line 56
    .line 57
    invoke-static {p0, p1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v1
.end method

.method public final setDisplayModeDirectorLoggingEnabled(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 16
    .line 17
    iget-boolean v2, v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    .line 18
    .line 19
    if-ne v2, p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iput-boolean p1, v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 25
    .line 26
    iget-boolean v2, v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    .line 27
    .line 28
    if-ne v2, p1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iput-boolean p1, v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLoggingEnabled:Z

    .line 32
    .line 33
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 34
    .line 35
    iput-boolean p1, v1, Lcom/android/server/display/mode/SkinThermalStatusObserver;->mLoggingEnabled:Z

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 38
    .line 39
    iput-boolean p1, p0, Lcom/android/server/display/mode/VotesStorage;->mLoggingEnabled:Z

    .line 40
    .line 41
    :goto_1
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final setDisplayWhiteBalanceLoggingEnabled(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/16 v1, 0x10

    .line 26
    .line 27
    iput v1, p0, Landroid/os/Message;->what:I

    .line 28
    .line 29
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 32
    .line 33
    .line 34
    :cond_0
    monitor-exit v0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final setTestModeEnabled(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Error: available for sec long-term model"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 27
    .line 28
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    const-string/jumbo v1, "setTestModeEnabled:"

    .line 35
    .line 36
    .line 37
    const-string v2, "AdaptiveBrightnessLongtermModelBuilder"

    .line 38
    .line 39
    invoke-static {v1, v2, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTestModeEnabled:Z

    .line 43
    .line 44
    if-eq v1, p1, :cond_2

    .line 45
    .line 46
    iput-boolean p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTestModeEnabled:Z

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    const/4 p1, 0x2

    .line 53
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 p1, 0x3

    .line 62
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_0
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0
.end method
