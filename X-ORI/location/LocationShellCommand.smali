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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-object p1, p2

    .line 10
    check-cast p1, Lcom/android/server/location/LocationManagerService;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "--accuracy"

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    const/4 v11, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v11}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const-string/jumbo v12, "command only recognized on automotive devices"

    .line 17
    .line 18
    .line 19
    const-string v13, "--user"

    .line 20
    .line 21
    const/4 v14, -0x3

    .line 22
    const-string v15, "android.hardware.type.automotive"

    .line 23
    .line 24
    const-string v3, "Unknown option: "

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v16

    .line 30
    sparse-switch v16, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    :goto_0
    const/4 v4, -0x1

    .line 34
    goto :goto_1

    .line 35
    :sswitch_0
    const-string/jumbo v4, "is-adas-gnss-location-enabled"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_1

    .line 43
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

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_2

    .line 55
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

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_3

    .line 67
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

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_4

    .line 79
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

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_5

    .line 91
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

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_6

    .line 103
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

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-nez v4, :cond_7

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_7
    move v4, v10

    .line 118
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {p0 .. p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    return v0

    .line 126
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_a

    .line 137
    .line 138
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-nez v1, :cond_8

    .line 143
    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 149
    .line 150
    invoke-virtual {v0, v14}, Lcom/android/server/location/LocationManagerService;->isAdasGnssLocationEnabledForUser(I)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 155
    .line 156
    .line 157
    return v10

    .line 158
    :cond_8
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    if-eqz v2, :cond_9

    .line 163
    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v14

    .line 172
    goto :goto_2

    .line 173
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 174
    .line 175
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw v0

    .line 183
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 184
    .line 185
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    if-nez v2, :cond_b

    .line 202
    .line 203
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 204
    .line 205
    invoke-virtual {v0, v1, v14}, Lcom/android/server/location/LocationManagerService;->setLocationEnabledForUser(ZI)V

    .line 206
    .line 207
    .line 208
    return v10

    .line 209
    :cond_b
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_c

    .line 214
    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result v14

    .line 223
    goto :goto_3

    .line 224
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 225
    .line 226
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v0

    .line 234
    :pswitch_2
    iget-object v1, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 235
    .line 236
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v1, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_f

    .line 245
    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    if-nez v2, :cond_d

    .line 259
    .line 260
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 261
    .line 262
    invoke-virtual {v0, v1, v14}, Lcom/android/server/location/LocationManagerService;->setAdasGnssLocationEnabledForUser(ZI)V

    .line 263
    .line 264
    .line 265
    return v10

    .line 266
    :cond_d
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-eqz v4, :cond_e

    .line 271
    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v14

    .line 280
    goto :goto_4

    .line 281
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 282
    .line 283
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw v0

    .line 291
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 292
    .line 293
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw v0

    .line 297
    :pswitch_3
    iget-object v1, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 298
    .line 299
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v1, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_10

    .line 308
    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Lcom/android/server/location/LocationManagerService;->setAutomotiveGnssSuspended(Z)V

    .line 320
    .line 321
    .line 322
    return v10

    .line 323
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 324
    .line 325
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw v0

    .line 329
    :pswitch_4
    iget-object v1, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 330
    .line 331
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v1, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_11

    .line 340
    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 346
    .line 347
    invoke-virtual {v0}, Lcom/android/server/location/LocationManagerService;->isAutomotiveGnssSuspended()Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 352
    .line 353
    .line 354
    return v10

    .line 355
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 356
    .line 357
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw v0

    .line 361
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    const-string v4, ","

    .line 369
    .line 370
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 371
    .line 372
    .line 373
    move-result v12

    .line 374
    sparse-switch v12, :sswitch_data_1

    .line 375
    .line 376
    .line 377
    :goto_5
    const/4 v12, -0x1

    .line 378
    goto :goto_6

    .line 379
    :sswitch_7
    const-string/jumbo v12, "send-extra-command"

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v12

    .line 386
    if-nez v12, :cond_12

    .line 387
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

    .line 392
    .line 393
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v12

    .line 397
    if-nez v12, :cond_13

    .line 398
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

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v12

    .line 409
    if-nez v12, :cond_14

    .line 410
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

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v12

    .line 421
    if-nez v12, :cond_15

    .line 422
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

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v12

    .line 433
    if-nez v12, :cond_16

    .line 434
    .line 435
    goto :goto_5

    .line 436
    :cond_16
    move v12, v10

    .line 437
    :goto_6
    packed-switch v12, :pswitch_data_1

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0, v1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    move-result v10

    .line 444
    goto/16 :goto_e

    .line 445
    .line 446
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 455
    .line 456
    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/location/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_e

    .line 460
    .line 461
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 466
    .line 467
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

    .line 480
    .line 481
    .line 482
    move-result-object v10

    .line 483
    if-nez v10, :cond_17

    .line 484
    .line 485
    new-instance v2, Landroid/location/provider/ProviderProperties$Builder;

    .line 486
    .line 487
    invoke-direct {v2}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v2, v3}, Landroid/location/provider/ProviderProperties$Builder;->setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-virtual {v2, v12}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-virtual {v2, v13}, Landroid/location/provider/ProviderProperties$Builder;->setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v2, v14}, Landroid/location/provider/ProviderProperties$Builder;->setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    invoke-virtual {v2, v15}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    invoke-virtual {v2, v5}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    invoke-virtual {v2, v6}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    invoke-virtual {v2, v7}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    invoke-virtual {v2, v9}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-virtual {v2}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    iget-object v3, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 531
    .line 532
    iget-object v2, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 533
    .line 534
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v7

    .line 538
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 539
    .line 540
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v8

    .line 544
    move-object v4, v1

    .line 545
    move-object v6, v11

    .line 546
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/LocationManagerService;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    :goto_8
    const/4 v10, 0x0

    .line 550
    goto/16 :goto_e

    .line 551
    .line 552
    :cond_17
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 553
    .line 554
    .line 555
    move-result v17

    .line 556
    sparse-switch v17, :sswitch_data_2

    .line 557
    .line 558
    .line 559
    :goto_9
    const/4 v8, -0x1

    .line 560
    goto/16 :goto_a

    .line 561
    .line 562
    :sswitch_c
    const-string v8, "--supportsSpeed"

    .line 563
    .line 564
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v8

    .line 568
    if-nez v8, :cond_18

    .line 569
    .line 570
    goto :goto_9

    .line 571
    :cond_18
    const/16 v8, 0x9

    .line 572
    .line 573
    goto/16 :goto_a

    .line 574
    .line 575
    :sswitch_d
    const-string v8, "--powerRequirement"

    .line 576
    .line 577
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v8

    .line 581
    if-nez v8, :cond_19

    .line 582
    .line 583
    goto :goto_9

    .line 584
    :cond_19
    const/16 v8, 0x8

    .line 585
    .line 586
    goto :goto_a

    .line 587
    :sswitch_e
    const-string v8, "--requiresSatellite"

    .line 588
    .line 589
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v8

    .line 593
    if-nez v8, :cond_1a

    .line 594
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

    .line 599
    .line 600
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v8

    .line 604
    if-nez v8, :cond_1b

    .line 605
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

    .line 610
    .line 611
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result v8

    .line 615
    if-nez v8, :cond_1c

    .line 616
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

    .line 621
    .line 622
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v8

    .line 626
    if-nez v8, :cond_1d

    .line 627
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

    .line 632
    .line 633
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    move-result v8

    .line 637
    if-nez v8, :cond_1e

    .line 638
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

    .line 643
    .line 644
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v8

    .line 648
    if-nez v8, :cond_1f

    .line 649
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

    .line 654
    .line 655
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v8

    .line 659
    if-nez v8, :cond_20

    .line 660
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

    .line 665
    .line 666
    .line 667
    move-result v8

    .line 668
    if-nez v8, :cond_21

    .line 669
    .line 670
    goto :goto_9

    .line 671
    :cond_21
    const/4 v8, 0x0

    .line 672
    :goto_a
    packed-switch v8, :pswitch_data_2

    .line 673
    .line 674
    .line 675
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 676
    .line 677
    const-string v1, "Received unexpected option: "

    .line 678
    .line 679
    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    throw v0

    .line 687
    :pswitch_8
    const/4 v5, 0x1

    .line 688
    goto/16 :goto_7

    .line 689
    .line 690
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v7

    .line 694
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 695
    .line 696
    .line 697
    move-result v7

    .line 698
    goto/16 :goto_7

    .line 699
    .line 700
    :pswitch_a
    const/4 v12, 0x1

    .line 701
    goto/16 :goto_7

    .line 702
    .line 703
    :pswitch_b
    const/4 v14, 0x1

    .line 704
    goto/16 :goto_7

    .line 705
    .line 706
    :pswitch_c
    const/4 v13, 0x1

    .line 707
    goto/16 :goto_7

    .line 708
    .line 709
    :pswitch_d
    const/4 v15, 0x1

    .line 710
    goto/16 :goto_7

    .line 711
    .line 712
    :pswitch_e
    const/4 v6, 0x1

    .line 713
    goto/16 :goto_7

    .line 714
    .line 715
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v8

    .line 719
    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v8

    .line 723
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 724
    .line 725
    .line 726
    move-result-object v11

    .line 727
    goto/16 :goto_7

    .line 728
    .line 729
    :pswitch_10
    const/4 v3, 0x1

    .line 730
    goto/16 :goto_7

    .line 731
    .line 732
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v8

    .line 736
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 737
    .line 738
    .line 739
    move-result v9

    .line 740
    goto/16 :goto_7

    .line 741
    .line 742
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 751
    .line 752
    .line 753
    move-result v2

    .line 754
    iget-object v3, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 755
    .line 756
    iget-object v4, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 757
    .line 758
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v4

    .line 762
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 763
    .line 764
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/android/server/location/LocationManagerService;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    goto/16 :goto_8

    .line 772
    .line 773
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    new-instance v5, Landroid/location/Location;

    .line 778
    .line 779
    invoke-direct {v5, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    const/high16 v6, 0x42c80000    # 100.0f

    .line 783
    .line 784
    invoke-virtual {v5, v6}, Landroid/location/Location;->setAccuracy(F)V

    .line 785
    .line 786
    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 788
    .line 789
    .line 790
    move-result-wide v6

    .line 791
    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 792
    .line 793
    .line 794
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 795
    .line 796
    .line 797
    move-result-wide v6

    .line 798
    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 799
    .line 800
    .line 801
    const/4 v6, 0x0

    .line 802
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v7

    .line 806
    if-nez v7, :cond_23

    .line 807
    .line 808
    if-eqz v6, :cond_22

    .line 809
    .line 810
    iget-object v2, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 811
    .line 812
    iget-object v3, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 813
    .line 814
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v3

    .line 818
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 819
    .line 820
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-virtual {v2, v1, v5, v3, v0}, Lcom/android/server/location/LocationManagerService;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    goto/16 :goto_8

    .line 828
    .line 829
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 830
    .line 831
    const-string v1, "Option \"--location\" is required"

    .line 832
    .line 833
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    throw v0

    .line 837
    :cond_23
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 838
    .line 839
    .line 840
    move-result v8

    .line 841
    sparse-switch v8, :sswitch_data_3

    .line 842
    .line 843
    .line 844
    :goto_c
    const/4 v8, -0x1

    .line 845
    goto :goto_d

    .line 846
    :sswitch_16
    const-string v8, "--location"

    .line 847
    .line 848
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v8

    .line 852
    if-nez v8, :cond_24

    .line 853
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

    .line 858
    .line 859
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result v8

    .line 863
    if-nez v8, :cond_25

    .line 864
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

    .line 869
    .line 870
    .line 871
    move-result v8

    .line 872
    if-nez v8, :cond_26

    .line 873
    .line 874
    goto :goto_c

    .line 875
    :cond_26
    const/4 v8, 0x0

    .line 876
    :goto_d
    packed-switch v8, :pswitch_data_3

    .line 877
    .line 878
    .line 879
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 880
    .line 881
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    throw v0

    .line 889
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v6

    .line 893
    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v6

    .line 897
    array-length v7, v6

    .line 898
    const/4 v8, 0x2

    .line 899
    if-ne v7, v8, :cond_27

    .line 900
    .line 901
    const/4 v7, 0x0

    .line 902
    aget-object v9, v6, v7

    .line 903
    .line 904
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 905
    .line 906
    .line 907
    move-result-wide v9

    .line 908
    invoke-virtual {v5, v9, v10}, Landroid/location/Location;->setLatitude(D)V

    .line 909
    .line 910
    .line 911
    const/4 v7, 0x1

    .line 912
    aget-object v6, v6, v7

    .line 913
    .line 914
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 915
    .line 916
    .line 917
    move-result-wide v9

    .line 918
    invoke-virtual {v5, v9, v10}, Landroid/location/Location;->setLongitude(D)V

    .line 919
    .line 920
    .line 921
    move v6, v7

    .line 922
    goto :goto_b

    .line 923
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 924
    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    .line 926
    .line 927
    const-string v2, "Location argument must be in the form of \"<LATITUDE>,<LONGITUDE>\", not "

    .line 928
    .line 929
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 930
    .line 931
    .line 932
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v2

    .line 936
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v1

    .line 943
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    throw v0

    .line 947
    :pswitch_15
    const/4 v7, 0x1

    .line 948
    const/4 v8, 0x2

    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v9

    .line 953
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 954
    .line 955
    .line 956
    move-result-wide v9

    .line 957
    invoke-virtual {v5, v9, v10}, Landroid/location/Location;->setTime(J)V

    .line 958
    .line 959
    .line 960
    goto/16 :goto_b

    .line 961
    .line 962
    :pswitch_16
    const/4 v7, 0x1

    .line 963
    const/4 v8, 0x2

    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v9

    .line 968
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 969
    .line 970
    .line 971
    move-result v9

    .line 972
    invoke-virtual {v5, v9}, Landroid/location/Location;->setAccuracy(F)V

    .line 973
    .line 974
    .line 975
    goto/16 :goto_b

    .line 976
    .line 977
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v1

    .line 981
    iget-object v2, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 982
    .line 983
    iget-object v3, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 984
    .line 985
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v3

    .line 989
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 990
    .line 991
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v0

    .line 995
    invoke-virtual {v2, v1, v3, v0}, Lcom/android/server/location/LocationManagerService;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    goto/16 :goto_8

    .line 999
    .line 1000
    :goto_e
    return v10

    .line 1001
    :goto_f
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    if-nez v1, :cond_28

    .line 1006
    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 1012
    .line 1013
    invoke-virtual {v0, v14}, Lcom/android/server/location/LocationManagerService;->isLocationEnabledForUser(I)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v0

    .line 1017
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1018
    .line 1019
    .line 1020
    const/4 v2, 0x0

    .line 1021
    return v2

    .line 1022
    :cond_28
    const/4 v2, 0x0

    .line 1023
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v4

    .line 1027
    if-eqz v4, :cond_29

    .line 1028
    .line 1029
    invoke-virtual/range {p0 .. p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v1

    .line 1033
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 1034
    .line 1035
    .line 1036
    move-result v14

    .line 1037
    goto :goto_f

    .line 1038
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1039
    .line 1040
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v1

    .line 1044
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1045
    .line 1046
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
    .line 1096
    .line 1097
    :sswitch_data_1
    .sparse-switch
        -0x638384bd -> :sswitch_b
        -0x625a9a9f -> :sswitch_a
        -0x3ab9feb -> :sswitch_9
        0xae04a0 -> :sswitch_8
        0x7961b909 -> :sswitch_7
    .end sparse-switch

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
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_17
        :pswitch_13
        :pswitch_12
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1120
    .line 1121
    .line 1122
    .line 1123
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
    .line 1174
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

    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    :sswitch_data_3
    .sparse-switch
        -0x7e1ee167 -> :sswitch_18
        0x4f7a886d -> :sswitch_17
        0x72400555 -> :sswitch_16
    .end sparse-switch

    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
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

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Location service commands:"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "  help or -h"

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
    const-string v1, "  is-location-enabled [--user <USER_ID>]"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "    Gets the master location switch enabled state. If no user is specified,"

    .line 26
    .line 27
    const-string v2, "    the current user is assumed."

    .line 28
    .line 29
    const-string v3, "  set-location-enabled true|false [--user <USER_ID>]"

    .line 30
    .line 31
    const-string v4, "    Sets the master location switch enabled state. If no user is specified,"

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v1, "android.hardware.type.automotive"

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_0

    .line 52
    .line 53
    const-string p0, "  is-adas-gnss-location-enabled [--user <USER_ID>]"

    .line 54
    .line 55
    const-string v1, "    Gets the ADAS GNSS location enabled state. If no user is specified,"

    .line 56
    .line 57
    const-string v3, "  set-adas-gnss-location-enabled true|false [--user <USER_ID>]"

    .line 58
    .line 59
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p0, "    Sets the ADAS GNSS location enabled state. If no user is specified,"

    .line 63
    .line 64
    const-string v1, "  is-automotive-gnss-suspended"

    .line 65
    .line 66
    const-string v3, "    Gets the automotive GNSS suspended state."

    .line 67
    .line 68
    invoke-static {v0, p0, v2, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p0, "  set-automotive-gnss-suspended true|false"

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string p0, "    Sets the automotive GNSS suspended state."

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    const-string p0, "  providers"

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p0, "    The providers command is followed by a subcommand, as listed below:"

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 92
    .line 93
    .line 94
    const-string p0, "    add-test-provider <PROVIDER> [--requiresNetwork] [--requiresSatellite]"

    .line 95
    .line 96
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string p0, "      [--requiresCell] [--hasMonetaryCost] [--supportsAltitude]"

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string p0, "      [--supportsSpeed] [--supportsBearing]"

    .line 105
    .line 106
    const-string v1, "      [--powerRequirement <POWER_REQUIREMENT>]"

    .line 107
    .line 108
    const-string v2, "      [--extraAttributionTags <TAG>,<TAG>,...]"

    .line 109
    .line 110
    const-string v3, "      Add the given test provider. Requires MOCK_LOCATION permissions which"

    .line 111
    .line 112
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string p0, "      can be enabled by running \"adb shell appops set <uid>"

    .line 116
    .line 117
    const-string v1, "      android:mock_location allow\". There are optional flags that can be"

    .line 118
    .line 119
    const-string v2, "      used to configure the provider properties and additional arguments. If"

    .line 120
    .line 121
    const-string v3, "      no flags are included, then default values will be used."

    .line 122
    .line 123
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string p0, "    remove-test-provider <PROVIDER>"

    .line 127
    .line 128
    const-string v1, "      Remove the given test provider."

    .line 129
    .line 130
    const-string v2, "    set-test-provider-enabled <PROVIDER> true|false"

    .line 131
    .line 132
    const-string v3, "      Sets the given test provider enabled state."

    .line 133
    .line 134
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string p0, "    set-test-provider-location <PROVIDER> --location <LATITUDE>,<LONGITUDE>"

    .line 138
    .line 139
    const-string v1, "      [--accuracy <ACCURACY>] [--time <TIME>]"

    .line 140
    .line 141
    const-string v2, "      Set location for given test provider. Accuracy and time are optional."

    .line 142
    .line 143
    const-string v3, "    send-extra-command <PROVIDER> <COMMAND>"

    .line 144
    .line 145
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string p0, "      Sends the given extra command to the given provider."

    .line 149
    .line 150
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 154
    .line 155
    .line 156
    const-string p0, "      Common commands that may be supported by the gps provider, depending on"

    .line 157
    .line 158
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string p0, "      hardware and software configurations:"

    .line 162
    .line 163
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string p0, "        delete_aiding_data - requests deletion of any predictive aiding data"

    .line 167
    .line 168
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string p0, "        force_time_injection - requests NTP time injection"

    .line 172
    .line 173
    const-string v1, "        force_psds_injection - requests predictive aiding data injection"

    .line 174
    .line 175
    const-string v2, "        request_power_stats - requests GNSS power stats update"

    .line 176
    .line 177
    invoke-static {v0, p0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method
