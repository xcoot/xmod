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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerShellCommand;->mBinderService:Landroid/app/ILocaleManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "--locales"

    .line 6
    .line 7
    const/4 v6, -0x1

    .line 8
    const-string v7, "--user"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_0
    const-string v8, "]"

    .line 18
    .line 19
    const-string v9, " are ["

    .line 20
    .line 21
    const-string v10, " for user "

    .line 22
    .line 23
    const-string v11, "Unknown locales: "

    .line 24
    .line 25
    const-string v12, "-"

    .line 26
    .line 27
    const-string v13, " for userId "

    .line 28
    .line 29
    const-string v14, "Unknown package "

    .line 30
    .line 31
    const-string v15, "Error: no package specified"

    .line 32
    .line 33
    const-string v3, "Unknown option: "

    .line 34
    .line 35
    const-string v4, "Remote Exception: "

    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v16

    .line 41
    sparse-switch v16, :sswitch_data_0

    .line 42
    .line 43
    .line 44
    :goto_0
    move v5, v6

    .line 45
    goto :goto_1

    .line 46
    :sswitch_0
    const-string/jumbo v5, "set-app-locales"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_1

    .line 54
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

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_2

    .line 66
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

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-nez v5, :cond_3

    .line 78
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

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_4

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const/4 v5, 0x0

    .line 93
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    return v0

    .line 101
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    if-eqz v5, :cond_d

    .line 110
    .line 111
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    :goto_2
    const/4 v9, 0x0

    .line 120
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    if-nez v10, :cond_5

    .line 125
    .line 126
    :try_start_0
    iget-object v2, v1, Lcom/android/server/locales/LocaleManagerShellCommand;->mBinderService:Landroid/app/ILocaleManager;

    .line 127
    .line 128
    invoke-interface {v2, v5, v0, v8, v9}, Landroid/app/ILocaleManager;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    .line 130
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

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v4, v0, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 165
    .line 166
    .line 167
    :goto_5
    const/4 v5, 0x0

    .line 168
    goto/16 :goto_8

    .line 169
    .line 170
    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result v15

    .line 174
    sparse-switch v15, :sswitch_data_1

    .line 175
    .line 176
    .line 177
    :goto_6
    move v15, v6

    .line 178
    goto :goto_7

    .line 179
    :sswitch_4
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v15

    .line 183
    if-nez v15, :cond_6

    .line 184
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

    .line 189
    .line 190
    .line 191
    move-result v15

    .line 192
    if-nez v15, :cond_7

    .line 193
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

    .line 198
    .line 199
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v15

    .line 203
    if-nez v15, :cond_8

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_8
    const/4 v15, 0x0

    .line 207
    :goto_7
    packed-switch v15, :pswitch_data_1

    .line 208
    .line 209
    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 211
    .line 212
    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    if-nez v8, :cond_9

    .line 225
    .line 226
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    goto :goto_3

    .line 231
    :cond_9
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    if-nez v10, :cond_a

    .line 236
    .line 237
    invoke-static {v8}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    goto :goto_3

    .line 242
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 243
    .line 244
    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v0

    .line 252
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    goto/16 :goto_3

    .line 261
    .line 262
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    if-nez v9, :cond_b

    .line 267
    .line 268
    goto/16 :goto_2

    .line 269
    .line 270
    :cond_b
    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result v10

    .line 274
    if-nez v10, :cond_c

    .line 275
    .line 276
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    goto/16 :goto_3

    .line 281
    .line 282
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 283
    .line 284
    const-string v1, "Unknown source: "

    .line 285
    .line 286
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw v0

    .line 294
    :cond_d
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    move v5, v6

    .line 298
    :goto_8
    return v5

    .line 299
    :pswitch_4
    const-string v0, "Locales for "

    .line 300
    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    if-eqz v5, :cond_10

    .line 310
    .line 311
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    if-nez v6, :cond_e

    .line 320
    .line 321
    goto :goto_9

    .line 322
    :cond_e
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_f

    .line 327
    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    :goto_9
    :try_start_1
    iget-object v3, v1, Lcom/android/server/locales/LocaleManagerShellCommand;->mBinderService:Landroid/app/ILocaleManager;

    .line 337
    .line 338
    invoke-interface {v3, v5, v2}, Landroid/app/ILocaleManager;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 378
    .line 379
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

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    goto :goto_b

    .line 409
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-static {v4, v0, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 414
    .line 415
    .line 416
    :goto_b
    const/4 v5, 0x0

    .line 417
    goto :goto_c

    .line 418
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 419
    .line 420
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    throw v0

    .line 428
    :cond_10
    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    move v5, v6

    .line 432
    :goto_c
    return v5

    .line 433
    :pswitch_5
    const-string v0, "LocaleConfig for "

    .line 434
    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    if-eqz v2, :cond_15

    .line 440
    .line 441
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    if-nez v6, :cond_11

    .line 450
    .line 451
    goto :goto_d

    .line 452
    :cond_11
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result v5

    .line 456
    if-eqz v5, :cond_14

    .line 457
    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    move-result v5

    .line 466
    :goto_d
    :try_start_2
    iget-object v3, v1, Lcom/android/server/locales/LocaleManagerShellCommand;->mBinderService:Landroid/app/ILocaleManager;

    .line 467
    .line 468
    invoke-interface {v3, v2, v5}, Landroid/app/ILocaleManager;->getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    if-nez v3, :cond_12

    .line 473
    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    new-instance v6, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    const-string v0, " is null"

    .line 493
    .line 494
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    .line 503
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

    .line 508
    .line 509
    .line 510
    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    .line 511
    const-string v3, "Locales within the LocaleConfig for "

    .line 512
    .line 513
    if-nez v0, :cond_13

    .line 514
    .line 515
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    new-instance v6, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    const-string v2, " are null"

    .line 534
    .line 535
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    goto :goto_f

    .line 546
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 547
    .line 548
    .line 549
    move-result-object v6

    .line 550
    new-instance v7, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 582
    .line 583
    .line 584
    goto :goto_f

    .line 585
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    invoke-static {v4, v0, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 590
    .line 591
    .line 592
    :goto_f
    const/4 v5, 0x0

    .line 593
    goto :goto_10

    .line 594
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 595
    .line 596
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    throw v0

    .line 604
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    move v5, v6

    .line 612
    :goto_10
    return v5

    .line 613
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    if-eqz v0, :cond_1d

    .line 618
    .line 619
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 620
    .line 621
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

    .line 626
    .line 627
    .line 628
    move-result-object v9

    .line 629
    if-nez v9, :cond_17

    .line 630
    .line 631
    if-nez v6, :cond_16

    .line 632
    .line 633
    goto :goto_13

    .line 634
    :cond_16
    :try_start_4
    new-instance v8, Landroid/app/LocaleConfig;

    .line 635
    .line 636
    invoke-direct {v8, v6}, Landroid/app/LocaleConfig;-><init>(Landroid/os/LocaleList;)V

    .line 637
    .line 638
    .line 639
    :goto_13
    iget-object v2, v1, Lcom/android/server/locales/LocaleManagerShellCommand;->mBinderService:Landroid/app/ILocaleManager;

    .line 640
    .line 641
    invoke-interface {v2, v0, v5, v8}, Landroid/app/ILocaleManager;->setOverrideLocaleConfig(Ljava/lang/String;ILandroid/app/LocaleConfig;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    .line 642
    .line 643
    .line 644
    goto :goto_14

    .line 645
    :catch_5
    move-exception v0

    .line 646
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    invoke-static {v4, v0, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 651
    .line 652
    .line 653
    :goto_14
    const/4 v5, 0x0

    .line 654
    goto :goto_15

    .line 655
    :cond_17
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v10

    .line 659
    if-nez v10, :cond_1c

    .line 660
    .line 661
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result v6

    .line 665
    if-eqz v6, :cond_1b

    .line 666
    .line 667
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v6

    .line 671
    if-nez v6, :cond_18

    .line 672
    .line 673
    goto :goto_11

    .line 674
    :cond_18
    const-string/jumbo v9, "empty"

    .line 675
    .line 676
    .line 677
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 678
    .line 679
    .line 680
    move-result v9

    .line 681
    if-eqz v9, :cond_19

    .line 682
    .line 683
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 684
    .line 685
    .line 686
    move-result-object v6

    .line 687
    goto :goto_12

    .line 688
    :cond_19
    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 689
    .line 690
    .line 691
    move-result v9

    .line 692
    if-nez v9, :cond_1a

    .line 693
    .line 694
    invoke-static {v6}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 695
    .line 696
    .line 697
    move-result-object v6

    .line 698
    goto :goto_12

    .line 699
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 700
    .line 701
    invoke-virtual {v11, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    throw v0

    .line 709
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 710
    .line 711
    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    throw v0

    .line 719
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v5

    .line 723
    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 724
    .line 725
    .line 726
    move-result v5

    .line 727
    goto :goto_12

    .line 728
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    .line 734
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

    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    :sswitch_data_1
    .sparse-switch
        0x31c64325 -> :sswitch_6
        0x4f7b216b -> :sswitch_5
        0x66c823b9 -> :sswitch_4
    .end sparse-switch

    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
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

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Locale manager (locale) shell commands:"

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
    const-string v0, "      Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  set-app-locales <PACKAGE_NAME> [--user <USER_ID>] [--locales <LOCALE_INFO>][--delegate <FROM_DELEGATE>]"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "      Set the locales for the specified app."

    .line 26
    .line 27
    const-string v1, "      --user <USER_ID>: apply for the given user, the current user is used when unspecified."

    .line 28
    .line 29
    const-string v2, "      --locales <LOCALE_INFO>: The language tags of locale to be included as a single String separated by commas."

    .line 30
    .line 31
    const-string v3, "                 eg. en,en-US,hi "

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "                 Empty locale list is used when unspecified."

    .line 37
    .line 38
    const-string v4, "      --delegate <FROM_DELEGATE>: The locales are set from a delegate, the value could be true or false. false is the default when unspecified."

    .line 39
    .line 40
    const-string v5, "  get-app-locales <PACKAGE_NAME> [--user <USER_ID>]"

    .line 41
    .line 42
    const-string v6, "      Get the locales for the specified app."

    .line 43
    .line 44
    invoke-static {p0, v0, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "      --user <USER_ID>: get for the given user, the current user is used when unspecified."

    .line 48
    .line 49
    const-string v4, "  set-app-localeconfig <PACKAGE_NAME> [--user <USER_ID>] [--locales <LOCALE_INFO>]"

    .line 50
    .line 51
    const-string v5, "      Set the override LocaleConfig for the specified app."

    .line 52
    .line 53
    invoke-static {p0, v0, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "                 Empty locale list is used when typing a \'empty\' word"

    .line 57
    .line 58
    const-string v4, "                 NULL is used when unspecified."

    .line 59
    .line 60
    invoke-static {p0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "  get-app-localeconfig <PACKAGE_NAME> [--user <USER_ID>]"

    .line 64
    .line 65
    const-string v2, "      Get the locales within the override LocaleConfig for the specified app."

    .line 66
    .line 67
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
